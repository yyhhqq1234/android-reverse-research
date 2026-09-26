package io.netty.buffer;

import io.netty.util.ResourceLeak;
import java.nio.ByteOrder;

/* loaded from: classes.dex */
final class SimpleLeakAwareByteBuf extends WrappedByteBuf {
    private final ResourceLeak leak;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SimpleLeakAwareByteBuf(ByteBuf buf, ResourceLeak leak) {
        super(buf);
        this.leak = leak;
    }

    @Override // io.netty.buffer.WrappedByteBuf, io.netty.util.ReferenceCounted
    public boolean release() {
        boolean deallocated = super.release();
        if (deallocated) {
            this.leak.close();
        }
        return deallocated;
    }

    @Override // io.netty.buffer.WrappedByteBuf, io.netty.util.ReferenceCounted
    public boolean release(int decrement) {
        boolean deallocated = super.release(decrement);
        if (deallocated) {
            this.leak.close();
        }
        return deallocated;
    }

    @Override // io.netty.buffer.WrappedByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf order(ByteOrder endianness) {
        this.leak.record();
        return order() == endianness ? this : new SimpleLeakAwareByteBuf(super.order(endianness), this.leak);
    }

    @Override // io.netty.buffer.WrappedByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf slice() {
        return new SimpleLeakAwareByteBuf(super.slice(), this.leak);
    }

    @Override // io.netty.buffer.WrappedByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf slice(int index, int length) {
        return new SimpleLeakAwareByteBuf(super.slice(index, length), this.leak);
    }

    @Override // io.netty.buffer.WrappedByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf duplicate() {
        return new SimpleLeakAwareByteBuf(super.duplicate(), this.leak);
    }

    @Override // io.netty.buffer.WrappedByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf readSlice(int length) {
        return new SimpleLeakAwareByteBuf(super.readSlice(length), this.leak);
    }
}
