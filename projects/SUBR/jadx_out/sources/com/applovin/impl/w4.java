package com.applovin.impl;

import android.app.Activity;
import android.content.Context;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class w4 extends dc {
    private com.applovin.impl.sdk.j f;
    private List g;
    private final AtomicBoolean h;
    private List i;

    public enum a {
        RECENT_ADS,
        COUNT
    }

    @Override // com.applovin.impl.dc
    protected int b() {
        return a.COUNT.ordinal();
    }

    public String toString() {
        return "CreativeDebuggerListAdapter{isInitialized=" + this.h.get() + "}";
    }

    public w4(Context context) {
        super(context);
        this.h = new AtomicBoolean();
        this.i = new ArrayList();
    }

    public void g() {
        this.h.compareAndSet(true, false);
    }

    public boolean f() {
        return this.i.size() == 0;
    }

    public com.applovin.impl.sdk.j e() {
        return this.f;
    }

    @Override // com.applovin.impl.dc
    protected cc e(int i) {
        return new fj("RECENT ADS");
    }

    public List d() {
        return this.g;
    }

    @Override // com.applovin.impl.dc
    protected List c(int i) {
        return this.i;
    }

    private List a(List list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new u6((v6) it.next(), this.a));
        }
        return arrayList;
    }

    @Override // com.applovin.impl.dc
    protected int d(int i) {
        return this.i.size();
    }

    public void a(List list, com.applovin.impl.sdk.j jVar) {
        Activity activityM0;
        this.f = jVar;
        this.g = list;
        if (!(this.a instanceof Activity) && (activityM0 = jVar.m0()) != null) {
            this.a = activityM0;
        }
        if (list != null && this.h.compareAndSet(false, true)) {
            this.i = a(this.g);
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.w4$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.notifyDataSetChanged();
            }
        });
    }
}
