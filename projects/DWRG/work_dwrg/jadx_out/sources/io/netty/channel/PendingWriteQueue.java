package io.netty.channel;

import io.netty.channel.MessageSizeEstimator;
import io.netty.util.Recycler;
import io.netty.util.ReferenceCountUtil;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;

/* loaded from: classes.dex */
public final class PendingWriteQueue {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final InternalLogger logger;
    private final ChannelOutboundBuffer buffer;
    private final ChannelHandlerContext ctx;
    private final MessageSizeEstimator.Handle estimatorHandle;
    private PendingWrite head;
    private int size;
    private PendingWrite tail;

    static {
        $assertionsDisabled = !PendingWriteQueue.class.desiredAssertionStatus();
        logger = InternalLoggerFactory.getInstance((Class<?>) PendingWriteQueue.class);
    }

    public PendingWriteQueue(ChannelHandlerContext ctx) {
        if (ctx == null) {
            throw new NullPointerException("ctx");
        }
        this.ctx = ctx;
        this.buffer = ctx.channel().unsafe().outboundBuffer();
        this.estimatorHandle = ctx.channel().config().getMessageSizeEstimator().newHandle();
    }

    public boolean isEmpty() {
        if ($assertionsDisabled || this.ctx.executor().inEventLoop()) {
            return this.head == null;
        }
        throw new AssertionError();
    }

    public int size() {
        if ($assertionsDisabled || this.ctx.executor().inEventLoop()) {
            return this.size;
        }
        throw new AssertionError();
    }

    public void add(Object msg, ChannelPromise promise) {
        if (!$assertionsDisabled && !this.ctx.executor().inEventLoop()) {
            throw new AssertionError();
        }
        if (msg == null) {
            throw new NullPointerException("msg");
        }
        if (promise == null) {
            throw new NullPointerException("promise");
        }
        int messageSize = this.estimatorHandle.size(msg);
        if (messageSize < 0) {
            messageSize = 0;
        }
        PendingWrite write = PendingWrite.newInstance(msg, messageSize, promise);
        PendingWrite currentTail = this.tail;
        if (currentTail == null) {
            this.head = write;
            this.tail = write;
        } else {
            currentTail.next = write;
            this.tail = write;
        }
        this.size++;
        this.buffer.incrementPendingOutboundBytes(write.size);
    }

    public void removeAndFailAll(Throwable cause) {
        if (!$assertionsDisabled && !this.ctx.executor().inEventLoop()) {
            throw new AssertionError();
        }
        if (cause == null) {
            throw new NullPointerException("cause");
        }
        PendingWrite write = this.head;
        while (write != null) {
            PendingWrite next = write.next;
            ReferenceCountUtil.safeRelease(write.msg);
            ChannelPromise promise = write.promise;
            recycle(write);
            safeFail(promise, cause);
            write = next;
        }
        assertEmpty();
    }

    public void removeAndFail(Throwable cause) {
        if (!$assertionsDisabled && !this.ctx.executor().inEventLoop()) {
            throw new AssertionError();
        }
        if (cause == null) {
            throw new NullPointerException("cause");
        }
        PendingWrite write = this.head;
        if (write == null) {
            return;
        }
        ReferenceCountUtil.safeRelease(write.msg);
        ChannelPromise promise = write.promise;
        safeFail(promise, cause);
        recycle(write);
    }

    public ChannelFuture removeAndWriteAll() {
        if (!$assertionsDisabled && !this.ctx.executor().inEventLoop()) {
            throw new AssertionError();
        }
        PendingWrite write = this.head;
        if (write == null) {
            return null;
        }
        if (this.size == 1) {
            return removeAndWrite();
        }
        ChannelPromise p = this.ctx.newPromise();
        ChannelPromiseAggregator aggregator = new ChannelPromiseAggregator(p);
        while (write != null) {
            PendingWrite next = write.next;
            Object msg = write.msg;
            ChannelPromise promise = write.promise;
            recycle(write);
            this.ctx.write(msg, promise);
            aggregator.add(promise);
            write = next;
        }
        assertEmpty();
        return p;
    }

    private void assertEmpty() {
        if ($assertionsDisabled) {
            return;
        }
        if (this.tail != null || this.head != null || this.size != 0) {
            throw new AssertionError();
        }
    }

    public ChannelFuture removeAndWrite() {
        if (!$assertionsDisabled && !this.ctx.executor().inEventLoop()) {
            throw new AssertionError();
        }
        PendingWrite write = this.head;
        if (write == null) {
            return null;
        }
        Object msg = write.msg;
        ChannelPromise promise = write.promise;
        recycle(write);
        return this.ctx.write(msg, promise);
    }

    public ChannelPromise remove() {
        if (!$assertionsDisabled && !this.ctx.executor().inEventLoop()) {
            throw new AssertionError();
        }
        PendingWrite write = this.head;
        if (write == null) {
            return null;
        }
        ChannelPromise channelPromise = write.promise;
        ReferenceCountUtil.safeRelease(write.msg);
        recycle(write);
        return channelPromise;
    }

    public Object current() {
        if (!$assertionsDisabled && !this.ctx.executor().inEventLoop()) {
            throw new AssertionError();
        }
        PendingWrite write = this.head;
        if (write == null) {
            return null;
        }
        return write.msg;
    }

    private void recycle(PendingWrite write) {
        PendingWrite next = write.next;
        this.buffer.decrementPendingOutboundBytes(write.size);
        write.recycle();
        this.size--;
        if (next == null) {
            this.tail = null;
            this.head = null;
            if (!$assertionsDisabled && this.size != 0) {
                throw new AssertionError();
            }
            return;
        }
        this.head = next;
        if (!$assertionsDisabled && this.size <= 0) {
            throw new AssertionError();
        }
    }

    private static void safeFail(ChannelPromise promise, Throwable cause) {
        if (!(promise instanceof VoidChannelPromise) && !promise.tryFailure(cause)) {
            logger.warn("Failed to mark a promise as failure because it's done already: {}", promise, cause);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class PendingWrite {
        private static final Recycler<PendingWrite> RECYCLER = new Recycler<PendingWrite>() { // from class: io.netty.channel.PendingWriteQueue.PendingWrite.1
            /* JADX INFO: Access modifiers changed from: protected */
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // io.netty.util.Recycler
            public PendingWrite newObject(Recycler.Handle handle) {
                return new PendingWrite(handle, null);
            }
        };
        private final Recycler.Handle handle;
        private Object msg;
        private PendingWrite next;
        private ChannelPromise promise;
        private long size;

        private PendingWrite(Recycler.Handle handle) {
            this.handle = handle;
        }

        /* synthetic */ PendingWrite(Recycler.Handle handle, PendingWrite pendingWrite) {
            this(handle);
        }

        static PendingWrite newInstance(Object msg, int size, ChannelPromise promise) {
            PendingWrite write = RECYCLER.get();
            write.size = size;
            write.msg = msg;
            write.promise = promise;
            return write;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void recycle() {
            this.size = 0L;
            this.next = null;
            this.msg = null;
            this.promise = null;
            RECYCLER.recycle(this, this.handle);
        }
    }
}
