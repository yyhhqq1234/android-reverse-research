package org.json;

import androidx.core.app.NotificationCompat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0005\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0002J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0002J\u000e\u0010\u0006\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0004J\u0010\u0010\u0005\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0016R\u001a\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00040\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\f¨\u0006\u0010"}, d2 = {"Lcom/ironsource/e3;", "Lcom/ironsource/as;", "Lorg/json/JSONArray;", "", "Lcom/ironsource/d3;", "b", "a", NotificationCompat.CATEGORY_EVENT, "", "Lcom/ironsource/zr;", y8.a.s, "", "Ljava/util/List;", "records", "<init>", "()V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class e3 implements as<JSONArray> {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final List<d3> records = new ArrayList();

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[zr.values().length];
            try {
                iArr[zr.FullHistory.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[zr.CurrentlyLoadedAds.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
        }
    }

    private final List<d3> a() {
        List<d3> list = this.records;
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            d3 d3Var = (d3) next;
            if ((d3Var.getRecordType() == xr.LoadSuccess || d3Var.getRecordType() == xr.LoadRequest) ? false : true) {
                arrayList.add(next);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList2.add(((d3) it2.next()).getAdInstanceId());
        }
        Set set = CollectionsKt.toSet(arrayList2);
        List<d3> list2 = this.records;
        ArrayList arrayList3 = new ArrayList();
        for (Object obj : list2) {
            d3 d3Var2 = (d3) obj;
            if (d3Var2.getRecordType() == xr.LoadSuccess && !set.contains(d3Var2.getAdInstanceId())) {
                arrayList3.add(obj);
            }
        }
        return arrayList3;
    }

    private final List<d3> b() {
        List<d3> list = this.records;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((d3) obj).getRecordType() != xr.LoadRequest) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public final void a(d3 event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.records.add(event);
    }

    @Override // org.json.ae
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public JSONArray a(zr mode) {
        Intrinsics.checkNotNullParameter(mode, "mode");
        int i = a.a[mode.ordinal()];
        if (i == 1) {
            List<d3> listB = b();
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listB, 10));
            Iterator<T> it = listB.iterator();
            while (it.hasNext()) {
                arrayList.add(((d3) it.next()).d());
            }
            return new JSONArray((Collection) arrayList);
        }
        if (i != 2) {
            throw new NoWhenBranchMatchedException();
        }
        List<d3> listA = a();
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(listA, 10));
        Iterator<T> it2 = listA.iterator();
        while (it2.hasNext()) {
            arrayList2.add(((d3) it2.next()).c());
        }
        return new JSONArray((Collection) arrayList2);
    }
}
