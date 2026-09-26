package com.netease.download.network;

import java.io.InputStream;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public interface NetworkDealer<T> {
    T processContent(InputStream inputStream) throws Exception;

    void processHeader(Map<String, List<String>> map, int i, String str);
}
