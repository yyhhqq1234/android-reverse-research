package io.netty.channel;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufAllocator;

/* loaded from: classes.dex */
public interface RecvByteBufAllocator {

    /* loaded from: classes.dex */
    public interface Handle {
        ByteBuf allocate(ByteBufAllocator byteBufAllocator);

        int guess();

        void record(int i);
    }

    Handle newHandle();
}
