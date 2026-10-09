package org.json;

import android.os.Handler;
import java.util.concurrent.TimeUnit;
import org.json.sdk.utils.IronSourceStorageUtils;

/* JADX INFO: loaded from: classes3.dex */
public class va implements pe {
    private static final int e = 5;
    private static va f;
    private ua a;
    private final JSONObject b;
    private Thread c;
    private final String d;

    private va(String str, Cif cif, JSONObject jSONObject) {
        this.d = str;
        this.a = new ua(cif.a());
        this.b = jSONObject;
        IronSourceStorageUtils.deleteFolder(b());
        IronSourceStorageUtils.makeDir(b());
    }

    public static synchronized va a(String str, Cif cif, JSONObject jSONObject) {
        if (f == null) {
            f = new va(str, cif, jSONObject);
        }
        return f;
    }

    private Thread a(sa saVar, Handler handler) {
        return new Thread(new js(saVar, handler));
    }

    private String b() {
        return IronSourceStorageUtils.buildAbsolutePathToDirInCache(this.d, a9.D);
    }

    private Thread b(mg mgVar, String str, int i, int i2, Handler handler) {
        if (i <= 0) {
            i = this.b.optInt("connectionTimeout", 5);
        }
        if (i2 <= 0) {
            i2 = this.b.optInt("readTimeout", 5);
        }
        boolean zOptBoolean = this.b.optBoolean(a9.H, false);
        TimeUnit timeUnit = TimeUnit.SECONDS;
        return a(new sa(mgVar, str, (int) timeUnit.toMillis(i), (int) timeUnit.toMillis(i2), zOptBoolean, b()), handler);
    }

    public String a() {
        return this.d;
    }

    @Override // org.json.pe
    public void a(mg mgVar, String str) {
        int iOptInt = this.b.optInt("connectionTimeout", 5);
        int iOptInt2 = this.b.optInt("readTimeout", 5);
        boolean zOptBoolean = this.b.optBoolean(a9.H, false);
        TimeUnit timeUnit = TimeUnit.SECONDS;
        Thread threadA = a(new sa(mgVar, str, (int) timeUnit.toMillis(iOptInt), (int) timeUnit.toMillis(iOptInt2), zOptBoolean, b()), this.a);
        this.c = threadA;
        threadA.start();
    }

    @Override // org.json.pe
    public void a(mg mgVar, String str, int i, int i2) {
        b(mgVar, str, i, i2, this.a).start();
    }

    @Override // org.json.pe
    public void a(mg mgVar, String str, int i, int i2, Handler handler) {
        b(mgVar, str, i, i2, handler).start();
    }

    @Override // org.json.pe
    public void a(mn mnVar) {
        this.a.a(mnVar);
    }

    public boolean c() {
        Thread thread = this.c;
        return thread != null && thread.isAlive();
    }

    public synchronized void d() {
        f = null;
        ua uaVar = this.a;
        if (uaVar != null) {
            uaVar.a();
            this.a = null;
        }
    }
}
