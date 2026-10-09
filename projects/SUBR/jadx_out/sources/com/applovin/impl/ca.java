package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class ca {
    private final com.applovin.impl.sdk.j a;
    private final Map b = new HashMap();

    public ca(com.applovin.impl.sdk.j jVar) {
        if (jVar != null) {
            this.a = jVar;
            return;
        }
        throw new IllegalArgumentException("No sdk specified");
    }

    public void a() {
        synchronized (this.b) {
            this.b.clear();
        }
        f();
    }

    public void b() {
        synchronized (this.b) {
            Iterator it = ba.a().iterator();
            while (it.hasNext()) {
                this.b.remove(((ba) it.next()).b());
            }
            f();
        }
    }

    public JSONObject c() {
        JSONObject jSONObject;
        synchronized (this.b) {
            jSONObject = new JSONObject();
            for (Map.Entry entry : this.b.entrySet()) {
                JsonUtils.putLong(jSONObject, (String) entry.getKey(), ((Long) entry.getValue()).longValue());
            }
        }
        return jSONObject;
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0037 */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0050, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:?, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void e() {
        /*
            r7 = this;
            com.applovin.impl.sdk.j r0 = r7.a
            com.applovin.impl.uj r1 = com.applovin.impl.uj.z
            java.lang.String r2 = "{}"
            java.lang.Object r0 = r0.a(r1, r2)
            java.lang.String r0 = (java.lang.String) r0
            org.json.JSONObject r1 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L37
            r1.<init>(r0)     // Catch: java.lang.Throwable -> L37
            java.util.Map r0 = r7.b     // Catch: java.lang.Throwable -> L37
            monitor-enter(r0)     // Catch: java.lang.Throwable -> L37
            java.util.Iterator r2 = r1.keys()     // Catch: java.lang.Throwable -> L34
        L18:
            boolean r3 = r2.hasNext()     // Catch: java.lang.Throwable -> L34
            if (r3 == 0) goto L32
            java.lang.Object r3 = r2.next()     // Catch: org.json.JSONException -> L18 java.lang.Throwable -> L34
            java.lang.String r3 = (java.lang.String) r3     // Catch: org.json.JSONException -> L18 java.lang.Throwable -> L34
            long r4 = r1.getLong(r3)     // Catch: org.json.JSONException -> L18 java.lang.Throwable -> L34
            java.util.Map r6 = r7.b     // Catch: org.json.JSONException -> L18 java.lang.Throwable -> L34
            java.lang.Long r4 = java.lang.Long.valueOf(r4)     // Catch: org.json.JSONException -> L18 java.lang.Throwable -> L34
            r6.put(r3, r4)     // Catch: org.json.JSONException -> L18 java.lang.Throwable -> L34
            goto L18
        L32:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L34
            goto L50
        L34:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L34
            throw r1     // Catch: java.lang.Throwable -> L37
        L37:
            r0 = move-exception
            com.applovin.impl.sdk.j r1 = r7.a
            r1.I()
            boolean r1 = com.applovin.impl.sdk.n.a()
            if (r1 == 0) goto L50
            com.applovin.impl.sdk.j r1 = r7.a
            com.applovin.impl.sdk.n r1 = r1.I()
            java.lang.String r2 = "GlobalStatsManager"
            java.lang.String r3 = "Unable to load stats"
            r1.a(r2, r3, r0)
        L50:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.ca.e():void");
    }

    private void f() {
        this.a.i0().a(new Runnable() { // from class: com.applovin.impl.ca$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.d();
            }
        }, tm.b.OTHER);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d() {
        try {
            this.a.b(uj.z, c().toString());
        } catch (Throwable th) {
            this.a.I();
            if (com.applovin.impl.sdk.n.a()) {
                this.a.I().a("GlobalStatsManager", "Unable to save stats", th);
            }
        }
    }

    public long c(ba baVar) {
        return a(baVar, 1L);
    }

    public long b(ba baVar) {
        long jLongValue;
        synchronized (this.b) {
            Long l = (Long) this.b.get(baVar.b());
            if (l == null) {
                l = 0L;
            }
            jLongValue = l.longValue();
        }
        return jLongValue;
    }

    public void a(ba baVar) {
        synchronized (this.b) {
            this.b.remove(baVar.b());
        }
        f();
    }

    long a(ba baVar, long j) {
        long jLongValue;
        synchronized (this.b) {
            Long l = (Long) this.b.get(baVar.b());
            if (l == null) {
                l = 0L;
            }
            jLongValue = l.longValue() + j;
            this.b.put(baVar.b(), Long.valueOf(jLongValue));
        }
        f();
        return jLongValue;
    }

    public void b(ba baVar, long j) {
        synchronized (this.b) {
            this.b.put(baVar.b(), Long.valueOf(j));
        }
        f();
    }
}
