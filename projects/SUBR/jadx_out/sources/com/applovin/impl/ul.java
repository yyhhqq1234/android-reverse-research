package com.applovin.impl;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.view.Surface;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class ul implements gd {
    private final MediaCodec a;
    private final Surface b;
    private ByteBuffer[] c;
    private ByteBuffer[] d;

    @Override // com.applovin.impl.gd
    public boolean c() {
        return false;
    }

    public static class c implements gd.b {
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [com.applovin.impl.ul$a] */
        /* JADX WARN: Type inference failed for: r0v1, types: [android.view.Surface] */
        /* JADX WARN: Type inference failed for: r0v3 */
        /* JADX WARN: Type inference failed for: r0v4 */
        /* JADX WARN: Type inference failed for: r0v5 */
        @Override // com.applovin.impl.gd.b
        public gd a(gd.a aVar) throws Throwable {
            MediaCodec mediaCodecB;
            Surface surfaceA;
            ?? r0 = 0;
            r0 = 0;
            r0 = 0;
            try {
                mediaCodecB = b(aVar);
                try {
                    ko.a("configureCodec");
                    mediaCodecB.configure(aVar.b, aVar.d, aVar.e, aVar.f);
                    ko.a();
                    if (!aVar.g) {
                        surfaceA = null;
                    } else if (xp.a >= 18) {
                        surfaceA = b.a(mediaCodecB);
                    } else {
                        throw new IllegalStateException("Encoding from a surface is only supported on API 18 and up.");
                    }
                    try {
                        ko.a("startCodec");
                        mediaCodecB.start();
                        ko.a();
                        return new ul(mediaCodecB, surfaceA);
                    } catch (IOException | RuntimeException e) {
                        r0 = surfaceA;
                        e = e;
                        if (r0 != 0) {
                            r0.release();
                        }
                        if (mediaCodecB != null) {
                            mediaCodecB.release();
                        }
                        throw e;
                    }
                } catch (IOException e2) {
                    e = e2;
                } catch (RuntimeException e3) {
                    e = e3;
                }
            } catch (IOException | RuntimeException e4) {
                e = e4;
                mediaCodecB = null;
            }
        }

        protected MediaCodec b(gd.a aVar) throws IOException {
            b1.a(aVar.a);
            String str = aVar.a.a;
            ko.a("createCodec:" + str);
            MediaCodec mediaCodecCreateByCodecName = MediaCodec.createByCodecName(str);
            ko.a();
            return mediaCodecCreateByCodecName;
        }
    }

    private ul(MediaCodec mediaCodec, Surface surface) {
        this.a = mediaCodec;
        this.b = surface;
        if (xp.a < 21) {
            this.c = mediaCodec.getInputBuffers();
            this.d = mediaCodec.getOutputBuffers();
        }
    }

    @Override // com.applovin.impl.gd
    public int d() {
        return this.a.dequeueInputBuffer(0L);
    }

    @Override // com.applovin.impl.gd
    public int a(MediaCodec.BufferInfo bufferInfo) {
        int iDequeueOutputBuffer;
        do {
            iDequeueOutputBuffer = this.a.dequeueOutputBuffer(bufferInfo, 0L);
            if (iDequeueOutputBuffer == -3 && xp.a < 21) {
                this.d = this.a.getOutputBuffers();
            }
        } while (iDequeueOutputBuffer == -3);
        return iDequeueOutputBuffer;
    }

    @Override // com.applovin.impl.gd
    public MediaFormat e() {
        return this.a.getOutputFormat();
    }

    @Override // com.applovin.impl.gd
    public void b() {
        this.a.flush();
    }

    @Override // com.applovin.impl.gd
    public ByteBuffer b(int i) {
        if (xp.a >= 21) {
            return this.a.getOutputBuffer(i);
        }
        return ((ByteBuffer[]) xp.a((Object) this.d))[i];
    }

    @Override // com.applovin.impl.gd
    public void c(int i) {
        this.a.setVideoScalingMode(i);
    }

    private static final class b {
        public static Surface a(MediaCodec mediaCodec) {
            return mediaCodec.createInputSurface();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(gd.c cVar, MediaCodec mediaCodec, long j, long j2) {
        cVar.a(this, j, j2);
    }

    @Override // com.applovin.impl.gd
    public void a(int i, int i2, int i3, long j, int i4) {
        this.a.queueInputBuffer(i, i2, i3, j, i4);
    }

    @Override // com.applovin.impl.gd
    public void a(int i, int i2, z4 z4Var, long j, int i3) {
        this.a.queueSecureInputBuffer(i, i2, z4Var.a(), j, i3);
    }

    @Override // com.applovin.impl.gd
    public void a() {
        this.c = null;
        this.d = null;
        Surface surface = this.b;
        if (surface != null) {
            surface.release();
        }
        this.a.release();
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
        this.a.setOnFrameRenderedListener(new MediaCodec.OnFrameRenderedListener() { // from class: com.applovin.impl.ul$$ExternalSyntheticLambda0
            @Override // android.media.MediaCodec.OnFrameRenderedListener
            public final void onFrameRendered(MediaCodec mediaCodec, long j, long j2) {
                this.f$0.a(cVar, mediaCodec, j, j2);
            }
        }, handler);
    }

    @Override // com.applovin.impl.gd
    public void a(Surface surface) {
        this.a.setOutputSurface(surface);
    }

    @Override // com.applovin.impl.gd
    public void a(Bundle bundle) {
        this.a.setParameters(bundle);
    }

    @Override // com.applovin.impl.gd
    public ByteBuffer a(int i) {
        if (xp.a >= 21) {
            return this.a.getInputBuffer(i);
        }
        return ((ByteBuffer[]) xp.a((Object) this.c))[i];
    }
}
