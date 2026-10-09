package org.json;

import android.text.TextUtils;
import java.util.HashMap;
import org.json.mediationsdk.logger.IronSourceError;
import org.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: loaded from: classes3.dex */
public class wk {
    private final b2 a;

    public wk(b2 b2Var) {
        this.a = b2Var;
    }

    public void a() {
        this.a.a(y1.RELOAD_AD, new HashMap());
    }

    public void a(int i) {
        HashMap map = new HashMap();
        map.put("sessionDepth", Integer.valueOf(i));
        this.a.a(y1.DESTROY_AD, map);
    }

    public void a(long j) {
        HashMap map = new HashMap();
        map.put(IronSourceConstants.EVENTS_DURATION, Long.valueOf(j));
        this.a.a(y1.RELOAD_AD_SUCCESS, map);
    }

    public void a(long j, int i) {
        HashMap map = new HashMap();
        map.put(IronSourceConstants.EVENTS_DURATION, Long.valueOf(j));
        map.put(IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i));
        this.a.a(y1.LOAD_AD_FAILED, map);
    }

    public void a(long j, int i, String str) {
        HashMap map = new HashMap();
        map.put(IronSourceConstants.EVENTS_DURATION, Long.valueOf(j));
        map.put(IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i));
        if (!TextUtils.isEmpty(str)) {
            map.put("reason", str);
        }
        this.a.a(y1.LOAD_AD_FAILED_WITH_REASON, map);
    }

    public void a(long j, boolean z) {
        HashMap map = new HashMap();
        map.put(IronSourceConstants.EVENTS_DURATION, Long.valueOf(j));
        if (z) {
            map.put(IronSourceConstants.EVENTS_PUBLISHER_LOAD, Boolean.TRUE);
        }
        this.a.a(y1.LOAD_AD_SUCCESS, map);
    }

    public void a(Boolean bool, String str) {
        HashMap map = new HashMap();
        if (!TextUtils.isEmpty(str)) {
            map.put("reason", str);
        }
        this.a.a(bool.booleanValue() ? y1.AD_READY_TRUE : y1.AD_READY_FALSE, map);
    }

    public void a(boolean z) {
        HashMap map = new HashMap();
        if (z) {
            map.put(IronSourceConstants.EVENTS_PUBLISHER_LOAD, Boolean.TRUE);
        }
        this.a.a(y1.LOAD_AD, map);
    }

    public void a(boolean z, long j, boolean z2) {
        HashMap map = new HashMap();
        map.put(IronSourceConstants.EVENTS_DURATION, Long.valueOf(j));
        if (z2) {
            map.put(IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(IronSourceError.ERROR_RV_EXPIRED_ADS));
            map.put("reason", "loaded ads are expired");
        }
        this.a.a(z ? y1.AD_AVAILABILITY_CHANGED_TRUE : y1.AD_AVAILABILITY_CHANGED_FALSE, map);
    }

    public void b(int i) {
        HashMap map = new HashMap();
        map.put(IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i));
        this.a.a(y1.SKIP_RELOAD_AD, map);
    }

    public void b(long j, int i) {
        HashMap map = new HashMap();
        map.put(IronSourceConstants.EVENTS_DURATION, Long.valueOf(j));
        map.put(IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i));
        this.a.a(y1.LOAD_AD_NO_FILL, map);
    }

    public void b(long j, int i, String str) {
        HashMap map = new HashMap();
        map.put(IronSourceConstants.EVENTS_DURATION, Long.valueOf(j));
        map.put(IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i));
        if (!TextUtils.isEmpty(str)) {
            map.put("reason", str);
        }
        this.a.a(y1.RELOAD_AD_FAILED_WITH_REASON, map);
    }

    public void c(long j, int i) {
        HashMap map = new HashMap();
        map.put(IronSourceConstants.EVENTS_DURATION, Long.valueOf(j));
        map.put(IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i));
        this.a.a(y1.RELOAD_AD_NO_FILL, map);
    }
}
