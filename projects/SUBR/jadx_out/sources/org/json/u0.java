package org.json;

import android.content.Context;
import com.unity3d.ironsourceads.InitListener;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\f\u001a\u00020\n¢\u0006\u0004\b\r\u0010\u000eJ \u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016R\u0014\u0010\f\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u000b¨\u0006\u000f"}, d2 = {"Lcom/ironsource/u0;", "Lcom/ironsource/t0;", "Landroid/content/Context;", "context", "Lcom/ironsource/ih;", "initConfig", "Lcom/unity3d/ironsourceads/InitListener;", "initListener", "", "a", "Lcom/ironsource/nm;", "Lcom/ironsource/nm;", "networkInitApi", "<init>", "(Lcom/ironsource/nm;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class u0 implements t0 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final nm networkInitApi;

    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¨\u0006\u0007"}, d2 = {"com/ironsource/u0$a", "Lcom/ironsource/kn;", "", "onSuccess", "Lcom/ironsource/eg;", "error", "onFail", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class a implements kn {
        final /* synthetic */ ih a;
        final /* synthetic */ InitListener b;

        a(ih ihVar, InitListener initListener) {
            this.a = ihVar;
            this.b = initListener;
        }

        @Override // org.json.kn
        public void onFail(eg error) {
            Intrinsics.checkNotNullParameter(error, "error");
            IronLog.ADAPTER_API.verbose("initSDKWithNetworkConfigurations error: " + error);
            this.b.onInitFailed(lb.a.a(new IronSourceError(error.a(), error.b())));
        }

        @Override // org.json.kn
        public void onSuccess() {
            IronLog ironLog = IronLog.ADAPTER_API;
            ironLog.verbose("initSDKWithNetworkConfigurations success");
            StringBuilder sb = new StringBuilder("controllerURL = ");
            s0 applicationConfig = this.a.getApplicationConfig();
            sb.append(applicationConfig != null ? applicationConfig.c() : null);
            ironLog.verbose(sb.toString());
            StringBuilder sb2 = new StringBuilder("controllerConfig = ");
            s0 applicationConfig2 = this.a.getApplicationConfig();
            sb2.append(applicationConfig2 != null ? applicationConfig2.a() : null);
            ironLog.verbose(sb2.toString());
            StringBuilder sb3 = new StringBuilder("debugMode = ");
            s0 applicationConfig3 = this.a.getApplicationConfig();
            sb3.append(applicationConfig3 != null ? Integer.valueOf(applicationConfig3.b()) : null);
            ironLog.verbose(sb3.toString());
            ironLog.verbose("applicationKey = " + this.a.d());
            ironLog.verbose("userId = " + this.a.h());
            this.b.onInitSuccess();
        }
    }

    public u0(nm networkInitApi) {
        Intrinsics.checkNotNullParameter(networkInitApi, "networkInitApi");
        this.networkInitApi = networkInitApi;
    }

    @Override // org.json.t0
    public void a(Context context, ih initConfig, InitListener initListener) {
        JSONObject jSONObjectA;
        String strC;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(initConfig, "initConfig");
        Intrinsics.checkNotNullParameter(initListener, "initListener");
        nm nmVar = this.networkInitApi;
        s0 applicationConfig = initConfig.getApplicationConfig();
        nmVar.a(applicationConfig != null ? applicationConfig.b() : 0);
        s0 applicationConfig2 = initConfig.getApplicationConfig();
        if (applicationConfig2 != null && (strC = applicationConfig2.c()) != null) {
            this.networkInitApi.b(strC);
        }
        s0 applicationConfig3 = initConfig.getApplicationConfig();
        if (applicationConfig3 != null && (jSONObjectA = applicationConfig3.a()) != null) {
            nm nmVar2 = this.networkInitApi;
            String string = jSONObjectA.toString();
            Intrinsics.checkNotNullExpressionValue(string, "applicationConfig.toString()");
            nmVar2.a(string);
        }
        Map<String, String> mapA = new lm().a();
        this.networkInitApi.a(new a(initConfig, initListener));
        this.networkInitApi.a(context, initConfig.d(), initConfig.h(), mapA);
    }
}
