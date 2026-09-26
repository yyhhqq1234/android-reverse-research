package io.netty.util.internal;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Queue;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class MpscLinkedQueue<E> extends MpscLinkedQueueTailRef<E> implements Queue<E> {
    private static final long serialVersionUID = -1878402552271506449L;
    long p00;
    long p01;
    long p02;
    long p03;
    long p04;
    long p05;
    long p06;
    long p07;
    long p30;
    long p31;
    long p32;
    long p33;
    long p34;
    long p35;
    long p36;
    long p37;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MpscLinkedQueue() {
        MpscLinkedQueueNode<E> tombstone = new DefaultNode<>(null);
        setHeadRef(tombstone);
        setTailRef(tombstone);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MpscLinkedQueueNode<E> peekNode() {
        MpscLinkedQueueNode<E> head;
        do {
            head = headRef();
            MpscLinkedQueueNode<E> next = head.next();
            if (next != null) {
                return next;
            }
        } while (head != tailRef());
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Queue
    public boolean offer(E e) {
        MpscLinkedQueueNode<E> newTail;
        if (e == 0) {
            throw new NullPointerException("value");
        }
        if (e instanceof MpscLinkedQueueNode) {
            newTail = (MpscLinkedQueueNode) e;
            newTail.setNext(null);
        } else {
            newTail = new DefaultNode<>(e);
        }
        MpscLinkedQueueNode<E> oldTail = getAndSetTailRef(newTail);
        oldTail.setNext(newTail);
        return true;
    }

    @Override // java.util.Queue
    public E poll() {
        MpscLinkedQueueNode<E> next = peekNode();
        if (next == null) {
            return null;
        }
        MpscLinkedQueueNode<E> oldHead = headRef();
        lazySetHeadRef(next);
        oldHead.unlink();
        return next.clearMaybe();
    }

    @Override // java.util.Queue
    public E peek() {
        MpscLinkedQueueNode<E> next = peekNode();
        if (next == null) {
            return null;
        }
        return next.value();
    }

    @Override // java.util.Collection
    public int size() {
        int count = 0;
        for (MpscLinkedQueueNode<E> n = peekNode(); n != null; n = n.next()) {
            count++;
        }
        return count;
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return peekNode() == null;
    }

    @Override // java.util.Collection
    public boolean contains(Object o) {
        for (MpscLinkedQueueNode<E> n = peekNode(); n != null; n = n.next()) {
            if (n.value() == o) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return new Iterator<E>() { // from class: io.netty.util.internal.MpscLinkedQueue.1
            private MpscLinkedQueueNode<E> node;

            {
                this.node = MpscLinkedQueue.this.peekNode();
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.node != null;
            }

            @Override // java.util.Iterator
            public E next() {
                MpscLinkedQueueNode<E> node = this.node;
                if (node == null) {
                    throw new NoSuchElementException();
                }
                E value = node.value();
                this.node = node.next();
                return value;
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException();
            }
        };
    }

    @Override // java.util.Queue, java.util.Collection
    public boolean add(E e) {
        if (offer(e)) {
            return true;
        }
        throw new IllegalStateException("queue full");
    }

    @Override // java.util.Queue
    public E remove() {
        E e = poll();
        if (e != null) {
            return e;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Queue
    public E element() {
        E e = peek();
        if (e != null) {
            return e;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        Object[] array = new Object[size()];
        Iterator<E> it = iterator();
        for (int i = 0; i < array.length; i++) {
            if (it.hasNext()) {
                array[i] = it.next();
            } else {
                return Arrays.copyOf(array, i);
            }
        }
        return array;
    }

    @Override // java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        int size = size();
        Object[] objArr = tArr.length >= size ? tArr : (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), size));
        Iterator<E> it = iterator();
        for (int i = 0; i < objArr.length; i++) {
            if (it.hasNext()) {
                objArr[i] = it.next();
            } else {
                if (tArr == objArr) {
                    objArr[i] = null;
                    return (T[]) objArr;
                }
                if (tArr.length < i) {
                    return (T[]) Arrays.copyOf(objArr, i);
                }
                System.arraycopy(objArr, 0, tArr, 0, i);
                if (tArr.length > i) {
                    tArr[i] = null;
                }
                return tArr;
            }
        }
        return (T[]) objArr;
    }

    @Override // java.util.Collection
    public boolean remove(Object o) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection<?> c) {
        for (Object e : c) {
            if (!contains(e)) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends E> c) {
        if (c == null) {
            throw new NullPointerException("c");
        }
        if (c == this) {
            throw new IllegalArgumentException("c == this");
        }
        boolean modified = false;
        for (E e : c) {
            add(e);
            modified = true;
        }
        return modified;
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection<?> c) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection<?> c) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public void clear() {
        do {
        } while (poll() != null);
    }

    private void writeObject(ObjectOutputStream out) throws IOException {
        out.defaultWriteObject();
        Iterator i$ = iterator();
        while (i$.hasNext()) {
            E e = i$.next();
            out.writeObject(e);
        }
        out.writeObject(null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream in) throws IOException, ClassNotFoundException {
        in.defaultReadObject();
        DefaultNode defaultNode = new DefaultNode(null);
        setHeadRef(defaultNode);
        setTailRef(defaultNode);
        while (true) {
            Object readObject = in.readObject();
            if (readObject != null) {
                add(readObject);
            } else {
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class DefaultNode<T> extends MpscLinkedQueueNode<T> {
        private T value;

        DefaultNode(T value) {
            this.value = value;
        }

        @Override // io.netty.util.internal.MpscLinkedQueueNode
        public T value() {
            return this.value;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.netty.util.internal.MpscLinkedQueueNode
        public T clearMaybe() {
            T value = this.value;
            this.value = null;
            return value;
        }
    }
}
