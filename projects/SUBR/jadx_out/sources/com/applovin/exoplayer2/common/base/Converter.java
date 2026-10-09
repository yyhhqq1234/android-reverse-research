package com.applovin.exoplayer2.common.base;

import com.google.errorprone.annotations.concurrent.LazyInit;
import java.io.Serializable;
import java.util.Iterator;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: loaded from: classes.dex */
public abstract class Converter<A, B> implements Function<A, B> {
    private final boolean handleNullAutomatically;

    @LazyInit
    @MonotonicNonNullDecl
    private transient Converter<B, A> reverse;

    class a implements Iterable {
        final /* synthetic */ Iterable a;

        /* JADX INFO: renamed from: com.applovin.exoplayer2.common.base.Converter$a$a, reason: collision with other inner class name */
        class C0006a implements Iterator {
            private final Iterator a;

            C0006a() {
                this.a = a.this.a.iterator();
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.a.hasNext();
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Iterator
            public Object next() {
                return Converter.this.convert(this.a.next());
            }

            @Override // java.util.Iterator
            public void remove() {
                this.a.remove();
            }
        }

        a(Iterable iterable) {
            this.a = iterable;
        }

        @Override // java.lang.Iterable
        public Iterator iterator() {
            return new C0006a();
        }
    }

    private static final class b extends Converter implements Serializable {
        final Converter a;
        final Converter b;

