package org.json;

import android.util.Pair;
import java.util.ArrayList;
import org.json.mediationsdk.logger.IronLog;

/* JADX INFO: loaded from: classes3.dex */
public class yb implements Runnable {
    private static final String e = "Content-Type";
    private static final String f = "application/json";
    private te a;
    String b;
    String c;
    ArrayList<ob> d;

    public yb(te teVar, String str, String str2, ArrayList<ob> arrayList) {
        this.a = teVar;
        this.b = str;
        this.c = str2;
        this.d = arrayList;
    }

    @Override // java.lang.Runnable
    public void run() {
        te.a aVarA;
        te.a aVar = new te.a(this.d);
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new Pair("Content-Type", "application/json"));
            ap apVarB = sf.b(this.c, this.b, arrayList);
            aVarA = aVar.a(apVarB.a()).a(apVarB.a);
        } catch (Exception e2) {
            l9.d().a(e2);
            IronLog.INTERNAL.error("EventsSender failed to send events - " + e2.getLocalizedMessage());
            aVarA = aVar.a(e2 instanceof dn).a(e2);
        }
        te teVar = this.a;
        if (teVar != null) {
            teVar.a(aVarA);
        }
    }
}
