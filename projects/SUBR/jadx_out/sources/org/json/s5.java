package org.json;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.onesignal.notifications.internal.bundle.impl.NotificationBundleProcessor;
import com.unity3d.mediation.LevelPlayAdError;
import com.unity3d.mediation.LevelPlayAdInfo;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B'\u0012\u0006\u0010)\u001a\u00020&\u0012\u0006\u0010\"\u001a\u00020\u0006\u0012\u0006\u0010$\u001a\u00020\b\u0012\u0006\u00103\u001a\u000202¢\u0006\u0004\b4\u00105J\b\u0010\u0005\u001a\u00020\u0004H\u0002J \u0010\r\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\b\u0010\u000f\u001a\u00020\u000eH\u0002J\u0006\u0010\u0011\u001a\u00020\u0010J\u0006\u0010\u0012\u001a\u00020\u0010J\u0006\u0010\u0013\u001a\u00020\u0010J\u0006\u0010\u0014\u001a\u00020\u0010J\u0010\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u0015H\u0016J\u0012\u0010\u001a\u001a\u00020\u00102\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016J\b\u0010\u001b\u001a\u00020\u0010H\u0016J\u0012\u0010\u001c\u001a\u00020\u00102\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016J\b\u0010\u001d\u001a\u00020\u0010H\u0016J\b\u0010\u001e\u001a\u00020\u0010H\u0016J\b\u0010\u001f\u001a\u00020\u0010H\u0016J\b\u0010 \u001a\u00020\u0010H\u0016R\u0014\u0010\"\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010!R\u0014\u0010$\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010#R\"\u0010)\u001a\u0010\u0012\f\u0012\n '*\u0004\u0018\u00010&0&0%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010(R\u0016\u0010+\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010*R\u0016\u0010-\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010*R\u0014\u00101\u001a\u00020.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u00100¨\u00066"}, d2 = {"Lcom/ironsource/s5;", "Lcom/ironsource/n;", "Lcom/ironsource/l6;", "Lcom/ironsource/g7;", "Lcom/ironsource/k6;", "h", "Lcom/ironsource/l1;", "tools", "Lcom/ironsource/g6;", "adProperties", "", "isPublisherLoad", "Lcom/ironsource/i6;", "a", "Lcom/unity3d/mediation/LevelPlayAdInfo;", "i", "", "k", "j", NotificationBundleProcessor.PUSH_MINIFIED_BUTTON_ICON, "q", "Lcom/ironsource/q1;", "adUnitCallback", "b", "Lcom/ironsource/mediationsdk/logger/IronSourceError;", "error", "c", "e", "d", "l", NotificationBundleProcessor.PUSH_MINIFIED_BUTTONS_LIST, "n", "m", "Lcom/ironsource/l1;", "adTools", "Lcom/ironsource/g6;", "bannerAdProperties", "Ljava/lang/ref/WeakReference;", "Lcom/ironsource/t5;", "kotlin.jvm.PlatformType", "Ljava/lang/ref/WeakReference;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/unity3d/mediation/LevelPlayAdInfo;", "currentAdInfo", "f", "nextAdInfo", "Lcom/ironsource/f7;", "g", "Lcom/ironsource/f7;", "bannerStrategy", "Lcom/ironsource/t6;", "bannerViewContainer", "<init>", "(Lcom/ironsource/t5;Lcom/ironsource/l1;Lcom/ironsource/g6;Lcom/ironsource/t6;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class s5 extends n implements l6, g7 {

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final l1 adTools;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final g6 bannerAdProperties;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    private final WeakReference<t5> listener;

    /* JADX INFO: renamed from: e, reason: from kotlin metadata */
    private LevelPlayAdInfo currentAdInfo;

    /* JADX INFO: renamed from: f, reason: from kotlin metadata */
    private LevelPlayAdInfo nextAdInfo;

    /* JADX INFO: renamed from: g, reason: from kotlin metadata */
    private final f7 bannerStrategy;

    public s5(t5 listener, l1 adTools, g6 bannerAdProperties, t6 bannerViewContainer) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(bannerAdProperties, "bannerAdProperties");
        Intrinsics.checkNotNullParameter(bannerViewContainer, "bannerViewContainer");
        this.adTools = adTools;
        this.bannerAdProperties = bannerAdProperties;
        this.listener = new WeakReference<>(listener);
        this.currentAdInfo = i();
        this.nextAdInfo = i();
        this.bannerStrategy = f7.INSTANCE.a(adTools, bannerViewContainer, adTools.b(bannerAdProperties.getAdUnitId()), bannerAdProperties, this, h());
    }

    private final i6 a(l1 tools, g6 adProperties, boolean isPublisherLoad) {
        IronLog.INTERNAL.verbose();
        return new i6(tools, j6.INSTANCE.a(adProperties, getSdkConfigService().a(), isPublisherLoad), this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final i6 a(s5 this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        return this$0.a(this$0.adTools, this$0.bannerAdProperties, z);
    }

    private final k6 h() {
        return new k6() { // from class: com.ironsource.s5$$ExternalSyntheticLambda0
            @Override // org.json.k6
            public final i6 a(boolean z) {
                return s5.a(this.f$0, z);
            }
        };
    }

    private final LevelPlayAdInfo i() {
        String adUnitId = this.bannerAdProperties.getAdUnitId();
        String string = this.bannerAdProperties.getCom.ironsource.mediationsdk.impressionData.ImpressionData.IMPRESSION_DATA_KEY_AD_FORMAT java.lang.String().toString();
        Intrinsics.checkNotNullExpressionValue(string, "bannerAdProperties.adFormat.toString()");
        return new LevelPlayAdInfo(adUnitId, string, null, null, null, null, 60, null);
    }

    @Override // org.json.h2
    public /* bridge */ /* synthetic */ Unit b() {
        l();
        return Unit.INSTANCE;
    }

    @Override // org.json.g7
    public void b(q1 adUnitCallback) {
        Intrinsics.checkNotNullParameter(adUnitCallback, "adUnitCallback");
        LevelPlayAdInfo levelPlayAdInfoC = adUnitCallback.c();
        if (levelPlayAdInfoC != null) {
            this.nextAdInfo = levelPlayAdInfoC;
            t5 t5Var = this.listener.get();
            if (t5Var != null) {
                t5Var.a(levelPlayAdInfoC, false);
            }
        }
    }

    @Override // org.json.l6
    public /* bridge */ /* synthetic */ Unit c() {
        m();
        return Unit.INSTANCE;
    }

    @Override // org.json.g7
    public void c(IronSourceError error) {
        t5 t5Var = this.listener.get();
        if (t5Var != null) {
            t5Var.a(new LevelPlayAdError(error, this.bannerAdProperties.getAdUnitId()));
        }
    }

    @Override // org.json.l6
    public /* bridge */ /* synthetic */ Unit d() {
        o();
        return Unit.INSTANCE;
    }

    @Override // org.json.g7
    public void d(IronSourceError error) {
        t5 t5Var = this.listener.get();
        if (t5Var != null) {
            t5Var.a(this.currentAdInfo, new LevelPlayAdError(error, this.bannerAdProperties.getAdUnitId()));
        }
    }

    @Override // org.json.g7
    public void e() {
        this.currentAdInfo = this.nextAdInfo;
        this.nextAdInfo = i();
        t5 t5Var = this.listener.get();
        if (t5Var != null) {
            t5Var.c(this.currentAdInfo);
        }
    }

    @Override // org.json.l6
    public /* bridge */ /* synthetic */ Unit f() {
        n();
        return Unit.INSTANCE;
    }

    public final void j() {
        this.adTools.getEventSender().getLoad().a(this.adTools.f());
        this.bannerStrategy.b();
    }

    public final void k() {
        this.bannerStrategy.e();
    }

    public void l() {
        t5 t5Var = this.listener.get();
        if (t5Var != null) {
            t5Var.e(this.currentAdInfo);
        }
    }

    public void m() {
        t5 t5Var = this.listener.get();
        if (t5Var != null) {
            t5Var.g(this.currentAdInfo);
        }
    }

    public void n() {
        t5 t5Var = this.listener.get();
        if (t5Var != null) {
            t5Var.d(this.currentAdInfo);
        }
    }

    public void o() {
        t5 t5Var = this.listener.get();
        if (t5Var != null) {
            t5Var.a(this.currentAdInfo);
        }
    }

    public final void p() {
        this.bannerStrategy.f();
    }

    public final void q() {
        this.bannerStrategy.g();
    }
}
