package org.json;

import android.app.Activity;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u001f\u0012\u0006\u0010\u0016\u001a\u00020\u0012\u0012\u0006\u0010\u001b\u001a\u00020\u0017\u0012\u0006\u0010\u001e\u001a\u00020\u001c¢\u0006\u0004\b#\u0010$J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\fH\u0016J\u0010\u0010\u000e\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\fH\u0016J\u0012\u0010\u000e\u001a\u00020\u00062\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\u0012\u0010\u0011\u001a\u00020\u00062\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016R\u0017\u0010\u0016\u001a\u00020\u00128\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0017\u0010\u001b\u001a\u00020\u00178\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001e\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001dR\u0016\u0010\"\u001a\u00020\u001f8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b \u0010!¨\u0006%"}, d2 = {"Lcom/ironsource/id;", "Lcom/ironsource/hd;", "Lcom/ironsource/j2;", "Lcom/ironsource/v1;", "Lcom/ironsource/k2;", "adUnitLoadStrategyListener", "", "a", "Landroid/app/Activity;", "activity", "Lcom/ironsource/w1;", "adUnitDisplayStrategyListener", "Lcom/ironsource/q1;", "adUnitCallback", "c", "Lcom/ironsource/mediationsdk/logger/IronSourceError;", "error", "b", "Lcom/ironsource/l1;", "Lcom/ironsource/l1;", "d", "()Lcom/ironsource/l1;", "adTools", "Lcom/ironsource/hd$a;", "Lcom/ironsource/hd$a;", "e", "()Lcom/ironsource/hd$a;", "config", "Lcom/ironsource/fd;", "Lcom/ironsource/fd;", "fullscreenAdUnitFactory", "Lcom/ironsource/ed;", "f", "Lcom/ironsource/ed;", "fullscreenAdUnit", "<init>", "(Lcom/ironsource/l1;Lcom/ironsource/hd$a;Lcom/ironsource/fd;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class id extends hd implements j2, v1 {

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final l1 adTools;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    private final hd.a config;

    /* JADX INFO: renamed from: e, reason: from kotlin metadata */
    private final fd fullscreenAdUnitFactory;

    /* JADX INFO: renamed from: f, reason: from kotlin metadata */
    private ed fullscreenAdUnit;

    public id(l1 adTools, hd.a config, fd fullscreenAdUnitFactory) {
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(fullscreenAdUnitFactory, "fullscreenAdUnitFactory");
        this.adTools = adTools;
        this.config = config;
        this.fullscreenAdUnitFactory = fullscreenAdUnitFactory;
    }

    @Override // org.json.j2
    public /* bridge */ /* synthetic */ Unit a(IronSourceError ironSourceError) {
        c(ironSourceError);
        return Unit.INSTANCE;
    }

    @Override // org.json.v1
    public void a() {
        w1 adUnitDisplayStrategyListener = getAdUnitDisplayStrategyListener();
        if (adUnitDisplayStrategyListener != null) {
            adUnitDisplayStrategyListener.a();
        }
    }

    @Override // org.json.hd
    public void a(Activity activity, w1 adUnitDisplayStrategyListener) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(adUnitDisplayStrategyListener, "adUnitDisplayStrategyListener");
        a(adUnitDisplayStrategyListener);
        ed edVar = this.fullscreenAdUnit;
        if (edVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fullscreenAdUnit");
            edVar = null;
        }
        edVar.a(activity, this);
    }

    @Override // org.json.hd
    public void a(k2 adUnitLoadStrategyListener) {
        Intrinsics.checkNotNullParameter(adUnitLoadStrategyListener, "adUnitLoadStrategyListener");
        b(adUnitLoadStrategyListener);
        ed edVarA = this.fullscreenAdUnitFactory.a(true);
        this.fullscreenAdUnit = edVarA;
        if (edVarA == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fullscreenAdUnit");
            edVarA = null;
        }
        edVarA.a(this);
    }

    public void a(q1 adUnitCallback) {
        Intrinsics.checkNotNullParameter(adUnitCallback, "adUnitCallback");
        k2 adUnitLoadStrategyListener = getAdUnitLoadStrategyListener();
        if (adUnitLoadStrategyListener != null) {
            adUnitLoadStrategyListener.a(adUnitCallback);
        }
    }

    @Override // org.json.v1
    public void b(IronSourceError error) {
        w1 adUnitDisplayStrategyListener = getAdUnitDisplayStrategyListener();
        if (adUnitDisplayStrategyListener != null) {
            adUnitDisplayStrategyListener.b(error);
        }
    }

    public void c(IronSourceError error) {
        k2 adUnitLoadStrategyListener = getAdUnitLoadStrategyListener();
        if (adUnitLoadStrategyListener != null) {
            adUnitLoadStrategyListener.a(error);
        }
    }

    @Override // org.json.j2
    public void c(q1 adUnitCallback) {
        Intrinsics.checkNotNullParameter(adUnitCallback, "adUnitCallback");
        k2 adUnitLoadStrategyListener = getAdUnitLoadStrategyListener();
        if (adUnitLoadStrategyListener != null) {
            adUnitLoadStrategyListener.d(adUnitCallback);
        }
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final l1 getAdTools() {
        return this.adTools;
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public final hd.a getConfig() {
        return this.config;
    }

    @Override // org.json.j2
    public /* bridge */ /* synthetic */ Unit e(q1 q1Var) {
        a(q1Var);
        return Unit.INSTANCE;
    }
}
