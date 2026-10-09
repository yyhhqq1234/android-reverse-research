package com.applovin.impl;

import android.media.MediaCodec;

/* JADX INFO: loaded from: classes.dex */
public class id extends n5 {
    public final jd a;
    public final String b;

    public id(Throwable th, jd jdVar) {
        StringBuilder sb = new StringBuilder("Decoder failed: ");
        sb.append(jdVar == null ? null : jdVar.a);
        super(sb.toString(), th);
        this.a = jdVar;
        this.b = xp.a >= 21 ? a(th) : null;
    }

    private static String a(Throwable th) {
        if (th instanceof MediaCodec.CodecException) {
            return ((MediaCodec.CodecException) th).getDiagnosticInfo();
        }
        return null;
    }
}
