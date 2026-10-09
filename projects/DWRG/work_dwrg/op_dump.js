var BASE = ptr("0x7E2A9AC2B000"), SIZE = 0xB11000, CH = 0x20000;
var off = 0, i = 0;
try {
  while (off < SIZE) {
    var n = Math.min(CH, SIZE - off);
    var b = BASE.add(off).readByteArray(n);
    send({i: i}, b);
    off += n; i++;
  }
  send({done: true, n: i});
} catch (e) { send({err: String(e), i: i}); }
