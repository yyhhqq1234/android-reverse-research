package org.json;

import java.util.HashSet;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import org.json.mediationsdk.impressionData.ImpressionDataListener;

/* JADX INFO: loaded from: classes3.dex */
public class nj {
    private static nj c;
    private final HashSet<ImpressionDataListener> a = new HashSet<>();
    private ConcurrentHashMap<String, List<String>> b = new ConcurrentHashMap<>();

    nj() {
    }

    public static synchronized nj b() {
        if (c == null) {
            c = new nj();
        }
        return c;
    }

    public HashSet<ImpressionDataListener> a() {
        return this.a;
    }

    public void a(ImpressionDataListener impressionDataListener) {
        synchronized (this) {
            this.a.add(impressionDataListener);
        }
    }

    public void a(String str, List<String> list) {
        this.b.put(str, list);
    }

    public void b(ImpressionDataListener impressionDataListener) {
        synchronized (this) {
            this.a.remove(impressionDataListener);
        }
    }

    public ConcurrentHashMap<String, List<String>> c() {
        return this.b;
    }

    public void d() {
        synchronized (this) {
            this.a.clear();
        }
    }
}
