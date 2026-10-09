package org.json;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.logger.IronSourceError;
import org.json.mediationsdk.logger.IronSourceLogger;
import org.json.mediationsdk.logger.IronSourceLoggerManager;
import org.json.mediationsdk.p;
import org.json.mediationsdk.server.HttpFunctions;
import org.json.mediationsdk.server.ServerURL;
import org.json.mediationsdk.utils.ErrorBuilder;
import org.json.mediationsdk.utils.IronSourceAES;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0014\u0010\u0015J \u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J \u0010\n\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0012\u0010\n\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u000bH\u0002J&\u0010\n\u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011¨\u0006\u0016"}, d2 = {"Lcom/ironsource/er;", "", "Landroid/content/Context;", "context", "Lcom/ironsource/wq;", "tools", "Lcom/ironsource/mq;", "request", "Lcom/ironsource/rq;", "b", "a", "", "encryptedResponse", "", "hasCompression", "reason", "Lcom/ironsource/hq;", "Lcom/ironsource/lq;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "", "<init>", "()V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class er {
    private final hq a(String reason) {
        return reason != null ? new hq(2110, reason) : new hq(hq.d, "noServerResponse");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final rq a(Context context, wq tools, mq request) {
        try {
            String strA = tools.a(context);
            if (TextUtils.isEmpty(strA)) {
                strA = tools.b(context);
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "using custom identifier", 1);
            }
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            String strSendPostRequest = HttpFunctions.sendPostRequest(ServerURL.buildInitURL(context, request.d(), request.f(), strA, null, true, null, false), nh.a().toString(), new p.c() { // from class: com.ironsource.er$$ExternalSyntheticLambda0
                @Override // com.ironsource.mediationsdk.p.c
                public final void a(String str) {
                    er.a(objectRef, str);
                }
            });
            if (strSendPostRequest == null) {
                IronLog.INTERNAL.warning("serverResponseString is null");
                return new rq(a((String) objectRef.element));
            }
            if (tools.c()) {
                IronLog ironLog = IronLog.INTERNAL;
                ironLog.verbose("encrypt");
                JSONObject jSONObject = new JSONObject(strSendPostRequest);
                String encryptedResponse = jSONObject.optString(gr.n);
                if (TextUtils.isEmpty(encryptedResponse)) {
                    ironLog.warning("encryptedResponse is empty - return null");
                    return new rq(new hq(2100, kq.FALSE_AVAILABILITY_REASON_NO_RESPONSE_KEY));
                }
                boolean zOptBoolean = jSONObject.optBoolean("compression", false);
                Intrinsics.checkNotNullExpressionValue(encryptedResponse, "encryptedResponse");
                strSendPostRequest = a(encryptedResponse, zOptBoolean);
                if (TextUtils.isEmpty(strSendPostRequest)) {
                    ironLog.warning("encoded response invalid - return null");
                    tools.d();
                    return new rq(new hq(hq.f, kq.FALSE_AVAILABILITY_REASON_DECRYPTION_FAILED));
                }
            }
            gr grVar = new gr(context, request.d(), request.f(), strSendPostRequest);
            grVar.a(gr.a.SERVER);
            if (grVar.p()) {
                return new rq(new nq(grVar));
            }
            IronLog.INTERNAL.warning("response invalid - return null");
            return new rq(new hq(hq.e, "serverResponseIsNotValid"));
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.INTERNAL.warning("exception = " + e);
            return new rq(e instanceof JSONException ? new hq(hq.e, "serverResponseIsNotValid") : new hq(510, "internal error"));
        }
    }

    private final String a(String encryptedResponse, boolean hasCompression) {
        String strDecryptAndDecompress = hasCompression ? IronSourceAES.decryptAndDecompress(bb.b().c(), encryptedResponse) : IronSourceAES.decode(bb.b().c(), encryptedResponse);
        Intrinsics.checkNotNullExpressionValue(strDecryptAndDecompress, "{\n      IronSourceAES.de… encryptedResponse)\n    }");
        return strDecryptAndDecompress;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void a(Ref.ObjectRef reason, String errorMessage) {
        Intrinsics.checkNotNullParameter(reason, "$reason");
        Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
        reason.element = errorMessage;
    }

    private final rq b(Context context, wq tools, mq request) {
        rq rqVarA = a(context, tools, request);
        if (rqVarA.c()) {
            return rqVarA;
        }
        IronSourceLoggerManager logger = IronSourceLoggerManager.getLogger();
        IronSourceLogger.IronSourceTag ironSourceTag = IronSourceLogger.IronSourceTag.INTERNAL;
        logger.log(ironSourceTag, "Null or invalid response. Trying to get cached response", 0);
        gr grVarA = tools.a(context, request.d());
        if (grVarA == null) {
            return rqVarA;
        }
        rq rqVar = new rq(new nq(grVarA));
        IronSourceError ironSourceErrorBuildUsingCachedConfigurationError = ErrorBuilder.buildUsingCachedConfigurationError(request.d(), request.f());
        IronSourceLoggerManager.getLogger().log(ironSourceTag, ironSourceErrorBuildUsingCachedConfigurationError + ": " + rqVar.getSdkInitResponse(), 1);
        tools.e();
        return rqVar;
    }

    public final void a(Context context, mq request, wq tools, lq listener) {
        hq error;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(tools, "tools");
        Intrinsics.checkNotNullParameter(listener, "listener");
        String strF = request.f();
        if (strF == null) {
            strF = "";
        }
        tools.a("userId", strF);
        tools.a("appKey", request.d());
        tools.getGlobalDataWriter().i(request.f());
        rq rqVarB = b(context, tools, request);
        if (rqVarB.getSdkInitResponse() != null) {
            fq fqVar = new fq(rqVarB.getSdkInitResponse());
            if (rqVarB.c()) {
                listener.a(fqVar);
                return;
            }
            error = new hq(hq.e, "serverResponseIsNotValid");
        } else {
            error = rqVarB.getError();
            if (error == null) {
                error = new hq(510, "unknown error");
            }
        }
        listener.a(error);
    }
}
