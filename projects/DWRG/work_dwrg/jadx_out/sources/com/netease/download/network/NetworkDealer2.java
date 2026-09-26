package com.netease.download.network;

import java.net.HttpURLConnection;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public interface NetworkDealer2<T> {
    T processContent(HttpURLConnection httpURLConnection, int i, String str) throws Exception;

    int processHeader(Map<String, List<String>> map, int i, String str);
}
