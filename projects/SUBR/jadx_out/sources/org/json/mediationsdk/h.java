package org.json.mediationsdk;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import org.json.mediationsdk.model.NetworkSettings;

/* JADX INFO: loaded from: classes3.dex */
public class h {
    public static final int c = -1;
    public static final int d = 0;
    private ConcurrentHashMap<String, ArrayList<a>> a = new ConcurrentHashMap<>();
    private int b;

    public enum a {
        ISAuctionPerformanceDidntAttemptToLoad,
        ISAuctionPerformanceFailedToLoad,
        ISAuctionPerformanceLoadedSuccessfully,
        ISAuctionPerformanceFailedToShow,
        ISAuctionPerformanceShowedSuccessfully,
        ISAuctionPerformanceNotPartOfWaterfall
    }

    public h(List<NetworkSettings> list, int i) {
        this.b = i;
        for (NetworkSettings networkSettings : list) {
            this.a.put(networkSettings.getProviderName(), new ArrayList<>());
        }
    }

    public String a(String str) {
        ArrayList<a> arrayList = this.a.get(str);
        String string = "";
        if (arrayList != null && !arrayList.isEmpty()) {
            Iterator<a> it = arrayList.iterator();
            StringBuilder sb = new StringBuilder("");
            while (true) {
                sb.append(it.next().ordinal());
                string = sb.toString();
                if (!it.hasNext()) {
                    break;
                }
                sb = new StringBuilder();
                sb.append(string + ",");
            }
        }
        return string;
    }

    public void a(ConcurrentHashMap<String, a> concurrentHashMap) {
        if (this.b == 0) {
            return;
        }
        for (String str : this.a.keySet()) {
            a aVar = a.ISAuctionPerformanceNotPartOfWaterfall;
            if (concurrentHashMap.containsKey(str)) {
                aVar = concurrentHashMap.get(str);
            }
            ArrayList<a> arrayList = this.a.get(str);
            if (this.b != -1 && arrayList.size() == this.b) {
                arrayList.remove(0);
            }
            arrayList.add(aVar);
        }
    }
}
