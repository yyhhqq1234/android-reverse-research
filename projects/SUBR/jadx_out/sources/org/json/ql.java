package org.json;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.unity3d.mediation.LevelPlayAdInfo;
import kotlin.Metadata;
import kotlin.NotImplementedError;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0010\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u001f\u0012\u0006\u0010\u001b\u001a\u00020\u0019\u0012\u0006\u0010\u001e\u001a\u00020\u0005\u0012\u0006\u0010!\u001a\u00020\u0007¢\u0006\u0004\b'\u0010(J\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002J\b\u0010\f\u001a\u00020\u000bH\u0002J\u0006\u0010\u000e\u001a\u00020\rJ\u000e\u0010\n\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fJ\u0006\u0010\u0011\u001a\u00020\rJ\u0010\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0012H\u0016J\b\u0010\n\u001a\u00020\rH\u0016J\u0012\u0010\u0017\u001a\u00020\r2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016J\u0012\u0010\n\u001a\u00020\r2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016J\b\u0010\u0018\u001a\u00020\rH\u0016R\u0014\u0010\u001b\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u001aR\u0014\u0010\u001e\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0014\u0010!\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010$\u001a\u00020\t8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\"\u0010#R\u0016\u0010&\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010%¨\u0006)"}, d2 = {"Lcom/ironsource/ql;", "Lcom/ironsource/n;", "Lcom/ironsource/em;", "Lcom/ironsource/j2;", "Lcom/ironsource/v1;", "Lcom/ironsource/l1;", "tools", "Lcom/ironsource/am;", "adProperties", "Lcom/ironsource/cm;", "a", "Lcom/unity3d/mediation/LevelPlayAdInfo;", "h", "", "j", "Lcom/ironsource/nl;", "nativeAdBinder", "i", "Lcom/ironsource/q1;", "adUnitCallback", "f", "Lcom/ironsource/mediationsdk/logger/IronSourceError;", "error", "b", "k", "Lcom/ironsource/tl;", "Lcom/ironsource/tl;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "c", "Lcom/ironsource/l1;", "adTools", "d", "Lcom/ironsource/am;", "nativeAdProperties", "e", "Lcom/ironsource/cm;", "nativeAdUnit", "Lcom/unity3d/mediation/LevelPlayAdInfo;", "adInfo", "<init>", "(Lcom/ironsource/tl;Lcom/ironsource/l1;Lcom/ironsource/am;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class ql extends n implements em, j2, v1 {

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final tl listener;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final l1 adTools;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    private final am nativeAdProperties;

    /* JADX INFO: renamed from: e, reason: from kotlin metadata */
    private cm nativeAdUnit;

    /* JADX INFO: renamed from: f, reason: from kotlin metadata */
    private LevelPlayAdInfo adInfo;

    public ql(tl listener, l1 adTools, am nativeAdProperties) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(nativeAdProperties, "nativeAdProperties");
        this.listener = listener;
        this.adTools = adTools;
        this.nativeAdProperties = nativeAdProperties;
        this.adInfo = h();
    }

    private final cm a(l1 tools, am adProperties) {
        IronLog.INTERNAL.verbose();
        return new cm(tools, dm.INSTANCE.a(adProperties, getSdkConfigService().a()), this);
    }

    private final LevelPlayAdInfo h() {
        String adUnitId = this.nativeAdProperties.getAdUnitId();
        String string = this.nativeAdProperties.getCom.ironsource.mediationsdk.impressionData.ImpressionData.IMPRESSION_DATA_KEY_AD_FORMAT java.lang.String().toString();
        Intrinsics.checkNotNullExpressionValue(string, "nativeAdProperties.adFormat.toString()");
        return new LevelPlayAdInfo(adUnitId, string, null, null, null, null, 60, null);
    }

    @Override // org.json.j2
    public /* bridge */ /* synthetic */ Unit a(IronSourceError ironSourceError) {
        m410a(ironSourceError);
        return Unit.INSTANCE;
    }

    @Override // org.json.v1
    public void a() {
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    /* JADX INFO: renamed from: a, reason: collision with other method in class */
    public void m410a(IronSourceError error) {
        this.listener.onNativeAdLoadFailed(error);
    }

    public final void a(nl nativeAdBinder) {
        Intrinsics.checkNotNullParameter(nativeAdBinder, "nativeAdBinder");
        cm cmVar = this.nativeAdUnit;
        if (cmVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nativeAdUnit");
            cmVar = null;
        }
        cmVar.a(new vl(nativeAdBinder), this);
    }

    @Override // org.json.h2
    public /* bridge */ /* synthetic */ Unit b() {
        k();
        return Unit.INSTANCE;
    }

    @Override // org.json.v1
    public void b(IronSourceError error) {
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    @Override // org.json.j2
    public /* synthetic */ void c(q1 q1Var) {
        Intrinsics.checkNotNullParameter(q1Var, "adUnitCallback");
    }

    @Override // org.json.j2
    public /* bridge */ /* synthetic */ Unit e(q1 q1Var) {
        f(q1Var);
        return Unit.INSTANCE;
    }

    public void f(q1 adUnitCallback) {
        Intrinsics.checkNotNullParameter(adUnitCallback, "adUnitCallback");
        LevelPlayAdInfo levelPlayAdInfoC = adUnitCallback.c();
        if (levelPlayAdInfoC != null) {
            this.adInfo = levelPlayAdInfoC;
            this.listener.b(levelPlayAdInfoC);
        }
    }

    public final void i() {
        this.adInfo = h();
        cm cmVar = this.nativeAdUnit;
        if (cmVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nativeAdUnit");
            cmVar = null;
        }
        cmVar.d();
    }

    public final void j() {
        cm cmVarA = a(this.adTools, this.nativeAdProperties);
        this.nativeAdUnit = cmVarA;
        if (cmVarA == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nativeAdUnit");
            cmVarA = null;
        }
        cmVarA.a(this);
    }

    public void k() {
        this.listener.f(this.adInfo);
    }
}
