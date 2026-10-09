package org.json;

import android.content.Context;
import com.unity3d.mediation.LevelPlay;
import com.unity3d.mediation.LevelPlayConfiguration;
import com.unity3d.mediation.LevelPlayInitError;
import com.unity3d.mediation.LevelPlayInitListener;
import com.unity3d.mediation.LevelPlayInitRequest;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.environment.thread.IronSourceThreadManager;
import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.impressionData.ImpressionData;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\"\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002J2\u0010\u000e\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\f2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002J\u0018\u0010\u000e\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0018\u0010\u000e\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\"\u0010\u000e\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\"\u0010\u000e\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0014\u0010\u001b\u001a\u00020\u00138\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\u001a¨\u0006\u001e"}, d2 = {"Lcom/ironsource/rk;", "", "Landroid/content/Context;", "context", "Lcom/unity3d/mediation/LevelPlayInitRequest;", "initRequest", "Lcom/unity3d/mediation/LevelPlayInitListener;", "initializationListener", "", "c", "Lcom/ironsource/fq;", "sdkConfig", "Lcom/ironsource/xa;", "initDuration", "a", "Lcom/ironsource/ck;", "levelPlayConfig", "Lcom/unity3d/mediation/LevelPlay$AdFormat;", ImpressionData.IMPRESSION_DATA_KEY_AD_FORMAT, "", "Lcom/ironsource/hq;", "error", "Lcom/ironsource/sk;", "b", "Lcom/ironsource/sk;", "tools", "Z", "ENABLE_STANDALONE_INIT", "<init>", "()V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class rk {
    public static final rk a = new rk();

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private static final sk tools = new sk();

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private static final boolean ENABLE_STANDALONE_INIT = false;

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¨\u0006\b"}, d2 = {"com/ironsource/rk$a", "Lcom/ironsource/lq;", "Lcom/ironsource/fq;", "sdkConfig", "", "a", "Lcom/ironsource/hq;", "error", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class a implements lq {
        final /* synthetic */ LevelPlayInitRequest a;
        final /* synthetic */ Context b;
        final /* synthetic */ xa c;
        final /* synthetic */ LevelPlayInitListener d;

        a(LevelPlayInitRequest levelPlayInitRequest, Context context, xa xaVar, LevelPlayInitListener levelPlayInitListener) {
            this.a = levelPlayInitRequest;
            this.b = context;
            this.c = xaVar;
            this.d = levelPlayInitListener;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void a(LevelPlayInitListener levelPlayInitListener, xa initDuration, hq error) {
            Intrinsics.checkNotNullParameter(initDuration, "$initDuration");
            Intrinsics.checkNotNullParameter(error, "$error");
            rk.a.a(levelPlayInitListener, initDuration, error);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void a(LevelPlayInitRequest initRequest, fq sdkConfig, Context context, xa initDuration, LevelPlayInitListener levelPlayInitListener) {
            Intrinsics.checkNotNullParameter(initRequest, "$initRequest");
            Intrinsics.checkNotNullParameter(sdkConfig, "$sdkConfig");
            Intrinsics.checkNotNullParameter(context, "$context");
            Intrinsics.checkNotNullParameter(initDuration, "$initDuration");
            rk.a.a(initRequest, sdkConfig, context, initDuration, levelPlayInitListener);
        }

        @Override // org.json.lq
        public void a(final fq sdkConfig) {
            Intrinsics.checkNotNullParameter(sdkConfig, "sdkConfig");
            sk skVar = rk.tools;
            final LevelPlayInitRequest levelPlayInitRequest = this.a;
            final Context context = this.b;
            final xa xaVar = this.c;
            final LevelPlayInitListener levelPlayInitListener = this.d;
            skVar.a(new Runnable() { // from class: com.ironsource.rk$a$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    rk.a.a(levelPlayInitRequest, sdkConfig, context, xaVar, levelPlayInitListener);
                }
            });
        }

        @Override // org.json.lq
        public void a(final hq error) {
            Intrinsics.checkNotNullParameter(error, "error");
            sk skVar = rk.tools;
            final LevelPlayInitListener levelPlayInitListener = this.d;
            final xa xaVar = this.c;
            skVar.a(new Runnable() { // from class: com.ironsource.rk$a$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    rk.a.a(levelPlayInitListener, xaVar, error);
                }
            });
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¨\u0006\b"}, d2 = {"com/ironsource/rk$b", "Lcom/ironsource/lq;", "Lcom/ironsource/fq;", "sdkConfig", "", "a", "Lcom/ironsource/hq;", "error", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class b implements lq {
        final /* synthetic */ LevelPlayInitRequest a;
        final /* synthetic */ Context b;
        final /* synthetic */ xa c;
        final /* synthetic */ LevelPlayInitListener d;

        b(LevelPlayInitRequest levelPlayInitRequest, Context context, xa xaVar, LevelPlayInitListener levelPlayInitListener) {
            this.a = levelPlayInitRequest;
            this.b = context;
            this.c = xaVar;
            this.d = levelPlayInitListener;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void a(LevelPlayInitListener levelPlayInitListener, xa initDuration, hq error) {
            Intrinsics.checkNotNullParameter(initDuration, "$initDuration");
            Intrinsics.checkNotNullParameter(error, "$error");
            rk.a.a(levelPlayInitListener, initDuration, error);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void a(LevelPlayInitRequest initRequest, fq sdkConfig, Context context, xa initDuration, LevelPlayInitListener levelPlayInitListener) {
            Intrinsics.checkNotNullParameter(initRequest, "$initRequest");
            Intrinsics.checkNotNullParameter(sdkConfig, "$sdkConfig");
            Intrinsics.checkNotNullParameter(context, "$context");
            Intrinsics.checkNotNullParameter(initDuration, "$initDuration");
            rk.a.a(initRequest, sdkConfig, context, initDuration, levelPlayInitListener);
        }

        @Override // org.json.lq
        public void a(final fq sdkConfig) {
            Intrinsics.checkNotNullParameter(sdkConfig, "sdkConfig");
            sk skVar = rk.tools;
            final LevelPlayInitRequest levelPlayInitRequest = this.a;
            final Context context = this.b;
            final xa xaVar = this.c;
            final LevelPlayInitListener levelPlayInitListener = this.d;
            skVar.a(new Runnable() { // from class: com.ironsource.rk$b$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    rk.b.a(levelPlayInitRequest, sdkConfig, context, xaVar, levelPlayInitListener);
                }
            });
        }

        @Override // org.json.lq
        public void a(final hq error) {
            Intrinsics.checkNotNullParameter(error, "error");
            sk skVar = rk.tools;
            final LevelPlayInitListener levelPlayInitListener = this.d;
            final xa xaVar = this.c;
            skVar.a(new Runnable() { // from class: com.ironsource.rk$b$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    rk.b.a(levelPlayInitListener, xaVar, error);
                }
            });
        }
    }

    private rk() {
    }

    public static /* synthetic */ void a(rk rkVar, Context context, LevelPlayInitRequest levelPlayInitRequest, LevelPlayInitListener levelPlayInitListener, int i, Object obj) {
        if ((i & 4) != 0) {
            levelPlayInitListener = null;
        }
        rkVar.a(context, levelPlayInitRequest, levelPlayInitListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(LevelPlayInitListener levelPlayInitListener, ck config) {
        Intrinsics.checkNotNullParameter(config, "$config");
        if (levelPlayInitListener != null) {
            levelPlayInitListener.onInitSuccess(new LevelPlayConfiguration(config.j()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(LevelPlayInitListener levelPlayInitListener, hq error) {
        Intrinsics.checkNotNullParameter(error, "$error");
        if (levelPlayInitListener != null) {
            levelPlayInitListener.onInitFailed(new LevelPlayInitError(error));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(final LevelPlayInitListener initializationListener, xa initDuration, final hq error) {
        long jA = xa.a(initDuration);
        sk skVar = tools;
        skVar.a(error, jA);
        skVar.e(new Runnable() { // from class: com.ironsource.rk$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                rk.a(initializationListener, error);
            }
        });
    }

    private final void a(LevelPlayInitRequest initRequest, ck levelPlayConfig) {
        LevelPlay.AdFormat adFormat = LevelPlay.AdFormat.REWARDED;
        if (a(initRequest, adFormat) && levelPlayConfig.d().c().getRewardedVideoConfigurations() != null) {
            np.Companion aVar = np.INSTANCE;
            IronSource.AD_UNIT ad_unit = IronSource.AD_UNIT.REWARDED_VIDEO;
            np npVarA = aVar.a(new c1(ad_unit, "", null, null, 12, null), levelPlayConfig, true);
            List<wm> listC = levelPlayConfig.c(adFormat);
            b2.b bVar = b2.b.MEDIATION;
            new so(new t2(new l1(ad_unit, bVar), npVarA, bVar), adFormat, listC, npVarA).a();
        }
        LevelPlay.AdFormat adFormat2 = LevelPlay.AdFormat.INTERSTITIAL;
        if (a(initRequest, adFormat2) && levelPlayConfig.d().c().getInterstitialConfigurations() != null) {
            hi.Companion aVar2 = hi.INSTANCE;
            IronSource.AD_UNIT ad_unit2 = IronSource.AD_UNIT.INTERSTITIAL;
            hi hiVarA = aVar2.a(new c1(ad_unit2, "", null, null, 12, null), levelPlayConfig, true);
            List<wm> listC2 = levelPlayConfig.c(adFormat2);
            b2.b bVar2 = b2.b.MEDIATION;
            new so(new t2(new l1(ad_unit2, bVar2), hiVarA, bVar2), adFormat2, listC2, hiVarA).a();
        }
        LevelPlay.AdFormat adFormat3 = LevelPlay.AdFormat.BANNER;
        if (!a(initRequest, adFormat3) || levelPlayConfig.d().c().getBannerConfigurations() == null) {
            return;
        }
        j6 j6VarA = j6.INSTANCE.a(new g6(), levelPlayConfig, true);
        List<wm> listC3 = levelPlayConfig.c(adFormat3);
        IronSource.AD_UNIT ad_unit3 = IronSource.AD_UNIT.BANNER;
        b2.b bVar3 = b2.b.MEDIATION;
        new so(new t2(new l1(ad_unit3, bVar3), j6VarA, bVar3), adFormat3, listC3, j6VarA).a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(LevelPlayInitRequest initRequest, fq sdkConfig, Context context, xa initDuration, final LevelPlayInitListener initializationListener) {
        jl.Companion companion = jl.INSTANCE;
        vg.a aVarB = companion.a().B();
        final ck ckVar = new ck(sdkConfig);
        if (ckVar.k()) {
            tools.a(context);
        }
        af.a aVarA = companion.a().a();
        sk skVar = tools;
        ckVar.b(skVar).a(aVarA);
        ckVar.a(skVar).a(companion.a().v());
        ckVar.c(skVar).a(companion.a().y());
        skVar.a(xa.a(initDuration), sdkConfig.f());
        a.a(initRequest, ckVar);
        companion.a().B().d();
        skVar.e(new Runnable() { // from class: com.ironsource.rk$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                rk.a(initializationListener, ckVar);
            }
        });
        aVarB.a(ckVar);
        if (sdkConfig.a().getShouldRegisterTrigger()) {
            new zo(null, null, null, IronSourceThreadManager.INSTANCE.getThreadPoolExecutor(), 7, null).c(context);
        }
    }

    private final boolean a(LevelPlayInitRequest initRequest, LevelPlay.AdFormat adFormat) {
        return !initRequest.getLegacyAdFormats().contains(adFormat);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(Context context, LevelPlayInitRequest initRequest, LevelPlayInitListener levelPlayInitListener) {
        Intrinsics.checkNotNullParameter(context, "$context");
        Intrinsics.checkNotNullParameter(initRequest, "$initRequest");
        a.c(context, initRequest, levelPlayInitListener);
    }

    private final void c(Context context, LevelPlayInitRequest initRequest, LevelPlayInitListener initializationListener) {
        xa xaVar = new xa();
        sk skVar = tools;
        LevelPlay.AdFormat[] adFormatArr = (LevelPlay.AdFormat[]) initRequest.getLegacyAdFormats().toArray(new LevelPlay.AdFormat[0]);
        mq mqVar = new mq(initRequest.getAppKey(), initRequest.getUserId(), ArraysKt.toMutableList(skVar.a((LevelPlay.AdFormat[]) Arrays.copyOf(adFormatArr, adFormatArr.length))));
        mqVar.e().isEmpty();
        tq.a.a(context, mqVar, new a(initRequest, context, xaVar, initializationListener));
    }

    public final void a(final Context context, final LevelPlayInitRequest initRequest, final LevelPlayInitListener initializationListener) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(initRequest, "initRequest");
        tools.d(new Runnable() { // from class: com.ironsource.rk$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                rk.b(context, initRequest, initializationListener);
            }
        });
    }
}
