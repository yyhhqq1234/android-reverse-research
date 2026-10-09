/* DWRG FORMAL net hook — arm64,只钩native:收发+SSL+Cloud/Wpk/preload/thd,不碰Java桥 */
(function () {
  'use strict';
  var TAG = '[f-net]';
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
  function saveNet(ptr, len, dir, kw) {
    if (len <= 0 || len > 64 * 1024 * 1024) return;
    try {
      var b = Memory.readByteArray(ptr, len);
      if (!b) return;
      if (kw !== '' || len > 4096) {
        var name = '/data/local/tmp/dwrg_dump_formal/net_' + dir + kw + '_' + (seq++) + '_' + len + '.bin';
        var f = new File(name, 'wb');
        f.write(b); f.flush(); f.close();
        log('saved ' + name);
      }
    } catch (e) {}
  }
  function kwOf(ptr, len) {
    try {
      var s = (Memory.readUtf8String(ptr, Math.min(len, 4096)) || '').toLowerCase();
      if (s.indexOf('order') >= 0) return '_ORDER';
      if (s.indexOf('pay') >= 0 || s.indexOf('epay') >= 0 || s.indexOf('mpay') >= 0) return '_PAY';
      if (s.indexOf('token') >= 0) return '_TOKEN';
      if (s.indexOf('script') >= 0 || s.indexOf('wpk') >= 0 || s.indexOf('thd') >= 0 || s.indexOf('preload') >= 0 || s.indexOf('cloud') >= 0) return '_SCRIPT';
      return '';
    } catch (e) { return ''; }
  }
  function hookFd(nm, isSend) {
    var p = null;
    try { p = Module.findExportByName(null, nm); } catch (e) {}
    if (!p) { log('noexport ' + nm); return; }
    try {
      Interceptor.attach(p, {
        onEnter: function (args) {
          this._buf = args[1]; try { this._len = args[2].toInt32(); } catch (e) { this._len = 0; }
          if (isSend && this._len > 16 && this._len < 64 * 1024 * 1024) {
            try { var k = kwOf(this._buf, this._len); if (k !== '') { log(nm + ' SEND hit' + k + '\n' + hexAsc(this._buf, this._len, 256).substring(0, 1100)); saveNet(this._buf, this._len, 'send', k); } } catch (e) {}
          }
        },
        onLeave: function (ret) {
          if (isSend) return;
          try {
            var got = ret.toInt32();
            if (got > 16 && got < 64 * 1024 * 1024) {
              var k = kwOf(this._buf, got);
              if (k !== '' || got > 8192) { log(nm + ' RECV got=' + got + k + '\n' + hexAsc(this._buf, got, 256).substring(0, 1100)); saveNet(this._buf, got, 'recv', k); }
            }
          } catch (e) {}
        }
      });
      log('hooked ' + nm);
    } catch (e) { log('hook-err ' + nm + ' ' + e); }
  }
  ['send', 'sendto', 'sendmsg'].forEach(function (n) { hookFd(n, true); });
  ['recv', 'recvfrom', 'recvmsg'].forEach(function (n) { hookFd(n, false); });
  [['SSL_read', false], ['SSL_write', true]].forEach(function (pr) {
    var nm = pr[0], isSend = pr[1];
    var addrs = [];
    try { var q = Module.findExportByName(null, nm); if (q) addrs.push(q); } catch (e) {}
    try {
      Module.enumerateExports('libclient.so').forEach(function (e) { if (e.name === nm) addrs.push(e.address); });
    } catch (e) {}
    if (addrs.length === 0) { log('noexport ' + nm); return; }
    addrs.forEach(function (p) {
      try {
        Interceptor.attach(p, {
          onEnter: function (args) { this._buf = args[1]; try { this._len = args[2].toInt32(); } catch (e) { this._len = 0; } },
          onLeave: function (ret) {
            try {
              var got = isSend ? this._len : ret.toInt32();
              if (got > 16 && got < 64 * 1024 * 1024) {
                var k = kwOf(this._buf, got);
                if (k !== '' || got > 8192) log(nm + (isSend ? ' SEND' : ' RECV got=' + got) + k);
                saveNet(this._buf, got, isSend ? 'ssl_send' : 'ssl_recv', k);
              }
            } catch (e) {}
          }
        });
        log('hooked ' + nm);
      } catch (e) {}
    });
  });
  function hookFormalNet() {
    var ex = [];
    try { ex = Module.enumerateExports('libclient.so'); } catch (e) { return; }
    var keys = ['mercury', 'nub', 'channel', 'encryptionfilter', 'clouddownloader', 'collect_sub_tasks',
      'check_pkg_encoded_hash', 'download', 'preload', 'dynamic_preloader', 'thd', 'wpk', 'cache'];
    var n = 0;
    ex.forEach(function (e) {
      var ln = (e.name || '').toLowerCase();
      for (var k = 0; k < keys.length; k++) {
        if (ln.indexOf(keys[k]) >= 0) {
          (function (ent) {
            try {
              Interceptor.attach(ent.address, {
                onEnter: function () { try { log('FNET ENTER ' + ent.name); } catch (err) {} },
                onLeave: function (ret) { try { log('FNET LEAVE ' + ent.name + ' ret=' + ret); } catch (err) {} }
              });
              n++;
              if (n <= 40) log('hooked fnet:' + ent.name);
            } catch (err) {}
          })(e);
          break;
        }
      }
    });
    log('formal-net-hooked=' + n + ' / exports=' + ex.length);
  }
  var t = 0;
  (function tryN() {
    t++;
    if (Process.findModuleByName('libclient.so')) { hookFormalNet(); log('ready formal-net'); }
    else if (t < 8) setTimeout(tryN, 3000);
    else log('libclient absent');
  })();
})();
