package com.applovin.impl;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class j6 implements ti {
    private final Context a;
    private boolean d;
    private boolean f;
    private boolean g;
    private boolean h;
    private boolean i;
    private boolean j;
    private boolean k;
    private int b = 0;
    private long c = 5000;
    private ld e = ld.a;

    protected void a(Context context, Handler handler, int i, ArrayList arrayList) {
    }

    public j6(Context context) {
        this.a = context;
    }

    protected void a(Context context, int i, ld ldVar, boolean z, r1 r1Var, Handler handler, q1 q1Var, ArrayList arrayList) {
        int i2;
        int i3;
        hd hdVar = new hd(context, ldVar, z, handler, q1Var, r1Var);
        hdVar.a(this.f);
        hdVar.b(this.g);
        hdVar.c(this.h);
        arrayList.add(hdVar);
        if (i == 0) {
            return;
        }
        int size = arrayList.size();
        if (i == 2) {
            size--;
        }
        try {
            try {
                i2 = size + 1;
                try {
                    arrayList.add(size, (qi) Class.forName("com.applovin.exoplayer2.ext.opus.LibopusAudioRenderer").getConstructor(Handler.class, q1.class, r1.class).newInstance(handler, q1Var, r1Var));
                    oc.c("DefaultRenderersFactory", "Loaded LibopusAudioRenderer.");
                } catch (ClassNotFoundException unused) {
                    size = i2;
                    i2 = size;
                }
            } catch (ClassNotFoundException unused2) {
            }
            try {
                try {
                    i3 = i2 + 1;
                    try {
                        arrayList.add(i2, (qi) Class.forName("com.applovin.exoplayer2.ext.flac.LibflacAudioRenderer").getConstructor(Handler.class, q1.class, r1.class).newInstance(handler, q1Var, r1Var));
                        oc.c("DefaultRenderersFactory", "Loaded LibflacAudioRenderer.");
                    } catch (ClassNotFoundException unused3) {
                        i2 = i3;
                        i3 = i2;
                    }
                } catch (Exception e) {
                    throw new RuntimeException("Error instantiating FLAC extension", e);
                }
            } catch (ClassNotFoundException unused4) {
            }
            try {
                arrayList.add(i3, (qi) Class.forName("com.applovin.exoplayer2.ext.ffmpeg.FfmpegAudioRenderer").getConstructor(Handler.class, q1.class, r1.class).newInstance(handler, q1Var, r1Var));
                oc.c("DefaultRenderersFactory", "Loaded FfmpegAudioRenderer.");
            } catch (ClassNotFoundException unused5) {
            } catch (Exception e2) {
                throw new RuntimeException("Error instantiating FFmpeg extension", e2);
            }
        } catch (Exception e3) {
            throw new RuntimeException("Error instantiating Opus extension", e3);
        }
    }

    protected void a(Context context, int i, ArrayList arrayList) {
        arrayList.add(new w2());
    }

    protected void a(Context context, ef efVar, Looper looper, int i, ArrayList arrayList) {
        arrayList.add(new ff(efVar, looper));
    }

    protected void a(Context context, ao aoVar, Looper looper, int i, ArrayList arrayList) {
        arrayList.add(new bo(aoVar, looper));
    }

    protected void a(Context context, int i, ld ldVar, boolean z, Handler handler, wq wqVar, long j, ArrayList arrayList) {
        int i2;
        int i3;
        od odVar = new od(context, ldVar, j, z, handler, wqVar, 50);
        odVar.a(this.f);
        odVar.b(this.g);
        odVar.c(this.h);
        arrayList.add(odVar);
        if (i == 0) {
            return;
        }
        int size = arrayList.size();
        if (i == 2) {
            size--;
        }
        try {
            try {
                i2 = size + 1;
                try {
                    arrayList.add(size, (qi) Class.forName("com.applovin.exoplayer2.ext.vp9.LibvpxVideoRenderer").getConstructor(Long.TYPE, Handler.class, wq.class, Integer.TYPE).newInstance(Long.valueOf(j), handler, wqVar, 50));
                    oc.c("DefaultRenderersFactory", "Loaded LibvpxVideoRenderer.");
                } catch (ClassNotFoundException unused) {
                    size = i2;
                    i2 = size;
                }
            } catch (Exception e) {
                throw new RuntimeException("Error instantiating VP9 extension", e);
            }
        } catch (ClassNotFoundException unused2) {
        }
        try {
            try {
                i3 = i2 + 1;
                try {
                    arrayList.add(i2, (qi) Class.forName("com.applovin.exoplayer2.ext.av1.Libgav1VideoRenderer").getConstructor(Long.TYPE, Handler.class, wq.class, Integer.TYPE).newInstance(Long.valueOf(j), handler, wqVar, 50));
                    oc.c("DefaultRenderersFactory", "Loaded Libgav1VideoRenderer.");
                } catch (ClassNotFoundException unused3) {
                    i2 = i3;
                    i3 = i2;
                }
            } catch (ClassNotFoundException unused4) {
            }
            try {
                arrayList.add(i3, (qi) Class.forName("com.applovin.exoplayer2.ext.ffmpeg.FfmpegVideoRenderer").getConstructor(Long.TYPE, Handler.class, wq.class, Integer.TYPE).newInstance(Long.valueOf(j), handler, wqVar, 50));
                oc.c("DefaultRenderersFactory", "Loaded FfmpegVideoRenderer.");
            } catch (ClassNotFoundException unused5) {
            } catch (Exception e2) {
                throw new RuntimeException("Error instantiating FFmpeg extension", e2);
            }
        } catch (Exception e3) {
            throw new RuntimeException("Error instantiating AV1 extension", e3);
        }
    }

    @Override // com.applovin.impl.ti
    public qi[] a(Handler handler, wq wqVar, q1 q1Var, ao aoVar, ef efVar) {
        ArrayList arrayList = new ArrayList();
        a(this.a, this.b, this.e, this.d, handler, wqVar, this.c, arrayList);
        r1 r1VarA = a(this.a, this.i, this.j, this.k);
        if (r1VarA != null) {
            a(this.a, this.b, this.e, this.d, r1VarA, handler, q1Var, arrayList);
        }
        a(this.a, aoVar, handler.getLooper(), this.b, arrayList);
        a(this.a, efVar, handler.getLooper(), this.b, arrayList);
        a(this.a, this.b, arrayList);
        a(this.a, handler, this.b, arrayList);
        return (qi[]) arrayList.toArray(new qi[0]);
    }

    protected r1 a(Context context, boolean z, boolean z2, boolean z3) {
        return new r5(n1.a(context), new r5.d(new p1[0]), z, z2, z3 ? 1 : 0);
    }
}
