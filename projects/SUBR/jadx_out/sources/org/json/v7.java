package org.json;

import java.util.Map;
import org.json.mediationsdk.adunit.adapter.utility.AdData;
import org.json.mediationsdk.bidding.BiddingDataCallback;

/* JADX INFO: loaded from: classes3.dex */
public interface v7 {
    Map<String, Object> a(AdData adData);

    void a(AdData adData, BiddingDataCallback biddingDataCallback);
}
