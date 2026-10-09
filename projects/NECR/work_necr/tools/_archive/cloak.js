// cloak.js — 反-反Frida斗篷 (maps/status读过滤), NECR/360专用
// 在vk_fallback之前加载: -l cloak.js -l vk_fallback.js
(function () {
  var marked = {}; // fd -> tag
  function pathOf(args0) {
    try { return args0.readCString() || ''; } catch (e) { return ''; }
  }
  function markIfSensitive(ret, path) {
    try {
      var fd = ret.toInt32();
      if (fd < 0) return;
      if (path.indexOf('/proc/self/') !== -1 || path.indexOf('/proc/thread-self/') !== -1) {
        if (/maps|smaps|status|task|syscall|wchan|mounts/.test(path)) marked[fd] = path;
      }
      if (/re\.frida|frida-agent|linjector|gadget|gmain|gum-js/.test(path)) marked[fd] = path;
    } catch (e) {}
  }
  ['open', 'open64', '__open_2'].forEach(function (nm) {
    var f = null;
    try { f = Module.findExportByName('libc.so', nm); } catch (e) {}
    if (!f) return;
    Interceptor.attach(f, {
      onEnter: function (args) { this._p = pathOf(args[0]); },
      onLeave: function (ret) { markIfSensitive(ret, this._p || ''); }
    });
  });
  ['fopen', 'fopen64'].forEach(function (nm) {
    var f = null;
    try { f = Module.findExportByName('libc.so', nm); } catch (e) {}
    if (!f) return;
    Interceptor.attach(f, {
      onEnter: function (args) { this._p = pathOf(args[0]); },
      onLeave: function (ret) {
        if (ret.isNull()) return;
        try {
          var fileno = Module.findExportByName('libc.so', 'fileno');
          var fd = new NativeFunction(fileno, 'int', ['pointer'])(ret).toInt32?.() ?? -1;
          void fd;
        } catch (e) {}
        // FILE*过滤走read侧: 标记难取fd, 改为通用read过滤(见下)
      }
    });
  });
  // 通用read过滤: 只处理含关键字的内容, 避免误伤
  var readFn = null;
  try { readFn = Module.findExportByName('libc.so', 'read'); } catch (e) {}
  if (readFn) {
    Interceptor.attach(readFn, {
      onEnter: function (args) { this._buf = args[1]; this._fd = args[0].toInt32(); },
      onLeave: function (ret) {
        var n = 0;
        try { n = ret.toInt32(); } catch (e) { return; }
        if (n <= 0 || n > 4 * 1024 * 1024) return;
        var isMarked = marked[this._fd];
        var head = '';
        try { head = this._buf.readCString(Math.min(n, 256)) || ''; } catch (e) { return; }
        var looks = isMarked || /TracerPid|frida|linjector|gadget|gmain|gum-js-loop|fsrv1452|27042/.test(head);
        if (!looks) return;
        try {
          var full = Memory.readUtf8String(this._buf, n);
          if (!full) return;
          var lines = full.split('\n');
          var kept = [];
          for (var i = 0; i < lines.length; i++) {
            var L = lines[i];
            if (/frida|linjector|gadget|gmain|gum-js-loop|fsrv1452/i.test(L)) continue;
            if (/^TracerPid:\s*\d+/.test(L)) { kept.push('TracerPid:\t0'); continue; }
            kept.push(L);
          }
          var out = kept.join('\n');
          if (out.length >= n) return; // 防止溢出则放弃
          Memory.writeUtf8String(this._buf, out);
          ret.replace(out.length);
          if (isMarked) console.log('[cloak] filtered fd=' + this._fd + ' (' + isMarked + ')');
        } catch (e) {}
      }
    });
    console.log('[+] read filter armed');
  }
  // fclose时清标记
  try {
    var fclose = Module.findExportByName('libc.so', 'fclose');
    Interceptor.attach(fclose, { onEnter: function () {}, onLeave: function () {} });
  } catch (e) {}
  try {
    var close = Module.findExportByName('libc.so', 'close');
    Interceptor.attach(close, {
      onEnter: function (args) { try { delete marked[args[0].toInt32()]; } catch (e) {} }
    });
  } catch (e) {}
  console.log('[*] cloak.js loaded');
})();
