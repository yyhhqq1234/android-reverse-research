package io.netty.channel;

import io.netty.buffer.ByteBufAllocator;
import io.netty.channel.AbstractChannel;
import io.netty.channel.SingleThreadEventLoop;
import io.netty.util.DefaultAttributeMap;
import io.netty.util.Recycler;
import io.netty.util.ReferenceCountUtil;
import io.netty.util.concurrent.EventExecutor;
import io.netty.util.concurrent.EventExecutorGroup;
import io.netty.util.internal.OneTimeTask;
import io.netty.util.internal.RecyclableMpscLinkedQueueNode;
import io.netty.util.internal.StringUtil;
import java.net.SocketAddress;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class AbstractChannelHandlerContext extends DefaultAttributeMap implements ChannelHandlerContext {
    private final AbstractChannel channel;
    final EventExecutor executor;
    private final boolean inbound;
    private volatile Runnable invokeChannelReadCompleteTask;
    private volatile Runnable invokeChannelWritableStateChangedTask;
    private volatile Runnable invokeFlushTask;
    private volatile Runnable invokeReadTask;
    private final String name;
    volatile AbstractChannelHandlerContext next;
    private final boolean outbound;
    private final DefaultChannelPipeline pipeline;
    volatile AbstractChannelHandlerContext prev;
    private boolean removed;
    private ChannelFuture succeededFuture;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractChannelHandlerContext(DefaultChannelPipeline pipeline, EventExecutorGroup group, String name, boolean inbound, boolean outbound) {
        if (name == null) {
            throw new NullPointerException("name");
        }
        this.channel = pipeline.channel;
        this.pipeline = pipeline;
        this.name = name;
        if (group != null) {
            EventExecutor childExecutor = pipeline.childExecutors.get(group);
            if (childExecutor == null) {
                childExecutor = group.next();
                pipeline.childExecutors.put(group, childExecutor);
            }
            this.executor = childExecutor;
        } else {
            this.executor = null;
        }
        this.inbound = inbound;
        this.outbound = outbound;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void teardown() {
        EventExecutor executor = executor();
        if (executor.inEventLoop()) {
            teardown0();
        } else {
            executor.execute(new Runnable() { // from class: io.netty.channel.AbstractChannelHandlerContext.1
                @Override // java.lang.Runnable
                public void run() {
                    AbstractChannelHandlerContext.this.teardown0();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void teardown0() {
        AbstractChannelHandlerContext prev = this.prev;
        if (prev != null) {
            synchronized (this.pipeline) {
                this.pipeline.remove0(this);
            }
            prev.teardown();
        }
    }

    @Override // io.netty.channel.ChannelHandlerContext
    public Channel channel() {
        return this.channel;
    }

    @Override // io.netty.channel.ChannelHandlerContext
    public ChannelPipeline pipeline() {
        return this.pipeline;
    }

    @Override // io.netty.channel.ChannelHandlerContext
    public ByteBufAllocator alloc() {
        return channel().config().getAllocator();
    }

    @Override // io.netty.channel.ChannelHandlerContext
    public EventExecutor executor() {
        return this.executor == null ? channel().eventLoop() : this.executor;
    }

    @Override // io.netty.channel.ChannelHandlerContext
    public String name() {
        return this.name;
    }

    @Override // io.netty.channel.ChannelHandlerContext
    public ChannelHandlerContext fireChannelRegistered() {
        final AbstractChannelHandlerContext next = findContextInbound();
        EventExecutor executor = next.executor();
        if (executor.inEventLoop()) {
            next.invokeChannelRegistered();
        } else {
            executor.execute(new OneTimeTask() { // from class: io.netty.channel.AbstractChannelHandlerContext.2
                @Override // java.lang.Runnable
                public void run() {
                    next.invokeChannelRegistered();
                }
            });
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invokeChannelRegistered() {
        try {
            ((ChannelInboundHandler) handler()).channelRegistered(this);
        } catch (Throwable t) {
            notifyHandlerException(t);
        }
    }

    @Override // io.netty.channel.ChannelHandlerContext
    public ChannelHandlerContext fireChannelUnregistered() {
        final AbstractChannelHandlerContext next = findContextInbound();
        EventExecutor executor = next.executor();
        if (executor.inEventLoop()) {
            next.invokeChannelUnregistered();
        } else {
            executor.execute(new OneTimeTask() { // from class: io.netty.channel.AbstractChannelHandlerContext.3
                @Override // java.lang.Runnable
                public void run() {
                    next.invokeChannelUnregistered();
                }
            });
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invokeChannelUnregistered() {
        try {
            ((ChannelInboundHandler) handler()).channelUnregistered(this);
        } catch (Throwable t) {
            notifyHandlerException(t);
        }
    }

    @Override // io.netty.channel.ChannelHandlerContext
    public ChannelHandlerContext fireChannelActive() {
        final AbstractChannelHandlerContext next = findContextInbound();
        EventExecutor executor = next.executor();
        if (executor.inEventLoop()) {
            next.invokeChannelActive();
        } else {
            executor.execute(new OneTimeTask() { // from class: io.netty.channel.AbstractChannelHandlerContext.4
                @Override // java.lang.Runnable
                public void run() {
                    next.invokeChannelActive();
                }
            });
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invokeChannelActive() {
        try {
            ((ChannelInboundHandler) handler()).channelActive(this);
        } catch (Throwable t) {
            notifyHandlerException(t);
        }
    }

    @Override // io.netty.channel.ChannelHandlerContext
    public ChannelHandlerContext fireChannelInactive() {
        final AbstractChannelHandlerContext next = findContextInbound();
        EventExecutor executor = next.executor();
        if (executor.inEventLoop()) {
            next.invokeChannelInactive();
        } else {
            executor.execute(new OneTimeTask() { // from class: io.netty.channel.AbstractChannelHandlerContext.5
                @Override // java.lang.Runnable
                public void run() {
                    next.invokeChannelInactive();
                }
            });
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invokeChannelInactive() {
        try {
            ((ChannelInboundHandler) handler()).channelInactive(this);
        } catch (Throwable t) {
            notifyHandlerException(t);
        }
    }

    @Override // io.netty.channel.ChannelHandlerContext
    public ChannelHandlerContext fireExceptionCaught(final Throwable cause) {
        if (cause == null) {
            throw new NullPointerException("cause");
        }
        final AbstractChannelHandlerContext next = this.next;
        EventExecutor executor = next.executor();
        if (executor.inEventLoop()) {
            next.invokeExceptionCaught(cause);
        } else {
            try {
                executor.execute(new OneTimeTask() { // from class: io.netty.channel.AbstractChannelHandlerContext.6
                    @Override // java.lang.Runnable
                    public void run() {
                        next.invokeExceptionCaught(cause);
                    }
                });
            } catch (Throwable t) {
                if (DefaultChannelPipeline.logger.isWarnEnabled()) {
                    DefaultChannelPipeline.logger.warn("Failed to submit an exceptionCaught() event.", t);
                    DefaultChannelPipeline.logger.warn("The exceptionCaught() event that was failed to submit was:", cause);
                }
            }
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invokeExceptionCaught(Throwable cause) {
        try {
            handler().exceptionCaught(this, cause);
        } catch (Throwable th) {
            if (DefaultChannelPipeline.logger.isWarnEnabled()) {
                DefaultChannelPipeline.logger.warn("An exception was thrown by a user handler's exceptionCaught() method while handling the following exception:", cause);
            }
        }
    }

    @Override // io.netty.channel.ChannelHandlerContext
    public ChannelHandlerContext fireUserEventTriggered(final Object event) {
        if (event == null) {
            throw new NullPointerException("event");
        }
        final AbstractChannelHandlerContext next = findContextInbound();
        EventExecutor executor = next.executor();
        if (executor.inEventLoop()) {
            next.invokeUserEventTriggered(event);
        } else {
            executor.execute(new OneTimeTask() { // from class: io.netty.channel.AbstractChannelHandlerContext.7
                @Override // java.lang.Runnable
                public void run() {
                    next.invokeUserEventTriggered(event);
                }
            });
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invokeUserEventTriggered(Object event) {
        try {
            ((ChannelInboundHandler) handler()).userEventTriggered(this, event);
        } catch (Throwable t) {
            notifyHandlerException(t);
        }
    }

    @Override // io.netty.channel.ChannelHandlerContext
    public ChannelHandlerContext fireChannelRead(final Object msg) {
        if (msg == null) {
            throw new NullPointerException("msg");
        }
        final AbstractChannelHandlerContext next = findContextInbound();
        EventExecutor executor = next.executor();
        if (executor.inEventLoop()) {
            next.invokeChannelRead(msg);
        } else {
            executor.execute(new OneTimeTask() { // from class: io.netty.channel.AbstractChannelHandlerContext.8
                @Override // java.lang.Runnable
                public void run() {
                    next.invokeChannelRead(msg);
                }
            });
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invokeChannelRead(Object msg) {
        try {
            ((ChannelInboundHandler) handler()).channelRead(this, msg);
        } catch (Throwable t) {
            notifyHandlerException(t);
        }
    }

    @Override // io.netty.channel.ChannelHandlerContext
    public ChannelHandlerContext fireChannelReadComplete() {
        final AbstractChannelHandlerContext next = findContextInbound();
        EventExecutor executor = next.executor();
        if (executor.inEventLoop()) {
            next.invokeChannelReadComplete();
        } else {
            Runnable task = next.invokeChannelReadCompleteTask;
            if (task == null) {
                task = new Runnable() { // from class: io.netty.channel.AbstractChannelHandlerContext.9
                    @Override // java.lang.Runnable
                    public void run() {
                        next.invokeChannelReadComplete();
                    }
                };
                next.invokeChannelReadCompleteTask = task;
            }
            executor.execute(task);
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invokeChannelReadComplete() {
        try {
            ((ChannelInboundHandler) handler()).channelReadComplete(this);
        } catch (Throwable t) {
            notifyHandlerException(t);
        }
    }

    @Override // io.netty.channel.ChannelHandlerContext
    public ChannelHandlerContext fireChannelWritabilityChanged() {
        final AbstractChannelHandlerContext next = findContextInbound();
        EventExecutor executor = next.executor();
        if (executor.inEventLoop()) {
            next.invokeChannelWritabilityChanged();
        } else {
            Runnable task = next.invokeChannelWritableStateChangedTask;
            if (task == null) {
                task = new Runnable() { // from class: io.netty.channel.AbstractChannelHandlerContext.10
                    @Override // java.lang.Runnable
                    public void run() {
                        next.invokeChannelWritabilityChanged();
                    }
                };
                next.invokeChannelWritableStateChangedTask = task;
            }
            executor.execute(task);
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invokeChannelWritabilityChanged() {
        try {
            ((ChannelInboundHandler) handler()).channelWritabilityChanged(this);
        } catch (Throwable t) {
            notifyHandlerException(t);
        }
    }

    @Override // io.netty.channel.ChannelHandlerContext
    public ChannelFuture bind(SocketAddress localAddress) {
        return bind(localAddress, newPromise());
    }

    @Override // io.netty.channel.ChannelHandlerContext
    public ChannelFuture connect(SocketAddress remoteAddress) {
        return connect(remoteAddress, newPromise());
    }

    @Override // io.netty.channel.ChannelHandlerContext
    public ChannelFuture connect(SocketAddress remoteAddress, SocketAddress localAddress) {
        return connect(remoteAddress, localAddress, newPromise());
    }

    @Override // io.netty.channel.ChannelHandlerContext
    public ChannelFuture disconnect() {
        return disconnect(newPromise());
    }

    @Override // io.netty.channel.ChannelHandlerContext
    public ChannelFuture close() {
        return close(newPromise());
    }

    @Override // io.netty.channel.ChannelHandlerContext
    public ChannelFuture deregister() {
        return deregister(newPromise());
    }

    @Override // io.netty.channel.ChannelHandlerContext
    public ChannelFuture bind(final SocketAddress localAddress, final ChannelPromise promise) {
        if (localAddress == null) {
            throw new NullPointerException("localAddress");
        }
        if (validatePromise(promise, false)) {
            final AbstractChannelHandlerContext next = findContextOutbound();
            EventExecutor executor = next.executor();
            if (executor.inEventLoop()) {
                next.invokeBind(localAddress, promise);
            } else {
                safeExecute(executor, new OneTimeTask() { // from class: io.netty.channel.AbstractChannelHandlerContext.11
                    @Override // java.lang.Runnable
                    public void run() {
                        next.invokeBind(localAddress, promise);
                    }
                }, promise, null);
            }
        }
        return promise;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invokeBind(SocketAddress localAddress, ChannelPromise promise) {
        try {
            ((ChannelOutboundHandler) handler()).bind(this, localAddress, promise);
        } catch (Throwable t) {
            notifyOutboundHandlerException(t, promise);
        }
    }

    @Override // io.netty.channel.ChannelHandlerContext
    public ChannelFuture connect(SocketAddress remoteAddress, ChannelPromise promise) {
        return connect(remoteAddress, null, promise);
    }

    @Override // io.netty.channel.ChannelHandlerContext
    public ChannelFuture connect(final SocketAddress remoteAddress, final SocketAddress localAddress, final ChannelPromise promise) {
        if (remoteAddress == null) {
            throw new NullPointerException("remoteAddress");
        }
        if (validatePromise(promise, false)) {
            final AbstractChannelHandlerContext next = findContextOutbound();
            EventExecutor executor = next.executor();
            if (executor.inEventLoop()) {
                next.invokeConnect(remoteAddress, localAddress, promise);
            } else {
                safeExecute(executor, new OneTimeTask() { // from class: io.netty.channel.AbstractChannelHandlerContext.12
                    @Override // java.lang.Runnable
                    public void run() {
                        next.invokeConnect(remoteAddress, localAddress, promise);
                    }
                }, promise, null);
            }
        }
        return promise;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invokeConnect(SocketAddress remoteAddress, SocketAddress localAddress, ChannelPromise promise) {
        try {
            ((ChannelOutboundHandler) handler()).connect(this, remoteAddress, localAddress, promise);
        } catch (Throwable t) {
            notifyOutboundHandlerException(t, promise);
        }
    }

    @Override // io.netty.channel.ChannelHandlerContext
    public ChannelFuture disconnect(final ChannelPromise promise) {
        if (validatePromise(promise, false)) {
            final AbstractChannelHandlerContext next = findContextOutbound();
            EventExecutor executor = next.executor();
            if (executor.inEventLoop()) {
                if (!channel().metadata().hasDisconnect()) {
                    next.invokeClose(promise);
                } else {
                    next.invokeDisconnect(promise);
                }
            } else {
                safeExecute(executor, new OneTimeTask() { // from class: io.netty.channel.AbstractChannelHandlerContext.13
                    @Override // java.lang.Runnable
                    public void run() {
                        if (AbstractChannelHandlerContext.this.channel().metadata().hasDisconnect()) {
                            next.invokeDisconnect(promise);
                        } else {
                            next.invokeClose(promise);
                        }
                    }
                }, promise, null);
            }
        }
        return promise;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invokeDisconnect(ChannelPromise promise) {
        try {
            ((ChannelOutboundHandler) handler()).disconnect(this, promise);
        } catch (Throwable t) {
            notifyOutboundHandlerException(t, promise);
        }
    }

    @Override // io.netty.channel.ChannelHandlerContext
    public ChannelFuture close(final ChannelPromise promise) {
        if (validatePromise(promise, false)) {
            final AbstractChannelHandlerContext next = findContextOutbound();
            EventExecutor executor = next.executor();
            if (executor.inEventLoop()) {
                next.invokeClose(promise);
            } else {
                safeExecute(executor, new OneTimeTask() { // from class: io.netty.channel.AbstractChannelHandlerContext.14
                    @Override // java.lang.Runnable
                    public void run() {
                        next.invokeClose(promise);
                    }
                }, promise, null);
            }
        }
        return promise;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invokeClose(ChannelPromise promise) {
        try {
            ((ChannelOutboundHandler) handler()).close(this, promise);
        } catch (Throwable t) {
            notifyOutboundHandlerException(t, promise);
        }
    }

    @Override // io.netty.channel.ChannelHandlerContext
    public ChannelFuture deregister(final ChannelPromise promise) {
        if (validatePromise(promise, false)) {
            final AbstractChannelHandlerContext next = findContextOutbound();
            EventExecutor executor = next.executor();
            if (executor.inEventLoop()) {
                next.invokeDeregister(promise);
            } else {
                safeExecute(executor, new OneTimeTask() { // from class: io.netty.channel.AbstractChannelHandlerContext.15
                    @Override // java.lang.Runnable
                    public void run() {
                        next.invokeDeregister(promise);
                    }
                }, promise, null);
            }
        }
        return promise;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invokeDeregister(ChannelPromise promise) {
        try {
            ((ChannelOutboundHandler) handler()).deregister(this, promise);
        } catch (Throwable t) {
            notifyOutboundHandlerException(t, promise);
        }
    }

    @Override // io.netty.channel.ChannelHandlerContext
    public ChannelHandlerContext read() {
        final AbstractChannelHandlerContext next = findContextOutbound();
        EventExecutor executor = next.executor();
        if (executor.inEventLoop()) {
            next.invokeRead();
        } else {
            Runnable task = next.invokeReadTask;
            if (task == null) {
                task = new Runnable() { // from class: io.netty.channel.AbstractChannelHandlerContext.16
                    @Override // java.lang.Runnable
                    public void run() {
                        next.invokeRead();
                    }
                };
                next.invokeReadTask = task;
            }
            executor.execute(task);
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invokeRead() {
        try {
            ((ChannelOutboundHandler) handler()).read(this);
        } catch (Throwable t) {
            notifyHandlerException(t);
        }
    }

    @Override // io.netty.channel.ChannelHandlerContext
    public ChannelFuture write(Object msg) {
        return write(msg, newPromise());
    }

    @Override // io.netty.channel.ChannelHandlerContext
    public ChannelFuture write(Object msg, ChannelPromise promise) {
        if (msg == null) {
            throw new NullPointerException("msg");
        }
        if (!validatePromise(promise, true)) {
            ReferenceCountUtil.release(msg);
        } else {
            write(msg, false, promise);
        }
        return promise;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invokeWrite(Object msg, ChannelPromise promise) {
        try {
            ((ChannelOutboundHandler) handler()).write(this, msg, promise);
        } catch (Throwable t) {
            notifyOutboundHandlerException(t, promise);
        }
    }

    @Override // io.netty.channel.ChannelHandlerContext
    public ChannelHandlerContext flush() {
        final AbstractChannelHandlerContext next = findContextOutbound();
        EventExecutor executor = next.executor();
        if (executor.inEventLoop()) {
            next.invokeFlush();
        } else {
            Runnable task = next.invokeFlushTask;
            if (task == null) {
                task = new Runnable() { // from class: io.netty.channel.AbstractChannelHandlerContext.17
                    @Override // java.lang.Runnable
                    public void run() {
                        next.invokeFlush();
                    }
                };
                next.invokeFlushTask = task;
            }
            safeExecute(executor, task, this.channel.voidPromise(), null);
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invokeFlush() {
        try {
            ((ChannelOutboundHandler) handler()).flush(this);
        } catch (Throwable t) {
            notifyHandlerException(t);
        }
    }

    @Override // io.netty.channel.ChannelHandlerContext
    public ChannelFuture writeAndFlush(Object msg, ChannelPromise promise) {
        if (msg == null) {
            throw new NullPointerException("msg");
        }
        if (!validatePromise(promise, true)) {
            ReferenceCountUtil.release(msg);
        } else {
            write(msg, true, promise);
        }
        return promise;
    }

    private void write(Object msg, boolean flush, ChannelPromise promise) {
        Runnable task;
        ChannelOutboundBuffer buffer;
        AbstractChannelHandlerContext next = findContextOutbound();
        EventExecutor executor = next.executor();
        if (executor.inEventLoop()) {
            next.invokeWrite(msg, promise);
            if (flush) {
                next.invokeFlush();
                return;
            }
            return;
        }
        int size = this.channel.estimatorHandle().size(msg);
        if (size > 0 && (buffer = this.channel.unsafe().outboundBuffer()) != null) {
            buffer.incrementPendingOutboundBytes(size);
        }
        if (!flush) {
            task = WriteTask.newInstance(next, msg, size, promise);
        } else {
            task = WriteAndFlushTask.newInstance(next, msg, size, promise);
        }
        safeExecute(executor, task, promise, msg);
    }

    @Override // io.netty.channel.ChannelHandlerContext
    public ChannelFuture writeAndFlush(Object msg) {
        return writeAndFlush(msg, newPromise());
    }

    private static void notifyOutboundHandlerException(Throwable cause, ChannelPromise promise) {
        if (!(promise instanceof VoidChannelPromise) && !promise.tryFailure(cause) && DefaultChannelPipeline.logger.isWarnEnabled()) {
            DefaultChannelPipeline.logger.warn("Failed to fail the promise because it's done already: {}", promise, cause);
        }
    }

    private void notifyHandlerException(Throwable cause) {
        if (inExceptionCaught(cause)) {
            if (DefaultChannelPipeline.logger.isWarnEnabled()) {
                DefaultChannelPipeline.logger.warn("An exception was thrown by a user handler while handling an exceptionCaught event", cause);
                return;
            }
            return;
        }
        invokeExceptionCaught(cause);
    }

    private static boolean inExceptionCaught(Throwable cause) {
        do {
            StackTraceElement[] trace = cause.getStackTrace();
            if (trace != null) {
                for (StackTraceElement t : trace) {
                    if (t == null) {
                        break;
                    }
                    if ("exceptionCaught".equals(t.getMethodName())) {
                        return true;
                    }
                }
            }
            cause = cause.getCause();
        } while (cause != null);
        return false;
    }

    @Override // io.netty.channel.ChannelHandlerContext
    public ChannelPromise newPromise() {
        return new DefaultChannelPromise(channel(), executor());
    }

    @Override // io.netty.channel.ChannelHandlerContext
    public ChannelProgressivePromise newProgressivePromise() {
        return new DefaultChannelProgressivePromise(channel(), executor());
    }

    @Override // io.netty.channel.ChannelHandlerContext
    public ChannelFuture newSucceededFuture() {
        ChannelFuture succeededFuture = this.succeededFuture;
        if (succeededFuture == null) {
            ChannelFuture succeededFuture2 = new SucceededChannelFuture(channel(), executor());
            this.succeededFuture = succeededFuture2;
            return succeededFuture2;
        }
        return succeededFuture;
    }

    @Override // io.netty.channel.ChannelHandlerContext
    public ChannelFuture newFailedFuture(Throwable cause) {
        return new FailedChannelFuture(channel(), executor(), cause);
    }

    private boolean validatePromise(ChannelPromise promise, boolean allowVoidPromise) {
        if (promise == null) {
            throw new NullPointerException("promise");
        }
        if (promise.isDone()) {
            if (promise.isCancelled()) {
                return false;
            }
            throw new IllegalArgumentException("promise already done: " + promise);
        }
        if (promise.channel() != channel()) {
            throw new IllegalArgumentException(String.format("promise.channel does not match: %s (expected: %s)", promise.channel(), channel()));
        }
        if (promise.getClass() == DefaultChannelPromise.class) {
            return true;
        }
        if (!allowVoidPromise && (promise instanceof VoidChannelPromise)) {
            throw new IllegalArgumentException(String.valueOf(StringUtil.simpleClassName((Class<?>) VoidChannelPromise.class)) + " not allowed for this operation");
        }
        if (promise instanceof AbstractChannel.CloseFuture) {
            throw new IllegalArgumentException(String.valueOf(StringUtil.simpleClassName((Class<?>) AbstractChannel.CloseFuture.class)) + " not allowed in a pipeline");
        }
        return true;
    }

    private AbstractChannelHandlerContext findContextInbound() {
        AbstractChannelHandlerContext ctx = this;
        do {
            ctx = ctx.next;
        } while (!ctx.inbound);
        return ctx;
    }

    private AbstractChannelHandlerContext findContextOutbound() {
        AbstractChannelHandlerContext ctx = this;
        do {
            ctx = ctx.prev;
        } while (!ctx.outbound);
        return ctx;
    }

    @Override // io.netty.channel.ChannelHandlerContext
    public ChannelPromise voidPromise() {
        return this.channel.voidPromise();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setRemoved() {
        this.removed = true;
    }

    @Override // io.netty.channel.ChannelHandlerContext
    public boolean isRemoved() {
        return this.removed;
    }

    private static void safeExecute(EventExecutor executor, Runnable runnable, ChannelPromise promise, Object msg) {
        try {
            executor.execute(runnable);
        } catch (Throwable cause) {
            try {
                promise.setFailure(cause);
            } finally {
                if (msg != null) {
                    ReferenceCountUtil.release(msg);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static abstract class AbstractWriteTask extends RecyclableMpscLinkedQueueNode<Runnable> implements Runnable {
        private AbstractChannelHandlerContext ctx;
        private Object msg;
        private ChannelPromise promise;
        private int size;

        /* synthetic */ AbstractWriteTask(Recycler.Handle handle, AbstractWriteTask abstractWriteTask) {
            this(handle);
        }

        private AbstractWriteTask(Recycler.Handle handle) {
            super(handle);
        }

        protected static void init(AbstractWriteTask task, AbstractChannelHandlerContext ctx, Object msg, int size, ChannelPromise promise) {
            task.ctx = ctx;
            task.msg = msg;
            task.promise = promise;
            task.size = size;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public final void run() {
            ChannelOutboundBuffer outboundBuffer;
            try {
                if (this.size > 0 && (outboundBuffer = this.ctx.channel.unsafe().outboundBuffer()) != null) {
                    outboundBuffer.decrementPendingOutboundBytes(this.size);
                }
                write(this.ctx, this.msg, this.promise);
            } finally {
                this.ctx = null;
                this.msg = null;
                this.promise = null;
            }
        }

        @Override // io.netty.util.internal.MpscLinkedQueueNode
        public Runnable value() {
            return this;
        }

        protected void write(AbstractChannelHandlerContext ctx, Object msg, ChannelPromise promise) {
            ctx.invokeWrite(msg, promise);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class WriteTask extends AbstractWriteTask implements SingleThreadEventLoop.NonWakeupRunnable {
        private static final Recycler<WriteTask> RECYCLER = new Recycler<WriteTask>() { // from class: io.netty.channel.AbstractChannelHandlerContext.WriteTask.1
            /* JADX INFO: Access modifiers changed from: protected */
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // io.netty.util.Recycler
            public WriteTask newObject(Recycler.Handle handle) {
                return new WriteTask(handle, null);
            }
        };

        /* JADX INFO: Access modifiers changed from: private */
        public static WriteTask newInstance(AbstractChannelHandlerContext ctx, Object msg, int size, ChannelPromise promise) {
            WriteTask task = RECYCLER.get();
            init(task, ctx, msg, size, promise);
            return task;
        }

        /* synthetic */ WriteTask(Recycler.Handle handle, WriteTask writeTask) {
            this(handle);
        }

        private WriteTask(Recycler.Handle handle) {
            super(handle, null);
        }

        @Override // io.netty.util.internal.RecyclableMpscLinkedQueueNode
        protected void recycle(Recycler.Handle handle) {
            RECYCLER.recycle(this, handle);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class WriteAndFlushTask extends AbstractWriteTask {
        private static final Recycler<WriteAndFlushTask> RECYCLER = new Recycler<WriteAndFlushTask>() { // from class: io.netty.channel.AbstractChannelHandlerContext.WriteAndFlushTask.1
            /* JADX INFO: Access modifiers changed from: protected */
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // io.netty.util.Recycler
            public WriteAndFlushTask newObject(Recycler.Handle handle) {
                return new WriteAndFlushTask(handle, null);
            }
        };

        /* JADX INFO: Access modifiers changed from: private */
        public static WriteAndFlushTask newInstance(AbstractChannelHandlerContext ctx, Object msg, int size, ChannelPromise promise) {
            WriteAndFlushTask task = RECYCLER.get();
            init(task, ctx, msg, size, promise);
            return task;
        }

        /* synthetic */ WriteAndFlushTask(Recycler.Handle handle, WriteAndFlushTask writeAndFlushTask) {
            this(handle);
        }

        private WriteAndFlushTask(Recycler.Handle handle) {
            super(handle, null);
        }

        @Override // io.netty.channel.AbstractChannelHandlerContext.AbstractWriteTask
        public void write(AbstractChannelHandlerContext ctx, Object msg, ChannelPromise promise) {
            super.write(ctx, msg, promise);
            ctx.invokeFlush();
        }

        @Override // io.netty.util.internal.RecyclableMpscLinkedQueueNode
        protected void recycle(Recycler.Handle handle) {
            RECYCLER.recycle(this, handle);
        }
    }
}
