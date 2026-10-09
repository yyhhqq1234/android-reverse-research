package com.applovin.impl.sdk;

import android.content.Intent;
import androidx.core.app.NotificationCompat;
import com.applovin.impl.jn;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sj;
import com.applovin.impl.tm;
import com.applovin.impl.u7;
import com.applovin.impl.vi;
import com.applovin.impl.yl;
import com.applovin.impl.yp;
import com.applovin.sdk.AppLovinEventParameters;
import com.applovin.sdk.AppLovinEventService;
import com.applovin.sdk.AppLovinEventTypes;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.y8;

/* JADX INFO: loaded from: classes.dex */
public class EventServiceImpl implements AppLovinEventService {
    public static final List<String> ALLOW_PRE_INIT_EVENT_TYPES = Arrays.asList("landing", y8.h.e0, "resumed", "cf_start", "tos_ok", "gdpr_ok");
    private final j a;
    private final AtomicBoolean b = new AtomicBoolean();

    public EventServiceImpl(j jVar) {
        this.a = jVar;
    }

    private String b() {
        return ((String) this.a.a(sj.v0)) + "4.0/pix";
    }

    public void maybeTrackAppOpenEvent() {
        if (this.b.compareAndSet(false, true)) {
            this.a.z().trackEvent("landing");
        }
    }

    public String toString() {
        return "EventService{}";
    }

    @Override // com.applovin.sdk.AppLovinEventService
    public void trackCheckout(String str, Map<String, String> map) {
        Map<String, String> map2 = CollectionUtils.map(map);
        map2.put(AppLovinEventParameters.CHECKOUT_TRANSACTION_IDENTIFIER, str);
        trackEvent(AppLovinEventTypes.USER_COMPLETED_CHECKOUT, map2);
    }

    @Override // com.applovin.sdk.AppLovinEventService
    public void trackEvent(String str) {
        trackEvent(str, new HashMap());
    }

    public void trackEventSynchronously(String str) {
        this.a.I();
        if (n.a()) {
            this.a.I().a("AppLovinEventService", "Tracking event: \"" + str + "\" synchronously");
        }
        u7 u7Var = new u7(str, new HashMap());
        Map mapA = a(u7Var, true);
        HashMap map = new HashMap(u7Var.d());
        if (((Boolean) this.a.a(sj.s5)).booleanValue() || ((Boolean) this.a.a(sj.n5)).booleanValue()) {
            map.putAll(mapA);
            mapA = null;
        }
        this.a.W().e(com.applovin.impl.sdk.network.d.b().d(b()).a(a()).b(mapA).c(map).a(a(u7Var, (Map) null)).c(((Boolean) this.a.a(sj.C5)).booleanValue()).a(((Boolean) this.a.a(sj.a5)).booleanValue()).a());
    }

    @Override // com.applovin.sdk.AppLovinEventService
    public void trackInAppPurchase(Intent intent, Map<String, String> map) {
        Map<String, String> map2 = CollectionUtils.map(map);
        try {
            map2.put(AppLovinEventParameters.IN_APP_PURCHASE_DATA, intent.getStringExtra("INAPP_PURCHASE_DATA"));
            map2.put(AppLovinEventParameters.IN_APP_DATA_SIGNATURE, intent.getStringExtra("INAPP_DATA_SIGNATURE"));
        } catch (Throwable th) {
            n.c("AppLovinEventService", "Unable to track in app purchase - invalid purchase intent", th);
            this.a.D().a("AppLovinEventService", "trackIAP", th);
        }
        trackEvent("iap", map2);
    }

    @Override // com.applovin.sdk.AppLovinEventService
    public void trackEvent(String str, Map<String, String> map) {
        trackEvent(str, map, null);
    }

    public void trackEvent(String str, Map<String, String> map, final Map<String, String> map2) {
        this.a.I();
        if (n.a()) {
            this.a.I().a("AppLovinEventService", "Tracking event: \"" + str + "\" with parameters: " + map);
        }
        final u7 u7Var = new u7(str, map);
        final boolean zContains = ALLOW_PRE_INIT_EVENT_TYPES.contains(str);
        try {
            this.a.i0().a((yl) new jn(this.a, zContains, "submitTrackEventPostback", new Runnable() { // from class: com.applovin.impl.sdk.EventServiceImpl$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a(u7Var, map2, zContains);
                }
            }), tm.b.OTHER);
        } catch (Throwable th) {
            this.a.I();
            if (n.a()) {
                this.a.I().a("AppLovinEventService", "Unable to track event: " + u7Var, th);
            }
            this.a.D().a("AppLovinEventService", "trackEvent", th);
        }
    }

    private Map a(u7 u7Var, Map map) {
        Map map2 = CollectionUtils.map(map);
        boolean zContains = this.a.c(sj.A0).contains(u7Var.c());
        map2.put("AppLovin-Event", zContains ? u7Var.c() : "postinstall");
        if (!zContains) {
            map2.put("AppLovin-Sub-Event", u7Var.c());
        }
        return map2;
    }

    private Map a(u7 u7Var, boolean z) {
        boolean zContains = this.a.c(sj.A0).contains(u7Var.c());
        Map mapA = this.a.x().a(null, z, false);
        mapA.put(NotificationCompat.CATEGORY_EVENT, zContains ? u7Var.c() : "postinstall");
        mapA.put("event_id", u7Var.b());
        mapA.put("ts", Long.toString(u7Var.a()));
        if (!zContains) {
            mapA.put("sub_event", u7Var.c());
        }
        return yp.a(mapA);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(u7 u7Var, Map map, boolean z) {
        Map mapA = a(u7Var, false);
        HashMap map2 = new HashMap(u7Var.d());
        if (((Boolean) this.a.a(sj.s5)).booleanValue() || ((Boolean) this.a.a(sj.n5)).booleanValue()) {
            map2.putAll(mapA);
            mapA = null;
        }
        this.a.W().e(com.applovin.impl.sdk.network.d.b().d(b()).a(a()).b(mapA).c(map2).a(a(u7Var, map)).c(((Boolean) this.a.a(sj.C5)).booleanValue()).a(((Boolean) this.a.a(sj.a5)).booleanValue()).d(z).a(vi.a.a(((Integer) this.a.a(sj.k5)).intValue())).a());
    }

    private String a() {
        return ((String) this.a.a(sj.w0)) + "4.0/pix";
    }
}
