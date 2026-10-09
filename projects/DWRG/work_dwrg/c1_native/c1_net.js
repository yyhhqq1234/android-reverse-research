/* DWRG C1 native net hook —只钩libc收发+libclient网络订单点,不碰Java桥 */
/* covers: send/sendto/sendmsg/recv/recvfrom/recvmsg + SSL_read/SSL_write + Mercury/Nub/Channel/EncryptionFilter 导出 */
(function () {
  'use strict';
  var TAG = '[c1-net]';
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
      return 'len=' + len + ' preview(' + n + '):\n' + hex + '\nasc:' + asc.substring(0, 400);
    } catch (e) { return 'preview-err ' + e; }
  }
  function saveNet(ptr, len, dir) {
    if (len <= 0 || len > 64 * 1024 * 1024) return;
    try {
      var b = Memory.readByteArray(ptr, len);
      if (!b) return;
      var kw = '';
      try {
        var s = Memory.readUtf8String(ptr, Math.min(len, 4096)) || '';
        var sl = s.toLowerCase();
        if (sl.indexOf('order') >= 0) kw = '_ORDER';
        else if (sl.indexOf('pay') >= 0) kw = '_PAY';
        else if (sl.indexOf('token') >= 0) kw = '_TOKEN';
        else if (sl.indexOf('script1') >= 0 || sl.indexOf('wpk') >= 0) kw = '_SCRIPT1';
      } catch (e) {}
      // 只落盘含关键字或 >4KB 的包,避免刷屏
      if (kw !== '' || len > 4096) {
        var name = '/data/local/tmp/dwrg_dump/net_' + dir + kw + '_' + (seq++) + '_' + len + '.bin';
        var f = new File(name, 'wb');
        f.write(b); f.flush(); f.close();
        log('saved ' + name);
      }
    } catch (e) {}
  }
  function hookFd(nm, isSend) {
    var p = null;
    try { p = Module.findExportByName(null, nm); } catch (e) {}
    if (!p) { log('noexport ' + nm); return; }
    try {
      Interceptor.attach(p, {
        onEnter: function (args) {
          // send(fd,buf,len)/recv(fd,buf,len): buf=args[1], len=args[2]
          this._buf = args[1]; try { this._len = args[2].toInt32(); } catch (e) { this._len = 0; }
          if (!isSend) return;
          try {
            if (this._len > 0 && this._len < 64 * 1024 * 1024 && this._len > 16) {
              var pv = hexAsc(this._buf, this._len, 256);
              if (pv.indexOf('order') >= 0 || pv.indexOf('pay') >= 0 || pv.indexOf('token') >= 0 || pv.toLowerCase().indexOf('script1') >= 0) {
                log(nm + ' SEND hit\n' + pv.substring(0, 1200));
                saveNet(this._buf, this._len, 'send');
              }
            }
          } catch (e) {}
        },
        onLeave: function (ret) {
          if (isSend) return;
          try {
            var got = ret.toInt32();
            if (got > 16 && got < 64 * 1024 * 1024) {
              var pv = hexAsc(this._buf, got, 256);
              if (pv.indexOf('order') >= 0 || pv.indexOf('pay') >= 0 || pv.indexOf('token') >= 0 || pv.toLowerCase().indexOf('script1') >= 0 || got > 8192) {
                log(nm + ' RECV got=' + got + '\n' + pv.substring(0, 1200));
                saveNet(this._buf, got, 'recv');
              }
            }
          } catch (e) {}
        }
      });
      log('hooked ' + nm + ' @' + p);
    } catch (e) { log('hook-err ' + nm + ' ' + e); }
  }
  ['send', 'sendto', 'sendmsg'].forEach(function (n) { try { hookFd(n, true); } catch (e) {} });
  ['recv', 'recvfrom', 'recvmsg'].forEach(function (n) { try { hookFd(n, false); } catch (e) {} });
  // SSL_read / SSL_write (libssl / libclient 自带 boringssl 都尝试)
  [['SSL_read', false], ['SSL_write', true]].forEach(function (pair) {
    var nm = pair[0], isSend = pair[1];
    var addrs = [];
    try { addrs = Module.findExportByName(null, nm) ? [Module.findExportByName(null, nm)] : []; } catch (e) {}
    try {
      var m = Process.findModuleByName('libclient.so');
      if (m) {
        try {
          Module.enumerateExports('libclient.so').forEach(function (e) {
            if (e.name === nm) addrs.push(e.address);
          });
        } catch (err) {}
      }
    } catch (e) {}
    addrs.forEach(function (p) {
      try {
        Interceptor.attach(p, {
          onEnter: function (args) {
            // SSL_read(ssl,buf,num) / SSL_write(ssl,buf,num): buf=args[1], num=args[2]
            this._buf = args[1]; try { this._len = args[2].toInt32(); } catch (e) { this._len = 0; }
            if (isSend && this._len > 16 && this._len < 64 * 1024 * 1024) {
              try {
                var pv = hexAsc(this._buf, this._len, 256);
                if (pv.indexOf('order') >= 0 || pv.indexOf('pay') >= 0 || pv.indexOf('token') >= 0) log(nm + ' SEND\n' + pv.substring(0, 1000));
                saveNet(this._buf, this._len, 'ssl_send');
              } catch (e) {}
            }
          },
          onLeave: function (ret) {
            if (isSend) return;
            try {
              var got = ret.toInt32();
              if (got > 16 && got < 64 * 1024 * 1024) {
                var pv = hexAsc(this._buf, got, 256);
                if (pv.indexOf('order') >= 0 || pv.indexOf('pay') >= 0 || pv.indexOf('token') >= 0 || got > 8192) log(nm + ' RECV got=' + got + '\n' + pv.substring(0, 1000));
                saveNet(this._buf, got, 'ssl_recv');
              }
            } catch (e) {}
          }
        });
        log('hooked ' + nm + ' @' + p);
      } catch (e) { log('hook-err ' + nm + ' ' + e); }
    });
    if (addrs.length === 0) log('noexport ' + nm);
  });
  // libclient 网络协议栈导出: Mercury / Nub / Channel::send / EncryptionFilter / CompressionEncryptionFilter
  function hookClientNet() {
    var ex = [];
    try { ex = Module.enumerateExports('libclient.so'); } catch (e) { log('client-exp-err ' + e); return; }
    var keys = ['mercury', 'nub', 'channel', 'encryptionfilter', 'compressionencryptionfilter', 'interfaceelement', 'compresslength'];
    var n = 0;
    ex.forEach(function (e) {
      var ln = (e.name || '').toLowerCase();
      for (var k = 0; k < keys.length; k++) {
        if (ln.indexOf(keys[k]) >= 0) {
          (function (ent) {
            try {
              Interceptor.attach(ent.address, {
                onEnter: function (args) {
                  try {
                    log('NET-EXPORT ENTER ' + ent.name + ' bt=' + Thread.backtrace(this.context, Backtracer.ACCURATE).map(DebugSymbol.fromAddress).join(' <- ').substring(0, 500));
                  } catch (err) {}
                },
                onLeave: function (ret) { try { log('NET-EXPORT LEAVE ' + ent.name + ' ret=' + ret); } catch (err) {} }
              });
              n++;
              if (n <= 30) log('hooked net:' + ent.name);
            } catch (err) { }
          })(e);
          break;
        }
      }
    });
    log('client-net-hooked=' + n + ' / exports=' + ex.length);
  }
  var tries = 0;
  function tryNet() {
    tries++;
    try {
      if (Process.findModuleByName('libclient.so')) { hookClientNet(); log('ready net-hooks'); }
      else if (tries < 6) setTimeout(tryNet, 3000);
      else log('libclient absent for net hooks');
    } catch (e) { log('tryNet-err ' + e); }
  }
  tryNet();
})();