        b(Converter converter, Converter converter2) {
            this.a = converter;
            this.b = converter2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.applovin.exoplayer2.common.base.Converter
        Object correctedDoBackward(Object obj) {
            return this.a.correctedDoBackward(this.b.correctedDoBackward(obj));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.applovin.exoplayer2.common.base.Converter
        Object correctedDoForward(Object obj) {
            return this.b.correctedDoForward(this.a.correctedDoForward(obj));
        }

        @Override // com.applovin.exoplayer2.common.base.Converter
        protected Object doBackward(Object obj) {
            throw new AssertionError();
        }

        @Override // com.applovin.exoplayer2.common.base.Converter
        protected Object doForward(Object obj) {
            throw new AssertionError();
        }

        @Override // com.applovin.exoplayer2.common.base.Converter, com.applovin.exoplayer2.common.base.Function
        public boolean equals(Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.a.equals(bVar.a) && this.b.equals(bVar.b);
        }

        public int hashCode() {
            return (this.a.hashCode() * 31) + this.b.hashCode();
        }

        public String toString() {
            return this.a + ".andThen(" + this.b + ")";
        }
    }

    private static final class c extends Converter implements Serializable {
        private final Function a;
        private final Function b;

        /* synthetic */ c(Function function, Function function2, a aVar) {
            this(function, function2);
        }

        @Override // com.applovin.exoplayer2.common.base.Converter
        protected Object doBackward(Object obj) {
            return this.b.apply(obj);
        }

        @Override // com.applovin.exoplayer2.common.base.Converter
        protected Object doForward(Object obj) {
            return this.a.apply(obj);
        }

        @Override // com.applovin.exoplayer2.common.base.Converter, com.applovin.exoplayer2.common.base.Function
        public boolean equals(Object obj) {
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.a.equals(cVar.a) && this.b.equals(cVar.b);
        }

        public int hashCode() {
            return (this.a.hashCode() * 31) + this.b.hashCode();
        }

        public String toString() {
            return "Converter.from(" + this.a + ", " + this.b + ")";
        }

        private c(Function function, Function function2) {
            this.a = (Function) Preconditions.checkNotNull(function);
            this.b = (Function) Preconditions.checkNotNull(function2);
        }
    }

    private static final class d extends Converter implements Serializable {
        static final d a = new d();

        private d() {
        }

        @Override // com.applovin.exoplayer2.common.base.Converter
        Converter doAndThen(Converter converter) {
            return (Converter) Preconditions.checkNotNull(converter, "otherConverter");
        }

        @Override // com.applovin.exoplayer2.common.base.Converter
        protected Object doBackward(Object obj) {
            return obj;
        }

        @Override // com.applovin.exoplayer2.common.base.Converter
        protected Object doForward(Object obj) {
            return obj;
        }

        @Override // com.applovin.exoplayer2.common.base.Converter
        public d reverse() {
            return this;
        }

        public String toString() {
            return "Converter.identity()";
        }
    }

    private static final class e extends Converter implements Serializable {
        final Converter a;

        e(Converter converter) {
            this.a = converter;
        }

        @Override // com.applovin.exoplayer2.common.base.Converter
        Object correctedDoBackward(Object obj) {
            return this.a.correctedDoForward(obj);
        }

        @Override // com.applovin.exoplayer2.common.base.Converter
        Object correctedDoForward(Object obj) {
            return this.a.correctedDoBackward(obj);
        }

        @Override // com.applovin.exoplayer2.common.base.Converter
        protected Object doBackward(Object obj) {
            throw new AssertionError();
        }

        @Override // com.applovin.exoplayer2.common.base.Converter
        protected Object doForward(Object obj) {
            throw new AssertionError();
        }

        @Override // com.applovin.exoplayer2.common.base.Converter, com.applovin.exoplayer2.common.base.Function
        public boolean equals(Object obj) {
            if (obj instanceof e) {
                return this.a.equals(((e) obj).a);
            }
            return false;
        }

        public int hashCode() {
            return ~this.a.hashCode();
        }

        @Override // com.applovin.exoplayer2.common.base.Converter
        public Converter reverse() {
            return this.a;
        }

        public String toString() {
            return this.a + ".reverse()";
        }
    }

    protected Converter() {
        this(true);
    }

    public static <A, B> Converter<A, B> from(Function<? super A, ? extends B> function, Function<? super B, ? extends A> function2) {
        return new c(function, function2, null);
    }

    public static <T> Converter<T, T> identity() {
        return d.a;
    }

    public final <C> Converter<A, C> andThen(Converter<B, C> converter) {
        return doAndThen(converter);
    }

    @Override // com.applovin.exoplayer2.common.base.Function
    @NullableDecl
    @Deprecated
    public final B apply(@NullableDecl A a2) {
        return convert(a2);
    }

    @NullableDecl
    public final B convert(@NullableDecl A a2) {
        return correctedDoForward(a2);
    }

    public Iterable<B> convertAll(Iterable<? extends A> iterable) {
        Preconditions.checkNotNull(iterable, "fromIterable");
        return new a(iterable);
    }

    @NullableDecl
    A correctedDoBackward(@NullableDecl B b2) {
        if (!this.handleNullAutomatically) {
            return doBackward(b2);
        }
        if (b2 == null) {
            return null;
        }
        return (A) Preconditions.checkNotNull(doBackward(b2));
    }

    @NullableDecl
    B correctedDoForward(@NullableDecl A a2) {
        if (!this.handleNullAutomatically) {
            return doForward(a2);
        }
        if (a2 == null) {
            return null;
        }
        return (B) Preconditions.checkNotNull(doForward(a2));
    }

    <C> Converter<A, C> doAndThen(Converter<B, C> converter) {
        return new b(this, (Converter) Preconditions.checkNotNull(converter));
    }

    protected abstract A doBackward(B b2);

    protected abstract B doForward(A a2);

    @Override // com.applovin.exoplayer2.common.base.Function
    public boolean equals(@NullableDecl Object obj) {
        return super.equals(obj);
    }

    public Converter<B, A> reverse() {
        Converter<B, A> converter = this.reverse;
        if (converter != null) {
            return converter;
        }
        e eVar = new e(this);
        this.reverse = eVar;
        return eVar;
    }

    Converter(boolean z) {
        this.handleNullAutomatically = z;
    }
}
