var seq = 0;
var c = Module.findGlobalExportByName('connect');
if (c) {
  Interceptor.attach(c, {
    onEnter: function(a) {
      try {
        var fam = a[1].readU16();
        var ep = '?';
        if (fam === 2) {
          var p = (a[1].add(2).readU16() & 0xff) << 8 | ((a[1].add(2).readU16() >> 8) & 0xff);
          var ip = a[1].add(4);
          ep = ip.readU8() + '.' + ip.add(1).readU8() + '.' + ip.add(2).readU8() + '.' + ip.add(3).readU8() + ':' + p;
        } else if (fam === 10) { ep = 'v6'; }
        send({t: 'conn', fd: a[0].toInt32(), ep: ep});
      } catch (e) {}
    }
  });
}
var rc = Module.findGlobalExportByName('recvfrom');
if (rc) {
  Interceptor.attach(rc, {
    onEnter: function(a) { this.fd = a[0].toInt32(); },
    onLeave: function(r) { if (r.toInt32() < 0) send({t: 'rfail', fd: this.fd}); }
  });
}
send({t: 'armed'});
