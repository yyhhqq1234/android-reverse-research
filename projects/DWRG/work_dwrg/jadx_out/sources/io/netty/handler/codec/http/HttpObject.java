package io.netty.handler.codec.http;

import io.netty.handler.codec.DecoderResult;

/* loaded from: classes.dex */
public interface HttpObject {
    DecoderResult getDecoderResult();

    void setDecoderResult(DecoderResult decoderResult);
}
