package io.netty.handler.codec.http;

import io.netty.buffer.ByteBufHolder;

/* loaded from: classes.dex */
public interface HttpContent extends HttpObject, ByteBufHolder {
    HttpContent copy();

    HttpContent duplicate();

    HttpContent retain();

    HttpContent retain(int i);
}
