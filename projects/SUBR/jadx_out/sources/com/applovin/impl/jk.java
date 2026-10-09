package com.applovin.impl;

import android.os.Parcel;
import android.os.Parcelable;
import com.applovin.exoplayer2.common.base.Objects;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class jk implements af.b {
    public static final Parcelable.Creator<jk> CREATOR = new a();
    public final List a;

    @Override // com.applovin.impl.af.b
    public /* synthetic */ void a(ud.b bVar) {
        af.b.CC.$default$a(this, bVar);
    }

    @Override // com.applovin.impl.af.b
    public /* synthetic */ byte[] a() {
        return af.b.CC.$default$a(this);
    }

    @Override // com.applovin.impl.af.b
    public /* synthetic */ e9 b() {
        return af.b.CC.$default$b(this);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "SlowMotion: segments=" + this.a;
    }

    public static final class b implements Parcelable {
        public final long a;
        public final long b;
        public final int c;
        public static final Comparator d = new Comparator() { // from class: com.applovin.impl.jk$b$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return jk.b.a((jk.b) obj, (jk.b) obj2);
            }
        };
        public static final Parcelable.Creator<b> CREATOR = new a();

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int a(b bVar, b bVar2) {
            return y3.e().a(bVar.a, bVar2.a).a(bVar.b, bVar2.b).a(bVar.c, bVar2.c).d();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public b(long j, long j2, int i) {
            b1.a(j < j2);
            this.a = j;
            this.b = j2;
            this.c = i;
        }

        public String toString() {
            return xp.a("Segment: startTimeMs=%d, endTimeMs=%d, speedDivisor=%d", Long.valueOf(this.a), Long.valueOf(this.b), Integer.valueOf(this.c));
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || b.class != obj.getClass()) {
                return false;
            }
            b bVar = (b) obj;
            return this.a == bVar.a && this.b == bVar.b && this.c == bVar.c;
        }

        public int hashCode() {
            return Objects.hashCode(Long.valueOf(this.a), Long.valueOf(this.b), Integer.valueOf(this.c));
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeLong(this.a);
            parcel.writeLong(this.b);
            parcel.writeInt(this.c);
        }

        class a implements Parcelable.Creator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public b createFromParcel(Parcel parcel) {
                return new b(parcel.readLong(), parcel.readLong(), parcel.readInt());
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public b[] newArray(int i) {
                return new b[i];
            }
        }
    }

    public jk(List list) {
        this.a = list;
        b1.a(!a(list));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || jk.class != obj.getClass()) {
            return false;
        }
        return this.a.equals(((jk) obj).a);
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeList(this.a);
    }

    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public jk createFromParcel(Parcel parcel) {
            ArrayList arrayList = new ArrayList();
            parcel.readList(arrayList, b.class.getClassLoader());
            return new jk(arrayList);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public jk[] newArray(int i) {
            return new jk[i];
        }
    }

    private static boolean a(List list) {
        if (list.isEmpty()) {
            return false;
        }
        long j = ((b) list.get(0)).b;
        for (int i = 1; i < list.size(); i++) {
            if (((b) list.get(i)).a < j) {
                return true;
            }
            j = ((b) list.get(i)).b;
        }
        return false;
    }
}
