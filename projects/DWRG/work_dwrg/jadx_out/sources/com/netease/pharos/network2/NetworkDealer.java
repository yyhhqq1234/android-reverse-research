package com.netease.pharos.network2;

import java.io.InputStream;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public interface NetworkDealer<T> {
    T processContent(InputStream inputStream, int i, Map<String, String> map) throws Exception;

    void processHeader(Map<String, List<String>> map, int i, Map<String, String> map2);
}
