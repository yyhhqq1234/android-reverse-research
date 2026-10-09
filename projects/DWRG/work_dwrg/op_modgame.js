var a = [];
Process.enumerateModules().forEach(function(m) {
  if (m.size > 3000000) a.push(m.name + '|' + m.base + '|' + m.size);
});
send({n: a.length, big: a});
