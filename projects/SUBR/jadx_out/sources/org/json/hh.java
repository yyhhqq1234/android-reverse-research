package org.json;

import java.util.HashMap;
import org.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: loaded from: classes3.dex */
public class hh {
    private final b2 a;

    public hh(b2 b2Var) {
        this.a = b2Var;
    }

    public void a() {
        this.a.a(y1.INIT_SUCCESS, null);
    }

    public void a(int i, String str) {
        HashMap map = new HashMap();
        map.put(IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i));
        map.put("reason", str);
        this.a.a(y1.INIT_FAILED, map);
    }

    public void a(long j) {
        HashMap map = new HashMap();
        map.put(IronSourceConstants.EVENTS_DURATION, Long.valueOf(j));
        this.a.a(y1.INIT_ENDED, map);
    }

    public void a(String str, String str2) {
        HashMap map = new HashMap();
        map.put(IronSourceConstants.EVENTS_EXT1, str + "|" + str2);
        this.a.a(y1.INIT_STARTED, map);
    }
}
