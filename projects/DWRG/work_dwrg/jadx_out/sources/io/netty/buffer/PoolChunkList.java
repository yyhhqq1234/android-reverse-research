package io.netty.buffer;

import io.netty.handler.codec.http.HttpHeaders;
import io.netty.util.internal.StringUtil;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class PoolChunkList<T> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final PoolArena<T> arena;
    private PoolChunk<T> head;
    private final int maxUsage;
    private final int minUsage;
    private final PoolChunkList<T> nextList;
    PoolChunkList<T> prevList;

    static {
        $assertionsDisabled = !PoolChunkList.class.desiredAssertionStatus();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PoolChunkList(PoolArena<T> arena, PoolChunkList<T> nextList, int minUsage, int maxUsage) {
        this.arena = arena;
        this.nextList = nextList;
        this.minUsage = minUsage;
        this.maxUsage = maxUsage;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean allocate(PooledByteBuf<T> buf, int reqCapacity, int normCapacity) {
        if (this.head == null) {
            return false;
        }
        PoolChunk<T> cur = this.head;
        do {
            long handle = cur.allocate(normCapacity);
            if (handle < 0) {
                cur = cur.next;
            } else {
                cur.initBuf(buf, handle, reqCapacity);
                if (cur.usage() >= this.maxUsage) {
                    remove(cur);
                    this.nextList.add(cur);
                }
                return true;
            }
        } while (cur != null);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void free(PoolChunk<T> chunk, long handle) {
        chunk.free(handle);
        if (chunk.usage() < this.minUsage) {
            remove(chunk);
            if (this.prevList == null) {
                if (!$assertionsDisabled && chunk.usage() != 0) {
                    throw new AssertionError();
                }
                this.arena.destroyChunk(chunk);
                return;
            }
            this.prevList.add(chunk);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void add(PoolChunk<T> chunk) {
        if (chunk.usage() >= this.maxUsage) {
            this.nextList.add(chunk);
            return;
        }
        chunk.parent = this;
        if (this.head == null) {
            this.head = chunk;
            chunk.prev = null;
            chunk.next = null;
        } else {
            chunk.prev = null;
            chunk.next = this.head;
            this.head.prev = chunk;
            this.head = chunk;
        }
    }

    private void remove(PoolChunk<T> cur) {
        if (cur == this.head) {
            this.head = cur.next;
            if (this.head != null) {
                this.head.prev = null;
                return;
            }
            return;
        }
        PoolChunk<T> next = cur.next;
        cur.prev.next = next;
        if (next != null) {
            next.prev = cur.prev;
        }
    }

    public String toString() {
        if (this.head == null) {
            return HttpHeaders.Values.NONE;
        }
        StringBuilder buf = new StringBuilder();
        PoolChunk<T> cur = this.head;
        while (true) {
            buf.append(cur);
            cur = cur.next;
            if (cur != null) {
                buf.append(StringUtil.NEWLINE);
            } else {
                return buf.toString();
            }
        }
    }
}
