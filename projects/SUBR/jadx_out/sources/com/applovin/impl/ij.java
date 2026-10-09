package com.applovin.impl;

/* JADX INFO: loaded from: classes.dex */
public interface ij {
    a b(long j);

    boolean b();

    long d();

    public static class b implements ij {
        private final long a;
        private final a b;

        @Override // com.applovin.impl.ij
        public boolean b() {
            return false;
        }

        public b(long j) {
            this(j, 0L);
        }

        @Override // com.applovin.impl.ij
        public long d() {
            return this.a;
        }

        @Override // com.applovin.impl.ij
        public a b(long j) {
            return this.b;
        }

        public b(long j, long j2) {
            this.a = j;
            this.b = new a(j2 == 0 ? kj.c : new kj(0L, j2));
        }
    }

    public static final class a {
        public final kj a;
        public final kj b;

        public a(kj kjVar) {
            this(kjVar, kjVar);
        }

        public String toString() {
            String str;
            StringBuilder sb = new StringBuilder(com.ironsource.y8.i.d);
            sb.append(this.a);
            if (this.a.equals(this.b)) {
                str = "";
            } else {
                str = ", " + this.b;
            }
            sb.append(str);
            sb.append(com.ironsource.y8.i.e);
            return sb.toString();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.a.equals(aVar.a) && this.b.equals(aVar.b);
        }

        public int hashCode() {
            return (this.a.hashCode() * 31) + this.b.hashCode();
        }

        public a(kj kjVar, kj kjVar2) {
            this.a = (kj) b1.a(kjVar);
            this.b = (kj) b1.a(kjVar2);
        }
    }
}
