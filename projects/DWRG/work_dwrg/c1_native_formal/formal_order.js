/* DWRG FORMAL order+script1 — PluginUniSDK native订单 + script1 FKPW/SKPW + NXCloud/thd/preload,只钩native */
(function () {
  'use strict';
  var TAG = '[f-order]';
  function log(s) { try { send(TAG + ' ' + s); } catch (e) {} }
  log('arch=' + Process.arch);
  var seq = 0;
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
      return 'len=' + len + '\n' + hex + '\nasc:' + asc.substring(0, 500);
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
      return 'raw';
    } catch (e) { return 'tag-err'; }
  }
  function saveScript1(ptr, len, why) {
    if (len < 1024 || len > 500 * 1024 * 1024) return;
    try {
      var b = Memory.readByteArray(ptr, len);
      if (!b) return;
      var name = '/data/local/tmp/dwrg_dump_formal/script1_' + why + '_' + (seq++) + '_' + len + '.bin';
      var f = new File(name, 'wb');
      f.write(b); f.flush(); f.close();
      log('DUMP script1 saved ' + name + ' magic=' + magicTag(ptr, len) + ' why=' + why);
      try { send({ ev: 'script1', file: name, len: len, why: why }, b); } catch (e) {}
    } catch (e) {}
  }
  function hookOrderJni() {
    // JNI: com.netease.dwrg正式版走 PluginUniSDK(测试版是 NativeInterface)
    var jnis = [
      'Java_com_netease_neox_PluginUniSDK_NativeOnOrderCheckDone',
      'Java_com_netease_neox_PluginUniSDK_NativeOnOrderConsumeDone',
      'Java_com_netease_neox_PluginUniSDK_NativeOnVerifySuccess',
      'Java_com_netease_neox_PluginUniSDK_NativeOnVerifyFailure',
      'Java_com_netease_neox_PluginUniSDK_NativeOnWebViewNativeCall',
      'Java_com_netease_neox_PluginUniSDK_NativeOnLoginDone'
    ];
    jnis.forEach(function (nm) {
      var p = null;
      try { p = Module.findExportByName('libclient.so', nm); } catch (e) {}
      if (!p) { log('noexport ' + nm); return; }
      try {
        Interceptor.attach(p, {
          onEnter: function (args) {
            try {
              var d = '';
              for (var i = 2; i < 6; i++) {
                try { var c = Memory.readCString(args[i]); if (c && c.length > 220) c = c.substring(0, 220) + '...'; d += ' a' + i + '=' + args[i] + ' [' + c + ']'; } catch (e) { d += ' a' + i + '=' + args[i]; }
              }
              var bt = Thread.backtrace(this.context, Backtracer.ACCURATE).map(DebugSymbol.fromAddress).join(' <- ').substring(0, 700);
              log('ORDER-JNI ENTER ' + nm + d + '\nbt=' + bt);
            } catch (e) {}
          },
          onLeave: function (ret) { log('ORDER-JNI LEAVE ' + nm + ' ret=' + ret); }
        });
        log('hooked ' + nm);
      } catch (e) { log('hook-err ' + nm + ' ' + e); }
    });
  }
  function hookOrderNative() {
    var ex = [];
    try { ex = Module.enumerateExports('libclient.so'); } catch (e) { return; }
    var n = 0;
    ex.forEach(function (e) {
      var nm = e.name || '';
      if (nm.indexOf('ntCheckOrder') >= 0 || nm.indexOf('ntConsume') >= 0 || nm.indexOf('ntVerifyOrder') >= 0 ||
          nm.indexOf('newOrderInfo') >= 0 || nm.indexOf('ntVerifyMobile') >= 0 ||
          nm.indexOf('getOnOrderCheckDone') >= 0 || nm.indexOf('setOnOrderCheckDone') >= 0 ||
          nm.indexOf('UNISDK_CONSUMEORDER_URL') >= 0 || nm.indexOf('OrderCheckDone') >= 0 || nm.indexOf('OrderConsumeDone') >= 0) {
        (function (ent) {
          try {
            Interceptor.attach(ent.address, {
              onEnter: function (args) { log('ORDER-NATIVE ENTER ' + ent.name + ' a0=' + args[0] + ' a1=' + args[1] + ' a2=' + args[2]); },
              onLeave: function (ret) { log('ORDER-NATIVE LEAVE ' + ent.name + ' ret=' + ret); }
            });
            n++;
            if (n <= 30) log('hooked order-native:' + ent.name);
          } catch (err) {}
        })(e);
      }
    });
    log('order-native-hooked=' + n);
  }
  function hookScript1Chain() {
    // FKPW/SKPW=SimpleCryptEx式中段窗口(大包仅中段加密,小包全片): 按 uncompress(dst,dstLen,src)出口嗅探
    // + NXS3新变体(112B key/倒挂三元组,不硬解只dump) + NXCloud script(pkgname=script) + thd/preload校验链
    var ex = [];
    try { ex = Module.enumerateExports('libclient.so'); } catch (e) { return; }
    var cands = [];
    ex.forEach(function (e) {
      var ln = (e.name || '').toLowerCase();
      if (ln.indexOf('uncompress') >= 0 || ln.indexOf('inflate') >= 0 || ln.indexOf('snappy') >= 0 ||
          ln.indexOf('nxs') >= 0 || ln.indexOf('nxcloud') >= 0 || ln.indexOf('cloudfile') >= 0 ||
          ln.indexOf('wpk') >= 0 || ln.indexOf('murmur') >= 0 || ln.indexOf('stringid') >= 0 ||
          ln.indexOf('setopencodehook') >= 0 || ln.indexOf('thd') >= 0 || ln.indexOf('preload') >= 0 ||
          ln.indexOf('pkgmapping') >= 0 || ln.indexOf('check_pkg_encoded_hash') >= 0) {
        cands.push(e);
      }
    });
    log('script1-cands=' + cands.length);
    cands.slice(0, 80).forEach(function (ent) {
      try {
        Interceptor.attach(ent.address, {
          onEnter: function (args) {
            try {
              this._dst = args[0]; this._dstLenPtr = args[1];
              var ln = (ent.name || '').toLowerCase();
              if (ln.indexOf('thd') >= 0 || ln.indexOf('preload') >= 0 || ln.indexOf('check_pkg') >= 0 || ln.indexOf('wpk') >= 0 || ln.indexOf('cloud') >= 0) {
                log('SCRIPT-CHAIN ENTER ' + ent.name);
              }
            } catch (e) {}
          },
          onLeave: function (ret) {
            try {
              var ln = (ent.name || '').toLowerCase();
              if (ln.indexOf('thd') >= 0 || ln.indexOf('preload') >= 0 || ln.indexOf('check_pkg') >= 0) log('SCRIPT-CHAIN LEAVE ' + ent.name + ' ret=' + ret);
              var outLen = 0;
              try { outLen = Memory.readU32(this._dstLenPtr); } catch (e) {}
              if (outLen > 1024 && outLen < 500 * 1024 * 1024) {
                var mt = magicTag(this._dst, outLen);
                if (outLen > 100 * 1024 || mt === 'NXS3' || mt === 'pyc3.11' || mt === 'NXPK' || mt === 'NXFN') {
                  log('SCRIPT1-OUT ' + ent.name + ' outLen=' + outLen + ' magic=' + mt + '\n' + hexAsc(this._dst, outLen, 128));
                  saveScript1(this._dst, outLen, ent.name.replace(/[^A-Za-z0-9]+/g, '_').substring(0, 40) + '_' + mt);
                }
              }
            } catch (e) {}
          }
        });
      } catch (e) {}
    });
    log('script1-chain-hooked');
  }
  var t = 0;
  (function boot() {
    t++;
    if (Process.findModuleByName('libclient.so')) {
      try { hookOrderJni(); } catch (e) {}
      try { hookOrderNative(); } catch (e) {}
      try { hookScript1Chain(); } catch (e) {}
      log('ready formal-order+script1');
    } else if (t < 8) { log('libclient absent retry ' + t + '/8'); setTimeout(boot, 3000); }
    else log('libclient absent');
  })();
})();
