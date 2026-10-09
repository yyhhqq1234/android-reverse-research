var base = ptr('0x7f0d1c491000');
var off = 0x12e656e;
var a = base.add(off);
var s = '';
try { s = a.readUtf8String(24); } catch (e) { s = 'ERR:' + e; }
send({addr: a.toString(), s: s});
