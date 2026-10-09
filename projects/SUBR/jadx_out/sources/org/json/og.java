package org.json;

import android.app.Activity;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import java.util.Calendar;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.sdk.IronSourceNetwork;
import org.json.sdk.controller.e;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\t*\u0002\u0006\t\u0018\u0000 42\u00020\u0001:\u0001\u0011B#\b\u0000\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0015\u0012\u0006\u0010\u001b\u001a\u00020\u0018\u0012\u0006\u0010\u001e\u001a\u00020\u001c¢\u0006\u0004\b2\u00103J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0018\u0010\u0011\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016J\u0010\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0016J\b\u0010\u0014\u001a\u00020\u0010H\u0016R\u0014\u0010\u0017\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0016R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001e\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u001dR(\u0010$\u001a\u0004\u0018\u00010\u001f2\b\u0010 \u001a\u0004\u0018\u00010\u001f8\u0016@RX\u0096\u000e¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b\u0019\u0010#R(\u0010'\u001a\u0004\u0018\u00010\u00152\b\u0010 \u001a\u0004\u0018\u00010\u00158\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0007\u0010\u0016\u001a\u0004\b%\u0010&R(\u0010)\u001a\u0004\u0018\u00010\u00152\b\u0010 \u001a\u0004\u0018\u00010\u00158\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\n\u0010\u0016\u001a\u0004\b(\u0010&R\u0018\u0010+\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010*R$\u00100\u001a\u0004\u0018\u00010,8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b(\u0010-\u001a\u0004\b\u0011\u0010.\"\u0004\b\u0011\u0010/R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u00101¨\u00065"}, d2 = {"Lcom/ironsource/og;", "Lcom/ironsource/sg;", "Lcom/ironsource/fg;", "c", "", "i", "com/ironsource/og$b", "e", "()Lcom/ironsource/og$b;", "com/ironsource/og$c", "f", "()Lcom/ironsource/og$c;", "Landroid/app/Activity;", "activity", "Lorg/json/JSONObject;", "loadParams", "", "a", "Lcom/ironsource/tg;", "viewHolder", "destroy", "", "Ljava/lang/String;", "id", "Lcom/ironsource/sl;", "b", "Lcom/ironsource/sl;", "controller", "Lcom/ironsource/gg;", "Lcom/ironsource/gg;", "eventTracker", "Lcom/ironsource/qg;", "<set-?>", "d", "Lcom/ironsource/qg;", "()Lcom/ironsource/qg;", "adData", "g", "()Ljava/lang/String;", "demandSourceName", "h", "isBidding", "Ljava/lang/Long;", "startTime", "Lcom/ironsource/sg$a;", "Lcom/ironsource/sg$a;", "()Lcom/ironsource/sg$a;", "(Lcom/ironsource/sg$a;)V", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/ironsource/tg;", "<init>", "(Ljava/lang/String;Lcom/ironsource/sl;Lcom/ironsource/gg;)V", "j", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class og implements sg {

    /* JADX INFO: renamed from: j, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final String id;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final sl controller;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final gg eventTracker;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    private qg adData;

    /* JADX INFO: renamed from: e, reason: from kotlin metadata */
    private String demandSourceName;

    /* JADX INFO: renamed from: f, reason: from kotlin metadata */
    private String isBidding;

    /* JADX INFO: renamed from: g, reason: from kotlin metadata */
    private Long startTime;

    /* JADX INFO: renamed from: h, reason: from kotlin metadata */
    private sg.a listener;

    /* JADX INFO: renamed from: i, reason: from kotlin metadata */
    private tg viewHolder;

    /* JADX INFO: renamed from: com.ironsource.og$a, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0003\u001a\u00020\u0002H\u0007¨\u0006\u0006"}, d2 = {"Lcom/ironsource/og$a;", "", "Lcom/ironsource/og;", "a", "<init>", "()V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final og a() {
            String string = UUID.randomUUID().toString();
            Intrinsics.checkNotNullExpressionValue(string, "randomUUID().toString()");
            e controllerManager = IronSourceNetwork.getControllerManager();
            Intrinsics.checkNotNullExpressionValue(controllerManager, "controllerManager");
            return new og(string, new rl(string, controllerManager, null, null, 12, null), new hg());
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\b\u0010\b\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016¨\u0006\t"}, d2 = {"com/ironsource/og$b", "Lcom/ironsource/sl$a;", "Lcom/ironsource/qg;", "adData", "", "a", "", "reason", "b", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class b implements sl.a {
        b() {
        }

        @Override // com.ironsource.sl.a
        public void a() {
            sg.a listener = og.this.getListener();
            if (listener != null) {
                listener.onNativeAdShown();
            }
        }

        @Override // com.ironsource.sl.a
        public void a(qg adData) {
            Intrinsics.checkNotNullParameter(adData, "adData");
            og.this.adData = adData;
            gg ggVar = og.this.eventTracker;
            zp.a loadAdSuccess = zp.l;
            Intrinsics.checkNotNullExpressionValue(loadAdSuccess, "loadAdSuccess");
            HashMap<String, Object> mapA = og.this.c().a();
            Intrinsics.checkNotNullExpressionValue(mapA, "baseEventParams().data");
            ggVar.a(loadAdSuccess, mapA);
            sg.a listener = og.this.getListener();
            if (listener != null) {
                listener.onNativeAdLoadSuccess(adData);
            }
        }

        @Override // com.ironsource.sl.a
        public void a(String reason) {
            Intrinsics.checkNotNullParameter(reason, "reason");
            fg fgVarA = og.this.c().a(rb.A, reason);
            gg ggVar = og.this.eventTracker;
            zp.a loadAdFailed = zp.g;
            Intrinsics.checkNotNullExpressionValue(loadAdFailed, "loadAdFailed");
            HashMap<String, Object> mapA = fgVarA.a();
            Intrinsics.checkNotNullExpressionValue(mapA, "eventParams.data");
            ggVar.a(loadAdFailed, mapA);
            sg.a listener = og.this.getListener();
            if (listener != null) {
                listener.onNativeAdLoadFailed(reason);
            }
        }

        @Override // com.ironsource.sl.a
        public void b() {
            sg.a listener = og.this.getListener();
            if (listener != null) {
                listener.onNativeAdClicked();
            }
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¨\u0006\b"}, d2 = {"com/ironsource/og$c", "Lcom/ironsource/tg$a;", "Lcom/ironsource/tg$b;", "viewName", "", "a", "Lcom/ironsource/ku;", "viewVisibilityParams", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class c implements tg.a {

        @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
        public /* synthetic */ class a {
            public static final /* synthetic */ int[] a;

            static {
                int[] iArr = new int[tg.b.values().length];
                try {
                    iArr[tg.b.PrivacyIcon.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                a = iArr;
            }
        }

        c() {
        }

        @Override // com.ironsource.tg.a
        public void a(ku viewVisibilityParams) {
            Intrinsics.checkNotNullParameter(viewVisibilityParams, "viewVisibilityParams");
            og.this.controller.a(viewVisibilityParams);
        }

        @Override // com.ironsource.tg.a
        public void a(tg.b viewName) throws JSONException {
            Intrinsics.checkNotNullParameter(viewName, "viewName");
            if (a.a[viewName.ordinal()] == 1) {
                og.this.controller.b();
                return;
            }
            JSONObject clickParams = new JSONObject().put("viewName", viewName.getValue());
            sl slVar = og.this.controller;
            Intrinsics.checkNotNullExpressionValue(clickParams, "clickParams");
            slVar.a(clickParams);
        }
    }

    public og(String id, sl controller, gg eventTracker) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(controller, "controller");
        Intrinsics.checkNotNullParameter(eventTracker, "eventTracker");
        this.id = id;
        this.controller = controller;
        this.eventTracker = eventTracker;
        controller.a(e());
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ og(String str, sl slVar, gg ggVar, int i, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i & 1) != 0) {
            str = UUID.randomUUID().toString();
            Intrinsics.checkNotNullExpressionValue(str, "randomUUID().toString()");
        }
        this(str, slVar, ggVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final fg c() {
        fg fgVarA = new fg().a(rb.x, this.isBidding).a(rb.v, this.demandSourceName).a(rb.w, dg.e.NativeAd.toString()).a(rb.I, Long.valueOf(i()));
        Intrinsics.checkNotNullExpressionValue(fgVarA, "ISNEventParams()\n       …CUSTOM_C, loadDuration())");
        return fgVarA;
    }

    @JvmStatic
    public static final og d() {
        return INSTANCE.a();
    }

    private final b e() {
        return new b();
    }

    private final c f() {
        return new c();
    }

    private final long i() {
        Long l = this.startTime;
        if (l == null) {
            return -1L;
        }
        return Calendar.getInstance().getTimeInMillis() - l.longValue();
    }

    @Override // org.json.sg
    /* JADX INFO: renamed from: a, reason: from getter */
    public sg.a getListener() {
        return this.listener;
    }

    @Override // org.json.sg
    public void a(Activity activity, JSONObject loadParams) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(loadParams, "loadParams");
        this.startTime = Long.valueOf(Calendar.getInstance().getTimeInMillis());
        this.demandSourceName = loadParams.optString("demandSourceName");
        this.isBidding = loadParams.optString("inAppBidding");
        gg ggVar = this.eventTracker;
        zp.a loadAd = zp.f;
        Intrinsics.checkNotNullExpressionValue(loadAd, "loadAd");
        HashMap<String, Object> mapA = c().a();
        Intrinsics.checkNotNullExpressionValue(mapA, "baseEventParams().data");
        ggVar.a(loadAd, mapA);
        JSONObject jSONObject = new JSONObject(loadParams.toString());
        jSONObject.put(y8.h.y0, String.valueOf(this.startTime));
        this.controller.a(activity, jSONObject);
    }

    @Override // org.json.sg
    public void a(sg.a aVar) {
        this.listener = aVar;
    }

    @Override // org.json.sg
    public void a(tg viewHolder) {
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        HashMap<String, Object> mapA = c().a();
        Intrinsics.checkNotNullExpressionValue(mapA, "baseEventParams().data");
        linkedHashMap.putAll(mapA);
        String string = viewHolder.t().toString();
        Intrinsics.checkNotNullExpressionValue(string, "viewHolder.viewsStatus().toString()");
        linkedHashMap.put(rb.y, string);
        gg ggVar = this.eventTracker;
        zp.a registerAd = zp.n;
        Intrinsics.checkNotNullExpressionValue(registerAd, "registerAd");
        ggVar.a(registerAd, linkedHashMap);
        this.viewHolder = viewHolder;
        viewHolder.a(f());
        this.controller.a(viewHolder);
    }

    @Override // org.json.sg
    /* JADX INFO: renamed from: b, reason: from getter */
    public qg getAdData() {
        return this.adData;
    }

    @Override // org.json.sg
    public void destroy() {
        tg tgVar = this.viewHolder;
        if (tgVar != null) {
            tgVar.a((tg.a) null);
        }
        this.controller.destroy();
    }

    /* JADX INFO: renamed from: g, reason: from getter */
    public final String getDemandSourceName() {
        return this.demandSourceName;
    }

    /* JADX INFO: renamed from: h, reason: from getter */
    public final String getIsBidding() {
        return this.isBidding;
    }
}
