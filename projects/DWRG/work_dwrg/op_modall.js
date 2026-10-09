var a = [];
Process.enumerateModules().forEach(function(m) { a.push(m.name + '|' + m.base + '|' + m.size); });
send({n: a.length, all: a});
