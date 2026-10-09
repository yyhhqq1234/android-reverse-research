package com.applovin.impl;

import android.content.Context;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.google.firebase.messaging.Constants;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public abstract class yl implements Runnable {
    protected final com.applovin.impl.sdk.j a;
    protected final String b;
    protected final com.applovin.impl.sdk.n c;
    private final Context d;
    private String f;
    private boolean g;

    public com.applovin.impl.sdk.j b() {
        return this.a;
    }

    public String c() {
        return this.b;
    }

    public Context a() {
        return this.d;
    }

    public boolean d() {
        return this.g;
    }

    public yl(String str, com.applovin.impl.sdk.j jVar) {
        this(str, jVar, false, null);
    }

    public yl(String str, com.applovin.impl.sdk.j jVar, String str2) {
        this(str, jVar, false, str2);
    }

    public ScheduledFuture b(final Thread thread, final long j) {
        if (j <= 0) {
            return null;
        }
        return this.a.i0().b(new jn(this.a, "timeout:" + this.b, new Runnable() { // from class: com.applovin.impl.yl$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(thread, j);
            }
        }), tm.b.TIMEOUT, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Thread thread, long j) {
        HashMap<String, String> mapHashMap = CollectionUtils.hashMap("name", thread.getState().name());
        if (StringUtils.isValidString(this.f)) {
            mapHashMap.put("details", this.f);
        }
        this.a.D().a(ka.a0, this.b, (Map) mapHashMap);
        if (com.applovin.impl.sdk.n.a()) {
            this.c.k(this.b, "Task has been executing for over " + TimeUnit.MILLISECONDS.toSeconds(j) + " seconds");
        }
    }

    public yl(String str, com.applovin.impl.sdk.j jVar, boolean z) {
        this(str, jVar, z, null);
    }

    public void a(String str) {
        this.f = str;
    }

    public void a(boolean z) {
        this.g = z;
    }

    public yl(String str, com.applovin.impl.sdk.j jVar, boolean z, String str2) {
        this.b = str;
        this.a = jVar;
        this.c = jVar.I();
        this.d = com.applovin.impl.sdk.j.m();
        this.g = z;
        this.f = str2;
    }

    public void a(Throwable th) {
        Map map = CollectionUtils.map(Constants.ScionAnalytics.PARAM_SOURCE, this.b);
        map.put("top_main_method", th.toString());
        map.put("details", StringUtils.emptyIfNull(this.f));
        this.a.D().a(ka.Z, map);
    }
}
