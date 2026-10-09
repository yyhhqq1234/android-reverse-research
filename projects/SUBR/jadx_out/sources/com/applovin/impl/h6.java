package com.applovin.impl;

import android.content.Context;
import android.util.SparseArray;

/* JADX INFO: loaded from: classes.dex */
public final class h6 implements ce {
    private final h5.a a;
    private final SparseArray b;
    private final int[] c;
    private long d;
    private long e;
    private long f;
    private float g;
    private float h;

    private static SparseArray a(h5.a aVar, n8 n8Var) {
        SparseArray sparseArray = new SparseArray();
        try {
            sparseArray.put(0, (ce) Class.forName("com.applovin.exoplayer2.source.dash.DashMediaSource$Factory").asSubclass(ce.class).getConstructor(h5.a.class).newInstance(aVar));
        } catch (Exception unused) {
        }
        try {
            sparseArray.put(1, (ce) Class.forName("com.applovin.exoplayer2.source.smoothstreaming.SsMediaSource$Factory").asSubclass(ce.class).getConstructor(h5.a.class).newInstance(aVar));
        } catch (Exception unused2) {
        }
        try {
            sparseArray.put(2, (ce) Class.forName("com.applovin.exoplayer2.source.hls.HlsMediaSource$Factory").asSubclass(ce.class).getConstructor(h5.a.class).newInstance(aVar));
        } catch (Exception unused3) {
        }
        try {
            sparseArray.put(3, (ce) Class.forName("com.applovin.exoplayer2.source.rtsp.RtspMediaSource$Factory").asSubclass(ce.class).getConstructor(new Class[0]).newInstance(new Object[0]));
        } catch (Exception unused4) {
        }
        sparseArray.put(4, new bi.b(aVar, n8Var));
        return sparseArray;
    }

    public h6(Context context, n8 n8Var) {
        this(new u5.a(context), n8Var);
    }

    public h6(h5.a aVar, n8 n8Var) {
        this.a = aVar;
        SparseArray sparseArrayA = a(aVar, n8Var);
        this.b = sparseArrayA;
        this.c = new int[sparseArrayA.size()];
        for (int i = 0; i < this.b.size(); i++) {
            this.c[i] = this.b.keyAt(i);
        }
        this.d = -9223372036854775807L;
        this.e = -9223372036854775807L;
        this.f = -9223372036854775807L;
        this.g = -3.4028235E38f;
        this.h = -3.4028235E38f;
    }
}
