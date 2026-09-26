package io.netty.util;

import android.support.v4.widget.ExploreByTouchHelper;
import io.netty.util.concurrent.FastThreadLocal;
import io.netty.util.internal.SystemPropertyUtil;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public abstract class Recycler<T> {
    private static final int DEFAULT_MAX_CAPACITY;
    private static final FastThreadLocal<Map<Stack<?>, WeakOrderQueue>> DELAYED_RECYCLED;
    private static final int INITIAL_CAPACITY;
    private final int maxCapacity;
    private final FastThreadLocal<Stack<T>> threadLocal;
    private static final InternalLogger logger = InternalLoggerFactory.getInstance((Class<?>) Recycler.class);
    private static final AtomicInteger ID_GENERATOR = new AtomicInteger(ExploreByTouchHelper.INVALID_ID);
    private static final int OWN_THREAD_ID = ID_GENERATOR.getAndIncrement();

    /* loaded from: classes.dex */
    public interface Handle {
    }

    protected abstract T newObject(Handle handle);

    static {
        int maxCapacity = SystemPropertyUtil.getInt("io.netty.recycler.maxCapacity.default", 0);
        if (maxCapacity <= 0) {
            maxCapacity = 262144;
        }
        DEFAULT_MAX_CAPACITY = maxCapacity;
        if (logger.isDebugEnabled()) {
            logger.debug("-Dio.netty.recycler.maxCapacity.default: {}", Integer.valueOf(DEFAULT_MAX_CAPACITY));
        }
        INITIAL_CAPACITY = Math.min(DEFAULT_MAX_CAPACITY, 256);
        DELAYED_RECYCLED = new FastThreadLocal<Map<Stack<?>, WeakOrderQueue>>() { // from class: io.netty.util.Recycler.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // io.netty.util.concurrent.FastThreadLocal
            public Map<Stack<?>, WeakOrderQueue> initialValue() {
                return new WeakHashMap();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Recycler() {
        this(DEFAULT_MAX_CAPACITY);
    }

    protected Recycler(int maxCapacity) {
        this.threadLocal = new FastThreadLocal<Stack<T>>() { // from class: io.netty.util.Recycler.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // io.netty.util.concurrent.FastThreadLocal
            public Stack<T> initialValue() {
                return new Stack<>(Recycler.this, Thread.currentThread(), Recycler.this.maxCapacity);
            }
        };
        this.maxCapacity = Math.max(0, maxCapacity);
    }

    public final T get() {
        Stack<T> stack = this.threadLocal.get();
        DefaultHandle pop = stack.pop();
        if (pop == null) {
            pop = stack.newHandle();
            pop.value = newObject(pop);
        }
        return (T) pop.value;
    }

    public final boolean recycle(T o, Handle handle) {
        DefaultHandle h = (DefaultHandle) handle;
        if (h.stack.parent != this) {
            return false;
        }
        if (o != h.value) {
            throw new IllegalArgumentException("o does not belong to handle");
        }
        h.recycle();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class DefaultHandle implements Handle {
        private int lastRecycledId;
        private int recycleId;
        private Stack<?> stack;
        private Object value;

        DefaultHandle(Stack<?> stack) {
            this.stack = stack;
        }

        public void recycle() {
            Thread thread = Thread.currentThread();
            if (thread == this.stack.thread) {
                this.stack.push(this);
                return;
            }
            Map<Stack<?>, WeakOrderQueue> delayedRecycled = (Map) Recycler.DELAYED_RECYCLED.get();
            WeakOrderQueue queue = delayedRecycled.get(this.stack);
            if (queue == null) {
                Stack<?> stack = this.stack;
                queue = new WeakOrderQueue(this.stack, thread);
                delayedRecycled.put(stack, queue);
            }
            queue.add(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class WeakOrderQueue {
        private static final int LINK_CAPACITY = 16;
        private Link head;
        private final int id = Recycler.ID_GENERATOR.getAndIncrement();
        private WeakOrderQueue next;
        private final WeakReference<Thread> owner;
        private Link tail;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public static final class Link extends AtomicInteger {
            private final DefaultHandle[] elements;
            private Link next;
            private int readIndex;

            private Link() {
                this.elements = new DefaultHandle[16];
            }

            /* synthetic */ Link(Link link) {
                this();
            }
        }

        WeakOrderQueue(Stack<?> stack, Thread thread) {
            Link link = new Link(null);
            this.tail = link;
            this.head = link;
            this.owner = new WeakReference<>(thread);
            synchronized (stack) {
                this.next = ((Stack) stack).head;
                ((Stack) stack).head = this;
            }
        }

        void add(DefaultHandle handle) {
            Link link = null;
            handle.lastRecycledId = this.id;
            Link tail = this.tail;
            int writeIndex = tail.get();
            if (writeIndex == 16) {
                Link tail2 = new Link(link);
                tail.next = tail2;
                this.tail = tail2;
                writeIndex = tail2.get();
                tail = tail2;
            }
            tail.elements[writeIndex] = handle;
            handle.stack = null;
            tail.lazySet(writeIndex + 1);
        }

        boolean hasFinalData() {
            return this.tail.readIndex != this.tail.get();
        }

        boolean transfer(Stack<?> to) {
            Link head = this.head;
            if (head == null) {
                return false;
            }
            if (head.readIndex == 16) {
                if (head.next == null) {
                    return false;
                }
                head = head.next;
                this.head = head;
            }
            int start = head.readIndex;
            int end = head.get();
            if (start == end) {
                return false;
            }
            int count = end - start;
            if (((Stack) to).size + count > ((Stack) to).elements.length) {
                ((Stack) to).elements = (DefaultHandle[]) Arrays.copyOf(((Stack) to).elements, (((Stack) to).size + count) * 2);
            }
            DefaultHandle[] src = head.elements;
            DefaultHandle[] trg = ((Stack) to).elements;
            int size = ((Stack) to).size;
            int size2 = size;
            for (int start2 = start; start2 < end; start2++) {
                DefaultHandle element = src[start2];
                if (element.recycleId != 0) {
                    if (element.recycleId != element.lastRecycledId) {
                        throw new IllegalStateException("recycled already");
                    }
                } else {
                    element.recycleId = element.lastRecycledId;
                }
                element.stack = to;
                trg[size2] = element;
                src[start2] = null;
                size2++;
            }
            ((Stack) to).size = size2;
            if (end == 16 && head.next != null) {
                this.head = head.next;
            }
            head.readIndex = end;
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class Stack<T> {
        private WeakOrderQueue cursor;
        private DefaultHandle[] elements = new DefaultHandle[Recycler.INITIAL_CAPACITY];
        private volatile WeakOrderQueue head;
        private final int maxCapacity;
        final Recycler<T> parent;
        private WeakOrderQueue prev;
        private int size;
        final Thread thread;

        Stack(Recycler<T> parent, Thread thread, int maxCapacity) {
            this.parent = parent;
            this.thread = thread;
            this.maxCapacity = maxCapacity;
        }

        DefaultHandle pop() {
            int size = this.size;
            if (size == 0) {
                if (!scavenge()) {
                    return null;
                }
                size = this.size;
            }
            int size2 = size - 1;
            DefaultHandle ret = this.elements[size2];
            if (ret.lastRecycledId == ret.recycleId) {
                ret.recycleId = 0;
                ret.lastRecycledId = 0;
                this.size = size2;
                return ret;
            }
            throw new IllegalStateException("recycled multiple times");
        }

        boolean scavenge() {
            if (scavengeSome()) {
                return true;
            }
            this.prev = null;
            this.cursor = this.head;
            return false;
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x002c, code lost:
        
            if (r0.transfer(r5) != false) goto L25;
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x002e, code lost:
        
            if (r2 == null) goto L22;
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x0030, code lost:
        
            r2.next = r1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:8:0x0026, code lost:
        
            if (r0.hasFinalData() != false) goto L13;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        boolean scavengeSome() {
            /*
                r5 = this;
                r3 = 0
                io.netty.util.Recycler$WeakOrderQueue r0 = r5.cursor
                io.netty.util.Recycler$WeakOrderQueue r2 = r5.prev
            L5:
                if (r0 != 0) goto Lc
            L7:
                r5.prev = r2
                r5.cursor = r0
                return r3
            Lc:
                boolean r4 = r0.transfer(r5)
                if (r4 == 0) goto L14
                r3 = 1
                goto L7
            L14:
                io.netty.util.Recycler$WeakOrderQueue r1 = io.netty.util.Recycler.WeakOrderQueue.access$0(r0)
                java.lang.ref.WeakReference r4 = io.netty.util.Recycler.WeakOrderQueue.access$1(r0)
                java.lang.Object r4 = r4.get()
                if (r4 != 0) goto L35
                boolean r4 = r0.hasFinalData()
                if (r4 == 0) goto L2e
            L28:
                boolean r4 = r0.transfer(r5)
                if (r4 != 0) goto L28
            L2e:
                if (r2 == 0) goto L33
                io.netty.util.Recycler.WeakOrderQueue.access$2(r2, r1)
            L33:
                r0 = r1
                goto L5
            L35:
                r2 = r0
                goto L33
            */
            throw new UnsupportedOperationException("Method not decompiled: io.netty.util.Recycler.Stack.scavengeSome():boolean");
        }

        void push(DefaultHandle item) {
            if ((item.recycleId | item.lastRecycledId) == 0) {
                int i = Recycler.OWN_THREAD_ID;
                item.lastRecycledId = i;
                item.recycleId = i;
                int size = this.size;
                if (size == this.elements.length) {
                    if (size != this.maxCapacity) {
                        this.elements = (DefaultHandle[]) Arrays.copyOf(this.elements, size << 1);
                    } else {
                        return;
                    }
                }
                this.elements[size] = item;
                this.size = size + 1;
                return;
            }
            throw new IllegalStateException("recycled already");
        }

        DefaultHandle newHandle() {
            return new DefaultHandle(this);
        }
    }
}
