package io.netty.buffer;

import io.netty.util.ReferenceCounted;

/* loaded from: classes.dex */
public interface ByteBufHolder extends ReferenceCounted {
    ByteBuf content();

    ByteBufHolder copy();

    ByteBufHolder duplicate();

    @Override // io.netty.util.ReferenceCounted
    ByteBufHolder retain();

    @Override // io.netty.util.ReferenceCounted
    ByteBufHolder retain(int i);
}
