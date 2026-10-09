package org.json;

import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: loaded from: classes3.dex */
public class vp extends p7 {
    private static vp R;
    private String P;
    private final zg Q = jl.P().k();

    private vp() {
        this.H = "outcome";
        this.G = 3;
        this.I = IronSourceConstants.REWARDED_VIDEO_EVENT_TYPE;
        this.P = "";
    }

    public static synchronized vp i() {
        if (R == null) {
            vp vpVar = new vp();
            R = vpVar;
            vpVar.e();
        }
        return R;
    }

    @Override // org.json.p7
    protected int c(ob obVar) {
        return this.Q.a(IronSource.AD_UNIT.REWARDED_VIDEO);
    }

    @Override // org.json.p7
    protected void d() {
        this.J.add(1000);
        this.J.add(1001);
        this.J.add(1002);
        this.J.add(1003);
        this.J.add(1200);
        this.J.add(Integer.valueOf(IronSourceConstants.RV_INSTANCE_SHOW_CHANCE));
        this.J.add(1210);
        this.J.add(1211);
        this.J.add(Integer.valueOf(IronSourceConstants.RV_INSTANCE_LOAD_FAILED_REASON));
        this.J.add(1213);
        this.J.add(Integer.valueOf(IronSourceConstants.RV_MEDIATION_LOAD_ERROR));
    }

    @Override // org.json.p7
    protected boolean d(ob obVar) {
        int iC = obVar.c();
        return iC == 14 || iC == 514 || iC == 515 || iC == 516 || iC == 1003 || iC == 1005 || iC == 1203 || iC == 1010 || iC == 1301 || iC == 1302;
    }

    @Override // org.json.p7
    protected String e(int i) {
        return (i == 15 || (i >= 300 && i < 400)) ? this.P : "";
    }

    @Override // org.json.p7
    protected void f(ob obVar) {
        if (obVar.c() == 15 || (obVar.c() >= 300 && obVar.c() < 400)) {
            this.P = obVar.b().optString("placement");
        }
    }

    @Override // org.json.p7
    protected boolean j(ob obVar) {
        return false;
    }
}
