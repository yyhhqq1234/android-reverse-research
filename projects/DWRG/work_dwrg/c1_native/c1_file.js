/* DWRG C1 native file hook —只钩libclient+libc文件加解密点,不碰Java桥 */
/* target: com.identityv.shrek156 @ MuMu 127.0.0.1:16384, libclient.so armeabi-v7a via houdini */
/* usage: python c1_run.py --js c1_file.js  (attach, mkdir /data/local/tmp/dwrg_dump) */
/* out: /data/local/tmp/dwrg_dump/ + send preview; 本地 out/ 由 c1_run.py 落盘 */
(function () {
  'use strict';
  var TAG = '[c1-file]';
  function log(s) { try { send(TAG + ' ' + s); } catch (e) {} }
  log('arch=' + Process.arch + ' platform=' + Process.platform);
  // ---- libclient 基址 ----
  var cli = null;
  try {
    var ms = Process.enumerateModules();
    for (var i = 0; i < ms.length; i++) {
      if (ms[i].name === 'libclient.so') { cli = ms[i]; break; }
    }
    if (cli) log('libclient base=' + cli.base + ' size=' + cli.size + ' path=' + cli.path);
    else log('libclient NOT mapped yet (spawn-early? retry after 3s)');
  } catch (e) { log('enum-mod-err ' + e); }
  function hexPreview(ptr, len, max) {
    max = max || 256;
    var n = Math.min(len, max);
    try {
      var b = Memory.readByteArray(ptr, n);
      if (!b) return 'unreadable';
      var u8 = new Uint8Array(b);
      var hex = '';
      for (var i = 0; i < u8.length; i++) {
        var h = u8[i].toString(16);
        if (h.length < 2) h = '0' + h;
        hex += h + (i % 16 === 15 ? '\n' : ' ');
      }
      var asc = '';
      for (var j = 0; j < u8.length; j++) asc += (u8[j] >= 32 && u8[j] < 127) ? String.fromCharCode(u8[j]) : '.';
      return 'len=' + len + '\n' + hex + '\nasc:' + asc.substring(0, 256);
    } catch (e) { return 'preview-err ' + e; }
  }
  function magicTag(ptr, len) {
    try {
      if (len < 4) return 'tiny';
      var h = Memory.readByteArray(ptr, Math.min(16, len));
      var u = new Uint8Array(h);
      var s = '';
      for (var i = 0; i < u.length; i++) s += ('0' + u[i].toString(16)).slice(-2);
      if (u[0] === 0x4b && u[1] === 0x50 && u[2] === 0x58 && u[3] === 0x4e) return 'NXPK';
      if (u[0] === 0x4e && u[1] === 0x58 && u[2] === 0x53) return 'NXS?';
      if (u[0] === 0x63) return 'marshal-c?';
      if (u[0] === 0x78 && (u[1] === 0x01 || u[1] === 0x9c || u[1] === 0xda)) return 'zlib';
      if (u[0] === 0x1f && u[1] === 0x8b) return 'gzip';
      if (u[0] === 0x50 && u[1] === 0x4b) return 'zip';
      return 'raw(' + s.substring(0, 16) + ')';
    } catch (e) { return 'tag-err'; }
  }
  var dumpSeq = 0;
  function saveBuf(ptr, len, tag) {
    if (len <= 0 || len > 300 * 1024 * 1024) return;
    try {
      var b = Memory.readByteArray(ptr, len);
      if (!b) return;
      var name = '/data/local/tmp/dwrg_dump/file_' + tag + '_' + (dumpSeq++) + '_' + len + '.bin';
      var f = new File(name, 'wb');
      f.write(b);
      f.flush(); f.close();
      log('saved ' + name + ' magic=' + magicTag(ptr, len));
    } catch (e) { log('save-err ' + tag + ' ' + e); }
  }
  function isTargetPath(p) {
    if (!p) return false;
    var s = p.toLowerCase();
    return (s.indexOf('script.npk') >= 0 || s.indexOf('res.npk') >= 0 || s.indexOf('script1') >= 0 ||
      s.indexOf('wpk') >= 0 || s.indexOf('neox') >= 0 || s.indexOf('documents/script') >= 0 ||
      s.indexOf('filelist') >= 0 || s.indexOf('nxnpk') >= 0);
  }
  // ---- libc 文件 API: 只记录命中路径,不改行为 ----
  function hookLibcFile() {
    var libcNames = ['open', 'open64', 'fopen', 'fopen64'];
    libcNames.forEach(function (nm) {
      var p = null;
      try { p = Module.findExportByName(null, nm); } catch (e) {}
      if (!p) return;
      try {
        Interceptor.attach(p, {
          onEnter: function (args) {
            try {
              this._path = Memory.readCString(args[0]);
              this._hit = isTargetPath(this._path);
              if (this._hit) log(nm + ' ENTER path=' + this._path);
            } catch (e) {}
          },
          onLeave: function (ret) {
            try { if (this._hit) log(nm + ' LEAVE path=' + this._path + ' ret=' + ret); } catch (e) {}
          }
        });
        log('hooked libc:' + nm + ' @' + p);
      } catch (e) { log('hook-err ' + nm + ' ' + e); }
    });
    // fread / read: 只在命中上下文做长度上报,大数据走 decrypt/uncompress 出口统一 dump
    [['fread', 1], ['read', 1]].forEach(function (pair) {
      var nm = pair[0], szIdx = pair[1];
      var p = null;
      try { p = Module.findExportByName(null, nm); } catch (e) {}
      if (!p) return;
      try {
        Interceptor.attach(p, {
          onEnter: function (args) { this._dst = args[0]; try { this._req = args[szIdx].toInt32 ? args[szIdx].toInt32() : parseInt(args[szIdx]); } catch (e) { this._req = 0; } },
          onLeave: function (ret) {
            try {
              var got = ret.toInt32();
              if (got > 1024 && got < 300 * 1024 * 1024) {
                var mt = magicTag(this._dst, got);
                if (mt === 'NXPK' || mt === 'NXS?' || mt === 'marshal-c?' || mt === 'zlib' || got > 64 * 1024) {
                  log(nm + ' ret=' + got + ' magic=' + mt + '\n' + hexPreview(this._dst, got, 128));
                  if (got > 4096) saveBuf(this._dst, got, nm);
                }
              }
            } catch (e) {}
          }
        });
        log('hooked libc:' + nm + ' @' + p);
      } catch (e) { log('hook-err ' + nm + ' ' + e); }
    });
  }
  // ---- libclient 内部加解密/解压/NPK Loader 导出 ----
  function hookClientExports() {
    var ex = [];
    try { ex = Module.enumerateExports('libclient.so'); } catch (e) { log('client-exports-err ' + e); return; }
    log('libclient exports=' + ex.length);
    var keys = ['crypt', 'decrypt', 'uncompress', 'inflate', 'unxz', 'snappy', 'rawuncompress',
      'npk', 'nxpk', 'fileloader', 'packageloader', 'discreteloader', 'encodehook',
      'nxs', 'zlib', 'lzo', 'lz4', 'unzip', 'decompress'];
    var hit = 0;
    ex.forEach(function (e) {
      var n = (e.name || '').toLowerCase();
      for (var k = 0; k < keys.length; k++) {
        if (n.indexOf(keys[k]) >= 0 && (e.type === 'function' || e.type === 'unknown')) {
          (function (ent) {
            try {
              Interceptor.attach(ent.address, {
                onEnter: function (args) {
                  this._t = Date.now();
                  try {
                    this._a0 = args[0]; this._a1 = args[1];
                    if (ent.name.toLowerCase().indexOf('order') >= 0) {
                      log('ORDER-EXPORT ENTER ' + ent.name + ' a0=' + args[0] + ' a1=' + args[1] + ' bt=' + Thread.backtrace(this.context, Backtracer.ACCURATE).map(DebugSymbol.fromAddress).join(' <- ').substring(0, 600));
                    }
                  } catch (err) {}
                },
                onLeave: function (ret) {
                  try {
                    // 通用: 若返回指针+常见 (out,len) 猜测,做 magic 嗅探;误报可接受,漏报不可接受
                    // 策略: 扫描 args 区指针型参数中 1KB~50MB 可读块,命中 magic 即 dump
                    for (var ai = 0; ai < 4; ai++) {
                      try {
                        var p = this['__arg' + ai];
                      } catch (err2) {}
                    }
                  } catch (err) {}
                  // 轻量: 记录返回,重活交给 c1_order.js 的大包嗅探
                  if ((ent.name || '').toLowerCase().indexOf('uncompress') >= 0 ||
                      (ent.name || '').toLowerCase().indexOf('inflate') >= 0 ||
                      (ent.name || '').toLowerCase().indexOf('decrypt') >= 0 ||
                      (ent.name || '').toLowerCase().indexOf('crypt') >= 0) {
                    log('CRYPT-EXPORT LEAVE ' + ent.name + ' ret=' + ret);
                  }
                }
              });
              hit++;
              if (hit <= 40) log('hooked client:' + ent.name + ' @' + ent.address);
            } catch (err) { log('hook-err ' + ent.name + ' ' + err); }
            })(e);
          break;
        }
      }
    });
    log('client-crypt-hooked=' + hit);
    // 全量 NPK Loader 创建日志(名字含 loader 必打)
    var loaderHit = 0;
    ex.forEach(function (e) {
      if (e.name.indexOf('NXNpkLoader') >= 0 || e.name.indexOf('NXFileLoader') >= 0 || e.name.indexOf('NXDiscreteFileLoader') >= 0 || e.name.indexOf('NXPackageFileLoader') >= 0) {
        (function (ent) {
          try {
            Interceptor.attach(ent.address, {
              onEnter: function (args) { log('LOADER ENTER ' + ent.name); },
              onLeave: function (ret) { log('LOADER LEAVE ' + ent.name + ' ret=' + ret); }
            });
            loaderHit++;
          } catch (err) {}
        })(e);
      }
    });
    log('loader-hooked=' + loaderHit);
  }
  try { hookLibcFile(); } catch (e) { log('libc-hook-fatal ' + e); }
  // libclient 可能延迟加载,重试3次
  var tries = 0;
  function tryClient() {
    tries++;
    try {
      var m = Process.findModuleByName('libclient.so');
      if (m) { hookClientExports(); log('ready file-hooks tries=' + tries); }
      else if (tries < 6) { log('libclient absent, retry ' + tries + '/6 in 3s'); setTimeout(tryClient, 3000); }
      else log('libclient still absent after retries');
    } catch (e) { log('tryClient-err ' + e); }
  }
  tryClient();
})();
