// Capture InMemoryDexClassLoader / openInMemoryDexFile buffers at birth (waits for VM).
var DIR = '/sdcard/dexcap/';
var count = 0;
function dumpBB(bb, tag) {
    try {
        if (count >= 25) return;
        var dup = bb.duplicate();
        dup.position(0);
        var rem = dup.remaining();
        if (rem < 1024) return;
        var arr = Java.array('byte', new Array(rem));
        dup.get(arr);
        var fos = Java.use('java.io.FileOutputStream').$new(DIR + tag + '_' + (count++) + '_' + rem + '.bin');
        fos.write(arr);
        fos.close();
        send('[cap] ' + tag + ' ' + rem + ' bytes');
    } catch (e) { send('[cap-err] ' + tag + ' ' + e); }
}
function hook() {
    Java.perform(function () {
        Java.use('java.io.File').$new(DIR).mkdirs();
        try {
            var IM = Java.use('dalvik.system.InMemoryDexClassLoader');
            IM.$init.overloads.forEach(function (ov) {
                ov.implementation = function () {
                    for (var i = 0; i < arguments.length; i++) {
                        try { dumpBB(arguments[i], 'inmem'); } catch (e) {}
                    }
                    return ov.apply(this, arguments);
                };
            });
            send('[hook] InMemoryDexClassLoader ok');
        } catch (e) { send('[hook] IM fail ' + e); }
        try {
            var DF = Java.use('dalvik.system.DexFile');
            DF.openInMemoryDexFile.overloads.forEach(function (ov) {
                ov.implementation = function () {
                    dumpBB(arguments[0], 'oimdf');
                    return ov.apply(this, arguments);
                };
            });
            send('[hook] openInMemoryDexFile ok');
        } catch (e) { send('[hook] oimdf fail ' + e); }
    });
}
var tries = 0;
var t = setInterval(function () {
    try {
        if (typeof Java !== 'undefined' && Java.available) { clearInterval(t); hook(); }
        else if (++tries > 600) { clearInterval(t); send('[hook] timeout no VM'); }
    } catch (e) {}
}, 500);
