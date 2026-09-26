package io.netty.channel;

/* loaded from: classes.dex */
public final class ChannelPromiseNotifier implements ChannelFutureListener {
    private final ChannelPromise[] promises;

    public ChannelPromiseNotifier(ChannelPromise... promises) {
        if (promises == null) {
            throw new NullPointerException("promises");
        }
        for (ChannelPromise promise : promises) {
            if (promise == null) {
                throw new IllegalArgumentException("promises contains null ChannelPromise");
            }
        }
        this.promises = (ChannelPromise[]) promises.clone();
    }

    @Override // io.netty.util.concurrent.GenericFutureListener
    public void operationComplete(ChannelFuture cf) throws Exception {
        int i = 0;
        if (cf.isSuccess()) {
            ChannelPromise[] channelPromiseArr = this.promises;
            int length = channelPromiseArr.length;
            while (i < length) {
                ChannelPromise p = channelPromiseArr[i];
                p.setSuccess();
                i++;
            }
            return;
        }
        Throwable cause = cf.cause();
        ChannelPromise[] channelPromiseArr2 = this.promises;
        int length2 = channelPromiseArr2.length;
        while (i < length2) {
            ChannelPromise p2 = channelPromiseArr2[i];
            p2.setFailure(cause);
            i++;
        }
    }
}
