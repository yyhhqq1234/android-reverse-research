package io.netty.util.internal;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import sun.misc.Unsafe;

/* loaded from: classes.dex */
final class UnsafeAtomicReferenceFieldUpdater<U, M> extends AtomicReferenceFieldUpdater<U, M> {
    private final long offset;
    private final Unsafe unsafe;

    /* JADX INFO: Access modifiers changed from: package-private */
    public UnsafeAtomicReferenceFieldUpdater(Unsafe unsafe, Class<U> tClass, String fieldName) throws NoSuchFieldException {
        Field field = tClass.getDeclaredField(fieldName);
        if (!Modifier.isVolatile(field.getModifiers())) {
            throw new IllegalArgumentException("Must be volatile");
        }
        this.unsafe = unsafe;
        this.offset = unsafe.objectFieldOffset(field);
    }

    @Override // java.util.concurrent.atomic.AtomicReferenceFieldUpdater
    public boolean compareAndSet(U obj, M expect, M update) {
        return this.unsafe.compareAndSwapObject(obj, this.offset, expect, update);
    }

    @Override // java.util.concurrent.atomic.AtomicReferenceFieldUpdater
    public boolean weakCompareAndSet(U obj, M expect, M update) {
        return this.unsafe.compareAndSwapObject(obj, this.offset, expect, update);
    }

    @Override // java.util.concurrent.atomic.AtomicReferenceFieldUpdater
    public void set(U obj, M newValue) {
        this.unsafe.putObjectVolatile(obj, this.offset, newValue);
    }

    @Override // java.util.concurrent.atomic.AtomicReferenceFieldUpdater
    public void lazySet(U obj, M newValue) {
        this.unsafe.putOrderedObject(obj, this.offset, newValue);
    }

    @Override // java.util.concurrent.atomic.AtomicReferenceFieldUpdater
    public M get(U u) {
        return (M) this.unsafe.getObjectVolatile(u, this.offset);
    }
}
