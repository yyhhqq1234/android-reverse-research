package io.netty.util;

import io.netty.util.internal.PlatformDependent;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes.dex */
public class DefaultAttributeMap implements AttributeMap {
    private static final int BUCKET_SIZE = 4;
    private static final int MASK = 3;
    private static final AtomicReferenceFieldUpdater<DefaultAttributeMap, AtomicReferenceArray> updater;
    private volatile AtomicReferenceArray<DefaultAttribute<?>> attributes;

    static {
        AtomicReferenceFieldUpdater<DefaultAttributeMap, AtomicReferenceArray> referenceFieldUpdater = PlatformDependent.newAtomicReferenceFieldUpdater(DefaultAttributeMap.class, "attributes");
        if (referenceFieldUpdater == null) {
            referenceFieldUpdater = AtomicReferenceFieldUpdater.newUpdater(DefaultAttributeMap.class, AtomicReferenceArray.class, "attributes");
        }
        updater = referenceFieldUpdater;
    }

    @Override // io.netty.util.AttributeMap
    public <T> Attribute<T> attr(AttributeKey<T> key) {
        DefaultAttribute<?> curr;
        if (key == null) {
            throw new NullPointerException("key");
        }
        AtomicReferenceArray<DefaultAttribute<?>> attributes = this.attributes;
        if (attributes == null) {
            attributes = new AtomicReferenceArray<>(4);
            if (!updater.compareAndSet(this, null, attributes)) {
                attributes = this.attributes;
            }
        }
        int i = index(key);
        DefaultAttribute<?> head = attributes.get(i);
        if (head == null) {
            DefaultAttribute<?> head2 = new DefaultAttribute<>(key);
            if (attributes.compareAndSet(i, null, head2)) {
                return head2;
            }
            head = attributes.get(i);
        }
        synchronized (head) {
            curr = head;
            while (true) {
                if (!((DefaultAttribute) curr).removed && ((DefaultAttribute) curr).key == key) {
                    break;
                }
                DefaultAttribute<?> next = ((DefaultAttribute) curr).next;
                if (next == null) {
                    DefaultAttribute<?> defaultAttribute = new DefaultAttribute<>(head, key);
                    ((DefaultAttribute) curr).next = defaultAttribute;
                    ((DefaultAttribute) defaultAttribute).prev = curr;
                    curr = defaultAttribute;
                    break;
                }
                curr = next;
            }
        }
        return curr;
    }

    private static int index(AttributeKey<?> key) {
        return key.id() & 3;
    }

    /* loaded from: classes.dex */
    private static final class DefaultAttribute<T> extends AtomicReference<T> implements Attribute<T> {
        private static final long serialVersionUID = -2661411462200283011L;
        private final DefaultAttribute<?> head;
        private final AttributeKey<T> key;
        private DefaultAttribute<?> next;
        private DefaultAttribute<?> prev;
        private volatile boolean removed;

        DefaultAttribute(DefaultAttribute<?> head, AttributeKey<T> key) {
            this.head = head;
            this.key = key;
        }

        /* JADX WARN: Multi-variable type inference failed */
        DefaultAttribute(AttributeKey<T> key) {
            this.head = this;
            this.key = key;
        }

        @Override // io.netty.util.Attribute
        public AttributeKey<T> key() {
            return this.key;
        }

        @Override // io.netty.util.Attribute
        public T setIfAbsent(T value) {
            while (!compareAndSet(null, value)) {
                T old = get();
                if (old != null) {
                    return old;
                }
            }
            return null;
        }

        @Override // io.netty.util.Attribute
        public T getAndRemove() {
            this.removed = true;
            T oldValue = getAndSet(null);
            remove0();
            return oldValue;
        }

        @Override // io.netty.util.Attribute
        public void remove() {
            this.removed = true;
            set(null);
            remove0();
        }

        private void remove0() {
            synchronized (this.head) {
                if (this.prev != null) {
                    this.prev.next = this.next;
                    if (this.next != null) {
                        this.next.prev = this.prev;
                    }
                }
            }
        }
    }
}
