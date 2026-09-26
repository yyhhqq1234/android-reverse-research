package io.netty.util.internal;

import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class UnpaddedInternalThreadLocalMap {
    static final AtomicInteger nextIndex = new AtomicInteger();
    static ThreadLocal<InternalThreadLocalMap> slowThreadLocalMap;
    Map<Charset, CharsetDecoder> charsetDecoderCache;
    Map<Charset, CharsetEncoder> charsetEncoderCache;
    IntegerHolder counterHashCode;
    int futureListenerStackDepth;
    Map<Class<?>, Boolean> handlerSharableCache;
    Object[] indexedVariables;
    int localChannelReaderStackDepth;
    ThreadLocalRandom random;
    StringBuilder stringBuilder;
    Map<Class<?>, Map<String, TypeParameterMatcher>> typeParameterMatcherFindCache;
    Map<Class<?>, TypeParameterMatcher> typeParameterMatcherGetCache;

    /* JADX INFO: Access modifiers changed from: package-private */
    public UnpaddedInternalThreadLocalMap(Object[] indexedVariables) {
        this.indexedVariables = indexedVariables;
    }
}
