package org.json.mediationsdk;

import java.util.HashSet;
import org.json.JSONObject;
import org.json.j5;
import org.json.mediationsdk.adunit.adapter.utility.AdInfo;
import org.json.mediationsdk.impressionData.ImpressionData;
import org.json.mediationsdk.impressionData.ImpressionDataListener;
import org.json.mediationsdk.logger.IronLog;
import org.json.r;
import org.json.xk;

/* JADX INFO: loaded from: classes3.dex */
public abstract class m {
    private HashSet<ImpressionDataListener> a;
    protected r b;
    protected IronSourceSegment c;
    protected AdInfo d;

    public m(HashSet<ImpressionDataListener> hashSet, IronSourceSegment ironSourceSegment) {
        new HashSet();
        this.a = hashSet;
        this.b = new r();
        this.c = ironSourceSegment;
    }

    protected void a(j5 j5Var, String str) {
        HashSet<ImpressionDataListener> hashSet;
        if (j5Var == null) {
            IronLog.INTERNAL.verbose("no auctionResponseItem or listener");
            return;
        }
        ImpressionData impressionDataA = j5Var.a(str);
        if (impressionDataA != null) {
            synchronized (this) {
                hashSet = (HashSet) this.a.clone();
            }
            for (ImpressionDataListener impressionDataListener : hashSet) {
                IronLog.CALLBACK.info("onImpressionSuccess " + impressionDataListener.getClass().getSimpleName() + ": " + impressionDataA);
                impressionDataListener.onImpressionSuccess(impressionDataA);
            }
        }
    }

    protected void a(IronSource.AD_UNIT ad_unit) {
        this.b.a(ad_unit, false);
    }

    public void a(IronSourceSegment ironSourceSegment) {
        this.c = ironSourceSegment;
    }

    public void a(ImpressionData impressionData, xk xkVar) {
        if (impressionData != null) {
            this.d = new AdInfo(impressionData, xkVar);
        }
    }

    public void a(ImpressionDataListener impressionDataListener) {
        synchronized (this) {
            this.a.remove(impressionDataListener);
        }
    }

    protected void a(JSONObject jSONObject, IronSource.AD_UNIT ad_unit) {
        this.b.a(ad_unit, jSONObject != null ? jSONObject.optBoolean(d.f, false) : false);
    }

    public void b(ImpressionDataListener impressionDataListener) {
        synchronized (this) {
            this.a.add(impressionDataListener);
        }
    }

    public void c() {
        synchronized (this) {
            this.a.clear();
        }
    }

    protected String e() {
        return "fallback_" + System.currentTimeMillis();
    }

    public void f() {
        this.d = null;
    }
}
