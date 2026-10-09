package org.json;

import android.content.Context;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.adapters.ironsource.IronSourceLoadParameters;
import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.logger.IronSourceError;
import org.json.mediationsdk.p;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0018\u0010\u0019J(\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0002J\u0018\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u001e\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u001e\u0010\u000e\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u0010\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u001a"}, d2 = {"Lcom/ironsource/tq;", "Lcom/ironsource/bn;", "Landroid/content/Context;", "context", "Lcom/ironsource/mq;", "initRequest", "Lcom/ironsource/lq;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "", IronSourceLoadParameters.Constants.DEMAND_ONLY, "", "a", "Lcom/ironsource/fq;", "sdkInitResponse", "c", "Lcom/ironsource/gr;", "serverResponse", "Lcom/ironsource/mediationsdk/logger/IronSourceError;", "error", "onInitFailed", "Lcom/ironsource/wq;", "b", "Lcom/ironsource/wq;", "tools", "<init>", "()V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class tq implements bn {
    public static final tq a = new tq();

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private static final wq tools = new wq();

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¨\u0006\b"}, d2 = {"com/ironsource/tq$a", "Lcom/ironsource/lq;", "Lcom/ironsource/fq;", "sdkConfig", "", "a", "Lcom/ironsource/hq;", "error", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class a implements lq {
        final /* synthetic */ lq a;

        a(lq lqVar) {
            this.a = lqVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void a(fq sdkConfig, lq listener) {
            Intrinsics.checkNotNullParameter(sdkConfig, "$sdkConfig");
            Intrinsics.checkNotNullParameter(listener, "$listener");
            tq.a.a(sdkConfig, listener);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void a(lq listener, hq error) {
            Intrinsics.checkNotNullParameter(listener, "$listener");
            Intrinsics.checkNotNullParameter(error, "$error");
            listener.a(error);
        }

        @Override // org.json.lq
        public void a(final fq sdkConfig) {
            Intrinsics.checkNotNullParameter(sdkConfig, "sdkConfig");
            wq wqVar = tq.tools;
            final lq lqVar = this.a;
            wqVar.a(new Runnable() { // from class: com.ironsource.tq$a$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    tq.a.a(sdkConfig, lqVar);
                }
            });
        }

        @Override // org.json.lq
        public void a(final hq error) {
            Intrinsics.checkNotNullParameter(error, "error");
            wq wqVar = tq.tools;
            final lq lqVar = this.a;
            wqVar.d(new Runnable() { // from class: com.ironsource.tq$a$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    tq.a.a(lqVar, error);
                }
            });
        }
    }

    private tq() {
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0014  */
    private final void a(Context context, mq initRequest, final lq listener, boolean demandOnly) {
        boolean z;
        String strF = initRequest.f();
        if (strF != null) {
            z = strF.length() > 0;
        }
        if (z) {
            p.m().t(initRequest.f());
        } else {
            initRequest = new mq(initRequest.d(), p.m().o(), CollectionsKt.toMutableList((Collection) initRequest.e()));
        }
        p pVarM = p.m();
        String strD = initRequest.d();
        IronSource.AD_UNIT[] ad_unitArr = (IronSource.AD_UNIT[]) initRequest.e().toArray(new IronSource.AD_UNIT[0]);
        final IronSourceError ironSourceErrorA = pVarM.a(context, strD, demandOnly, null, this, (IronSource.AD_UNIT[]) Arrays.copyOf(ad_unitArr, ad_unitArr.length));
        if (ironSourceErrorA == null || ironSourceErrorA.getErrorCode() == 2020) {
            sq.a.a(context, initRequest, new a(listener));
            return;
        }
        if (ironSourceErrorA.getErrorCode() == 2040) {
            gr grVarH = p.m().h();
            if (grVarH != null) {
                a(new fq(new nq(grVarH)), listener);
                return;
            }
        } else if (ironSourceErrorA.getErrorCode() == 2030) {
            sq.a.e();
            return;
        }
        tools.d(new Runnable() { // from class: com.ironsource.tq$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                tq.a(listener, ironSourceErrorA);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(final fq sdkInitResponse, final lq listener) {
        if (p.m().a(false, sdkInitResponse.d())) {
            tools.d(new Runnable() { // from class: com.ironsource.tq$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    tq.a(listener, sdkInitResponse);
                }
            });
        } else {
            tools.d(new Runnable() { // from class: com.ironsource.tq$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    tq.a(listener);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(lq listener) {
        Intrinsics.checkNotNullParameter(listener, "$listener");
        listener.a(new hq(IronSourceError.ERROR_LEGACY_INIT_POST_FAILED, "An unknown error has occurred"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(lq listener, fq sdkInitResponse) {
        Intrinsics.checkNotNullParameter(listener, "$listener");
        Intrinsics.checkNotNullParameter(sdkInitResponse, "$sdkInitResponse");
        listener.a(sdkInitResponse);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(lq listener, IronSourceError error) {
        Intrinsics.checkNotNullParameter(listener, "$listener");
        Intrinsics.checkNotNullExpressionValue(error, "error");
        listener.a(new hq(error));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(IronSourceError error) {
        Intrinsics.checkNotNullParameter(error, "$error");
        sq.a.b(new hq(error));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(Context context, mq initRequest, lq listener) {
        Intrinsics.checkNotNullParameter(context, "$context");
        Intrinsics.checkNotNullParameter(initRequest, "$initRequest");
        Intrinsics.checkNotNullParameter(listener, "$listener");
        a.a(context, initRequest, listener, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(gr serverResponse) {
        Intrinsics.checkNotNullParameter(serverResponse, "$serverResponse");
        sq.a.a(new nq(serverResponse));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(Context context, mq initRequest, lq listener) {
        Intrinsics.checkNotNullParameter(context, "$context");
        Intrinsics.checkNotNullParameter(initRequest, "$initRequest");
        Intrinsics.checkNotNullParameter(listener, "$listener");
        p pVarM = p.m();
        String strD = initRequest.d();
        IronSource.AD_UNIT[] ad_unitArr = (IronSource.AD_UNIT[]) initRequest.e().toArray(new IronSource.AD_UNIT[0]);
        List<IronSource.AD_UNIT> validAdUnitsList = pVarM.a(context, strD, false, (IronSource.AD_UNIT[]) Arrays.copyOf(ad_unitArr, ad_unitArr.length));
        Intrinsics.checkNotNullExpressionValue(validAdUnitsList, "validAdUnitsList");
        initRequest.a(validAdUnitsList);
        a.a(context, initRequest, listener, true);
    }

    public final void a(final Context context, final mq initRequest, final lq listener) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(initRequest, "initRequest");
        Intrinsics.checkNotNullParameter(listener, "listener");
        tools.c(new Runnable() { // from class: com.ironsource.tq$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                tq.b(context, initRequest, listener);
            }
        });
    }

    @Override // org.json.bn
    public void a(final gr serverResponse) {
        Intrinsics.checkNotNullParameter(serverResponse, "serverResponse");
        tools.a(new Runnable() { // from class: com.ironsource.tq$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                tq.b(serverResponse);
            }
        });
    }

    public final void c(final Context context, final mq initRequest, final lq listener) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(initRequest, "initRequest");
        Intrinsics.checkNotNullParameter(listener, "listener");
        tools.c(new Runnable() { // from class: com.ironsource.tq$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                tq.d(context, initRequest, listener);
            }
        });
    }

    @Override // org.json.bn
    public void onInitFailed(final IronSourceError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        tools.a(new Runnable() { // from class: com.ironsource.tq$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                tq.a(error);
            }
        });
    }
}
