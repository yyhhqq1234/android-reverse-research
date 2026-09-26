package io.netty.handler.codec;

import io.netty.util.Signal;

/* loaded from: classes.dex */
public class DecoderResult {
    private final Throwable cause;
    protected static final Signal SIGNAL_UNFINISHED = Signal.valueOf(String.valueOf(DecoderResult.class.getName()) + ".UNFINISHED");
    protected static final Signal SIGNAL_SUCCESS = Signal.valueOf(String.valueOf(DecoderResult.class.getName()) + ".SUCCESS");
    public static final DecoderResult UNFINISHED = new DecoderResult(SIGNAL_UNFINISHED);
    public static final DecoderResult SUCCESS = new DecoderResult(SIGNAL_SUCCESS);

    public static DecoderResult failure(Throwable cause) {
        if (cause == null) {
            throw new NullPointerException("cause");
        }
        return new DecoderResult(cause);
    }

    protected DecoderResult(Throwable cause) {
        if (cause == null) {
            throw new NullPointerException("cause");
        }
        this.cause = cause;
    }

    public boolean isFinished() {
        return this.cause != SIGNAL_UNFINISHED;
    }

    public boolean isSuccess() {
        return this.cause == SIGNAL_SUCCESS;
    }

    public boolean isFailure() {
        return (this.cause == SIGNAL_SUCCESS || this.cause == SIGNAL_UNFINISHED) ? false : true;
    }

    public Throwable cause() {
        if (isFailure()) {
            return this.cause;
        }
        return null;
    }

    public String toString() {
        if (isFinished()) {
            if (isSuccess()) {
                return "success";
            }
            String cause = cause().toString();
            StringBuilder buf = new StringBuilder(cause.length() + 17);
            buf.append("failure(");
            buf.append(cause);
            buf.append(')');
            return buf.toString();
        }
        return "unfinished";
    }
}
