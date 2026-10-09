package com.applovin.impl.sdk;

import com.applovin.impl.ka;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sj;
import com.applovin.impl.yp;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class NativeCrashReporter implements g.d {
    private static boolean a;
    private static boolean b;
    private static final NativeCrashReporter c = new NativeCrashReporter();

    private NativeCrashReporter() {
    }

    public static void a(j jVar) {
        if (jVar == null) {
            return;
        }
        if (!((Boolean) jVar.a(sj.s4)).booleanValue() && !yp.i(j.m())) {
            if (b) {
                try {
                    g gVarK = jVar.k();
                    NativeCrashReporter nativeCrashReporter = c;
                    gVarK.a(nativeCrashReporter);
                    nativeCrashReporter.disable();
                    return;
                } catch (Throwable th) {
                    jVar.I();
                    if (n.a()) {
                        jVar.I().a("NativeCrashReporter", "Failed to disable native crash reporter", th);
                    }
                    jVar.D().a("NativeCrashReporter", "disableInstance", th);
                    return;
                }
            }
            return;
        }
        if (a()) {
            List listC = jVar.c(sj.t4);
            int[] iArr = new int[listC.size()];
            for (int i = 0; i < listC.size(); i++) {
                try {
                    iArr[i] = Integer.parseInt((String) listC.get(i));
                } catch (NumberFormatException unused) {
                }
            }
            File file = new File(j.m().getCacheDir(), "al-reports");
            if (file.exists()) {
                a(file, jVar);
            } else if (!file.mkdir()) {
                jVar.I();
                if (n.a()) {
                    jVar.I().b("NativeCrashReporter", "Failed to create reports directory");
                    return;
                }
                return;
            }
            try {
                NativeCrashReporter nativeCrashReporter2 = c;
                nativeCrashReporter2.enable(file.getAbsolutePath(), iArr, ((Boolean) jVar.a(sj.u4)).booleanValue());
                HashSet hashSet = new HashSet();
                hashSet.add(g.c.SHOW);
                hashSet.add(g.c.CLICK);
                hashSet.add(g.c.SHOW_ERROR);
                hashSet.add(g.c.DESTROY);
                jVar.k().a(nativeCrashReporter2, hashSet);
            } catch (Throwable th2) {
                jVar.I();
                if (n.a()) {
                    jVar.I().a("NativeCrashReporter", "Failed to enable native crash reporter", th2);
                }
                jVar.D().a("NativeCrashReporter", "enableInstance", th2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(g.b bVar) {
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putString(jSONObject, "ad_unit_id", bVar.a());
        JsonUtils.putString(jSONObject, "ad_format", bVar.g());
        JsonUtils.putString(jSONObject, "network_name", bVar.c());
        JsonUtils.putString(jSONObject, "adapter_class", bVar.b());
        JsonUtils.putString(jSONObject, "adapter_version", bVar.d());
        JsonUtils.putString(jSONObject, "bcode", bVar.e());
        JsonUtils.putString(jSONObject, "creative_id", bVar.f());
        JsonUtils.putString(jSONObject, "operation", bVar.i().toString());
        updateAdInfo(bVar.h(), jSONObject.toString());
    }

    private native void disable();

    private native void enable(String str, int[] iArr, boolean z);

    private native void removeAdInfo(int i);

    private native void updateAdInfo(int i, String str);

    private static boolean a() {
        if (!a) {
            a = true;
            try {
                System.loadLibrary("applovin-native-crash-reporter");
                b = true;
            } catch (Throwable th) {
                n.b("NativeCrashReporter", "Failed to load native crash reporter library", th);
            }
        }
        return b;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0096  */
    /* JADX WARN: Code duplicated, block: B:31:0x009f  */
    /* JADX WARN: Instruction removed from duplicated block: B:31:0x009f, please report this as an issue */
    private static void a(File file, j jVar) throws Throwable {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return;
        }
        for (File file2 : fileArrListFiles) {
            String strE = jVar.A().e(file2);
            if (StringUtils.isValidString(strE)) {
                String[] strArrSplit = strE.split("@@@@@");
                if (strArrSplit.length == 3) {
                    try {
                        String str = strArrSplit[0];
                        String str2 = strArrSplit[1];
                        JSONArray jSONArray = new JSONArray(strArrSplit[2]);
                        if (jSONArray.length() == 0) {
                            jVar.D().a(ka.X, str2, (Map) CollectionUtils.hashMap("error_message", str));
                        } else {
                            ArrayList arrayList = new ArrayList(jSONArray.length());
                            for (int i = 0; i < jSONArray.length(); i++) {
                                JSONObject jSONObject = JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null);
                                if (jSONObject != null) {
                                    HashMap<String, String> mapHashMap = CollectionUtils.hashMap("error_message", str);
                                    mapHashMap.putAll(JsonUtils.toStringMap(jSONObject));
                                    arrayList.add(mapHashMap);
                                }
                            }
                            jVar.D().a(ka.X, str2, arrayList, 0L);
                        }
                    } catch (Throwable th) {
                        jVar.I();
                        if (n.a()) {
                            jVar.I().a("NativeCrashReporter", "Failed to symbolicate native crash report", th);
                        }
                    }
                } else {
                    jVar.I();
                    if (n.a()) {
                        jVar.I().b("NativeCrashReporter", "Failed to read native crash error report: " + file2.getAbsolutePath());
                    }
                }
            } else {
                jVar.I();
                if (n.a()) {
                    jVar.I().b("NativeCrashReporter", "Failed to read native crash error report: " + file2.getAbsolutePath());
                }
            }
            try {
                if (!file2.delete()) {
                    jVar.I();
                    if (n.a()) {
                        jVar.I().b("NativeCrashReporter", "Failed to delete native crash report: " + file2.getAbsolutePath());
                    }
                }
            } catch (Throwable th2) {
                jVar.I();
                if (n.a()) {
                    jVar.I().a("NativeCrashReporter", "Failed to delete native crash report: " + file2.getAbsolutePath(), th2);
                }
            }
        }
    }

    @Override // com.applovin.impl.sdk.g.d
    public void a(final g.b bVar) {
        if (bVar.i() == g.c.DESTROY) {
            removeAdInfo(bVar.h());
        } else {
            yp.a(new Runnable() { // from class: com.applovin.impl.sdk.NativeCrashReporter$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.b(bVar);
                }
            });
        }
    }
}
