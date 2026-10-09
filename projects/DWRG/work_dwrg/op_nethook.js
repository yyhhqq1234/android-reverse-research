function hx(b, n) {
  var u = new Uint8Array(b);
  var s = "";
  n = Math.min(n, u.length);
  for (var i = 0; i < n; i++) s += (u[i] < 16 ? "0" : "") + u[i].toString(16);
  return s;
}
var fds = {};
function hook(name, onCall) {
  try {
    var a = Module.findGlobalExportByName(name);
    if (a === null) { send({miss: name}); return; }
    Interceptor.attach(a, { onEnter: onCall });
    send({hooked: name});
  } catch (e) { send({herr: name + ":" + String(e)}); }
}
function peer(fd) {
  try {
    if (typeof Socket !== "undefined" && Socket.peerAddress) {
      var p = Socket.peerAddress(fd);
      return p.ip ? p.ip + ":" + p.port : (p.path ? "unix:" + p.path : "?");
    }
  } catch (e) {}
  return "?";
}
function sockAddr(sa) {
  try {
    var fam = sa.readU16();
    if (fam === 2) {
      var port = ((sa.add(2).readU8() << 8) | sa.add(3).readU8());
      var ip = sa.add(4).readU8() + "." + sa.add(5).readU8() + "." + sa.add(6).readU8() + "." + sa.add(7).readU8();
      return ip + ":" + port;
    }
    if (fam === 10) {
      var p6 = ((sa.add(2).readU8() << 8) | sa.add(3).readU8());
      var g = [];
      for (var k = 0; k < 8; k++) g.push(sa.add(8 + k * 2).readU8().toString(16) + sa.add(9 + k * 2).readU8().toString(16));
      return "[" + g.join(":") + "]:" + p6;
    }
    return "fam" + fam;
  } catch (e) { return "err"; }
}
hook("connect", function (args) {
  var fd = args[0].toInt32();
  var ep = sockAddr(args[1]);
  fds[fd] = ep;
  send({ev: "connect", fd: fd, ep: ep});
});
hook("sendto", function (args) {
  var fd = args[0].toInt32();
  var len = args[2].toInt32();
  var ep = fds[fd] || peer(fd);
  var preview = "";
  try { preview = hx(args[1].readByteArray(Math.min(len, 32)), 32); } catch (e) {}
  send({ev: "sendto", fd: fd, ep: ep, len: len, head: preview});
});
hook("send", function (args) {
  var fd = args[0].toInt32();
  var len = args[2].toInt32();
  var preview = "";
  try { preview = hx(args[1].readByteArray(Math.min(len, 32)), 32); } catch (e) {}
  send({ev: "send", fd: fd, ep: fds[fd] || "?", len: len, head: preview});
});
hook("sendmsg", function (args) {
  var fd = args[0].toInt32();
  send({ev: "sendmsg", fd: fd, ep: fds[fd] || peer(fd)});
});
hook("sendmmsg", function (args) {
  var fd = args[0].toInt32();
  send({ev: "sendmmsg", fd: fd, ep: fds[fd] || peer(fd), n: args[2].toInt32()});
});
hook("write", function (args) {
  var fd = args[0].toInt32();
  if (fds[fd]) send({ev: "write", fd: fd, ep: fds[fd], len: args[2].toInt32()});
});
hook("recv", function (args) {
  var fd = args[0].toInt32();
  if (fds[fd] && fds[fd].indexOf("443") >= 0) send({ev: "recv", fd: fd, ep: fds[fd], want: args[2].toInt32()});
});
hook("recvfrom", function (args) {
  var fd = args[0].toInt32();
  send({ev: "recvfrom", fd: fd, ep: fds[fd] || peer(fd), want: args[2].toInt32()});
});
