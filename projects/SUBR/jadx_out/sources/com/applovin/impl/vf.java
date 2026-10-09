package com.applovin.impl;

import com.applovin.exoplayer2.common.base.Preconditions;
import com.applovin.exoplayer2.common.base.Supplier;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class vf {
    private vf() {
    }

    /* synthetic */ vf(uf ufVar) {
        this();
    }

    class a extends d {
        final /* synthetic */ Comparator a;

        @Override // com.applovin.impl.vf.d
        Map b() {
            return new TreeMap(this.a);
        }

        a(Comparator comparator) {
            this.a = comparator;
        }
    }

    public static d a(Comparator comparator) {
        Preconditions.checkNotNull(comparator);
        return new a(comparator);
    }

    public static d a() {
        return a(vg.a());
    }

    private static final class b implements Supplier, Serializable {
        private final int a;

        @Override // com.applovin.exoplayer2.common.base.Supplier
        public List get() {
            return new ArrayList(this.a);
        }

        b(int i) {
            this.a = p3.a(i, "expectedValuesPerKey");
        }
    }

    public static abstract class d {
        d() {
        }

        abstract Map b();

        public c a() {
            return a(2);
        }

        class a extends c {
            final /* synthetic */ int a;

            a(int i) {
                this.a = i;
            }

            @Override // com.applovin.impl.vf.c
            public ec b() {
                return wf.a(d.this.b(), new b(this.a));
            }
        }

        public c a(int i) {
            p3.a(i, "expectedValuesPerKey");
            return new a(i);
        }
    }

    public static abstract class c extends vf {
        public abstract ec b();

        c() {
            super(null);
        }
    }
}
