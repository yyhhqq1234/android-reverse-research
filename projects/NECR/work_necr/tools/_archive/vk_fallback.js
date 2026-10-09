// vk_fallback.js — 让Vulkan创建失败, 迫使Unity回落GLES (不改APK, 只改运行时行为)
// 用法见说明: frida -H 127.0.0.1:14521 -f com.PrismaThunder.Necromancer --no-pause -l vk_fallback.js
(function () {
  var VK_ERROR_INCOMPATIBLE_DRIVER = -9;
  function killVk(name) {
    var addr = null;
    try { addr = Module.findExportByName(null, name); } catch (e) {}
    if (addr) {
      Interceptor.replace(addr, new NativeCallback(function () {
        console.log('[vk] ' + name + ' -> forced fail');
        return VK_ERROR_INCOMPATIBLE_DRIVER;
      }, 'int', ['pointer', 'pointer', 'pointer']));
      console.log('[+] hooked ' + name);
    } else {
      console.log('[!] export not found: ' + name);
    }
  }
  // Early (loader可能尚未加载, 轮询等待libvulkan出现再hook)
  var tries = 0;
  var timer = setInterval(function () {
    tries++;
    var found = false;
    try {
      var m = Process.findModuleByName('libvulkan.so');
      if (m) found = true;
    } catch (e) {}
    if (found || tries > 60) {
      clearInterval(timer);
      ['vkCreateInstance', 'vkEnumeratePhysicalDevices', 'vkCreateDevice'].forEach(killVk);
      console.log('[*] vk fallback armed (tries=' + tries + ')');
    }
  }, 500);
  // ptrace自守护放行(360双进程)
  try {
    var pt = Module.findExportByName('libc.so', 'ptrace');
    if (pt) Interceptor.replace(pt, new NativeCallback(function () { return 0; }, 'long', ['int', 'int', 'pointer', 'pointer']));
  } catch (e) {}
  console.log('[*] vk_fallback.js loaded');
})();
