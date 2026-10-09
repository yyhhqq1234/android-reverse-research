package org.json;

import android.content.Context;
import com.unity3d.ironsourceads.InitListener;
import com.unity3d.ironsourceads.InitRequest;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.config.ConfigFile;
import org.json.mediationsdk.logger.IronSourceError;
import org.json.mediationsdk.model.NetworkSettings;
import org.json.mediationsdk.p;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0014\u0010\u0015J*\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0002J\"\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0002J\"\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\fH\u0002J\u001e\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\bR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, d2 = {"Lcom/ironsource/ri;", "", "Landroid/content/Context;", "context", "Lcom/ironsource/gr;", "serverResponse", "Lcom/ironsource/xa;", "initDuration", "Lcom/unity3d/ironsourceads/InitListener;", "initializationListener", "", "a", "Lcom/ironsource/hq;", "error", "Lcom/unity3d/ironsourceads/InitRequest;", "initRequest", "Lcom/ironsource/qh;", "b", "Lcom/ironsource/qh;", "tools", "<init>", "()V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class ri {
    public static final ri a = new ri();

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private static final qh tools = new qh();

    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¨\u0006\u0007"}, d2 = {"com/ironsource/ri$a", "Lcom/unity3d/ironsourceads/InitListener;", "", "onInitSuccess", "Lcom/ironsource/mediationsdk/logger/IronSourceError;", "error", "onInitFailed", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class a implements InitListener {
        a() {
        }

        @Override // com.unity3d.ironsourceads.InitListener
        public void onInitFailed(IronSourceError error) {
            Intrinsics.checkNotNullParameter(error, "error");
        }

        @Override // com.unity3d.ironsourceads.InitListener
        public void onInitSuccess() {
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¨\u0006\b"}, d2 = {"com/ironsource/ri$b", "Lcom/ironsource/lq;", "Lcom/ironsource/fq;", "sdkConfig", "", "a", "Lcom/ironsource/hq;", "error", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class b implements lq {
        final /* synthetic */ Context a;
        final /* synthetic */ xa b;
        final /* synthetic */ InitListener c;

        b(Context context, xa xaVar, InitListener initListener) {
            this.a = context;
            this.b = xaVar;
            this.c = initListener;
        }

        @Override // org.json.lq
        public void a(fq sdkConfig) {
            Intrinsics.checkNotNullParameter(sdkConfig, "sdkConfig");
            ri.a.a(this.a, sdkConfig.d(), this.b, this.c);
        }

        @Override // org.json.lq
        public void a(hq error) {
            Intrinsics.checkNotNullParameter(error, "error");
            ri.a.a(this.c, this.b, error);
        }
    }

    private ri() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(Context context, gr serverResponse, xa initDuration, InitListener initializationListener) {
        String strU = p.m().u();
        ih ihVarF = serverResponse.f();
        Intrinsics.checkNotNullExpressionValue(ihVarF, "serverResponse.initialConfiguration");
        NetworkSettings networkSettingsB = serverResponse.k().b("IronSource");
        Intrinsics.checkNotNullExpressionValue(networkSettingsB, "serverResponse.providerS…s.IRONSOURCE_CONFIG_NAME)");
        JSONObject interstitialSettings = networkSettingsB.getInterstitialSettings();
        Intrinsics.checkNotNullExpressionValue(interstitialSettings, "networkSettings.interstitialSettings");
        ihVarF.a(new s0.a(interstitialSettings));
        ihVarF.a(ConfigFile.getConfigFile().getPluginType());
        ihVarF.b(strU);
        new u0(new om()).a(context, ihVarF, new a());
        a(serverResponse, initDuration, initializationListener);
    }

    private final void a(gr serverResponse, xa initDuration, final InitListener initializationListener) {
        g4 g4VarD;
        x3 applicationConfigurations = serverResponse.c().getApplicationConfigurations();
        new kl().a((applicationConfigurations == null || (g4VarD = applicationConfigurations.d()) == null) ? null : g4VarD.b(), true);
        String sessionId = p.m().u();
        hm hmVarA = hm.INSTANCE.a();
        hmVarA.a(serverResponse.k());
        hmVarA.a(serverResponse.c());
        Intrinsics.checkNotNullExpressionValue(sessionId, "sessionId");
        hmVarA.a(sessionId);
        hmVarA.g();
        long jA = xa.a(initDuration);
        qh qhVar = tools;
        gr.a aVarH = serverResponse.h();
        Intrinsics.checkNotNullExpressionValue(aVarH, "serverResponse.origin");
        qhVar.a(jA, aVarH);
        qhVar.b(new Runnable() { // from class: com.ironsource.ri$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                ri.a(initializationListener);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(InitListener initListener) {
        if (initListener != null) {
            initListener.onInitSuccess();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(InitListener initListener, hq error) {
        Intrinsics.checkNotNullParameter(error, "$error");
        if (initListener != null) {
            initListener.onInitFailed(tools.a(error));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(final InitListener initializationListener, xa initDuration, final hq error) {
        long jA = xa.a(initDuration);
        qh qhVar = tools;
        qhVar.a(error, jA);
        qhVar.b(new Runnable() { // from class: com.ironsource.ri$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                ri.a(initializationListener, error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(InitRequest initRequest, Context context, InitListener initializationListener) {
        Intrinsics.checkNotNullParameter(initRequest, "$initRequest");
        Intrinsics.checkNotNullParameter(context, "$context");
        Intrinsics.checkNotNullParameter(initializationListener, "$initializationListener");
        xa xaVar = new xa();
        tq.a.c(context, new mq(initRequest.getAppKey(), null, ArraysKt.toMutableList(tools.a(initRequest.getLegacyAdFormats())), 2, null), new b(context, xaVar, initializationListener));
    }

    public final void a(final Context context, final InitRequest initRequest, final InitListener initializationListener) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(initRequest, "initRequest");
        Intrinsics.checkNotNullParameter(initializationListener, "initializationListener");
        tools.a(new Runnable() { // from class: com.ironsource.ri$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                ri.a(initRequest, context, initializationListener);
            }
        });
    }
}
