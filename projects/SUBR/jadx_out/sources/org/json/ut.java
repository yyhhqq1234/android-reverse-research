package org.json;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import org.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: loaded from: classes3.dex */
public class ut {
    private final b2 a;

    public ut(b2 b2Var) {
        this.a = b2Var;
    }

    public void a() {
        this.a.a(y1.COLLECT_TOKEN, new HashMap());
    }

    public void a(long j) {
        HashMap map = new HashMap();
        map.put(IronSourceConstants.EVENTS_DURATION, Long.valueOf(j));
        this.a.a(y1.COLLECT_TOKENS_COMPLETED, map);
    }

    public void a(String str) {
        HashMap map = new HashMap();
        if (!TextUtils.isEmpty(str)) {
            map.put("reason", str);
        }
        this.a.a(y1.COLLECT_TOKENS_FAILED, map);
    }

    public void a(Map<String, Object> map) {
        HashMap map2 = new HashMap();
        if (map != null && !map.isEmpty()) {
            map2.putAll(map);
        }
        this.a.a(y1.INSTANCE_COLLECT_TOKEN, map2);
    }

    public void a(Map<String, Object> map, long j) {
        HashMap map2 = new HashMap();
        map2.put(IronSourceConstants.EVENTS_DURATION, Long.valueOf(j));
        if (map != null && !map.isEmpty()) {
            map2.putAll(map);
        }
        this.a.a(y1.INSTANCE_COLLECT_TOKEN_SUCCESS, map2);
    }

    public void a(Map<String, Object> map, long j, String str) {
        HashMap map2 = new HashMap();
        map2.put(IronSourceConstants.EVENTS_DURATION, Long.valueOf(j));
        if (!TextUtils.isEmpty(str)) {
            map2.put("reason", str);
        }
        if (map != null && !map.isEmpty()) {
            map2.putAll(map);
        }
        this.a.a(y1.INSTANCE_COLLECT_TOKEN_FAILED, map2);
    }

    public void b(Map<String, Object> map, long j) {
        HashMap map2 = new HashMap();
        map2.put(IronSourceConstants.EVENTS_DURATION, Long.valueOf(j));
        if (map != null && !map.isEmpty()) {
            map2.putAll(map);
        }
        this.a.a(y1.INSTANCE_COLLECT_TOKEN_TIMED_OUT, map2);
    }
}
