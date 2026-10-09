package org.json;

import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0018\u0010\u0019J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\b\u0010\b\u001a\u00020\u0004H\u0016J\u0012\u0010\u000b\u001a\u00020\u00042\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016J\b\u0010\f\u001a\u00020\u0004H\u0016J\u0018\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0016J\b\u0010\u0013\u001a\u00020\u0004H\u0016R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010\u0014R\u001c\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u001a"}, d2 = {"Lcom/ironsource/hn;", "Lcom/ironsource/gn;", "Lcom/ironsource/x5;", "loadListener", "", "a", "Lcom/ironsource/z5;", "showListener", "onBannerInitSuccess", "", "description", "onBannerInitFailed", "onBannerClick", "Lcom/ironsource/oi;", y8.h.p0, "Lcom/ironsource/wf;", "adContainer", "onBannerLoadSuccess", "onBannerLoadFail", "onBannerShowSuccess", "Lcom/ironsource/x5;", "Ljava/lang/ref/WeakReference;", "b", "Ljava/lang/ref/WeakReference;", "<init>", "()V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class hn implements gn {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private x5 loadListener;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private WeakReference<z5> showListener = new WeakReference<>(null);

    public final void a(x5 loadListener) {
        Intrinsics.checkNotNullParameter(loadListener, "loadListener");
        this.loadListener = loadListener;
    }

    public final void a(z5 showListener) {
        Intrinsics.checkNotNullParameter(showListener, "showListener");
        this.showListener = new WeakReference<>(showListener);
    }

    @Override // org.json.gn
    public void onBannerClick() {
        z5 z5Var = this.showListener.get();
        if (z5Var != null) {
            z5Var.onBannerClick();
        }
    }

    @Override // org.json.gn
    public void onBannerInitFailed(String description) {
    }

    @Override // org.json.gn
    public void onBannerInitSuccess() {
    }

    @Override // org.json.gn
    public void onBannerLoadFail(String description) {
        Intrinsics.checkNotNullParameter(description, "description");
        x5 x5Var = this.loadListener;
        if (x5Var != null) {
            x5Var.onBannerLoadFail(description);
        }
    }

    @Override // org.json.gn
    public void onBannerLoadSuccess(oi adInstance, wf adContainer) {
        Intrinsics.checkNotNullParameter(adInstance, "adInstance");
        Intrinsics.checkNotNullParameter(adContainer, "adContainer");
        x5 x5Var = this.loadListener;
        if (x5Var != null) {
            x5Var.onBannerLoadSuccess(adInstance, adContainer);
        }
    }

    @Override // org.json.gn
    public void onBannerShowSuccess() {
        z5 z5Var = this.showListener.get();
        if (z5Var != null) {
            z5Var.onBannerShowSuccess();
        }
    }
}
