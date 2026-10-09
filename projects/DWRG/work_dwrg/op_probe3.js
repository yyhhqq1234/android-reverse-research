try {
  var mods = Process.enumerateModules();
  var out = [];
  for (var i = 0; i < mods.length; i++) {
    if (/libc|libnet|netd|houdini/i.test(mods[i].name)) out.push(mods[i].name + "@" + mods[i].base);
  }
  send({hits: out, total: mods.length});
} catch (e) { send({err: String(e)}); }
