package org.json;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import org.json.environment.ContextProvider;
import org.json.mediationsdk.logger.IronLog;

/* JADX INFO: loaded from: classes3.dex */
public class l9 {
    private static final String k = "1.0.6";
    public static String l = "";
    private final oe a;
    private String b;
    private String c;
    private String d;
    private String e;
    private ContextProvider f;
    public Thread.UncaughtExceptionHandler g;
    public String h;
    private String i;
    private boolean j;

    class a implements org.json.b {
        a() {
        }

        @Override // org.json.b
        public void a() {
            Map<Thread, StackTraceElement[]> allStackTraces = Thread.getAllStackTraces();
            StringBuilder sb = new StringBuilder(128);
            for (Thread thread : allStackTraces.keySet()) {
                StackTraceElement[] stackTrace = thread.getStackTrace();
                if (stackTrace != null && stackTrace.length > 0) {
                    sb.append("*** Thread Name ");
                    sb.append(thread.getName());
                    sb.append(" Thread ID ");
                    sb.append(thread.getId());
                    sb.append(" (");
                    sb.append(thread.getState().toString());
                    sb.append(") ***\n");
                    for (StackTraceElement stackTraceElement : stackTrace) {
                        sb.append(stackTraceElement.toString());
                        sb.append(" ");
                        sb.append(thread.getState().toString());
                        sb.append("\n");
                    }
                }
            }
            l9.l = sb.toString();
        }

        @Override // org.json.b
        public void b() {
        }
    }

    class b implements Runnable {
        final /* synthetic */ Context a;
        final /* synthetic */ String b;

        b(Context context, String str) {
            this.a = context;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                String strP = l9.this.a.p(this.a);
                if (!TextUtils.isEmpty(strP)) {
                    l9.this.c = strP;
                }
                String strA = l9.this.a.a(this.a);
                if (!TextUtils.isEmpty(strA)) {
                    l9.this.e = strA;
                }
                SharedPreferences.Editor editorEdit = this.a.getSharedPreferences("CRep", 0).edit();
                editorEdit.putString("String1", l9.this.c);
                editorEdit.putString("sId", this.b);
                editorEdit.apply();
            } catch (Exception e) {
                IronLog.INTERNAL.error(e.toString());
            }
        }
    }

    class c extends m9 {
        c(JSONObject jSONObject) {
            super(jSONObject);
        }
    }

    private static class d {
        static volatile l9 a = new l9(null);

        private d() {
        }
    }

    private l9() {
        this.j = false;
        this.a = jl.P().f();
        this.f = ContextProvider.getInstance();
        Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        this.g = defaultUncaughtExceptionHandler;
        this.i = " ";
        this.h = "https://o-crash.mediation.unity3d.com/reporter";
        Thread.setDefaultUncaughtExceptionHandler(new j9(defaultUncaughtExceptionHandler));
    }

    /* synthetic */ l9(a aVar) {
        this();
    }

    private String a(Context context) {
        ConnectivityManager connectivityManager;
        if (context == null || (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) == null) {
            return "none";
        }
        try {
            if (Build.VERSION.SDK_INT >= 23) {
                NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
                if (networkCapabilities == null) {
                    return "none";
                }
                if (networkCapabilities.hasTransport(1)) {
                    return u8.b;
                }
                if (networkCapabilities.hasTransport(0)) {
                    return u8.g;
                }
            } else {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                    if (activeNetworkInfo.getTypeName().equalsIgnoreCase("WIFI")) {
                        return u8.b;
                    }
                    if (activeNetworkInfo.getTypeName().equalsIgnoreCase("MOBILE")) {
                        return u8.g;
                    }
                }
            }
            return "none";
        } catch (Exception e) {
            IronLog.INTERNAL.error(e.toString());
            return "none";
        }
    }

    private void a(Context context, HashSet<String> hashSet) {
        String strA = a(a());
        if (strA.equals("none")) {
            return;
        }
        SharedPreferences sharedPreferences = context.getSharedPreferences("CRep", 0);
        String string = sharedPreferences.getString("String1", this.c);
        String string2 = sharedPreferences.getString("sId", this.d);
        List<ac> listB = v9.b();
        IronLog.INTERNAL.verbose("reportList size " + listB.size());
        for (ac acVar : listB) {
            JSONObject jSONObject = new JSONObject();
            String strB = acVar.b();
            String strE = acVar.e();
            String strD = acVar.d();
            String packageName = context.getPackageName();
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("crashDate", strB);
                jSONObject2.put("stacktraceCrash", strE);
                jSONObject2.put("crashType", strD);
                jSONObject2.put("CrashReporterVersion", k);
                jSONObject2.put(y8.i.q, "8.5.0");
                jSONObject2.put(y8.i.x, this.a.b(context));
                jSONObject2.put(y8.i.W, z3.b(context, packageName));
                jSONObject2.put(y8.i.n, this.a.o());
                jSONObject2.put("network", strA);
                jSONObject2.put(y8.i.p, this.a.k());
                jSONObject2.put(y8.i.l, this.a.e());
                jSONObject2.put("deviceOS", this.a.l());
                jSONObject2.put("advertisingId", string);
                jSONObject2.put(y8.i.k, this.a.g());
                jSONObject2.put("systemProperties", System.getProperties());
                jSONObject2.put("bundleId", packageName);
                jSONObject2.put("sId", string2);
                if (!TextUtils.isEmpty(this.e)) {
                    jSONObject2.put(y8.i.M, Boolean.parseBoolean(this.e));
                }
                if (hashSet == null || hashSet.isEmpty()) {
                    jSONObject = jSONObject2;
                } else {
                    for (String str : hashSet) {
                        try {
                            if (jSONObject2.has(str)) {
                                jSONObject.put(str, jSONObject2.opt(str));
                            }
                        } catch (Exception e) {
                            IronLog.INTERNAL.error(e.toString());
                        }
                    }
                }
            } catch (Exception unused) {
            }
            if (jSONObject.length() == 0) {
                Log.d("ISCrashReport", " Is Empty");
            } else {
                new Thread(new c(jSONObject)).start();
            }
        }
        v9.a();
    }

    static List<ac> c() {
        return null;
    }

    public static l9 d() {
        return d.a;
    }

    Context a() {
        return this.f.getApplicationContext();
    }

    public void a(Throwable th) {
        IronLog.INTERNAL.verbose("isInitialized=" + this.j);
        if (!this.j || th == null) {
            return;
        }
        new ac(new k9(th).getStackTrace(), "" + System.currentTimeMillis(), "Caught_IS_Crash").a();
    }

    public void a(HashSet<String> hashSet, String str, String str2, boolean z, String str3, int i, boolean z2) {
        Context applicationContext = this.f.getApplicationContext();
        if (applicationContext != null) {
            Log.d("automation_log", "init ISCrashReporter");
            if (!TextUtils.isEmpty(str2)) {
                this.i = str2;
            }
            if (!TextUtils.isEmpty(str)) {
                this.h = str;
            }
            this.d = str3;
            if (z) {
                new org.json.a(i).a(z2).b(true).a(new a()).start();
            }
            a(applicationContext, hashSet);
            new Thread(new b(applicationContext, str3)).start();
        }
        this.j = true;
        IronLog.INTERNAL.verbose("initialized");
    }

    public String b() {
        return k;
    }

    String e() {
        return this.i;
    }
}
