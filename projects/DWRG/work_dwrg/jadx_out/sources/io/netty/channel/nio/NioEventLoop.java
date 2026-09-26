package io.netty.channel.nio;

import io.netty.channel.ChannelException;
import io.netty.channel.EventLoopException;
import io.netty.channel.SingleThreadEventLoop;
import io.netty.channel.nio.AbstractNioChannel;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.SystemPropertyUtil;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.io.IOException;
import java.lang.reflect.Field;
import java.nio.channels.CancelledKeyException;
import java.nio.channels.SelectableChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.spi.SelectorProvider;
import java.util.ArrayList;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class NioEventLoop extends SingleThreadEventLoop {
    private static final int CLEANUP_INTERVAL = 256;
    private static final int MIN_PREMATURE_SELECTOR_RETURNS = 3;
    private static final int SELECTOR_AUTO_REBUILD_THRESHOLD;
    private int cancelledKeys;
    private volatile int ioRatio;
    private boolean needsToSelectAgain;
    private final SelectorProvider provider;
    private SelectedSelectionKeySet selectedKeys;
    Selector selector;
    private final AtomicBoolean wakenUp;
    private static final InternalLogger logger = InternalLoggerFactory.getInstance((Class<?>) NioEventLoop.class);
    private static final boolean DISABLE_KEYSET_OPTIMIZATION = SystemPropertyUtil.getBoolean("io.netty.noKeySetOptimization", false);

    static {
        try {
            String buglevel = SystemPropertyUtil.get("sun.nio.ch.bugLevel");
            if (buglevel == null) {
                System.setProperty("sun.nio.ch.bugLevel", "");
            }
        } catch (SecurityException e) {
            if (logger.isDebugEnabled()) {
                logger.debug("Unable to get/set System Property: {}", "sun.nio.ch.bugLevel", e);
            }
        }
        int selectorAutoRebuildThreshold = SystemPropertyUtil.getInt("io.netty.selectorAutoRebuildThreshold", 512);
        if (selectorAutoRebuildThreshold < 3) {
            selectorAutoRebuildThreshold = 0;
        }
        SELECTOR_AUTO_REBUILD_THRESHOLD = selectorAutoRebuildThreshold;
        if (logger.isDebugEnabled()) {
            logger.debug("-Dio.netty.noKeySetOptimization: {}", Boolean.valueOf(DISABLE_KEYSET_OPTIMIZATION));
            logger.debug("-Dio.netty.selectorAutoRebuildThreshold: {}", Integer.valueOf(SELECTOR_AUTO_REBUILD_THRESHOLD));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NioEventLoop(NioEventLoopGroup parent, ThreadFactory threadFactory, SelectorProvider selectorProvider) {
        super(parent, threadFactory, false);
        this.wakenUp = new AtomicBoolean();
        this.ioRatio = 50;
        if (selectorProvider == null) {
            throw new NullPointerException("selectorProvider");
        }
        this.provider = selectorProvider;
        this.selector = openSelector();
    }

    private Selector openSelector() {
        try {
            Selector selector = this.provider.openSelector();
            if (!DISABLE_KEYSET_OPTIMIZATION) {
                try {
                    SelectedSelectionKeySet selectedKeySet = new SelectedSelectionKeySet();
                    Class<?> selectorImplClass = Class.forName("sun.nio.ch.SelectorImpl", false, PlatformDependent.getSystemClassLoader());
                    if (selectorImplClass.isAssignableFrom(selector.getClass())) {
                        Field selectedKeysField = selectorImplClass.getDeclaredField("selectedKeys");
                        Field publicSelectedKeysField = selectorImplClass.getDeclaredField("publicSelectedKeys");
                        selectedKeysField.setAccessible(true);
                        publicSelectedKeysField.setAccessible(true);
                        selectedKeysField.set(selector, selectedKeySet);
                        publicSelectedKeysField.set(selector, selectedKeySet);
                        this.selectedKeys = selectedKeySet;
                        logger.trace("Instrumented an optimized java.util.Set into: {}", selector);
                    }
                } catch (Throwable t) {
                    this.selectedKeys = null;
                    logger.trace("Failed to instrument an optimized java.util.Set into: {}", selector, t);
                }
            }
            return selector;
        } catch (IOException e) {
            throw new ChannelException("failed to open a new selector", e);
        }
    }

    @Override // io.netty.util.concurrent.SingleThreadEventExecutor
    protected Queue<Runnable> newTaskQueue() {
        return PlatformDependent.newMpscQueue();
    }

    public void register(SelectableChannel ch, int interestOps, NioTask<?> task) {
        if (ch == null) {
            throw new NullPointerException("ch");
        }
        if (interestOps == 0) {
            throw new IllegalArgumentException("interestOps must be non-zero.");
        }
        if (((ch.validOps() ^ (-1)) & interestOps) != 0) {
            throw new IllegalArgumentException("invalid interestOps: " + interestOps + "(validOps: " + ch.validOps() + ')');
        }
        if (task == null) {
            throw new NullPointerException("task");
        }
        if (isShutdown()) {
            throw new IllegalStateException("event loop shut down");
        }
        try {
            ch.register(this.selector, interestOps, task);
        } catch (Exception e) {
            throw new EventLoopException("failed to register a channel", e);
        }
    }

    public int getIoRatio() {
        return this.ioRatio;
    }

    public void setIoRatio(int ioRatio) {
        if (ioRatio <= 0 || ioRatio > 100) {
            throw new IllegalArgumentException("ioRatio: " + ioRatio + " (expected: 0 < ioRatio <= 100)");
        }
        this.ioRatio = ioRatio;
    }

    public void rebuildSelector() {
        if (!inEventLoop()) {
            execute(new Runnable() { // from class: io.netty.channel.nio.NioEventLoop.1
                @Override // java.lang.Runnable
                public void run() {
                    NioEventLoop.this.rebuildSelector();
                }
            });
            return;
        }
        Selector oldSelector = this.selector;
        if (oldSelector != null) {
            try {
                Selector newSelector = openSelector();
                int nChannels = 0;
                loop0: while (true) {
                    try {
                        for (SelectionKey key : oldSelector.keys()) {
                            Object a = key.attachment();
                            try {
                                if (key.isValid() && key.channel().keyFor(newSelector) == null) {
                                    int interestOps = key.interestOps();
                                    key.cancel();
                                    SelectionKey newKey = key.channel().register(newSelector, interestOps, a);
                                    if (a instanceof AbstractNioChannel) {
                                        ((AbstractNioChannel) a).selectionKey = newKey;
                                    }
                                    nChannels++;
                                }
                            } catch (Exception e) {
                                logger.warn("Failed to re-register a Channel to the new Selector.", (Throwable) e);
                                if (a instanceof AbstractNioChannel) {
                                    AbstractNioChannel ch = (AbstractNioChannel) a;
                                    ch.unsafe().close(ch.unsafe().voidPromise());
                                } else {
                                    NioTask<SelectableChannel> task = (NioTask) a;
                                    invokeChannelUnregistered(task, key, e);
                                }
                            }
                        }
                        break loop0;
                    } catch (ConcurrentModificationException e2) {
                    }
                }
                this.selector = newSelector;
                try {
                    oldSelector.close();
                } catch (Throwable t) {
                    if (logger.isWarnEnabled()) {
                        logger.warn("Failed to close the old Selector.", t);
                    }
                }
                logger.info("Migrated " + nChannels + " channel(s) to the new Selector.");
            } catch (Exception e3) {
                logger.warn("Failed to create a new Selector.", (Throwable) e3);
            }
        }
    }

    @Override // io.netty.util.concurrent.SingleThreadEventExecutor
    protected void run() {
        while (true) {
            boolean oldWakenUp = this.wakenUp.getAndSet(false);
            try {
                if (hasTasks()) {
                    selectNow();
                } else {
                    select(oldWakenUp);
                    if (this.wakenUp.get()) {
                        this.selector.wakeup();
                    }
                }
                this.cancelledKeys = 0;
                this.needsToSelectAgain = false;
                int ioRatio = this.ioRatio;
                if (ioRatio == 100) {
                    processSelectedKeys();
                    runAllTasks();
                } else {
                    long ioStartTime = System.nanoTime();
                    processSelectedKeys();
                    long ioTime = System.nanoTime() - ioStartTime;
                    runAllTasks(((100 - ioRatio) * ioTime) / ioRatio);
                }
                if (isShuttingDown()) {
                    closeAll();
                    if (confirmShutdown()) {
                        return;
                    }
                } else {
                    continue;
                }
            } catch (Throwable t) {
                logger.warn("Unexpected exception in the selector loop.", t);
                try {
                    Thread.sleep(1000L);
                } catch (InterruptedException e) {
                }
            }
        }
    }

    private void processSelectedKeys() {
        if (this.selectedKeys != null) {
            processSelectedKeysOptimized(this.selectedKeys.flip());
        } else {
            processSelectedKeysPlain(this.selector.selectedKeys());
        }
    }

    @Override // io.netty.util.concurrent.SingleThreadEventExecutor
    protected void cleanup() {
        try {
            this.selector.close();
        } catch (IOException e) {
            logger.warn("Failed to close a selector.", (Throwable) e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void cancel(SelectionKey key) {
        key.cancel();
        this.cancelledKeys++;
        if (this.cancelledKeys >= 256) {
            this.cancelledKeys = 0;
            this.needsToSelectAgain = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.util.concurrent.SingleThreadEventExecutor
    public Runnable pollTask() {
        Runnable task = super.pollTask();
        if (this.needsToSelectAgain) {
            selectAgain();
        }
        return task;
    }

    private void processSelectedKeysPlain(Set<SelectionKey> selectedKeys) {
        if (!selectedKeys.isEmpty()) {
            Iterator<SelectionKey> i = selectedKeys.iterator();
            while (true) {
                SelectionKey k = i.next();
                Object a = k.attachment();
                i.remove();
                if (a instanceof AbstractNioChannel) {
                    processSelectedKey(k, (AbstractNioChannel) a);
                } else {
                    NioTask<SelectableChannel> task = (NioTask) a;
                    processSelectedKey(k, task);
                }
                if (i.hasNext()) {
                    if (this.needsToSelectAgain) {
                        selectAgain();
                        Set<SelectionKey> selectedKeys2 = this.selector.selectedKeys();
                        if (!selectedKeys2.isEmpty()) {
                            i = selectedKeys2.iterator();
                        } else {
                            return;
                        }
                    }
                } else {
                    return;
                }
            }
        }
    }

    private void processSelectedKeysOptimized(SelectionKey[] selectedKeys) {
        int i = 0;
        while (true) {
            SelectionKey k = selectedKeys[i];
            if (k != null) {
                selectedKeys[i] = null;
                Object a = k.attachment();
                if (a instanceof AbstractNioChannel) {
                    processSelectedKey(k, (AbstractNioChannel) a);
                } else {
                    NioTask<SelectableChannel> task = (NioTask) a;
                    processSelectedKey(k, task);
                }
                if (this.needsToSelectAgain) {
                    while (selectedKeys[i] != null) {
                        selectedKeys[i] = null;
                        i++;
                    }
                    selectAgain();
                    selectedKeys = this.selectedKeys.flip();
                    i = -1;
                }
                i++;
            } else {
                return;
            }
        }
    }

    private static void processSelectedKey(SelectionKey k, AbstractNioChannel ch) {
        AbstractNioChannel.NioUnsafe unsafe = ch.unsafe();
        if (!k.isValid()) {
            unsafe.close(unsafe.voidPromise());
            return;
        }
        try {
            int readyOps = k.readyOps();
            if ((readyOps & 17) != 0 || readyOps == 0) {
                unsafe.read();
                if (!ch.isOpen()) {
                    return;
                }
            }
            if ((readyOps & 4) != 0) {
                ch.unsafe().forceFlush();
            }
            if ((readyOps & 8) != 0) {
                int ops = k.interestOps();
                k.interestOps(ops & (-9));
                unsafe.finishConnect();
            }
        } catch (CancelledKeyException e) {
            unsafe.close(unsafe.voidPromise());
        }
    }

    private static void processSelectedKey(SelectionKey k, NioTask<SelectableChannel> task) {
        int state = 0;
        try {
            try {
                task.channelReady(k.channel(), k);
                switch (1) {
                    case 0:
                        k.cancel();
                        invokeChannelUnregistered(task, k, null);
                        return;
                    case 1:
                        if (k.isValid()) {
                            return;
                        }
                        invokeChannelUnregistered(task, k, null);
                        return;
                    default:
                        return;
                }
            } catch (Exception e) {
                k.cancel();
                invokeChannelUnregistered(task, k, e);
                switch (2) {
                    case 0:
                        k.cancel();
                        invokeChannelUnregistered(task, k, null);
                        return;
                    case 1:
                        if (k.isValid()) {
                            return;
                        }
                        invokeChannelUnregistered(task, k, null);
                        return;
                    default:
                        return;
                }
            }
        } catch (Throwable th) {
            switch (state) {
                case 0:
                    k.cancel();
                    invokeChannelUnregistered(task, k, null);
                    break;
                case 1:
                    if (!k.isValid()) {
                        invokeChannelUnregistered(task, k, null);
                        break;
                    }
                    break;
            }
            throw th;
        }
    }

    private void closeAll() {
        selectAgain();
        Set<SelectionKey> keys = this.selector.keys();
        Collection<AbstractNioChannel> channels = new ArrayList<>(keys.size());
        for (SelectionKey k : keys) {
            Object a = k.attachment();
            if (a instanceof AbstractNioChannel) {
                channels.add((AbstractNioChannel) a);
            } else {
                k.cancel();
                NioTask<SelectableChannel> task = (NioTask) a;
                invokeChannelUnregistered(task, k, null);
            }
        }
        for (AbstractNioChannel ch : channels) {
            ch.unsafe().close(ch.unsafe().voidPromise());
        }
    }

    private static void invokeChannelUnregistered(NioTask<SelectableChannel> task, SelectionKey k, Throwable cause) {
        try {
            task.channelUnregistered(k.channel(), cause);
        } catch (Exception e) {
            logger.warn("Unexpected exception while running NioTask.channelUnregistered()", (Throwable) e);
        }
    }

    @Override // io.netty.util.concurrent.SingleThreadEventExecutor
    protected void wakeup(boolean inEventLoop) {
        if (!inEventLoop && this.wakenUp.compareAndSet(false, true)) {
            this.selector.wakeup();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void selectNow() throws IOException {
        try {
            this.selector.selectNow();
        } finally {
            if (this.wakenUp.get()) {
                this.selector.wakeup();
            }
        }
    }

    private void select(boolean oldWakenUp) throws IOException {
        Selector selector = this.selector;
        int selectCnt = 0;
        try {
            long currentTimeNanos = System.nanoTime();
            long selectDeadLineNanos = currentTimeNanos + delayNanos(currentTimeNanos);
            while (true) {
                long timeoutMillis = ((selectDeadLineNanos - currentTimeNanos) + 500000) / 1000000;
                if (timeoutMillis <= 0) {
                    if (selectCnt == 0) {
                        selector.selectNow();
                        selectCnt = 1;
                    }
                } else {
                    int selectedKeys = selector.select(timeoutMillis);
                    selectCnt++;
                    if (selectedKeys != 0 || oldWakenUp || this.wakenUp.get() || hasTasks() || hasScheduledTasks()) {
                        break;
                    }
                    if (Thread.interrupted()) {
                        if (logger.isDebugEnabled()) {
                            logger.debug("Selector.select() returned prematurely because Thread.currentThread().interrupt() was called. Use NioEventLoop.shutdownGracefully() to shutdown the NioEventLoop.");
                        }
                        selectCnt = 1;
                    } else {
                        long time = System.nanoTime();
                        if (time - TimeUnit.MILLISECONDS.toNanos(timeoutMillis) >= currentTimeNanos) {
                            selectCnt = 1;
                        } else if (SELECTOR_AUTO_REBUILD_THRESHOLD > 0 && selectCnt >= SELECTOR_AUTO_REBUILD_THRESHOLD) {
                            logger.warn("Selector.select() returned prematurely {} times in a row; rebuilding selector.", Integer.valueOf(selectCnt));
                            rebuildSelector();
                            this.selector.selectNow();
                            selectCnt = 1;
                            break;
                        }
                        currentTimeNanos = time;
                    }
                }
            }
            if (selectCnt > 3 && logger.isDebugEnabled()) {
                logger.debug("Selector.select() returned prematurely {} times in a row.", Integer.valueOf(selectCnt - 1));
            }
        } catch (CancelledKeyException e) {
            if (logger.isDebugEnabled()) {
                logger.debug(String.valueOf(CancelledKeyException.class.getSimpleName()) + " raised by a Selector - JDK bug?", (Throwable) e);
            }
        }
    }

    private void selectAgain() {
        this.needsToSelectAgain = false;
        try {
            this.selector.selectNow();
        } catch (Throwable t) {
            logger.warn("Failed to update SelectionKeys.", t);
        }
    }
}
