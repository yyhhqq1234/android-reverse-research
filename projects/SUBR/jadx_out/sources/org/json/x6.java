package org.json;

import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.json.mediationsdk.logger.IronLog;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\r\u001a\u00020\u000b\u0012\u0006\u0010\u0010\u001a\u00020\u000e\u0012\u0006\u0010\u0014\u001a\u00020\u0011¢\u0006\u0004\b \u0010!J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\b\u001a\u00020\u0004H\u0002J\u0006\u0010\t\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\n\u001a\u00020\u0004J\u0006\u0010\u0007\u001a\u00020\u0004R\u0014\u0010\r\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\fR\u0014\u0010\u0010\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u000fR\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u001b\u0010\u0019\u001a\u00020\u00158BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0012\u0010\u0018R\u001b\u0010\u001a\u001a\u00020\u00158BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u0017\u001a\u0004\b\u0016\u0010\u0018R\u0014\u0010\u001d\u001a\u00020\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u001cR\u0014\u0010\u001e\u001a\u00020\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u001cR\u0014\u0010\u001f\u001a\u00020\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u001c¨\u0006\""}, d2 = {"Lcom/ironsource/x6;", "", "", "delay", "", "a", "f", "b", "g", "h", "e", "Lcom/ironsource/l2;", "Lcom/ironsource/l2;", "loadingData", "Lcom/ironsource/f2;", "Lcom/ironsource/f2;", "interactionData", "Lcom/ironsource/c6;", "c", "Lcom/ironsource/c6;", "mListener", "Lcom/ironsource/tk;", "d", "Lkotlin/Lazy;", "()Lcom/ironsource/tk;", "mBindLifecycleAwareTimer", "mImpressionTimeoutLifecycleAwareTimer", "", "Z", "isBannerReloadIntervalEnabled", "isBannerImpressionTimeoutEnabled", "isLoadOnShowLoadingMode", "<init>", "(Lcom/ironsource/l2;Lcom/ironsource/f2;Lcom/ironsource/c6;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class x6 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final l2 loadingData;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final f2 interactionData;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final c6 mListener;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    private final Lazy mBindLifecycleAwareTimer;

    /* JADX INFO: renamed from: e, reason: from kotlin metadata */
    private final Lazy mImpressionTimeoutLifecycleAwareTimer;

    /* JADX INFO: renamed from: f, reason: from kotlin metadata */
    private final boolean isBannerReloadIntervalEnabled;

    /* JADX INFO: renamed from: g, reason: from kotlin metadata */
    private final boolean isBannerImpressionTimeoutEnabled;

    /* JADX INFO: renamed from: h, reason: from kotlin metadata */
    private final boolean isLoadOnShowLoadingMode;

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lcom/ironsource/tk;", "a", "()Lcom/ironsource/tk;"}, k = 3, mv = {1, 8, 0})
    static final class a extends Lambda implements Function0<tk> {
        a() {
            super(0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void a(x6 this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this$0.mListener.e();
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final tk invoke() {
            final x6 x6Var = x6.this;
            return new tk(new Runnable() { // from class: com.ironsource.x6$a$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    x6.a.a(x6Var);
                }
            }, org.json.lifecycle.b.d(), new st());
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lcom/ironsource/tk;", "a", "()Lcom/ironsource/tk;"}, k = 3, mv = {1, 8, 0})
    static final class b extends Lambda implements Function0<tk> {
        b() {
            super(0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void a(x6 this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this$0.mListener.f();
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final tk invoke() {
            final x6 x6Var = x6.this;
            return new tk(new Runnable() { // from class: com.ironsource.x6$b$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    x6.b.a(x6Var);
                }
            }, org.json.lifecycle.b.d(), new st());
        }
    }

    public x6(l2 loadingData, f2 interactionData, c6 mListener) {
        Intrinsics.checkNotNullParameter(loadingData, "loadingData");
        Intrinsics.checkNotNullParameter(interactionData, "interactionData");
        Intrinsics.checkNotNullParameter(mListener, "mListener");
        this.loadingData = loadingData;
        this.interactionData = interactionData;
        this.mListener = mListener;
        this.mBindLifecycleAwareTimer = LazyKt.lazy(new a());
        this.mImpressionTimeoutLifecycleAwareTimer = LazyKt.lazy(new b());
        this.isBannerReloadIntervalEnabled = loadingData.b() > 0;
        this.isBannerImpressionTimeoutEnabled = interactionData.b() > 0;
        this.isLoadOnShowLoadingMode = loadingData.a() == l2.a.MANUAL_WITH_LOAD_ON_SHOW;
    }

    private final void a(long delay) {
        if (this.isLoadOnShowLoadingMode && this.isBannerReloadIntervalEnabled) {
            c().a(delay);
        }
    }

    private final void b(long delay) {
        if (this.isLoadOnShowLoadingMode && this.isBannerImpressionTimeoutEnabled) {
            d().a(delay);
        }
    }

    private final tk c() {
        return (tk) this.mBindLifecycleAwareTimer.getValue();
    }

    private final tk d() {
        return (tk) this.mImpressionTimeoutLifecycleAwareTimer.getValue();
    }

    private final void f() {
        if (this.isLoadOnShowLoadingMode) {
            c().b();
        }
    }

    private final void g() {
        if (this.isLoadOnShowLoadingMode) {
            d().b();
        }
    }

    public final void a() {
        IronLog.INTERNAL.verbose();
        f();
    }

    public final void b() {
        IronLog.INTERNAL.verbose();
        g();
    }

    public final void e() {
        IronLog.INTERNAL.verbose();
        b(this.interactionData.b());
    }

    public final void h() {
        if (!this.isBannerReloadIntervalEnabled) {
            IronLog.INTERNAL.verbose("banner reload interval is disabled");
        } else {
            IronLog.INTERNAL.verbose();
            a(this.loadingData.b());
        }
    }
}
