package com.netease.cloud.nos.android.exception;

/* loaded from: classes.dex */
public class InvalidChunkSizeException extends Exception {
    private static final long serialVersionUID = -9081338843636519886L;

    public InvalidChunkSizeException() {
    }

    public InvalidChunkSizeException(String message) {
        super(message);
    }

    public InvalidChunkSizeException(Throwable cause) {
        super(cause);
    }

    public InvalidChunkSizeException(String message, Throwable cause) {
        super(message, cause);
    }
}
