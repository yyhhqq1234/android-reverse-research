package io.netty.channel;

import io.netty.util.ReferenceCountUtil;
import io.netty.util.ReferenceCounted;
import io.netty.util.internal.StringUtil;
import java.net.SocketAddress;

/* loaded from: classes.dex */
public class DefaultAddressedEnvelope<M, A extends SocketAddress> implements AddressedEnvelope<M, A> {
    private final M message;
    private final A recipient;
    private final A sender;

    public DefaultAddressedEnvelope(M message, A recipient, A sender) {
        if (message == null) {
            throw new NullPointerException("message");
        }
        this.message = message;
        this.sender = sender;
        this.recipient = recipient;
    }

    public DefaultAddressedEnvelope(M message, A recipient) {
        this(message, recipient, null);
    }

    @Override // io.netty.channel.AddressedEnvelope
    public M content() {
        return this.message;
    }

    @Override // io.netty.channel.AddressedEnvelope
    public A sender() {
        return this.sender;
    }

    @Override // io.netty.channel.AddressedEnvelope
    public A recipient() {
        return this.recipient;
    }

    @Override // io.netty.util.ReferenceCounted
    public int refCnt() {
        if (this.message instanceof ReferenceCounted) {
            return ((ReferenceCounted) this.message).refCnt();
        }
        return 1;
    }

    @Override // io.netty.util.ReferenceCounted
    public AddressedEnvelope<M, A> retain() {
        ReferenceCountUtil.retain(this.message);
        return this;
    }

    @Override // io.netty.util.ReferenceCounted
    public AddressedEnvelope<M, A> retain(int increment) {
        ReferenceCountUtil.retain(this.message, increment);
        return this;
    }

    @Override // io.netty.util.ReferenceCounted
    public boolean release() {
        return ReferenceCountUtil.release(this.message);
    }

    @Override // io.netty.util.ReferenceCounted
    public boolean release(int decrement) {
        return ReferenceCountUtil.release(this.message, decrement);
    }

    public String toString() {
        if (this.sender != null) {
            return String.valueOf(StringUtil.simpleClassName(this)) + '(' + this.sender + " => " + this.recipient + ", " + this.message + ')';
        }
        return String.valueOf(StringUtil.simpleClassName(this)) + "(=> " + this.recipient + ", " + this.message + ')';
    }
}
