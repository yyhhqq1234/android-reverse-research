/* DWRG FORMAL file hook — arm64 libclient 175M,只钩native,不碰Java桥 */
/* target: com.netease.dwrg @ 2026.0828.1653, lib/arm64-v8a/libclient.so 175206232B, MuMu 127.0.0.1:16384 */
/* covers: WPK(idx/header/FKPW-SKPW窗口)/NXPK/NXCloud-script/thd-preload + libc路径过滤 */
(function () {
  'use strict';
  var TAG = '[f-file]';
  function log(s) { try { send(TAG + ' ' + s); } catch (e) {} }
  log('arch=' + Process.arch + ' platform=' + Process.platform);
  var cli = null;
  try {
    var ms = Process.enumerateModules();
    for (var i = 0; i < ms.length; i++) if (ms[i].name === 'libclient.so') { cli = ms[i]; break; }
    if (cli) log('libclient base=' + cli.base + ' size=' + cli.size + ' path=' + cli.path);
    else log('libclient NOT mapped yet, retry loop below');
  } catch (e) { log('enum-err ' + e); }
  function hexAsc(ptr, len, cap) {
    cap = cap || 256;
    var n = Math.min(len, cap);
    try {
      var b = Memory.readByteArray(ptr, n);
      if (!b) return 'unreadable';
      var u = new Uint8Array(b);
      var hex = '';
      for (var i = 0; i < u.length; i++) { var h = u[i].toString(16); if (h.length < 2) h = '0' + h; hex += h + (i % 16 === 15 ? '\n' : ' '); }
      var asc = '';
      for (var j = 0; j < u.length; j++) asc += (u[j] >= 32 && u[j] < 127) ? String.fromCharCode(u[j]) : '.';
      return 'len=' + len + '\n' + hex + '\nasc:' + asc.substring(0, 300);
    } catch (e) { return 'preview-err ' + e; }
  }
  function magicTag(ptr, len) {
    try {
      if (len < 16) return 'tiny';
      var u = new Uint8Array(Memory.readByteArray(ptr, 16));
      if (u[0] === 0x4b && u[1] === 0x50 && u[2] === 0x58 && u[3] === 0x4e) return 'NXPK';
      if (u[0] === 0x4e && u[1] === 0x58 && u[2] === 0x53 && u[3] === 0x33) return 'NXS3';
      if (u[0] === 0xa7 && u[1] === 0x0d && u[2] === 0x0d && u[3] === 0x0a) return 'pyc3.11';
      if (u[0] === 0x78 && (u[1] === 0x01 || u[1] === 0x9c || u[1] === 0xda)) return 'zlib';
      if (u[0] === 0x4e && u[1] === 0x58 && u[2] === 0x46 && u[3] === 0x4e) return 'NXFN';
      if (u[0] === 0x57 && u[1] === 0x50 && u[2] === 0x4b) return 'WPK?';
      return 'raw';
    } catch (e) { return 'tag-err'; }
  }
  var seq = 0;
  function saveBuf(ptr, len, tag) {
    if (len <= 0 || len > 500 * 1024 * 1024) return;
    try {
      var b = Memory.readByteArray(ptr, len);
      if (!b) return;
      var name = '/data/local/tmp/dwrg_dump Formal'.replace(' ', '') + '/file_' + tag + '_' + (seq++) + '_' + len + '.bin';
      // 固定正式目录,避免空格: /data/local/tmp/dwrg_dump_formal/
      name = '/data/local/tmp/dwrg_dump_formal/file_' + tag + '_' + seq + '_' + len + '.bin';
      var f = new File(name, 'wb');
      f.write(b); f.flush(); f.close();
      log('saved ' + name + ' magic=' + magicTag(ptr, len));
    } catch (e) { log('save-err ' + tag + ' ' + e); }
  }
  function isTargetPath(p) {
    if (!p) return false;
    var s = p.toLowerCase();
    return (s.indexOf('script1.wpk') >= 0 || s.indexOf('script0.wpk') >= 0 || s.indexOf('lib.npk') >= 0 ||
      s.indexOf('script.npk') >= 0 || s.indexOf('res.npk') >= 0 || s.indexOf('.wpk') >= 0 ||
      s.indexOf('thd') >= 0 || s.indexOf('preload.json') >= 0 || s.indexOf('pkgmapping.json') >= 0 ||
      s.indexOf('cloud.json') >= 0 || s.indexOf('neox3.xml') >= 0 || s.indexOf('nxnpk') >= 0 ||
      s.indexOf('packages/python3') >= 0 || s.indexOf('packages/builtin') >= 0);
  }
  function hookLibc() {
    ['open', 'open64', 'fopen', 'fopen64'].forEach(function (nm) {
      var p = null;
      try { p = Module.findExportByName(null, nm); } catch (e) {}
      if (!p) return;
      try {
        Interceptor.attach(p, {
          onEnter: function (args) {
            try { this._path = Memory.readCString(args[0]); this._hit = isTargetPath(this._path); if (this._hit) log(nm + ' ENTER ' + this._path); } catch (e) {}
          },
          onLeave: function (ret) { try { if (this._hit) log(nm + ' LEAVE ' + this._path + ' ret=' + ret); } catch (e) {} }
        });
        log('hooked libc:' + nm);
      } catch (e) { log('hook-err ' + nm + ' ' + e); }
    });
    [['fread', 1], ['read', 1]].forEach(function (pr) {
      var nm = pr[0];
      var p = null;
      try { p = Module.findExportByName(null, nm); } catch (e) {}
      if (!p) return;
      try {
        Interceptor.attach(p, {
          onEnter: function (args) { this._dst = args[0]; },
          onLeave: function (ret) {
            try {
              var got = ret.toInt32();
              if (got > 4096 && got < 500 * 1024 * 1024) {
                var mt = magicTag(this._dst, got);
                if (mt !== 'raw' || got > 64 * 1024) { log(nm + ' ret=' + got + ' magic=' + mt + '\n' + hexAsc(this._dst, got, 128)); if (got > 16384) saveBuf(this._dst, got, nm); }
              }
            } catch (e) {}
          }
        });
        log('hooked libc:' + nm);
      } catch (e) {}
    });
  }
  function hookFormalExports() {
    var ex = [];
    try { ex = Module.enumerateExports('libclient.so'); } catch (e) { log('exp-err ' + e); return; }
    log('libclient exports=' + ex.length + ' (formal arm64 ~ mass, filter below)');
    var keys = ['wpkcore', 'readfileheader', 'recreateidx', 'dumpidx', 'gettotalspace',
      'nxn', 'nxpk', 'nxcloudfileloader', 'cloud_engine_init', 'murmur', 'stringidmurmur',
      'setopencodehook', 'check_pkg_encoded_hash', 'uncompress', 'inflate', 'decompress',
      'snappy', 'rawuncompress', 'nxs', 'cloudfilesys', 'wpkmgr', 'cach', 'preload', 'thd'];
    var hit = 0;
    ex.forEach(function (e) {
      var ln = (e.name || '').toLowerCase();
      for (var k = 0; k < keys.length; k++) {
        if (ln.indexOf(keys[k]) >= 0) {
          (function (ent) {
            try {
              Interceptor.attach(ent.address, {
                onEnter: function (args) {
                  try {
                    var bt = Thread.backtrace(this.context, Backtracer.ACCURATE).map(DebugSymbol.fromAddress).join(' <- ').substring(0, 400);
                    log('F-EXPORT ENTER ' + ent.name + ' a0=' + args[0] + ' a1=' + args[1] + '\nbt=' + bt);
                    this._dst = args[0]; try { this._dstLenPtr = args[1]; } catch (err) {}
                  } catch (err) {}
                },
                onLeave: function (ret) {
                  try {
                    log('F-EXPORT LEAVE ' + ent.name + ' ret=' + ret);
                    // FKPW/SKPW窗口+uncompress出口: 按 *dstLen 嗅探大包
                    var outLen = 0;
                    try { outLen = Memory.readU32(this._dstLenPtr); } catch (err) {}
                    if (outLen > 1024 && outLen < 500 * 1024 * 1024) {
                      var mt = magicTag(this._dst, outLen);
                      if (outLen > 100 * 1024 || mt === 'NXS3' || mt === 'pyc3.11' || mt === 'NXPK' || mt === 'NXFN') {
                        log('F-DECRYPT-OUT ' + ent.name + ' outLen=' + outLen + ' magic=' + mt + '\n' + hexAsc(this._dst, outLen, 128));
                        saveBuf(this._dst, outLen, ent.name.replace(/[^A-Za-z0-9]+/g, '_').substring(0, 40) + '_' + mt);
                      }
                    }
                  } catch (err) {}
                }
              });
              hit++;
              if (hit <= 50) log('hooked formal:' + ent.name);
            } catch (err) { }
          })(e);
          break;
        }
      }
    });
    log('formal-file-hooked=' + hit);
  }
  try { hookLibc(); } catch (e) { log('libc-fatal ' + e); }
  var tries = 0;
  (function tryCli() {
    tries++;
    try {
      if (Process.findModuleByName('libclient.so')) { hookFormalExports(); log('ready formal-file tries=' + tries); }
      else if (tries < 8) { log('libclient absent retry ' + tries + '/8'); setTimeout(tryCli, 3000); }
      else log('libclient absent after retries (need launch com.netease.dwrg to main gate)');
    } catch (e) { log('try-err ' + e); }
  })();
})();
