package com.applovin.impl;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.Surface;
import com.applovin.exoplayer2.common.base.Supplier;
import java.nio.ByteBuffer;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
final class g1 implements gd {
    private final MediaCodec a;
    private final i1 b;
    private final h1 c;
    private final boolean d;
    private boolean e;
    private int f;
    private Surface g;

    @Override // com.applovin.impl.gd
    public boolean c() {
        return false;
    }

    public static final class b implements gd.b {
        private final Supplier b;
        private final Supplier c;
        private final boolean d;
        private final boolean e;

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ HandlerThread a(int i) {
            return new HandlerThread(g1.f(i));
        }

        public b(final int i, boolean z, boolean z2) {
            this(new Supplier() { // from class: com.applovin.impl.g1$b$$ExternalSyntheticLambda0
                @Override // com.applovin.exoplayer2.common.base.Supplier
                public final Object get() {
                    return g1.b.a(i);
                }
            }, new Supplier() { // from class: com.applovin.impl.g1$b$$ExternalSyntheticLambda1
                @Override // com.applovin.exoplayer2.common.base.Supplier
                public final Object get() {
                    return g1.b.b(i);
                }
            }, z, z2);
        }

        @Override // com.applovin.impl.gd.b
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public g1 a(gd.a aVar) throws Exception {
            MediaCodec mediaCodecCreateByCodecName;
            String str = aVar.a.a;
            g1 g1Var = null;
            try {
                ko.a("createCodec:" + str);
                mediaCodecCreateByCodecName = MediaCodec.createByCodecName(str);
                try {
                    g1 g1Var2 = new g1(mediaCodecCreateByCodecName, (HandlerThread) this.b.get(), (HandlerThread) this.c.get(), this.d, this.e);
                    try {
                        ko.a();
                        g1Var2.a(aVar.b, aVar.d, aVar.e, aVar.f, aVar.g);
                        return g1Var2;
                    } catch (Exception e) {
                        e = e;
                        g1Var = g1Var2;
                        if (g1Var != null) {
                            g1Var.a();
                        } else if (mediaCodecCreateByCodecName != null) {
                            mediaCodecCreateByCodecName.release();
                        }
                        throw e;
                    }
                } catch (Exception e2) {
                    e = e2;
                }
            } catch (Exception e3) {
                e = e3;
                mediaCodecCreateByCodecName = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ HandlerThread b(int i) {
            return new HandlerThread(g1.g(i));
        }

        b(Supplier supplier, Supplier supplier2, boolean z, boolean z2) {
            this.b = supplier;
            this.c = supplier2;
            this.d = z;
            this.e = z2;
        }
    }

    private g1(MediaCodec mediaCodec, HandlerThread handlerThread, HandlerThread handlerThread2, boolean z, boolean z2) {
        this.a = mediaCodec;
        this.b = new i1(handlerThread);
        this.c = new h1(mediaCodec, handlerThread2, z);
        this.d = z2;
        this.f = 0;
    }

    @Override // com.applovin.impl.gd
    public void b() {
        this.c.b();
        this.a.flush();
        i1 i1Var = this.b;
        final MediaCodec mediaCodec = this.a;
        Objects.requireNonNull(mediaCodec);
        i1Var.a(new Runnable() { // from class: com.applovin.impl.g1$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                mediaCodec.start();
            }
        });
    }

    @Override // com.applovin.impl.gd
    public int d() {
        return this.b.a();
    }

    @Override // com.applovin.impl.gd
    public MediaFormat e() {
        return this.b.c();
    }

    @Override // com.applovin.impl.gd
    public void c(int i) {
        f();
        this.a.setVideoScalingMode(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String f(int i) {
        return a(i, "ExoPlayer:MediaCodecAsyncAdapter:");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String g(int i) {
        return a(i, "ExoPlayer:MediaCodecQueueingThread:");
    }

    private static String a(int i, String str) {
        StringBuilder sb = new StringBuilder(str);
        if (i == 1) {
            sb.append("Audio");
        } else if (i == 2) {
            sb.append("Video");
        } else {
            sb.append("Unknown(");
            sb.append(i);
            sb.append(")");
        }
        return sb.toString();
    }

    @Override // com.applovin.impl.gd
    public ByteBuffer b(int i) {
        return this.a.getOutputBuffer(i);
    }

    @Override // com.applovin.impl.gd
    public int a(MediaCodec.BufferInfo bufferInfo) {
        return this.b.a(bufferInfo);
    }

    private void f() {
        if (this.d) {
            try {
                this.c.i();
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                throw new IllegalStateException(e);
            }
        }
    }

    @Override // com.applovin.impl.gd
    public ByteBuffer a(int i) {
        return this.a.getInputBuffer(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(MediaFormat mediaFormat, Surface surface, MediaCrypto mediaCrypto, int i, boolean z) {
        this.b.a(this.a);
        ko.a("configureCodec");
        this.a.configure(mediaFormat, surface, mediaCrypto, i);
        ko.a();
        if (z) {
            this.g = this.a.createInputSurface();
        }
        this.c.h();
        ko.a("startCodec");
        this.a.start();
        ko.a();
        this.f = 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(gd.c cVar, MediaCodec mediaCodec, long j, long j2) {
        cVar.a(this, j, j2);
    }

    @Override // com.applovin.impl.gd
    public void a(int i, int i2, int i3, long j, int i4) {
        this.c.b(i, i2, i3, j, i4);
    }

    @Override // com.applovin.impl.gd
    public void a(int i, int i2, z4 z4Var, long j, int i3) {
        this.c.a(i, i2, z4Var, j, i3);
    }

    @Override // com.applovin.impl.gd
    public void a() {
        try {
            if (this.f == 1) {
                this.c.g();
                this.b.h();
            }
            this.f = 2;
        } finally {
            Surface surface = this.g;
            if (surface != null) {
                surface.release();
            }
            if (!this.e) {
                this.a.release();
                this.e = true;
            }
        }
    }

    @Override // com.applovin.impl.gd
    public void a(int i, long j) {
        this.a.releaseOutputBuffer(i, j);
    }

    @Override // com.applovin.impl.gd
    public void a(int i, boolean z) {
        this.a.releaseOutputBuffer(i, z);
    }

    @Override // com.applovin.impl.gd
    public void a(final gd.c cVar, Handler handler) {
        f();
        this.a.setOnFrameRenderedListener(new MediaCodec.OnFrameRenderedListener() { // from class: com.applovin.impl.g1$$ExternalSyntheticLambda0
            @Override // android.media.MediaCodec.OnFrameRenderedListener
            public final void onFrameRendered(MediaCodec mediaCodec, long j, long j2) {
                this.f$0.a(cVar, mediaCodec, j, j2);
            }
        }, handler);
    }

    @Override // com.applovin.impl.gd
    public void a(Surface surface) {
        f();
        this.a.setOutputSurface(surface);
    }

    @Override // com.applovin.impl.gd
    public void a(Bundle bundle) {
        f();
        this.a.setParameters(bundle);
    }
}
