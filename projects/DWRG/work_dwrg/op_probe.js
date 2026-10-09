try {
  var b = ptr("0x7E2A9AC2B000").readByteArray(16);
  var u = new Uint8Array(b);
  var hx = "";
  for (var i = 0; i < 16; i++) hx += (u[i] < 16 ? "0" : "") + u[i].toString(16);
  send({ok: hx});
} catch (e) { send({err: String(e)}); }
