package org.json;

import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0005B\u0007¢\u0006\u0004\b!\u0010\"J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\b\u0010\b\u001a\u00020\u0004H\u0016J\u0012\u0010\u000b\u001a\u00020\u00042\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\fH\u0016J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0016J\b\u0010\u0010\u001a\u00020\u0004H\u0016J\u001a\u0010\u0014\u001a\u00020\u00042\b\u0010\u0011\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0013\u001a\u00020\u0012H\u0016J\b\u0010\u0015\u001a\u00020\u0004H\u0016J\b\u0010\u0016\u001a\u00020\u0004H\u0016J\u0012\u0010\u0017\u001a\u00020\u00042\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016J\b\u0010\u0018\u001a\u00020\u0004H\u0016J\u001c\u0010\u001c\u001a\u00020\u00042\b\u0010\u0019\u001a\u0004\u0018\u00010\t2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0016R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010\u001dR\u001c\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 ¨\u0006#"}, d2 = {"Lcom/ironsource/pc;", "Lcom/ironsource/in;", "Lcom/ironsource/qc;", "loadListener", "", "a", "Lcom/ironsource/rc;", "showListener", "onInterstitialInitSuccess", "", "description", "onInterstitialInitFailed", "Lcom/ironsource/oi;", y8.h.p0, "onInterstitialLoadSuccess", "onInterstitialLoadFailed", "onInterstitialOpen", "demandSourceId", "", "amount", "onInterstitialAdRewarded", "onInterstitialClose", "onInterstitialShowSuccess", "onInterstitialShowFailed", "onInterstitialClick", y8.h.j0, "Lorg/json/JSONObject;", y8.h.l0, "onInterstitialEventNotificationReceived", "Lcom/ironsource/qc;", "Ljava/lang/ref/WeakReference;", "b", "Ljava/lang/ref/WeakReference;", "<init>", "()V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class pc implements in {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private qc loadListener;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private WeakReference<rc> showListener = new WeakReference<>(null);

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0006\u0010\u0007R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\b"}, d2 = {"Lcom/ironsource/pc$a;", "", "", "b", "Ljava/lang/String;", "AD_VISIBLE_EVENT_NAME", "<init>", "()V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class a {
        public static final a a = new a();

        /* JADX INFO: renamed from: b, reason: from kotlin metadata */
        public static final String AD_VISIBLE_EVENT_NAME = "impressions";

        private a() {
        }
    }

    public final void a(qc loadListener) {
        Intrinsics.checkNotNullParameter(loadListener, "loadListener");
        this.loadListener = loadListener;
    }

    public final void a(rc showListener) {
        Intrinsics.checkNotNullParameter(showListener, "showListener");
        this.showListener = new WeakReference<>(showListener);
    }

    @Override // org.json.in
    public void onInterstitialAdRewarded(String demandSourceId, int amount) {
        rc rcVar = this.showListener.get();
        if (rcVar != null) {
            rcVar.onAdInstanceDidReward(demandSourceId, amount);
        }
    }

    @Override // org.json.in
    public void onInterstitialClick() {
        rc rcVar = this.showListener.get();
        if (rcVar != null) {
            rcVar.onAdInstanceDidClick();
        }
    }

    @Override // org.json.in
    public void onInterstitialClose() {
        rc rcVar = this.showListener.get();
        if (rcVar != null) {
            rcVar.onAdInstanceDidDismiss();
        }
    }

    @Override // org.json.in
    public void onInterstitialEventNotificationReceived(String eventName, JSONObject extData) {
        rc rcVar;
        if (!Intrinsics.areEqual(eventName, "impressions") || (rcVar = this.showListener.get()) == null) {
            return;
        }
        rcVar.onAdInstanceDidBecomeVisible();
    }

    @Override // org.json.in
    public void onInterstitialInitFailed(String description) {
    }

    @Override // org.json.in
    public void onInterstitialInitSuccess() {
    }

    @Override // org.json.in
    public void onInterstitialLoadFailed(String description) {
        Intrinsics.checkNotNullParameter(description, "description");
        qc qcVar = this.loadListener;
        if (qcVar != null) {
            qcVar.a(description);
        }
    }

    @Override // org.json.in
    public void onInterstitialLoadSuccess(oi adInstance) {
        Intrinsics.checkNotNullParameter(adInstance, "adInstance");
        qc qcVar = this.loadListener;
        if (qcVar != null) {
            qcVar.a(adInstance);
        }
    }

    @Override // org.json.in
    public void onInterstitialOpen() {
        rc rcVar = this.showListener.get();
        if (rcVar != null) {
            rcVar.onAdInstanceDidShow();
        }
    }

    @Override // org.json.in
    public void onInterstitialShowFailed(String description) {
        rc rcVar = this.showListener.get();
        if (rcVar != null) {
            rcVar.a(description);
        }
    }

    @Override // org.json.in
    public void onInterstitialShowSuccess() {
    }
}
