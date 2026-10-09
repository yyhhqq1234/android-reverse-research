package org.json;

import android.content.Context;
import android.os.Handler;
import android.view.Choreographer;
import com.unity3d.mediation.LevelPlay;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.environment.thread.IronSourceThreadManager;
import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.adunit.adapter.internal.AdapterBaseInterface;
import org.json.mediationsdk.impressionData.ImpressionData;
import org.json.mediationsdk.integration.IntegrationHelper;
import org.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0016\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b*\u0010+J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0018\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\bJ\u000e\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0002J\u000e\u0010\f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0002J\u001a\u0010\n\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\r2\b\b\u0002\u0010\t\u001a\u00020\bH\u0007J\u000e\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rJ\u0006\u0010\n\u001a\u00020\u000fJ\u000e\u0010\n\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0010J'\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00150\u00122\u0012\u0010\u0014\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00130\u0012\"\u00020\u0013¢\u0006\u0004\b\n\u0010\u0016J\u000e\u0010\n\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0013J\u001e\u0010\n\u001a\u00020\u001c2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u001aJ\u0016\u0010\n\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\b2\u0006\u0010\u001f\u001a\u00020\u001eJ\u0016\u0010\n\u001a\u00020\u00042\u0006\u0010!\u001a\u00020 2\u0006\u0010\u001d\u001a\u00020\bJ(\u0010\n\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\u00132\u0006\u0010$\u001a\u00020#2\b\u0010%\u001a\u0004\u0018\u00010\u001aJ \u0010\n\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\u001a2\u0006\u0010$\u001a\u00020#2\b\u0010%\u001a\u0004\u0018\u00010\u001aJ \u0010\u0006\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\u001a2\u0006\u0010$\u001a\u00020#2\b\u0010%\u001a\u0004\u0018\u00010\u001aR\u0014\u0010)\u001a\u00020'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010(¨\u0006,"}, d2 = {"Lcom/ironsource/sk;", "", "Ljava/lang/Runnable;", "runnable", "", "d", "b", "c", "", "delay", "a", "callback", "e", "Lcom/ironsource/cq;", "safeRunnable", "Landroid/os/Handler;", "Landroid/content/Context;", "context", "", "Lcom/unity3d/mediation/LevelPlay$AdFormat;", "adFormats", "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;", "([Lcom/unity3d/mediation/LevelPlay$AdFormat;)[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;", ImpressionData.IMPRESSION_DATA_KEY_AD_FORMAT, "Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;", "networkAdapter", "", "providerName", "", IronSourceConstants.EVENTS_DURATION, "Lcom/ironsource/gr$a;", "responseOrigin", "Lcom/ironsource/hq;", "error", oo.d, "", IronSourceConstants.EVENTS_ERROR_CODE, "errorMessage", "adUnitId", "Lcom/ironsource/uh;", "Lcom/ironsource/uh;", "thread", "<init>", "()V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public class sk {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final uh thread = new uh(null, 1, null);

    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0004"}, d2 = {"com/ironsource/sk$a", "Lcom/ironsource/cq;", "", "a", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class a extends cq {
        final /* synthetic */ Runnable a;

        a(Runnable runnable) {
            this.a = runnable;
        }

        @Override // org.json.cq
        public void a() {
            this.a.run();
        }
    }

    public static /* synthetic */ void a(sk skVar, cq cqVar, long j, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: postTask");
        }
        if ((i & 2) != 0) {
            j = 0;
        }
        skVar.a(cqVar, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(sk this$0, Runnable runnable) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(runnable, "$runnable");
        this$0.thread.b(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(sk this$0, Runnable runnable, long j) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(runnable, "$runnable");
        this$0.b(runnable);
    }

    public static /* synthetic */ void a(sk skVar, Runnable runnable, long j, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: postOnUIThread");
        }
        if ((i & 2) != 0) {
            j = 0;
        }
        skVar.a(runnable, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(final sk this$0, final Runnable runnable) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(runnable, "$runnable");
        Choreographer.getInstance().postFrameCallback(new Choreographer.FrameCallback() { // from class: com.ironsource.sk$$ExternalSyntheticLambda2
            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j) {
                sk.a(this.f$0, runnable, j);
            }
        });
    }

    public final Handler a() {
        return this.thread.getHandler();
    }

    public final IronSource.AD_UNIT a(LevelPlay.AdFormat adFormat) {
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        return com.unity3d.mediation.a.a(adFormat);
    }

    public final void a(long duration, gr.a responseOrigin) {
        Intrinsics.checkNotNullParameter(responseOrigin, "responseOrigin");
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("isMultipleAdUnits", 1);
        jSONObject.put(IronSourceConstants.EVENTS_DURATION, duration);
        jSONObject.put(IronSourceConstants.EVENTS_EXT1, responseOrigin.a());
        os.a(IronSourceConstants.SDK_INIT_SUCCESS, jSONObject);
    }

    public final void a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        IntegrationHelper.validateIntegration(context.getApplicationContext());
    }

    public final void a(cq safeRunnable) {
        Intrinsics.checkNotNullParameter(safeRunnable, "safeRunnable");
        a(this, safeRunnable, 0L, 2, (Object) null);
    }

    public final void a(cq safeRunnable, long delay) {
        Intrinsics.checkNotNullParameter(safeRunnable, "safeRunnable");
        this.thread.a(safeRunnable, delay);
    }

    public final void a(hq error, long duration) {
        Intrinsics.checkNotNullParameter(error, "error");
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(IronSourceConstants.EVENTS_ERROR_CODE, error.c());
        jSONObject.put("reason", error.d());
        jSONObject.put("isMultipleAdUnits", 1);
        jSONObject.put(IronSourceConstants.EVENTS_DURATION, duration);
        os.a(IronSourceConstants.SDK_INIT_FAILED, jSONObject);
    }

    public final void a(Runnable callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.thread.a(callback);
    }

    public final void a(Runnable runnable, long delay) {
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new a(runnable), delay);
    }

    public final void a(String adUnitId, int errorCode, String errorMessage) throws JSONException {
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(IronSourceConstants.EVENTS_ERROR_CODE, errorCode);
        jSONObject.putOpt("reason", errorMessage);
        jSONObject.put("mediationAdUnitId", adUnitId);
        jSONObject.put("isMultipleAdUnits", 1);
        os.a(IronSourceConstants.TROUBLESHOOTING_AD_UNIT_CAPPING_PARSE_ERROR, jSONObject);
    }

    public final void a(String placementName, LevelPlay.AdFormat adFormat, int errorCode, String errorMessage) throws JSONException {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(IronSourceConstants.EVENTS_ERROR_CODE, errorCode);
        jSONObject.putOpt("reason", errorMessage);
        jSONObject.put("placement", placementName);
        jSONObject.put(dk.EVENTS_LEVEL_PLAY_AD_FORMAT_NAME, adFormat.getValue());
        jSONObject.put("adf", os.b(com.unity3d.mediation.a.a(adFormat)));
        jSONObject.put("isMultipleAdUnits", 1);
        os.a(IronSourceConstants.TROUBLESHOOTING_PLACEMENT_CAPPING_PARSE_ERROR, jSONObject);
    }

    public final boolean a(AdapterBaseInterface networkAdapter, IronSource.AD_UNIT adFormat, String providerName) {
        Intrinsics.checkNotNullParameter(networkAdapter, "networkAdapter");
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        Intrinsics.checkNotNullParameter(providerName, "providerName");
        return os.a(networkAdapter, adFormat, providerName);
    }

    public final IronSource.AD_UNIT[] a(LevelPlay.AdFormat... adFormats) {
        Intrinsics.checkNotNullParameter(adFormats, "adFormats");
        ArrayList arrayList = new ArrayList();
        for (LevelPlay.AdFormat adFormat : adFormats) {
            arrayList.add(a(adFormat));
        }
        return (IronSource.AD_UNIT[]) arrayList.toArray(new IronSource.AD_UNIT[0]);
    }

    public final void b(cq safeRunnable) {
        Intrinsics.checkNotNullParameter(safeRunnable, "safeRunnable");
        this.thread.a(safeRunnable);
    }

    public final void b(final Runnable runnable) {
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        a(this, new Runnable() { // from class: com.ironsource.sk$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                sk.a(this.f$0, runnable);
            }
        }, 0L, 2, (Object) null);
    }

    public final void b(String adUnitId, int errorCode, String errorMessage) throws JSONException {
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(IronSourceConstants.EVENTS_ERROR_CODE, errorCode);
        jSONObject.putOpt("reason", errorMessage);
        jSONObject.put("mediationAdUnitId", adUnitId);
        jSONObject.put("isMultipleAdUnits", 1);
        os.a(IronSourceConstants.TROUBLESHOOTING_AD_UNIT_REWARD_PARSE_ERROR, jSONObject);
    }

    public final void c(final Runnable runnable) {
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        a(this, new Runnable() { // from class: com.ironsource.sk$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                sk.b(this.f$0, runnable);
            }
        }, 0L, 2, (Object) null);
    }

    public final void d(Runnable runnable) {
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        this.thread.b(runnable);
    }

    public final void e(Runnable callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        IronSourceThreadManager.postOnUiThreadTask$default(IronSourceThreadManager.INSTANCE, callback, 0L, 2, null);
    }
}
