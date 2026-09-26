package io.netty.channel;

import com.sina.weibo.sdk.statistic.LogBuilder;
import io.netty.channel.Channel;
import io.netty.util.ReferenceCountUtil;
import io.netty.util.concurrent.EventExecutor;
import io.netty.util.concurrent.EventExecutorGroup;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.StringUtil;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.net.SocketAddress;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class DefaultChannelPipeline implements ChannelPipeline {
    static final /* synthetic */ boolean $assertionsDisabled;
    static final InternalLogger logger;
    private static final WeakHashMap<Class<?>, String>[] nameCaches;
    final AbstractChannel channel;
    final AbstractChannelHandlerContext head;
    final AbstractChannelHandlerContext tail;
    private final Map<String, AbstractChannelHandlerContext> name2ctx = new HashMap(4);
    final Map<EventExecutorGroup, EventExecutor> childExecutors = new IdentityHashMap();

    static {
        $assertionsDisabled = !DefaultChannelPipeline.class.desiredAssertionStatus();
        logger = InternalLoggerFactory.getInstance((Class<?>) DefaultChannelPipeline.class);
        nameCaches = new WeakHashMap[Runtime.getRuntime().availableProcessors()];
        for (int i = 0; i < nameCaches.length; i++) {
            nameCaches[i] = new WeakHashMap<>();
        }
    }

    public DefaultChannelPipeline(AbstractChannel channel) {
        if (channel == null) {
            throw new NullPointerException(LogBuilder.KEY_CHANNEL);
        }
        this.channel = channel;
        this.tail = new TailContext(this);
        this.head = new HeadContext(this);
        this.head.next = this.tail;
        this.tail.prev = this.head;
    }

    @Override // io.netty.channel.ChannelPipeline
    public Channel channel() {
        return this.channel;
    }

    @Override // io.netty.channel.ChannelPipeline
    public ChannelPipeline addFirst(String name, ChannelHandler handler) {
        return addFirst(null, name, handler);
    }

    @Override // io.netty.channel.ChannelPipeline
    public ChannelPipeline addFirst(EventExecutorGroup group, String name, ChannelHandler handler) {
        synchronized (this) {
            checkDuplicateName(name);
            AbstractChannelHandlerContext newCtx = new DefaultChannelHandlerContext(this, group, name, handler);
            addFirst0(name, newCtx);
        }
        return this;
    }

    private void addFirst0(String name, AbstractChannelHandlerContext newCtx) {
        checkMultiplicity(newCtx);
        AbstractChannelHandlerContext nextCtx = this.head.next;
        newCtx.prev = this.head;
        newCtx.next = nextCtx;
        this.head.next = newCtx;
        nextCtx.prev = newCtx;
        this.name2ctx.put(name, newCtx);
        callHandlerAdded(newCtx);
    }

    @Override // io.netty.channel.ChannelPipeline
    public ChannelPipeline addLast(String name, ChannelHandler handler) {
        return addLast(null, name, handler);
    }

    @Override // io.netty.channel.ChannelPipeline
    public ChannelPipeline addLast(EventExecutorGroup group, String name, ChannelHandler handler) {
        synchronized (this) {
            checkDuplicateName(name);
            AbstractChannelHandlerContext newCtx = new DefaultChannelHandlerContext(this, group, name, handler);
            addLast0(name, newCtx);
        }
        return this;
    }

    private void addLast0(String name, AbstractChannelHandlerContext newCtx) {
        checkMultiplicity(newCtx);
        AbstractChannelHandlerContext prev = this.tail.prev;
        newCtx.prev = prev;
        newCtx.next = this.tail;
        prev.next = newCtx;
        this.tail.prev = newCtx;
        this.name2ctx.put(name, newCtx);
        callHandlerAdded(newCtx);
    }

    @Override // io.netty.channel.ChannelPipeline
    public ChannelPipeline addBefore(String baseName, String name, ChannelHandler handler) {
        return addBefore(null, baseName, name, handler);
    }

    @Override // io.netty.channel.ChannelPipeline
    public ChannelPipeline addBefore(EventExecutorGroup group, String baseName, String name, ChannelHandler handler) {
        synchronized (this) {
            AbstractChannelHandlerContext ctx = getContextOrDie(baseName);
            checkDuplicateName(name);
            AbstractChannelHandlerContext newCtx = new DefaultChannelHandlerContext(this, group, name, handler);
            addBefore0(name, ctx, newCtx);
        }
        return this;
    }

    private void addBefore0(String name, AbstractChannelHandlerContext ctx, AbstractChannelHandlerContext newCtx) {
        checkMultiplicity(newCtx);
        newCtx.prev = ctx.prev;
        newCtx.next = ctx;
        ctx.prev.next = newCtx;
        ctx.prev = newCtx;
        this.name2ctx.put(name, newCtx);
        callHandlerAdded(newCtx);
    }

    @Override // io.netty.channel.ChannelPipeline
    public ChannelPipeline addAfter(String baseName, String name, ChannelHandler handler) {
        return addAfter(null, baseName, name, handler);
    }

    @Override // io.netty.channel.ChannelPipeline
    public ChannelPipeline addAfter(EventExecutorGroup group, String baseName, String name, ChannelHandler handler) {
        synchronized (this) {
            AbstractChannelHandlerContext ctx = getContextOrDie(baseName);
            checkDuplicateName(name);
            AbstractChannelHandlerContext newCtx = new DefaultChannelHandlerContext(this, group, name, handler);
            addAfter0(name, ctx, newCtx);
        }
        return this;
    }

    private void addAfter0(String name, AbstractChannelHandlerContext ctx, AbstractChannelHandlerContext newCtx) {
        checkDuplicateName(name);
        checkMultiplicity(newCtx);
        newCtx.prev = ctx;
        newCtx.next = ctx.next;
        ctx.next.prev = newCtx;
        ctx.next = newCtx;
        this.name2ctx.put(name, newCtx);
        callHandlerAdded(newCtx);
    }

    @Override // io.netty.channel.ChannelPipeline
    public ChannelPipeline addFirst(ChannelHandler... handlers) {
        return addFirst((EventExecutorGroup) null, handlers);
    }

    @Override // io.netty.channel.ChannelPipeline
    public ChannelPipeline addFirst(EventExecutorGroup executor, ChannelHandler... handlers) {
        if (handlers == null) {
            throw new NullPointerException("handlers");
        }
        if (handlers.length != 0 && handlers[0] != null) {
            int size = 1;
            while (size < handlers.length && handlers[size] != null) {
                size++;
            }
            for (int i = size - 1; i >= 0; i--) {
                ChannelHandler h = handlers[i];
                addFirst(executor, generateName(h), h);
            }
        }
        return this;
    }

    @Override // io.netty.channel.ChannelPipeline
    public ChannelPipeline addLast(ChannelHandler... handlers) {
        return addLast((EventExecutorGroup) null, handlers);
    }

    @Override // io.netty.channel.ChannelPipeline
    public ChannelPipeline addLast(EventExecutorGroup executor, ChannelHandler... handlers) {
        if (handlers == null) {
            throw new NullPointerException("handlers");
        }
        for (ChannelHandler h : handlers) {
            if (h == null) {
                break;
            }
            addLast(executor, generateName(h), h);
        }
        return this;
    }

    private String generateName(ChannelHandler handler) {
        String name;
        String newName;
        WeakHashMap<Class<?>, String> cache = nameCaches[(int) (Thread.currentThread().getId() % nameCaches.length)];
        Class<?> handlerType = handler.getClass();
        synchronized (cache) {
            name = cache.get(handlerType);
            if (name == null) {
                name = generateName0(handlerType);
                cache.put(handlerType, name);
            }
        }
        synchronized (this) {
            if (this.name2ctx.containsKey(name)) {
                String baseName = name.substring(0, name.length() - 1);
                int i = 1;
                while (true) {
                    newName = String.valueOf(baseName) + i;
                    if (!this.name2ctx.containsKey(newName)) {
                        break;
                    }
                    i++;
                }
                name = newName;
            }
        }
        return name;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String generateName0(Class<?> handlerType) {
        return String.valueOf(StringUtil.simpleClassName(handlerType)) + "#0";
    }

    @Override // io.netty.channel.ChannelPipeline
    public ChannelPipeline remove(ChannelHandler handler) {
        remove(getContextOrDie(handler));
        return this;
    }

    @Override // io.netty.channel.ChannelPipeline
    public ChannelHandler remove(String name) {
        return remove(getContextOrDie(name)).handler();
    }

    @Override // io.netty.channel.ChannelPipeline
    public <T extends ChannelHandler> T remove(Class<T> cls) {
        return (T) remove(getContextOrDie((Class<? extends ChannelHandler>) cls)).handler();
    }

    private AbstractChannelHandlerContext remove(final AbstractChannelHandlerContext ctx) {
        if (!$assertionsDisabled && (ctx == this.head || ctx == this.tail)) {
            throw new AssertionError();
        }
        synchronized (this) {
            if (!ctx.channel().isRegistered() || ctx.executor().inEventLoop()) {
                remove0(ctx);
                return ctx;
            }
            Future<?> future = ctx.executor().submit(new Runnable() { // from class: io.netty.channel.DefaultChannelPipeline.1
                @Override // java.lang.Runnable
                public void run() {
                    synchronized (DefaultChannelPipeline.this) {
                        DefaultChannelPipeline.this.remove0(ctx);
                    }
                }
            });
            waitForFuture(future);
            return ctx;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void remove0(AbstractChannelHandlerContext ctx) {
        AbstractChannelHandlerContext prev = ctx.prev;
        AbstractChannelHandlerContext next = ctx.next;
        prev.next = next;
        next.prev = prev;
        this.name2ctx.remove(ctx.name());
        callHandlerRemoved(ctx);
    }

    @Override // io.netty.channel.ChannelPipeline
    public ChannelHandler removeFirst() {
        if (this.head.next == this.tail) {
            throw new NoSuchElementException();
        }
        return remove(this.head.next).handler();
    }

    @Override // io.netty.channel.ChannelPipeline
    public ChannelHandler removeLast() {
        if (this.head.next == this.tail) {
            throw new NoSuchElementException();
        }
        return remove(this.tail.prev).handler();
    }

    @Override // io.netty.channel.ChannelPipeline
    public ChannelPipeline replace(ChannelHandler oldHandler, String newName, ChannelHandler newHandler) {
        replace(getContextOrDie(oldHandler), newName, newHandler);
        return this;
    }

    @Override // io.netty.channel.ChannelPipeline
    public ChannelHandler replace(String oldName, String newName, ChannelHandler newHandler) {
        return replace(getContextOrDie(oldName), newName, newHandler);
    }

    @Override // io.netty.channel.ChannelPipeline
    public <T extends ChannelHandler> T replace(Class<T> cls, String str, ChannelHandler channelHandler) {
        return (T) replace(getContextOrDie((Class<? extends ChannelHandler>) cls), str, channelHandler);
    }

    private ChannelHandler replace(final AbstractChannelHandlerContext ctx, final String newName, ChannelHandler newHandler) {
        if (!$assertionsDisabled && (ctx == this.head || ctx == this.tail)) {
            throw new AssertionError();
        }
        synchronized (this) {
            boolean sameName = ctx.name().equals(newName);
            if (!sameName) {
                checkDuplicateName(newName);
            }
            final AbstractChannelHandlerContext newCtx = new DefaultChannelHandlerContext(this, ctx.executor, newName, newHandler);
            if (!newCtx.channel().isRegistered() || newCtx.executor().inEventLoop()) {
                replace0(ctx, newName, newCtx);
                return ctx.handler();
            }
            Future<?> future = newCtx.executor().submit(new Runnable() { // from class: io.netty.channel.DefaultChannelPipeline.2
                @Override // java.lang.Runnable
                public void run() {
                    synchronized (DefaultChannelPipeline.this) {
                        DefaultChannelPipeline.this.replace0(ctx, newName, newCtx);
                    }
                }
            });
            waitForFuture(future);
            return ctx.handler();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void replace0(AbstractChannelHandlerContext oldCtx, String newName, AbstractChannelHandlerContext newCtx) {
        checkMultiplicity(newCtx);
        AbstractChannelHandlerContext prev = oldCtx.prev;
        AbstractChannelHandlerContext next = oldCtx.next;
        newCtx.prev = prev;
        newCtx.next = next;
        prev.next = newCtx;
        next.prev = newCtx;
        if (!oldCtx.name().equals(newName)) {
            this.name2ctx.remove(oldCtx.name());
        }
        this.name2ctx.put(newName, newCtx);
        oldCtx.prev = newCtx;
        oldCtx.next = newCtx;
        callHandlerAdded(newCtx);
        callHandlerRemoved(oldCtx);
    }

    private static void checkMultiplicity(ChannelHandlerContext ctx) {
        ChannelHandler handler = ctx.handler();
        if (handler instanceof ChannelHandlerAdapter) {
            ChannelHandlerAdapter h = (ChannelHandlerAdapter) handler;
            if (!h.isSharable() && h.added) {
                throw new ChannelPipelineException(String.valueOf(h.getClass().getName()) + " is not a @Sharable handler, so can't be added or removed multiple times.");
            }
            h.added = true;
        }
    }

    private void callHandlerAdded(final ChannelHandlerContext ctx) {
        if (ctx.channel().isRegistered() && !ctx.executor().inEventLoop()) {
            ctx.executor().execute(new Runnable() { // from class: io.netty.channel.DefaultChannelPipeline.3
                @Override // java.lang.Runnable
                public void run() {
                    DefaultChannelPipeline.this.callHandlerAdded0(ctx);
                }
            });
        } else {
            callHandlerAdded0(ctx);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callHandlerAdded0(ChannelHandlerContext ctx) {
        try {
            ctx.handler().handlerAdded(ctx);
        } catch (Throwable t) {
            boolean removed = false;
            try {
                remove((AbstractChannelHandlerContext) ctx);
                removed = true;
            } catch (Throwable t2) {
                if (logger.isWarnEnabled()) {
                    logger.warn("Failed to remove a handler: " + ctx.name(), t2);
                }
            }
            if (removed) {
                fireExceptionCaught(new ChannelPipelineException(String.valueOf(ctx.handler().getClass().getName()) + ".handlerAdded() has thrown an exception; removed.", t));
            } else {
                fireExceptionCaught(new ChannelPipelineException(String.valueOf(ctx.handler().getClass().getName()) + ".handlerAdded() has thrown an exception; also failed to remove.", t));
            }
        }
    }

    private void callHandlerRemoved(final AbstractChannelHandlerContext ctx) {
        if (ctx.channel().isRegistered() && !ctx.executor().inEventLoop()) {
            ctx.executor().execute(new Runnable() { // from class: io.netty.channel.DefaultChannelPipeline.4
                @Override // java.lang.Runnable
                public void run() {
                    DefaultChannelPipeline.this.callHandlerRemoved0(ctx);
                }
            });
        } else {
            callHandlerRemoved0(ctx);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callHandlerRemoved0(AbstractChannelHandlerContext ctx) {
        try {
            ctx.handler().handlerRemoved(ctx);
            ctx.setRemoved();
        } catch (Throwable t) {
            fireExceptionCaught(new ChannelPipelineException(String.valueOf(ctx.handler().getClass().getName()) + ".handlerRemoved() has thrown an exception.", t));
        }
    }

    private static void waitForFuture(Future<?> future) {
        try {
            future.get();
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        } catch (ExecutionException ex) {
            PlatformDependent.throwException(ex.getCause());
        }
    }

    @Override // io.netty.channel.ChannelPipeline
    public ChannelHandler first() {
        ChannelHandlerContext first = firstContext();
        if (first == null) {
            return null;
        }
        return first.handler();
    }

    @Override // io.netty.channel.ChannelPipeline
    public ChannelHandlerContext firstContext() {
        AbstractChannelHandlerContext first = this.head.next;
        if (first == this.tail) {
            return null;
        }
        return this.head.next;
    }

    @Override // io.netty.channel.ChannelPipeline
    public ChannelHandler last() {
        AbstractChannelHandlerContext last = this.tail.prev;
        if (last == this.head) {
            return null;
        }
        return last.handler();
    }

    @Override // io.netty.channel.ChannelPipeline
    public ChannelHandlerContext lastContext() {
        AbstractChannelHandlerContext last = this.tail.prev;
        if (last == this.head) {
            return null;
        }
        return last;
    }

    @Override // io.netty.channel.ChannelPipeline
    public ChannelHandler get(String name) {
        ChannelHandlerContext ctx = context(name);
        if (ctx == null) {
            return null;
        }
        return ctx.handler();
    }

    @Override // io.netty.channel.ChannelPipeline
    public <T extends ChannelHandler> T get(Class<T> cls) {
        ChannelHandlerContext context = context((Class<? extends ChannelHandler>) cls);
        if (context == null) {
            return null;
        }
        return (T) context.handler();
    }

    @Override // io.netty.channel.ChannelPipeline
    public ChannelHandlerContext context(String name) {
        AbstractChannelHandlerContext abstractChannelHandlerContext;
        if (name == null) {
            throw new NullPointerException("name");
        }
        synchronized (this) {
            abstractChannelHandlerContext = this.name2ctx.get(name);
        }
        return abstractChannelHandlerContext;
    }

    @Override // io.netty.channel.ChannelPipeline
    public ChannelHandlerContext context(ChannelHandler handler) {
        if (handler == null) {
            throw new NullPointerException("handler");
        }
        for (AbstractChannelHandlerContext ctx = this.head.next; ctx != null; ctx = ctx.next) {
            if (ctx.handler() == handler) {
                return ctx;
            }
        }
        return null;
    }

    @Override // io.netty.channel.ChannelPipeline
    public ChannelHandlerContext context(Class<? extends ChannelHandler> handlerType) {
        if (handlerType == null) {
            throw new NullPointerException("handlerType");
        }
        for (AbstractChannelHandlerContext ctx = this.head.next; ctx != null; ctx = ctx.next) {
            if (handlerType.isAssignableFrom(ctx.handler().getClass())) {
                return ctx;
            }
        }
        return null;
    }

    @Override // io.netty.channel.ChannelPipeline
    public List<String> names() {
        List<String> list = new ArrayList<>();
        for (AbstractChannelHandlerContext ctx = this.head.next; ctx != null; ctx = ctx.next) {
            list.add(ctx.name());
        }
        return list;
    }

    @Override // io.netty.channel.ChannelPipeline
    public Map<String, ChannelHandler> toMap() {
        Map<String, ChannelHandler> map = new LinkedHashMap<>();
        for (AbstractChannelHandlerContext ctx = this.head.next; ctx != this.tail; ctx = ctx.next) {
            map.put(ctx.name(), ctx.handler());
        }
        return map;
    }

    @Override // java.lang.Iterable
    public Iterator<Map.Entry<String, ChannelHandler>> iterator() {
        return toMap().entrySet().iterator();
    }

    public String toString() {
        StringBuilder buf = new StringBuilder();
        buf.append(StringUtil.simpleClassName(this));
        buf.append('{');
        AbstractChannelHandlerContext ctx = this.head.next;
        while (ctx != this.tail) {
            buf.append('(');
            buf.append(ctx.name());
            buf.append(" = ");
            buf.append(ctx.handler().getClass().getName());
            buf.append(')');
            ctx = ctx.next;
            if (ctx == this.tail) {
                break;
            }
            buf.append(", ");
        }
        buf.append('}');
        return buf.toString();
    }

    @Override // io.netty.channel.ChannelPipeline
    public ChannelPipeline fireChannelRegistered() {
        this.head.fireChannelRegistered();
        return this;
    }

    @Override // io.netty.channel.ChannelPipeline
    public ChannelPipeline fireChannelUnregistered() {
        this.head.fireChannelUnregistered();
        if (!this.channel.isOpen()) {
            teardownAll();
        }
        return this;
    }

    private void teardownAll() {
        this.tail.prev.teardown();
    }

    @Override // io.netty.channel.ChannelPipeline
    public ChannelPipeline fireChannelActive() {
        this.head.fireChannelActive();
        if (this.channel.config().isAutoRead()) {
            this.channel.read();
        }
        return this;
    }

    @Override // io.netty.channel.ChannelPipeline
    public ChannelPipeline fireChannelInactive() {
        this.head.fireChannelInactive();
        return this;
    }

    @Override // io.netty.channel.ChannelPipeline
    public ChannelPipeline fireExceptionCaught(Throwable cause) {
        this.head.fireExceptionCaught(cause);
        return this;
    }

    @Override // io.netty.channel.ChannelPipeline
    public ChannelPipeline fireUserEventTriggered(Object event) {
        this.head.fireUserEventTriggered(event);
        return this;
    }

    @Override // io.netty.channel.ChannelPipeline
    public ChannelPipeline fireChannelRead(Object msg) {
        this.head.fireChannelRead(msg);
        return this;
    }

    @Override // io.netty.channel.ChannelPipeline
    public ChannelPipeline fireChannelReadComplete() {
        this.head.fireChannelReadComplete();
        if (this.channel.config().isAutoRead()) {
            read();
        }
        return this;
    }

    @Override // io.netty.channel.ChannelPipeline
    public ChannelPipeline fireChannelWritabilityChanged() {
        this.head.fireChannelWritabilityChanged();
        return this;
    }

    @Override // io.netty.channel.ChannelPipeline
    public ChannelFuture bind(SocketAddress localAddress) {
        return this.tail.bind(localAddress);
    }

    @Override // io.netty.channel.ChannelPipeline
    public ChannelFuture connect(SocketAddress remoteAddress) {
        return this.tail.connect(remoteAddress);
    }

    @Override // io.netty.channel.ChannelPipeline
    public ChannelFuture connect(SocketAddress remoteAddress, SocketAddress localAddress) {
        return this.tail.connect(remoteAddress, localAddress);
    }

    @Override // io.netty.channel.ChannelPipeline
    public ChannelFuture disconnect() {
        return this.tail.disconnect();
    }

    @Override // io.netty.channel.ChannelPipeline
    public ChannelFuture close() {
        return this.tail.close();
    }

    @Override // io.netty.channel.ChannelPipeline
    public ChannelFuture deregister() {
        return this.tail.deregister();
    }

    @Override // io.netty.channel.ChannelPipeline
    public ChannelPipeline flush() {
        this.tail.flush();
        return this;
    }

    @Override // io.netty.channel.ChannelPipeline
    public ChannelFuture bind(SocketAddress localAddress, ChannelPromise promise) {
        return this.tail.bind(localAddress, promise);
    }

    @Override // io.netty.channel.ChannelPipeline
    public ChannelFuture connect(SocketAddress remoteAddress, ChannelPromise promise) {
        return this.tail.connect(remoteAddress, promise);
    }

    @Override // io.netty.channel.ChannelPipeline
    public ChannelFuture connect(SocketAddress remoteAddress, SocketAddress localAddress, ChannelPromise promise) {
        return this.tail.connect(remoteAddress, localAddress, promise);
    }

    @Override // io.netty.channel.ChannelPipeline
    public ChannelFuture disconnect(ChannelPromise promise) {
        return this.tail.disconnect(promise);
    }

    @Override // io.netty.channel.ChannelPipeline
    public ChannelFuture close(ChannelPromise promise) {
        return this.tail.close(promise);
    }

    @Override // io.netty.channel.ChannelPipeline
    public ChannelFuture deregister(ChannelPromise promise) {
        return this.tail.deregister(promise);
    }

    @Override // io.netty.channel.ChannelPipeline
    public ChannelPipeline read() {
        this.tail.read();
        return this;
    }

    @Override // io.netty.channel.ChannelPipeline
    public ChannelFuture write(Object msg) {
        return this.tail.write(msg);
    }

    @Override // io.netty.channel.ChannelPipeline
    public ChannelFuture write(Object msg, ChannelPromise promise) {
        return this.tail.write(msg, promise);
    }

    @Override // io.netty.channel.ChannelPipeline
    public ChannelFuture writeAndFlush(Object msg, ChannelPromise promise) {
        return this.tail.writeAndFlush(msg, promise);
    }

    @Override // io.netty.channel.ChannelPipeline
    public ChannelFuture writeAndFlush(Object msg) {
        return this.tail.writeAndFlush(msg);
    }

    private void checkDuplicateName(String name) {
        if (this.name2ctx.containsKey(name)) {
            throw new IllegalArgumentException("Duplicate handler name: " + name);
        }
    }

    private AbstractChannelHandlerContext getContextOrDie(String name) {
        AbstractChannelHandlerContext ctx = (AbstractChannelHandlerContext) context(name);
        if (ctx == null) {
            throw new NoSuchElementException(name);
        }
        return ctx;
    }

    private AbstractChannelHandlerContext getContextOrDie(ChannelHandler handler) {
        AbstractChannelHandlerContext ctx = (AbstractChannelHandlerContext) context(handler);
        if (ctx == null) {
            throw new NoSuchElementException(handler.getClass().getName());
        }
        return ctx;
    }

    private AbstractChannelHandlerContext getContextOrDie(Class<? extends ChannelHandler> handlerType) {
        AbstractChannelHandlerContext ctx = (AbstractChannelHandlerContext) context(handlerType);
        if (ctx == null) {
            throw new NoSuchElementException(handlerType.getName());
        }
        return ctx;
    }

    /* loaded from: classes.dex */
    static final class TailContext extends AbstractChannelHandlerContext implements ChannelInboundHandler {
        private static final String TAIL_NAME = DefaultChannelPipeline.generateName0(TailContext.class);

        TailContext(DefaultChannelPipeline pipeline) {
            super(pipeline, null, TAIL_NAME, true, false);
        }

        @Override // io.netty.channel.ChannelHandlerContext
        public ChannelHandler handler() {
            return this;
        }

        @Override // io.netty.channel.ChannelInboundHandler
        public void channelRegistered(ChannelHandlerContext ctx) throws Exception {
        }

        @Override // io.netty.channel.ChannelInboundHandler
        public void channelUnregistered(ChannelHandlerContext ctx) throws Exception {
        }

        @Override // io.netty.channel.ChannelInboundHandler
        public void channelActive(ChannelHandlerContext ctx) throws Exception {
        }

        @Override // io.netty.channel.ChannelInboundHandler
        public void channelInactive(ChannelHandlerContext ctx) throws Exception {
        }

        @Override // io.netty.channel.ChannelInboundHandler
        public void channelWritabilityChanged(ChannelHandlerContext ctx) throws Exception {
        }

        @Override // io.netty.channel.ChannelHandler
        public void handlerAdded(ChannelHandlerContext ctx) throws Exception {
        }

        @Override // io.netty.channel.ChannelHandler
        public void handlerRemoved(ChannelHandlerContext ctx) throws Exception {
        }

        @Override // io.netty.channel.ChannelInboundHandler
        public void userEventTriggered(ChannelHandlerContext ctx, Object evt) throws Exception {
        }

        @Override // io.netty.channel.ChannelInboundHandler
        public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause) throws Exception {
            DefaultChannelPipeline.logger.warn("An exceptionCaught() event was fired, and it reached at the tail of the pipeline. It usually means the last handler in the pipeline did not handle the exception.", cause);
        }

        @Override // io.netty.channel.ChannelInboundHandler
        public void channelRead(ChannelHandlerContext ctx, Object msg) throws Exception {
            try {
                DefaultChannelPipeline.logger.debug("Discarded inbound message {} that reached at the tail of the pipeline. Please check your pipeline configuration.", msg);
            } finally {
                ReferenceCountUtil.release(msg);
            }
        }

        @Override // io.netty.channel.ChannelInboundHandler
        public void channelReadComplete(ChannelHandlerContext ctx) throws Exception {
        }
    }

    /* loaded from: classes.dex */
    static final class HeadContext extends AbstractChannelHandlerContext implements ChannelOutboundHandler {
        private static final String HEAD_NAME = DefaultChannelPipeline.generateName0(HeadContext.class);
        protected final Channel.Unsafe unsafe;

        HeadContext(DefaultChannelPipeline pipeline) {
            super(pipeline, null, HEAD_NAME, false, true);
            this.unsafe = pipeline.channel().unsafe();
        }

        @Override // io.netty.channel.ChannelHandlerContext
        public ChannelHandler handler() {
            return this;
        }

        @Override // io.netty.channel.ChannelHandler
        public void handlerAdded(ChannelHandlerContext ctx) throws Exception {
        }

        @Override // io.netty.channel.ChannelHandler
        public void handlerRemoved(ChannelHandlerContext ctx) throws Exception {
        }

        @Override // io.netty.channel.ChannelOutboundHandler
        public void bind(ChannelHandlerContext ctx, SocketAddress localAddress, ChannelPromise promise) throws Exception {
            this.unsafe.bind(localAddress, promise);
        }

        @Override // io.netty.channel.ChannelOutboundHandler
        public void connect(ChannelHandlerContext ctx, SocketAddress remoteAddress, SocketAddress localAddress, ChannelPromise promise) throws Exception {
            this.unsafe.connect(remoteAddress, localAddress, promise);
        }

        @Override // io.netty.channel.ChannelOutboundHandler
        public void disconnect(ChannelHandlerContext ctx, ChannelPromise promise) throws Exception {
            this.unsafe.disconnect(promise);
        }

        @Override // io.netty.channel.ChannelOutboundHandler
        public void close(ChannelHandlerContext ctx, ChannelPromise promise) throws Exception {
            this.unsafe.close(promise);
        }

        @Override // io.netty.channel.ChannelOutboundHandler
        public void deregister(ChannelHandlerContext ctx, ChannelPromise promise) throws Exception {
            this.unsafe.deregister(promise);
        }

        @Override // io.netty.channel.ChannelOutboundHandler
        public void read(ChannelHandlerContext ctx) {
            this.unsafe.beginRead();
        }

        @Override // io.netty.channel.ChannelOutboundHandler
        public void write(ChannelHandlerContext ctx, Object msg, ChannelPromise promise) throws Exception {
            this.unsafe.write(msg, promise);
        }

        @Override // io.netty.channel.ChannelOutboundHandler
        public void flush(ChannelHandlerContext ctx) throws Exception {
            this.unsafe.flush();
        }

        @Override // io.netty.channel.ChannelHandler, io.netty.channel.ChannelInboundHandler
        public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause) throws Exception {
            ctx.fireExceptionCaught(cause);
        }
    }
}
