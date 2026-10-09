/* DWRG C1 order+script1 dump —只钩libclient native订单点+解密出口,不碰Java桥 */
/* 订单点: Java_com_netease_neox_NativeInterface_NativeOnOrderCheckDone + order_* 导出 */
/* script1解密体: 大包嗅探(uncompress/inflate/snappy/NXEncodeHook返回) + script1/wpk路径关联 */
(function () {
  'use strict';
  var TAG = '[c1-order]';
  function log(s) { try { send(TAG + ' ' + s); } catch (e) {} }
  log('arch=' + Process.arch);
  var seq = 0;
  function hexAsc(ptr, len, cap) {
    cap = cap || 512;
    var n = Math.min(len, cap);
    try {
      var b = Memory.readByteArray(ptr, n);
      if (!b) return 'unreadable';
      var u = new Uint8Array(b);
      var hex = '';
      for (var i = 0; i < u.length; i++) { var h = u[i].toString(16); if (h.length < 2) h = '0' + h; hex += h + (i % 16 === 15 ? '\n' : ' '); }
      var asc = '';
      for (var j = 0; j < u.length; j++) asc += (u[j] >= 32 && u[j] < 127) ? String.fromCharCode(u[j]) : '.';
      return 'len=' + len + '\n' + hex + '\nasc:' + asc.substring(0, 500);
    } catch (e) { return 'preview-err ' + e; }
  }
  function magicTag(ptr, len) {
    try {
      if (len < 4) return 'tiny';
      var h = new Uint8Array(Memory.readByteArray(ptr, Math.min(16, len)));
      if (h[0] === 0x4b && h[1] === 0x50 && h[2] === 0x58 && h[3] === 0x4e) return 'NXPK';
      if (h[0] === 0x4e && h[1] === 0x58 && h[2] === 0x53) return 'NXS?';
      if (h[0] === 0x63) return 'marshal-c?';
      if (h[0] === 0x78 && (h[1] === 0x01 || h[1] === 0x9c || h[1] === 0xda)) return 'zlib';
      if (h[0] === 0x1f && h[1] === 0x8b) return 'gzip';
      if (h[0] === 0x04 && h[1] === 0x00) return 'pyc3.11?';
      return 'raw';
    } catch (e) { return 'tag-err'; }
  }
  function saveScript1(ptr, len, why) {
    if (len < 1024 || len > 400 * 1024 * 1024) return;
    try {
      var b = Memory.readByteArray(ptr, len);
      if (!b) return;
      var name = '/data/local/tmp/dwrg_dump/script1_' + why + '_' + (seq++) + '_' + len + '.bin';
      var f = new File(name, 'wb');
      f.write(b); f.flush(); f.close();
      log('DUMP script1-candidate saved ' + name + ' magic=' + magicTag(ptr, len) + ' why=' + why);
      try { send({ ev: 'script1', file: name, len: len, why: why }, b); } catch (e) { }
    } catch (e) { log('save-err ' + e); }
  }
  // ---- 1) JNI 订单点 (native 符号,直接 Interceptor,不走 Java) ----
  function hookOrderJni() {
    var names = [
      'Java_com_netease_neox_NativeInterface_NativeOnOrderCheckDone',
      'Java_com_netease_neox_NativeInterface_NativeOnLogin',
      'Java_com_netease_neox_NativeInterface_NativeOnGMBridgeTokenOverdue'
    ];
    names.forEach(function (nm) {
      var p = null;
      try { p = Module.findExportByName('libclient.so', nm); } catch (e) {}
      if (!p) { log('noexport ' + nm); return; }
      try {
        Interceptor.attach(p, {
          onEnter: function (args) {
            // JNI: args[0]=JNIEnv*, args[1]=jobject/jclass, args[2..]=业务参数
            try {
              var dump = '';
              for (var i = 2; i < 6; i++) {
                try {
                  var v = args[i];
                  var c = '';
                  try { c = Memory.readCString(v); if (c && c.length > 200) c = c.substring(0, 200) + '...'; } catch (e) { c = '(non-cstr)'; }
                  dump += ' a' + i + '=' + v + ' cstr=[' + c + ']';
                } catch (e) {}
              }
              var bt = '';
              try { bt = Thread.backtrace(this.context, Backtracer.ACCURATE).map(DebugSymbol.fromAddress).join(' <- ').substring(0, 800); } catch (e) {}
              log('ORDER-JNI ENTER ' + nm + dump + '\nbt=' + bt);
            } catch (e) {}
          },
          onLeave: function (ret) { log('ORDER-JNI LEAVE ' + nm + ' ret=' + ret); }
        });
        log('hooked order-jni ' + nm + ' @' + p);
      } catch (e) { log('hook-err ' + nm + ' ' + e); }
    });
    // order_* 通用导出兜底
    try {
      var ex = Module.enumerateExports('libclient.so');
      var n = 0;
      ex.forEach(function (e) {
        var ln = (e.name || '').toLowerCase();
        if (ln.indexOf('order') >= 0 || ln.indexOf('get_checked_orders') >= 0 || ln.indexOf('remove_checked_orders') >= 0 || ln.indexOf('get_pay_channel') >= 0 || ln.indexOf('order_product') >= 0) {
          if (e.name.indexOf('Java_com') === 0) return; // 已钩
          (function (ent) {
            try {
              Interceptor.attach(ent.address, {
                onEnter: function (args) { log('ORDER-EXPORT ENTER ' + ent.name + ' a0=' + args[0] + ' a1=' + args[1] + ' a2=' + args[2]); },
                onLeave: function (ret) { log('ORDER-EXPORT LEAVE ' + ent.name + ' ret=' + ret); }
              });
              n++;
            } catch (err) {}
          })(e);
        }
      });
      log('order-exports-extra=' + n);
    } catch (e) { log('order-enum-err ' + e); }
  }
  // ---- 2) script1 解密体: 大包嗅探 ----
  // 策略A: hook 通用解压/解密 (zlib inflate/uncompress/snappy),onLeave 嗅探输出块
  function hookDecompress() {
    var cands = [];
    ['uncompress', 'inflate', 'inflateEnd', 'snappy', 'RawUncompress', 'unxz', 'decompress'].forEach(function (kw) {
      try {
        var p = Module.findExportByName(null, kw);
        if (p) cands.push({ name: kw, addr: p });
      } catch (e) {}
    });
    // libclient 内同名导出全收
    try {
      Module.enumerateExports('libclient.so').forEach(function (e) {
        var ln = (e.name || '').toLowerCase();
        if (ln.indexOf('uncompress') >= 0 || ln.indexOf('inflate') >= 0 || ln.indexOf('snappy') >= 0 || ln.indexOf('rawuncompress') >= 0 || ln.indexOf('decompress') >= 0 || ln.indexOf('crypt') >= 0 || ln.indexOf('decrypt') >= 0) {
          cands.push({ name: 'client:' + e.name, addr: e.address });
        }
      });
    } catch (e) {}
    log('decompress-cands=' + cands.length);
    cands.slice(0, 60).forEach(function (c) {
      try {
        Interceptor.attach(c.addr, {
          onEnter: function (args) {
            // 常见原型 uncompress(dst,dstLen,src,srcLen): 记录 dst/dstLenPtr,离开时按 *dstLen dump
            try { this._dst = args[0]; this._dstLenPtr = args[1]; this._src = args[2]; } catch (e) {}
          },
          onLeave: function (ret) {
            try {
              var outLen = 0;
              try { outLen = Memory.readU32(this._dstLenPtr); } catch (e) {}
              // zlib uncompress 成功 ret==0; snappy 族也按长度>1KB 即嗅探
              if (outLen > 1024 && outLen < 400 * 1024 * 1024) {
                var mt = magicTag(this._dst, outLen);
                // script1 特征: 大包(>100KB) + NXS?/marshal-c/zlib/raw; 小包只记大包
                if (outLen > 100 * 1024 || mt === 'NXS?' || mt === 'marshal-c?' || mt === 'NXPK') {
                  log('DECRYPT-OUT ' + c.name + ' ret=' + ret + ' outLen=' + outLen + ' magic=' + mt + '\n' + hexAsc(this._dst, outLen, 128));
                  saveScript1(this._dst, outLen, c.name.replace(/[^A-Za-z0-9]+/g, '_') + '_' + mt);
                }
              }
            } catch (e) {}
          }
        });
        log('hooked decompress ' + c.name + ' @' + c.addr);
      } catch (e) { log('hook-err ' + c.name + ' ' + e); }
    });
  }
  // 策略B: NXEncodeHook / NpkLoader 解密出口兜底 — 大内存写嗅探(memory scan 太贵,改为 fwrite/recv 大包已在 c1_file/c1_net 覆盖,此处只打标记)
  function hookNpkLoader() {
    try {
      var n = 0;
      Module.enumerateExports('libclient.so').forEach(function (e) {
        if (e.name.indexOf('NXNpk') >= 0 || e.name.indexOf('NXEncodeHook') >= 0 || e.name.indexOf('NpkImporter') >= 0 || e.name.indexOf('IScriptFileSystem') >= 0) {
          (function (ent) {
            try {
              Interceptor.attach(ent.address, {
                onEnter: function (args) { log('NPK ENTER ' + ent.name); },
                onLeave: function (ret) { log('NPK LEAVE ' + ent.name + ' ret=' + ret); }
              });
              n++;
            } catch (err) {}
          })(e);
        }
      });
      log('npk-hooked=' + n);
    } catch (e) { log('npk-enum-err ' + e); }
  }
  var tries = 0;
  function boot() {
    tries++;
    if (Process.findModuleByName('libclient.so')) {
      try { hookOrderJni(); } catch (e) { log('order-fatal ' + e); }
      try { hookDecompress(); } catch (e) { log('decomp-fatal ' + e); }
      try { hookNpkLoader(); } catch (e) { log('npk-fatal ' + e); }
      log('ready order+script1');
    } else if (tries < 6) { log('libclient absent retry ' + tries + '/6'); setTimeout(boot, 3000); }
    else log('libclient absent, abort');
  }
  boot();
})();
