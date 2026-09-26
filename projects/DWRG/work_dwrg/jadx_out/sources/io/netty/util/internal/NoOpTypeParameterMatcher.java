package io.netty.util.internal;

/* loaded from: classes.dex */
public final class NoOpTypeParameterMatcher extends TypeParameterMatcher {
    @Override // io.netty.util.internal.TypeParameterMatcher
    public boolean match(Object msg) {
        return true;
    }
}
