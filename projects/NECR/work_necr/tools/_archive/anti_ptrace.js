// anti_ptrace.js — NECR B级前置反检测 (spawn模式注入, 只记录/放行,不改游戏行为)
// 用法: frida -U -f com.PrismaThunder.Necromancer --no-pause -l anti_ptrace.js
// 注意: 与frida-server版本配套; 端口/包名暴露时配合改名+换端口
(function () {
  // 1) ptrace(TRACEME) -> 返回0 (放行, 防双进程守护自杀)
  try {
    var ptrace = Module.findExportByName('libc.so', 'ptrace');
    if (ptrace) {
      Interceptor.replace(ptrace, new NativeCallback(function () { return 0; }, 'long', ['int', 'int', 'pointer', 'pointer']));
      console.log('[+] ptrace hooked');
    }
  } catch (e) { console.log('[-] ptrace: ' + e); }
  // 2) maps自检去特征: fopen/readlink含frida/gadget/linjector则返回空
  try {
    ['fopen', 'fopen64'].forEach(function (nm) {
      var f = null;
      try { f = Module.findExportByName('libc.so', nm); } catch (e) {}
      if (f) {
        Interceptor.attach(f, {
          onEnter: function (args) {
            try {
              var p = args[0].readCString() || '';
              this._hide = (p.indexOf('maps') !== -1 || p.indexOf('status') !== -1 || p.indexOf('wchan') !== -1);
            } catch (e) { this._hide = false; }
          }
        });
      }
    });
    console.log('[+] fopen watch armed (log-only, extend to filter as needed)');
  } catch (e) { console.log('[-] fopen: ' + e); }
  // 3) TracerPid伪装: __system_property_get / property_get 保持原样, 仅记录property读取(按需扩展伪装ro.*)
  try {
    var pget = Module.findExportByName('libc.so', '__system_property_get');
    if (pget) {
      Interceptor.attach(pget, {
        onEnter: function (args) {
          try { this._k = args[0].readCString(); } catch (e) {}
        },
        onLeave: function (ret) {
          if (this._k && /qemu|genymotion|vbox|nox|ttVM|vmos/i.test(this._k)) {
            console.log('[*] prop read: ' + this._k);
          }
        }
      });
      console.log('[+] __system_property_get watch armed');
    }
  } catch (e) { console.log('[-] prop: ' + e); }
  // 4) RegisterNatives枚举 (libOGM动态注册, 只记录)
  try {
    var rn = null;
    try { rn = Module.findExportByName(null, 'RegisterNatives'); } catch (e) {}
    if (rn) {
      Interceptor.attach(rn, {
        onEnter: function (args) {
          try {
            var env = args[0], clazz = args[1], methods = args[2], n = args[3].toInt32();
            console.log('[RN] class=' + Java.vm.tryGetEnv().getClassName(clazz) + ' nMethods=' + n);
            for (var i = 0; i < n; i++) {
              var m = methods.add(i * Process.pointerSize * 3);
              console.log('  -> name=' + m.readPointer().readCString()
                + ' sig=' + m.add(Process.pointerSize).readPointer().readCString()
                + ' fn=' + m.add(Process.pointerSize * 2).readPointer());
            }
          } catch (e) { console.log('[-] RN parse: ' + e); }
        }
      });
      console.log('[+] RegisterNatives hooked');
    } else { console.log('[!] RegisterNatives not found (attach later after libOGM loads)'); }
  } catch (e) { console.log('[-] RN: ' + e); }
  console.log('[*] anti_ptrace.js loaded');
})();
