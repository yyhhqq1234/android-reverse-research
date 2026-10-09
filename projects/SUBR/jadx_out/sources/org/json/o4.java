package org.json;

import android.text.TextUtils;
import java.util.HashMap;
import org.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: loaded from: classes3.dex */
public class o4 {
    private final b2 a;

    public o4(b2 b2Var) {
        this.a = b2Var;
    }

    public void a() {
        this.a.a(y1.AUCTION_REQUEST, null);
    }

    public void a(int i, String str) {
        HashMap map = new HashMap();
        map.put(IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i));
        if (!TextUtils.isEmpty(str)) {
            map.put("reason", str);
        }
        this.a.a(y1.AUCTION_FAILED_NO_CANDIDATES, map);
    }

    public void a(long j, int i, String str) {
        HashMap map = new HashMap();
        map.put(IronSourceConstants.EVENTS_DURATION, Long.valueOf(j));
        map.put(IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i));
        if (!TextUtils.isEmpty(str)) {
            map.put("reason", str);
        }
        this.a.a(y1.AUCTION_FAILED, map);
    }

    public void a(long j, String str) {
        HashMap map = new HashMap();
        map.put(IronSourceConstants.EVENTS_DURATION, Long.valueOf(j));
        map.put(IronSourceConstants.EVENTS_EXT1, str);
        this.a.a(y1.AUCTION_SUCCESS, map);
    }

    public void a(String str) {
        HashMap map = new HashMap();
        map.put("auctionId", str);
        this.a.a(y1.AD_FORMAT_CAPPED, map);
    }

    public void b(String str) {
        HashMap map = new HashMap();
        map.put(IronSourceConstants.EVENTS_EXT1, str);
        this.a.a(y1.AUCTION_REQUEST_WATERFALL, map);
    }

    public void c(String str) {
        HashMap map = new HashMap();
        map.put(IronSourceConstants.EVENTS_EXT1, str);
        this.a.a(y1.AUCTION_RESULT_WATERFALL, map);
    }
}
