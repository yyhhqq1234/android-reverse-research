package io.netty.channel;

import io.netty.util.concurrent.Future;
import io.netty.util.concurrent.GenericFutureListener;
import java.util.LinkedHashSet;
import java.util.Set;

/* loaded from: classes.dex */
public final class ChannelPromiseAggregator implements ChannelFutureListener {
    private final ChannelPromise aggregatePromise;
    private Set<ChannelPromise> pendingPromises;

    public ChannelPromiseAggregator(ChannelPromise aggregatePromise) {
        if (aggregatePromise == null) {
            throw new NullPointerException("aggregatePromise");
        }
        this.aggregatePromise = aggregatePromise;
    }

    public ChannelPromiseAggregator add(ChannelPromise... promises) {
        int size;
        if (promises == null) {
            throw new NullPointerException("promises");
        }
        if (promises.length != 0) {
            synchronized (this) {
                if (this.pendingPromises == null) {
                    if (promises.length > 1) {
                        size = promises.length;
                    } else {
                        size = 2;
                    }
                    this.pendingPromises = new LinkedHashSet(size);
                }
                for (ChannelPromise p : promises) {
                    if (p != null) {
                        this.pendingPromises.add(p);
                        p.addListener((GenericFutureListener<? extends Future<? super Void>>) this);
                    }
                }
            }
        }
        return this;
    }

    @Override // io.netty.util.concurrent.GenericFutureListener
    public synchronized void operationComplete(ChannelFuture future) throws Exception {
        if (this.pendingPromises == null) {
            this.aggregatePromise.setSuccess();
        } else {
            this.pendingPromises.remove(future);
            if (!future.isSuccess()) {
                this.aggregatePromise.setFailure(future.cause());
                for (ChannelPromise pendingFuture : this.pendingPromises) {
                    pendingFuture.setFailure(future.cause());
                }
            } else if (this.pendingPromises.isEmpty()) {
                this.aggregatePromise.setSuccess();
            }
        }
    }
}
