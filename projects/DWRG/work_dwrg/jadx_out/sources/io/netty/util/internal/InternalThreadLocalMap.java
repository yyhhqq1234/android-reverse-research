package io.netty.util.internal;

import io.netty.util.concurrent.FastThreadLocalThread;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.util.Arrays;
import java.util.IdentityHashMap;
import java.util.Map;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class InternalThreadLocalMap extends UnpaddedInternalThreadLocalMap {
    public static final Object UNSET = new Object();
    public long rp1;
    public long rp2;
    public long rp3;
    public long rp4;
    public long rp5;
    public long rp6;
    public long rp7;
    public long rp8;
    public long rp9;

    public static InternalThreadLocalMap getIfSet() {
        Thread thread = Thread.currentThread();
        if (thread instanceof FastThreadLocalThread) {
            InternalThreadLocalMap threadLocalMap = ((FastThreadLocalThread) thread).threadLocalMap();
            return threadLocalMap;
        }
        ThreadLocal<InternalThreadLocalMap> slowThreadLocalMap = UnpaddedInternalThreadLocalMap.slowThreadLocalMap;
        if (slowThreadLocalMap == null) {
            return null;
        }
        InternalThreadLocalMap threadLocalMap2 = slowThreadLocalMap.get();
        return threadLocalMap2;
    }

    public static InternalThreadLocalMap get() {
        Thread thread = Thread.currentThread();
        return thread instanceof FastThreadLocalThread ? fastGet((FastThreadLocalThread) thread) : slowGet();
    }

    private static InternalThreadLocalMap fastGet(FastThreadLocalThread thread) {
        InternalThreadLocalMap threadLocalMap = thread.threadLocalMap();
        if (threadLocalMap == null) {
            InternalThreadLocalMap threadLocalMap2 = new InternalThreadLocalMap();
            thread.setThreadLocalMap(threadLocalMap2);
            return threadLocalMap2;
        }
        return threadLocalMap;
    }

    private static InternalThreadLocalMap slowGet() {
        ThreadLocal<InternalThreadLocalMap> slowThreadLocalMap = UnpaddedInternalThreadLocalMap.slowThreadLocalMap;
        if (slowThreadLocalMap == null) {
            slowThreadLocalMap = new ThreadLocal<>();
            UnpaddedInternalThreadLocalMap.slowThreadLocalMap = slowThreadLocalMap;
        }
        InternalThreadLocalMap ret = slowThreadLocalMap.get();
        if (ret == null) {
            InternalThreadLocalMap ret2 = new InternalThreadLocalMap();
            slowThreadLocalMap.set(ret2);
            return ret2;
        }
        return ret;
    }

    public static void remove() {
        Thread thread = Thread.currentThread();
        if (thread instanceof FastThreadLocalThread) {
            ((FastThreadLocalThread) thread).setThreadLocalMap(null);
            return;
        }
        ThreadLocal<InternalThreadLocalMap> slowThreadLocalMap = UnpaddedInternalThreadLocalMap.slowThreadLocalMap;
        if (slowThreadLocalMap != null) {
            slowThreadLocalMap.remove();
        }
    }

    public static void destroy() {
        slowThreadLocalMap = null;
    }

    public static int nextVariableIndex() {
        int index = nextIndex.getAndIncrement();
        if (index < 0) {
            nextIndex.decrementAndGet();
            throw new IllegalStateException("too many thread-local indexed variables");
        }
        return index;
    }

    public static int lastVariableIndex() {
        return nextIndex.get() - 1;
    }

    private InternalThreadLocalMap() {
        super(newIndexedVariableTable());
    }

    private static Object[] newIndexedVariableTable() {
        Object[] array = new Object[32];
        Arrays.fill(array, UNSET);
        return array;
    }

    public int size() {
        int count = 0;
        if (this.futureListenerStackDepth != 0) {
            count = 0 + 1;
        }
        if (this.localChannelReaderStackDepth != 0) {
            count++;
        }
        if (this.handlerSharableCache != null) {
            count++;
        }
        if (this.counterHashCode != null) {
            count++;
        }
        if (this.random != null) {
            count++;
        }
        if (this.typeParameterMatcherGetCache != null) {
            count++;
        }
        if (this.typeParameterMatcherFindCache != null) {
            count++;
        }
        if (this.stringBuilder != null) {
            count++;
        }
        if (this.charsetEncoderCache != null) {
            count++;
        }
        if (this.charsetDecoderCache != null) {
            count++;
        }
        Object[] arr$ = this.indexedVariables;
        for (Object o : arr$) {
            if (o != UNSET) {
                count++;
            }
        }
        return count - 1;
    }

    public StringBuilder stringBuilder() {
        StringBuilder builder = this.stringBuilder;
        if (builder == null) {
            StringBuilder builder2 = new StringBuilder(512);
            this.stringBuilder = builder2;
            return builder2;
        }
        builder.setLength(0);
        return builder;
    }

    public Map<Charset, CharsetEncoder> charsetEncoderCache() {
        Map<Charset, CharsetEncoder> cache = this.charsetEncoderCache;
        if (cache == null) {
            Map<Charset, CharsetEncoder> cache2 = new IdentityHashMap<>();
            this.charsetEncoderCache = cache2;
            return cache2;
        }
        return cache;
    }

    public Map<Charset, CharsetDecoder> charsetDecoderCache() {
        Map<Charset, CharsetDecoder> cache = this.charsetDecoderCache;
        if (cache == null) {
            Map<Charset, CharsetDecoder> cache2 = new IdentityHashMap<>();
            this.charsetDecoderCache = cache2;
            return cache2;
        }
        return cache;
    }

    public int futureListenerStackDepth() {
        return this.futureListenerStackDepth;
    }

    public void setFutureListenerStackDepth(int futureListenerStackDepth) {
        this.futureListenerStackDepth = futureListenerStackDepth;
    }

    public ThreadLocalRandom random() {
        ThreadLocalRandom r = this.random;
        if (r == null) {
            ThreadLocalRandom r2 = new ThreadLocalRandom();
            this.random = r2;
            return r2;
        }
        return r;
    }

    public Map<Class<?>, TypeParameterMatcher> typeParameterMatcherGetCache() {
        Map<Class<?>, TypeParameterMatcher> cache = this.typeParameterMatcherGetCache;
        if (cache == null) {
            Map<Class<?>, TypeParameterMatcher> cache2 = new IdentityHashMap<>();
            this.typeParameterMatcherGetCache = cache2;
            return cache2;
        }
        return cache;
    }

    public Map<Class<?>, Map<String, TypeParameterMatcher>> typeParameterMatcherFindCache() {
        Map<Class<?>, Map<String, TypeParameterMatcher>> cache = this.typeParameterMatcherFindCache;
        if (cache == null) {
            Map<Class<?>, Map<String, TypeParameterMatcher>> cache2 = new IdentityHashMap<>();
            this.typeParameterMatcherFindCache = cache2;
            return cache2;
        }
        return cache;
    }

    public IntegerHolder counterHashCode() {
        return this.counterHashCode;
    }

    public void setCounterHashCode(IntegerHolder counterHashCode) {
        this.counterHashCode = counterHashCode;
    }

    public Map<Class<?>, Boolean> handlerSharableCache() {
        Map<Class<?>, Boolean> cache = this.handlerSharableCache;
        if (cache == null) {
            Map<Class<?>, Boolean> cache2 = new WeakHashMap<>(4);
            this.handlerSharableCache = cache2;
            return cache2;
        }
        return cache;
    }

    public int localChannelReaderStackDepth() {
        return this.localChannelReaderStackDepth;
    }

    public void setLocalChannelReaderStackDepth(int localChannelReaderStackDepth) {
        this.localChannelReaderStackDepth = localChannelReaderStackDepth;
    }

    public Object indexedVariable(int index) {
        Object[] lookup = this.indexedVariables;
        return index < lookup.length ? lookup[index] : UNSET;
    }

    public boolean setIndexedVariable(int index, Object value) {
        Object[] lookup = this.indexedVariables;
        if (index < lookup.length) {
            Object oldValue = lookup[index];
            lookup[index] = value;
            return oldValue == UNSET;
        }
        expandIndexedVariableTableAndSet(index, value);
        return true;
    }

    private void expandIndexedVariableTableAndSet(int index, Object value) {
        Object[] oldArray = this.indexedVariables;
        int oldCapacity = oldArray.length;
        int newCapacity = index | (index >>> 1);
        int newCapacity2 = newCapacity | (newCapacity >>> 2);
        int newCapacity3 = newCapacity2 | (newCapacity2 >>> 4);
        int newCapacity4 = newCapacity3 | (newCapacity3 >>> 8);
        Object[] newArray = Arrays.copyOf(oldArray, (newCapacity4 | (newCapacity4 >>> 16)) + 1);
        Arrays.fill(newArray, oldCapacity, newArray.length, UNSET);
        newArray[index] = value;
        this.indexedVariables = newArray;
    }

    public Object removeIndexedVariable(int index) {
        Object[] lookup = this.indexedVariables;
        if (index < lookup.length) {
            Object v = lookup[index];
            lookup[index] = UNSET;
            return v;
        }
        Object v2 = UNSET;
        return v2;
    }

    public boolean isIndexedVariableSet(int index) {
        Object[] lookup = this.indexedVariables;
        return index < lookup.length && lookup[index] != UNSET;
    }
}
