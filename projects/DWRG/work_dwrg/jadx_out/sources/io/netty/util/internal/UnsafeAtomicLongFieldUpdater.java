package io.netty.util.internal;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import sun.misc.Unsafe;

/* loaded from: classes.dex */
final class UnsafeAtomicLongFieldUpdater<T> extends AtomicLongFieldUpdater<T> {
    private final long offset;
    private final Unsafe unsafe;

    /* JADX INFO: Access modifiers changed from: package-private */
    public UnsafeAtomicLongFieldUpdater(Unsafe unsafe, Class<?> tClass, String fieldName) throws NoSuchFieldException {
        Field field = tClass.getDeclaredField(fieldName);
        if (!Modifier.isVolatile(field.getModifiers())) {
            throw new IllegalArgumentException("Must be volatile");
        }
        this.unsafe = unsafe;
        this.offset = unsafe.objectFieldOffset(field);
    }

    @Override // java.util.concurrent.atomic.AtomicLongFieldUpdater
    public boolean compareAndSet(T obj, long expect, long update) {
        return this.unsafe.compareAndSwapLong(obj, this.offset, expect, update);
    }

    @Override // java.util.concurrent.atomic.AtomicLongFieldUpdater
    public boolean weakCompareAndSet(T obj, long expect, long update) {
        return this.unsafe.compareAndSwapLong(obj, this.offset, expect, update);
    }

    @Override // java.util.concurrent.atomic.AtomicLongFieldUpdater
    public void set(T obj, long newValue) {
        this.unsafe.putLongVolatile(obj, this.offset, newValue);
    }

    @Override // java.util.concurrent.atomic.AtomicLongFieldUpdater
    public void lazySet(T obj, long newValue) {
        this.unsafe.putOrderedLong(obj, this.offset, newValue);
    }

    @Override // java.util.concurrent.atomic.AtomicLongFieldUpdater
    public long get(T obj) {
        return this.unsafe.getLongVolatile(obj, this.offset);
    }
}
