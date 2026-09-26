package io.netty.channel.nio;

import java.nio.channels.SelectionKey;
import java.util.AbstractSet;
import java.util.Iterator;

/* loaded from: classes.dex */
final class SelectedSelectionKeySet extends AbstractSet<SelectionKey> {
    private int keysASize;
    private int keysBSize;
    private boolean isA = true;
    private SelectionKey[] keysA = new SelectionKey[1024];
    private SelectionKey[] keysB = (SelectionKey[]) this.keysA.clone();

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean add(SelectionKey o) {
        int size;
        if (o == null) {
            return false;
        }
        if (this.isA) {
            int size2 = this.keysASize;
            size = size2 + 1;
            this.keysA[size2] = o;
            this.keysASize = size;
            if (size == this.keysA.length) {
                doubleCapacityA();
                return true;
            }
        } else {
            int size3 = this.keysBSize;
            size = size3 + 1;
            this.keysB[size3] = o;
            this.keysBSize = size;
            if (size == this.keysB.length) {
                doubleCapacityB();
            }
        }
        return true;
    }

    private void doubleCapacityA() {
        SelectionKey[] newKeysA = new SelectionKey[this.keysA.length << 1];
        System.arraycopy(this.keysA, 0, newKeysA, 0, this.keysASize);
        this.keysA = newKeysA;
    }

    private void doubleCapacityB() {
        SelectionKey[] newKeysB = new SelectionKey[this.keysB.length << 1];
        System.arraycopy(this.keysB, 0, newKeysB, 0, this.keysBSize);
        this.keysB = newKeysB;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SelectionKey[] flip() {
        if (this.isA) {
            this.isA = false;
            this.keysA[this.keysASize] = null;
            this.keysBSize = 0;
            return this.keysA;
        }
        this.isA = true;
        this.keysB[this.keysBSize] = null;
        this.keysASize = 0;
        return this.keysB;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.isA ? this.keysASize : this.keysBSize;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object o) {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object o) {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<SelectionKey> iterator() {
        throw new UnsupportedOperationException();
    }
}
