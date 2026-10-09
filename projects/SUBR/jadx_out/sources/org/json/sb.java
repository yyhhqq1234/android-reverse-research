package org.json;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\bf\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0003\n\u000b\fJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H&J\b\u0010\u0006\u001a\u00020\u0005H&J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00028\u0000H&¢\u0006\u0004\b\b\u0010\tø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\rÀ\u0006\u0001"}, d2 = {"Lcom/ironsource/sb;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "", "", "value", "", "size", "", "contains", "(Ljava/lang/Object;)Z", "a", "b", "c", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public interface sb<T> {

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u00028\u00010\u0002B7\u0012\u0016\u0010\f\u001a\u0012\u0012\u0004\u0012\u00028\u00010\nj\b\u0012\u0004\u0012\u00028\u0001`\u000b\u0012\u0016\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00028\u00010\nj\b\u0012\u0004\u0012\u00028\u0001`\u000b¢\u0006\u0004\b\u000f\u0010\u0010J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\u0016J\b\u0010\u0006\u001a\u00020\u0005H\u0016J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\b\u0010\tR$\u0010\f\u001a\u0012\u0012\u0004\u0012\u00028\u00010\nj\b\u0012\u0004\u0012\u00028\u0001`\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR$\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00028\u00010\nj\b\u0012\u0004\u0012\u00028\u0001`\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\r¨\u0006\u0011"}, d2 = {"Lcom/ironsource/sb$a;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Lcom/ironsource/sb;", "", "value", "", "size", "", "contains", "(Ljava/lang/Object;)Z", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "a", "Ljava/util/ArrayList;", "b", "<init>", "(Ljava/util/ArrayList;Ljava/util/ArrayList;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class a<T> implements sb<T> {
        private final ArrayList<T> a;
        private final ArrayList<T> b;

        public a(ArrayList<T> a, ArrayList<T> b) {
            Intrinsics.checkNotNullParameter(a, "a");
            Intrinsics.checkNotNullParameter(b, "b");
            this.a = a;
            this.b = b;
        }

        @Override // org.json.sb
        public boolean contains(T value) {
            return this.a.contains(value) || this.b.contains(value);
        }

        @Override // org.json.sb
        public int size() {
            return this.a.size() + this.b.size();
        }

        @Override // org.json.sb
        public List<T> value() {
            return CollectionsKt.plus((Collection) this.a, (Iterable) this.b);
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u00028\u00010\u0002B-\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00010\u0002\u0012\u0016\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00028\u00010\rj\b\u0012\u0004\u0012\u00028\u0001`\u000e¢\u0006\u0004\b\u0012\u0010\u0013J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\u0016J\b\u0010\u0006\u001a\u00020\u0005H\u0016J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\b\u0010\tR\u001a\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00010\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR$\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00028\u00010\rj\b\u0012\u0004\u0012\u00028\u0001`\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, d2 = {"Lcom/ironsource/sb$b;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Lcom/ironsource/sb;", "", "value", "", "size", "", "contains", "(Ljava/lang/Object;)Z", "a", "Lcom/ironsource/sb;", "collection", "Ljava/util/Comparator;", "Lkotlin/Comparator;", "b", "Ljava/util/Comparator;", "comparator", "<init>", "(Lcom/ironsource/sb;Ljava/util/Comparator;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class b<T> implements sb<T> {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata */
        private final sb<T> collection;

        /* JADX INFO: renamed from: b, reason: from kotlin metadata */
        private final Comparator<T> comparator;

        public b(sb<T> collection, Comparator<T> comparator) {
            Intrinsics.checkNotNullParameter(collection, "collection");
            Intrinsics.checkNotNullParameter(comparator, "comparator");
            this.collection = collection;
            this.comparator = comparator;
        }

        @Override // org.json.sb
        public boolean contains(T value) {
            return this.collection.contains(value);
        }

        @Override // org.json.sb
        public int size() {
            return this.collection.size();
        }

        @Override // org.json.sb
        public List<T> value() {
            return CollectionsKt.sortedWith(this.collection.value(), this.comparator);
        }
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\n\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u00028\u00010\u0002B\u001d\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00010\u0002\u0012\u0006\u0010\r\u001a\u00020\u0005¢\u0006\u0004\b\u0011\u0010\u0012J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\u0016J\b\u0010\u0006\u001a\u00020\u0005H\u0016J\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003J\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\n\u0010\u000bR\u0014\u0010\r\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\fR\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00010\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u000e¨\u0006\u0013"}, d2 = {"Lcom/ironsource/sb$c;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Lcom/ironsource/sb;", "", "value", "", "size", "b", "a", "", "contains", "(Ljava/lang/Object;)Z", "I", f4.i, "Ljava/util/List;", "origin", "collection", "<init>", "(Lcom/ironsource/sb;I)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class c<T> implements sb<T> {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata */
        private final int maxEventsPerBatch;

        /* JADX INFO: renamed from: b, reason: from kotlin metadata */
        private final List<T> origin;

        public c(sb<T> collection, int i) {
            Intrinsics.checkNotNullParameter(collection, "collection");
            this.maxEventsPerBatch = i;
            this.origin = collection.value();
        }

        public final List<T> a() {
            int size = this.origin.size();
            int i = this.maxEventsPerBatch;
            if (size <= i) {
                return CollectionsKt.emptyList();
            }
            List<T> list = this.origin;
            return list.subList(i, list.size());
        }

        public final List<T> b() {
            List<T> list = this.origin;
            return list.subList(0, RangesKt.coerceAtMost(list.size(), this.maxEventsPerBatch));
        }

        @Override // org.json.sb
        public boolean contains(T value) {
            return this.origin.contains(value);
        }

        @Override // org.json.sb
        public int size() {
            return this.origin.size();
        }

        @Override // org.json.sb
        public List<T> value() {
            return this.origin;
        }
    }

    boolean contains(T value);

    int size();

    List<T> value();
}
