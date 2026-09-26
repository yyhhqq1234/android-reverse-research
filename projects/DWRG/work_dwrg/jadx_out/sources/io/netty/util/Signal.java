package io.netty.util;

import io.netty.util.internal.PlatformDependent;
import java.util.concurrent.ConcurrentMap;

/* loaded from: classes.dex */
public final class Signal extends Error {
    private static final ConcurrentMap<String, Boolean> map = PlatformDependent.newConcurrentHashMap();
    private static final long serialVersionUID = -221145131122459977L;
    private final UniqueName uname;

    public static Signal valueOf(String name) {
        return new Signal(name);
    }

    @Deprecated
    public Signal(String name) {
        super(name);
        this.uname = new UniqueName(map, name, new Object[0]);
    }

    public void expect(Signal signal) {
        if (this != signal) {
            throw new IllegalStateException("unexpected signal: " + signal);
        }
    }

    @Override // java.lang.Throwable
    public Throwable initCause(Throwable cause) {
        return this;
    }

    @Override // java.lang.Throwable
    public Throwable fillInStackTrace() {
        return this;
    }

    @Override // java.lang.Throwable
    public String toString() {
        return this.uname.name();
    }
}
