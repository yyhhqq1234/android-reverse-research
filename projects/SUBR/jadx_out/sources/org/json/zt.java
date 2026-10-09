package org.json;

import com.unity3d.mediation.LevelPlayAdError;
import java.util.HashMap;
import java.util.Map;
import org.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: loaded from: classes3.dex */
public class zt {
    private final b2 a;

    public zt(b2 b2Var) {
        this.a = b2Var;
    }

    private String a(long j, long j2, long j3) {
        return "interval: " + j + ", remainingTime: " + j2 + ", timePassed: " + j3;
    }

    public void a() {
        this.a.a(y1.TROUBLESHOOT_LOAD, null);
    }

    public void a(int i, String str) {
        HashMap map = new HashMap();
        map.put(IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i));
        map.put("reason", str);
        this.a.a(y1.TROUBLESHOOT_AUCTION_SUCCESSFUL_RECOVERY_ERROR, map);
    }

    public void a(int i, String str, String str2) {
        HashMap map = new HashMap();
        map.put(IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i));
        map.put("reason", str);
        map.put(IronSourceConstants.EVENTS_EXT1, str2);
        this.a.a(y1.TROUBLESHOOT_NOTIFICATION_ERROR, map);
    }

    public void a(long j) {
        HashMap map = new HashMap();
        map.put(IronSourceConstants.EVENTS_DURATION, Long.valueOf(j));
        this.a.a(y1.TROUBLESHOOT_BANNER_REFRESH_ANIMATED, map);
    }

    public void a(LevelPlayAdError levelPlayAdError) {
        HashMap map = new HashMap();
        map.put(IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(levelPlayAdError.getErrorCode()));
        map.put("reason", levelPlayAdError.getErrorMessage());
        this.a.a(y1.TROUBLESHOOT_SHOW_FAILED, map);
    }

    public void a(Long l, long j, boolean z) {
        HashMap map = new HashMap();
        map.put(IronSourceConstants.EVENTS_DURATION, l);
        map.put(IronSourceConstants.EVENTS_EXT1, "config:" + j + ", newLoad:" + (z ? 1 : 0));
        this.a.a(y1.TROUBLESHOOT_LOAD_WHILE_LOADED, map);
    }

    public void a(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        this.a.a(y1.TROUBLESHOOT_AD_EXPIRED, map);
    }

    public void a(String str, long j, long j2, long j3) {
        HashMap map = new HashMap();
        map.put("reason", str);
        map.put(IronSourceConstants.EVENTS_EXT1, a(j, j2, j3));
        this.a.a(y1.TROUBLESHOOT_BANNER_REFRESH_PAUSED, map);
    }

    public void a(Map<String, Object> map, String str) {
        HashMap map2 = new HashMap();
        map2.put("reason", str);
        if (map != null && !map.isEmpty()) {
            map2.putAll(map);
        }
        this.a.a(y1.TROUBLESHOOT_BIDDING_DATA_MISSING, map2);
    }

    public void a(boolean z, long j) {
        HashMap map = new HashMap();
        map.put(IronSourceConstants.EVENTS_EXT1, "isAnimated:" + (z ? 1 : 0));
        map.put(IronSourceConstants.EVENTS_DURATION, Long.valueOf(j));
        this.a.a(y1.TROUBLESHOOT_BANNER_REFRESH_TRANSITION, map);
    }

    public void b() {
        this.a.a(y1.TROUBLESHOOT_LOAD_SUCCESS, null);
    }

    public void b(int i, String str) {
        HashMap map = new HashMap();
        map.put(IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i));
        map.put("reason", str);
        this.a.a(y1.TROUBLESHOOT_LOAD_FAILED, map);
    }

    public void b(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        this.a.a(y1.TROUBLESHOOT_IMPRESSION_TIMEOUT, map);
    }

    public void b(String str, long j, long j2, long j3) {
        HashMap map = new HashMap();
        map.put("reason", str);
        map.put(IronSourceConstants.EVENTS_EXT1, a(j, j2, j3));
        this.a.a(y1.TROUBLESHOOT_BANNER_REFRESH_RESUMED, map);
    }

    public void c() {
        this.a.a(y1.TROUBLESHOOT_SHOW, null);
    }

    public void c(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        this.a.a(y1.TROUBLESHOOT_BN_RELOAD_EXCEPTION, map);
    }

    public void d() {
        this.a.a(y1.TROUBLESHOOT_SHOW_SUCCESS, null);
    }

    public void d(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        this.a.a(y1.TROUBLESHOOT_BANNER_REFRESH_TRIGGER_PAUSE, map);
    }

    public void e(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        this.a.a(y1.TROUBLESHOOT_BANNER_REFRESH_TRIGGER_RESUME, map);
    }

    public void f(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        this.a.a(y1.TROUBLESHOOT_INTERNAL_ERROR, map);
    }

    public void g(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        this.a.a(y1.TROUBLESHOOT_PROVIDER_SETTINGS_MISSING, map);
    }

    public void h(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        this.a.a(y1.TROUBLESHOOT_UNEXPECTED_AUCTION_FAILED, map);
    }

    public void i(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        this.a.a(y1.TROUBLESHOOT_UNEXPECTED_AUCTION_SUCCESS, map);
    }

    public void j(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        this.a.a(y1.TROUBLESHOOT_UNEXPECTED_CLOSED, map);
    }

    public void k(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        this.a.a(y1.TROUBLESHOOT_UNEXPECTED_INIT_FAILED, map);
    }

    public void l(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        this.a.a(y1.TROUBLESHOOT_UNEXPECTED_INIT_SUCCESS, map);
    }

    public void m(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        this.a.a(y1.TROUBLESHOOT_UNEXPECTED_LOAD_FAILED, map);
    }

    public void n(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        this.a.a(y1.TROUBLESHOOT_UNEXPECTED_LOAD_SUCCESS, map);
    }

    public void o(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        this.a.a(y1.TROUBLESHOOT_UNEXPECTED_OPENED, map);
    }

    public void p(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        this.a.a(y1.TROUBLESHOOT_UNEXPECTED_RELOAD_FAILED, map);
    }

    public void q(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        this.a.a(y1.TROUBLESHOOT_UNEXPECTED_RELOAD_SUCCESS, map);
    }

    public void r(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        this.a.a(y1.TROUBLESHOOT_UNEXPECTED_SHOW_FAILED, map);
    }

    public void s(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        this.a.a(y1.TROUBLESHOOT_UNEXPECTED_TIMEOUT, map);
    }

    public void t(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        this.a.a(y1.TROUBLESHOOT_WATERFALL_OVERHEAD, map);
    }
}
