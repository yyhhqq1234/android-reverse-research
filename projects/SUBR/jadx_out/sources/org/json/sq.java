package org.json;

import android.content.Context;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.json.environment.thread.IronSourceThreadManager;
import org.json.mediationsdk.logger.IronSourceLogger;
import org.json.mediationsdk.logger.IronSourceLoggerManager;
import org.json.mediationsdk.utils.IronSourceConstants;
import org.json.mediationsdk.utils.IronSourceUtils;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u000b\n\u0002\u0010\t\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b@\u0010AJ \u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0010\u0010\u000f\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\b\u0010\u000f\u001a\u00020\u0012H\u0002J\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0018\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0002J \u0010\u000f\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0006H\u0002J \u0010\t\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0006H\u0002J\b\u0010\u0018\u001a\u00020\bH\u0002J\u001e\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0014\u001a\u00020\u0013J\u0006\u0010\u001b\u001a\u00020\bJ\u000e\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u001cJ\u000e\u0010\u000f\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nR\u0016\u0010\u001f\u001a\u00020\u001d8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000f\u0010\u001eR\u001b\u0010$\u001a\u00020 8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b!\u0010#R\u001c\u0010(\u001a\n &*\u0004\u0018\u00010%0%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010'R\u0014\u0010+\u001a\u00020)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010*R\u0014\u0010/\u001a\u00020,8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010.R\u001a\u00103\u001a\b\u0012\u0004\u0012\u00020\u0013008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u00102R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105R\u0018\u00108\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107R\u0016\u0010;\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010:R\u0016\u0010?\u001a\u00020<8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010>¨\u0006B"}, d2 = {"Lcom/ironsource/sq;", "", "Landroid/content/Context;", "context", "Lcom/ironsource/xi;", "globalDataWriter", "Lcom/ironsource/gr;", "serverResponse", "", "a", "Lcom/ironsource/hq;", "error", "applicationContext", "Lcom/ironsource/fq;", "sdkConfig", "b", "", "inProgress", "Lcom/ironsource/uq;", "Lcom/ironsource/lq;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/ironsource/e4;", "config", gr.n, "d", "Lcom/ironsource/mq;", "initRequest", "e", "Lcom/ironsource/nq;", "Lcom/ironsource/jr;", "Lcom/ironsource/jr;", "sessionCalcManager", "Lcom/ironsource/ee;", "c", "Lkotlin/Lazy;", "()Lcom/ironsource/ee;", "applicationLifecycleService", "", "kotlin.jvm.PlatformType", "Ljava/lang/String;", "TAG", "Lcom/ironsource/wq;", "Lcom/ironsource/wq;", "tools", "Lcom/ironsource/er;", "f", "Lcom/ironsource/er;", "serverInit", "", "g", "Ljava/util/List;", "sdkInitListeners", "h", "Lcom/ironsource/fq;", "i", "Lcom/ironsource/hq;", "errorReason", "j", "Z", "initInProgress", "", "k", "J", "initStartTime", "<init>", "()V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class sq {
    public static final sq a;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private static jr sessionCalcManager;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private static final Lazy applicationLifecycleService;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    private static final String TAG;

    /* JADX INFO: renamed from: e, reason: from kotlin metadata */
    private static final wq tools;

    /* JADX INFO: renamed from: f, reason: from kotlin metadata */
    private static final er serverInit;

    /* JADX INFO: renamed from: g, reason: from kotlin metadata */
    private static final List<lq> sdkInitListeners;

    /* JADX INFO: renamed from: h, reason: from kotlin metadata */
    private static fq sdkConfig;

    /* JADX INFO: renamed from: i, reason: from kotlin metadata */
    private static hq errorReason;

    /* JADX INFO: renamed from: j, reason: from kotlin metadata */
    private static boolean initInProgress;

    /* JADX INFO: renamed from: k, reason: from kotlin metadata */
    private static long initStartTime;

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lcom/ironsource/ee;", "a", "()Lcom/ironsource/ee;"}, k = 3, mv = {1, 8, 0})
    static final class a extends Lambda implements Function0<ee> {
        public static final a a = new a();

        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ee invoke() {
            return jl.INSTANCE.d().u();
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¨\u0006\b"}, d2 = {"com/ironsource/sq$b", "Lcom/ironsource/lq;", "Lcom/ironsource/fq;", "sdkConfig", "", "a", "Lcom/ironsource/hq;", "error", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class b implements lq {
        final /* synthetic */ Context a;

        b(Context context) {
            this.a = context;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void a(Context applicationContext, fq sdkConfig) {
            Intrinsics.checkNotNullParameter(sdkConfig, "$sdkConfig");
            sq sqVar = sq.a;
            Intrinsics.checkNotNullExpressionValue(applicationContext, "applicationContext");
            sqVar.a(applicationContext, sdkConfig);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void b(hq error) {
            Intrinsics.checkNotNullParameter(error, "$error");
            sq.a.a(error);
        }

        @Override // org.json.lq
        public void a(final fq sdkConfig) {
            Intrinsics.checkNotNullParameter(sdkConfig, "sdkConfig");
            wq wqVar = sq.tools;
            final Context context = this.a;
            wqVar.a(new Runnable() { // from class: com.ironsource.sq$b$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    sq.b.a(context, sdkConfig);
                }
            });
        }

        @Override // org.json.lq
        public void a(final hq error) {
            Intrinsics.checkNotNullParameter(error, "error");
            sq.tools.a(new Runnable() { // from class: com.ironsource.sq$b$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    sq.b.b(error);
                }
            });
        }
    }

    static {
        sq sqVar = new sq();
        a = sqVar;
        applicationLifecycleService = LazyKt.lazy(a.a);
        TAG = sqVar.getClass().getSimpleName();
        tools = new wq();
        serverInit = new er();
        sdkInitListeners = new ArrayList();
    }

    private sq() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(Context applicationContext, fq sdkConfig2) {
        b(sdkConfig2);
        h4 h4VarA = sdkConfig2.a();
        na naVar = na.a;
        naVar.c(h4VarA.getShouldUseAppSet());
        jl.INSTANCE.a().w().a(h4VarA.getEpConfig());
        naVar.a(h4VarA.getShouldReuseAdvId());
        naVar.a(h4VarA.getUserAgentExpirationThresholdInHours());
        IronSourceThreadManager.INSTANCE.setUseSharedExecutorService(h4VarA.getShouldUseSharedThreadPool());
        c().a(h4VarA);
        wq wqVar = tools;
        a(applicationContext, wqVar.getGlobalDataWriter(), sdkConfig2.d());
        wqVar.a(new Date().getTime() - initStartTime, sdkConfig2.f());
        jr jrVar = new jr();
        sessionCalcManager = jrVar;
        jrVar.a(c());
        IronSourceUtils.saveLastResponse(applicationContext, sdkConfig2.d().toString());
        li.i().c(true);
        vp.i().c(true);
        eo.P.c(true);
        b(applicationContext, sdkConfig2);
        IronSourceLoggerManager.getLogger(0).setDebugLevel(sdkConfig2.e().getCom.ironsource.el.b java.lang.String());
        a4 a4VarB = sdkConfig2.b();
        if (a4VarB.getIsCrashReporterEnabled()) {
            wqVar.a(a4VarB);
        }
        a(sdkConfig2);
        new eo.a().a();
        d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Context context, lq listener, mq initRequest, Context context2) {
        Intrinsics.checkNotNullParameter(context, "$context");
        Intrinsics.checkNotNullParameter(listener, "$listener");
        Intrinsics.checkNotNullParameter(initRequest, "$initRequest");
        j.a.a(context);
        fq fqVar = sdkConfig;
        if (fqVar != null) {
            a.a(listener, fqVar);
            return;
        }
        sdkInitListeners.add(listener);
        if (initInProgress) {
            return;
        }
        errorReason = null;
        a.a(true);
        initStartTime = new Date().getTime();
        serverInit.a(context, initRequest, tools, new b(context2));
    }

    private final void a(Context context, xi globalDataWriter, gr serverResponse) {
        globalDataWriter.i(serverResponse.f().h());
        globalDataWriter.b(serverResponse.f().d());
        x3 applicationConfigurations = serverResponse.c().getApplicationConfigurations();
        Intrinsics.checkNotNull(applicationConfigurations);
        globalDataWriter.a(applicationConfigurations.a());
        globalDataWriter.c(applicationConfigurations.b().b());
        globalDataWriter.b(applicationConfigurations.j().b());
        globalDataWriter.a(Boolean.valueOf(IronSourceUtils.getFirstSession(context)));
        x3 applicationConfigurations2 = serverResponse.c().getApplicationConfigurations();
        Intrinsics.checkNotNull(applicationConfigurations2);
        globalDataWriter.b(applicationConfigurations2.e().getCmpId());
    }

    private final void a(e4 config, Context context, gr response) {
        li.i().a(config.c(), context);
        li.i().b(config.d(), context);
        li.i().b(config.f());
        li.i().a(config.e());
        li.i().c(config.a());
        li.i().c(config.i(), context);
        li.i().a(config.h(), context);
        li.i().b(config.j(), context);
        li.i().d(config.g(), context);
        li liVarI = li.i();
        x3 applicationConfigurations = response.c().getApplicationConfigurations();
        Intrinsics.checkNotNull(applicationConfigurations);
        liVarI.a(applicationConfigurations.i());
        li.i().a(config.k());
        li.i().d(config.b());
    }

    private final void a(fq sdkConfig2) {
        Iterator<lq> it = sdkInitListeners.iterator();
        while (it.hasNext()) {
            a(it.next(), sdkConfig2);
        }
        sdkInitListeners.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(hq error) {
        errorReason = error;
        a(false);
        Iterator<lq> it = sdkInitListeners.iterator();
        while (it.hasNext()) {
            a(it.next(), error);
        }
        sdkInitListeners.clear();
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, "Mediation availability false reason: " + error, 1);
    }

    private final void a(final lq listener, final fq sdkConfig2) {
        tools.e(new Runnable() { // from class: com.ironsource.sq$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                sq.b(listener, sdkConfig2);
            }
        });
    }

    private final void a(final lq listener, final hq error) {
        tools.e(new Runnable() { // from class: com.ironsource.sq$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                sq.b(listener, error);
            }
        });
    }

    private final void a(boolean inProgress) {
        initInProgress = inProgress;
        tools.a(b());
    }

    private final uq b() {
        if (sdkConfig != null) {
            return uq.INITIATED;
        }
        if (errorReason != null) {
            return uq.INIT_FAILED;
        }
        return initInProgress ? uq.INIT_IN_PROGRESS : uq.NOT_INIT;
    }

    /* JADX WARN: Code duplicated, block: B:65:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:68:0x010e  */
    /* JADX WARN: Code duplicated, block: B:70:? A[RETURN, SYNTHETIC] */
    private final void b(Context context, fq sdkConfig2) {
        e4 eventsConfigurations;
        String str;
        boolean pixelEventsEnabled;
        String pixelEventsUrl;
        boolean pixelEventsCompression;
        int pixelEventsCompressionLevel;
        int[] pixelOptOut;
        int[] pixelOptIn;
        eo eoVar;
        ol nativeAdConfigurations;
        e4 eventsConfigurations2;
        r6 bannerConfigurations;
        e4 e4VarH;
        ji interstitialConfigurations;
        e4 e4VarJ;
        tp rewardedVideoConfigurations;
        e4 e4VarN;
        gr grVarD = sdkConfig2.d();
        p8 p8VarC = grVarD.c();
        boolean zL = (p8VarC == null || (rewardedVideoConfigurations = p8VarC.getRewardedVideoConfigurations()) == null || (e4VarN = rewardedVideoConfigurations.n()) == null) ? false : e4VarN.l();
        p8 p8VarC2 = grVarD.c();
        boolean zL2 = (p8VarC2 == null || (interstitialConfigurations = p8VarC2.getInterstitialConfigurations()) == null || (e4VarJ = interstitialConfigurations.j()) == null) ? false : e4VarJ.l();
        p8 p8VarC3 = grVarD.c();
        boolean zL3 = (p8VarC3 == null || (bannerConfigurations = p8VarC3.getBannerConfigurations()) == null || (e4VarH = bannerConfigurations.h()) == null) ? false : e4VarH.l();
        p8 p8VarC4 = grVarD.c();
        boolean zL4 = (p8VarC4 == null || (nativeAdConfigurations = p8VarC4.getNativeAdConfigurations()) == null || (eventsConfigurations2 = nativeAdConfigurations.getEventsConfigurations()) == null) ? false : eventsConfigurations2.l();
        if (zL) {
            p8 p8VarC5 = grVarD.c();
            tp rewardedVideoConfigurations2 = p8VarC5 != null ? p8VarC5.getRewardedVideoConfigurations() : null;
            Intrinsics.checkNotNull(rewardedVideoConfigurations2);
            e4 rewardedVideoConfig = rewardedVideoConfigurations2.n();
            Intrinsics.checkNotNullExpressionValue(rewardedVideoConfig, "rewardedVideoConfig");
            b(rewardedVideoConfig, context, grVarD);
        } else {
            vp.i().b(false);
        }
        if (!zL2) {
            if (zL3) {
                p8 p8VarC6 = grVarD.c();
                r6 bannerConfigurations2 = p8VarC6 != null ? p8VarC6.getBannerConfigurations() : null;
                Intrinsics.checkNotNull(bannerConfigurations2);
                eventsConfigurations = bannerConfigurations2.h();
                str = "bannerConfig";
            } else if (zL4) {
                p8 p8VarC7 = grVarD.c();
                ol nativeAdConfigurations2 = p8VarC7 != null ? p8VarC7.getNativeAdConfigurations() : null;
                Intrinsics.checkNotNull(nativeAdConfigurations2);
                eventsConfigurations = nativeAdConfigurations2.getEventsConfigurations();
                a(eventsConfigurations, context, grVarD);
            } else {
                li.i().b(false);
            }
            p8 p8VarC8 = grVarD.c();
            x3 applicationConfigurations = p8VarC8 != null ? p8VarC8.getApplicationConfigurations() : null;
            Intrinsics.checkNotNull(applicationConfigurations);
            fo foVarH = applicationConfigurations.h();
            pixelEventsEnabled = foVarH.getPixelEventsEnabled();
            pixelEventsUrl = foVarH.getPixelEventsUrl();
            pixelEventsCompression = foVarH.getPixelEventsCompression();
            pixelEventsCompressionLevel = foVarH.getPixelEventsCompressionLevel();
            pixelOptOut = foVarH.getPixelOptOut();
            pixelOptIn = foVarH.getPixelOptIn();
            eoVar = eo.P;
            eoVar.b(pixelEventsEnabled);
            if (pixelEventsEnabled) {
                eoVar.b(pixelEventsUrl, context);
                eoVar.c(pixelOptOut, context);
                eoVar.a(pixelOptIn, context);
                eoVar.a(pixelEventsCompression);
                eoVar.d(pixelEventsCompressionLevel);
            }
        }
        p8 p8VarC9 = grVarD.c();
        ji interstitialConfigurations2 = p8VarC9 != null ? p8VarC9.getInterstitialConfigurations() : null;
        Intrinsics.checkNotNull(interstitialConfigurations2);
        eventsConfigurations = interstitialConfigurations2.j();
        str = "interstitialConfig";
        Intrinsics.checkNotNullExpressionValue(eventsConfigurations, str);
        a(eventsConfigurations, context, grVarD);
        p8 p8VarC10 = grVarD.c();
        if (p8VarC10 != null) {
        }
        Intrinsics.checkNotNull(applicationConfigurations);
        fo foVarH2 = applicationConfigurations.h();
        pixelEventsEnabled = foVarH2.getPixelEventsEnabled();
        pixelEventsUrl = foVarH2.getPixelEventsUrl();
        pixelEventsCompression = foVarH2.getPixelEventsCompression();
        pixelEventsCompressionLevel = foVarH2.getPixelEventsCompressionLevel();
        pixelOptOut = foVarH2.getPixelOptOut();
        pixelOptIn = foVarH2.getPixelOptIn();
        eoVar = eo.P;
        eoVar.b(pixelEventsEnabled);
        if (pixelEventsEnabled) {
            eoVar.b(pixelEventsUrl, context);
            eoVar.c(pixelOptOut, context);
            eoVar.a(pixelOptIn, context);
            eoVar.a(pixelEventsCompression);
            eoVar.d(pixelEventsCompressionLevel);
        }
    }

    private final void b(e4 config, Context context, gr response) {
        vp.i().a(config.c(), context);
        vp.i().b(config.d(), context);
        vp.i().b(config.f());
        vp.i().a(config.e());
        vp.i().c(config.a());
        vp.i().c(config.i(), context);
        vp.i().a(config.h(), context);
        vp.i().b(config.j(), context);
        vp.i().d(config.g(), context);
        vp vpVarI = vp.i();
        x3 applicationConfigurations = response.c().getApplicationConfigurations();
        Intrinsics.checkNotNull(applicationConfigurations);
        vpVarI.a(applicationConfigurations.i());
        vp.i().a(config.k());
        vp.i().d(config.b());
    }

    private final void b(fq sdkConfig2) {
        sdkConfig = sdkConfig2;
        a(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(lq listener, fq sdkConfig2) {
        Intrinsics.checkNotNullParameter(listener, "$listener");
        Intrinsics.checkNotNullParameter(sdkConfig2, "$sdkConfig");
        listener.a(sdkConfig2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(lq listener, hq error) {
        Intrinsics.checkNotNullParameter(listener, "$listener");
        Intrinsics.checkNotNullParameter(error, "$error");
        listener.a(error);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(nq serverResponse) {
        Intrinsics.checkNotNullParameter(serverResponse, "$serverResponse");
        fq fqVar = new fq(serverResponse);
        sq sqVar = a;
        sqVar.b(fqVar);
        sqVar.a(fqVar);
    }

    private final ee c() {
        return (ee) applicationLifecycleService.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(hq error) {
        Intrinsics.checkNotNullParameter(error, "$error");
        a.a(error);
    }

    private final void d() {
        if (jl.INSTANCE.d().d().c()) {
            vp.i().a(new ob(IronSourceConstants.EP_CONFIG_RECEIVED, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f() {
        a.a(true);
    }

    public final void a(final Context context, final mq initRequest, final lq listener) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(initRequest, "initRequest");
        Intrinsics.checkNotNullParameter(listener, "listener");
        final Context applicationContext = context.getApplicationContext();
        tools.c(new Runnable() { // from class: com.ironsource.sq$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                sq.a(context, listener, initRequest, applicationContext);
            }
        });
    }

    public final void a(final nq serverResponse) {
        Intrinsics.checkNotNullParameter(serverResponse, "serverResponse");
        tools.c(new Runnable() { // from class: com.ironsource.sq$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                sq.b(serverResponse);
            }
        });
    }

    public final void b(final hq error) {
        Intrinsics.checkNotNullParameter(error, "error");
        tools.c(new Runnable() { // from class: com.ironsource.sq$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                sq.c(error);
            }
        });
    }

    public final void e() {
        tools.c(new Runnable() { // from class: com.ironsource.sq$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                sq.f();
            }
        });
    }
}
