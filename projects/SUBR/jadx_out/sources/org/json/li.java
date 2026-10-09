package org.json;

import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: loaded from: classes3.dex */
public class li extends p7 {
    private static li R;
    private String P;
    private final zg Q = jl.P().k();

    private li() {
        this.H = "ironbeast";
        this.G = 2;
        this.I = IronSourceConstants.INTERSTITIAL_EVENT_TYPE;
        this.P = "";
    }

    public static synchronized li i() {
        if (R == null) {
            li liVar = new li();
            R = liVar;
            liVar.e();
        }
        return R;
    }

    @Override // org.json.p7
    protected int c(ob obVar) {
        zg zgVar;
        IronSource.AD_UNIT ad_unit;
        int iF = f(obVar.c());
        if (iF == p7.e.BANNER.a()) {
            zgVar = this.Q;
            ad_unit = IronSource.AD_UNIT.BANNER;
        } else if (iF == p7.e.NATIVE_AD.a()) {
            zgVar = this.Q;
            ad_unit = IronSource.AD_UNIT.NATIVE_AD;
        } else {
            zgVar = this.Q;
            ad_unit = IronSource.AD_UNIT.INTERSTITIAL;
        }
        return zgVar.a(ad_unit);
    }

    @Override // org.json.p7
    protected void d() {
        this.J.add(Integer.valueOf(IronSourceConstants.IS_LOAD_CALLED));
        this.J.add(2002);
        this.J.add(2003);
        this.J.add(Integer.valueOf(IronSourceConstants.IS_CALLBACK_LOAD_SUCCESS));
        this.J.add(2200);
        this.J.add(2213);
        this.J.add(2211);
        this.J.add(2212);
        this.J.add(3001);
        this.J.add(Integer.valueOf(IronSourceConstants.BN_CALLBACK_LOAD_ERROR));
        this.J.add(Integer.valueOf(IronSourceConstants.BN_RELOAD));
        this.J.add(Integer.valueOf(IronSourceConstants.BN_CALLBACK_RELOAD_ERROR));
        this.J.add(Integer.valueOf(IronSourceConstants.BN_CALLBACK_RELOAD_SUCCESS));
        this.J.add(3002);
        this.J.add(Integer.valueOf(IronSourceConstants.BN_INSTANCE_RELOAD));
        this.J.add(3005);
        this.J.add(3300);
        this.J.add(Integer.valueOf(IronSourceConstants.BN_INSTANCE_RELOAD_SUCCESS));
        this.J.add(Integer.valueOf(IronSourceConstants.BN_INSTANCE_RELOAD_ERROR));
        this.J.add(Integer.valueOf(IronSourceConstants.BN_INSTANCE_UNEXPECTED_LOAD_SUCCESS));
        this.J.add(Integer.valueOf(IronSourceConstants.BN_INSTANCE_UNEXPECTED_RELOAD_SUCCESS));
        this.J.add(3009);
        this.J.add(Integer.valueOf(IronSourceConstants.NT_LOAD));
        this.J.add(Integer.valueOf(IronSourceConstants.NT_CALLBACK_LOAD_ERROR));
        this.J.add(Integer.valueOf(IronSourceConstants.NT_INSTANCE_LOAD));
        this.J.add(Integer.valueOf(IronSourceConstants.NT_INSTANCE_LOAD_SUCCESS));
        this.J.add(Integer.valueOf(IronSourceConstants.NT_INSTANCE_LOAD_ERROR));
        this.J.add(Integer.valueOf(IronSourceConstants.NT_INSTANCE_SHOW));
    }

    @Override // org.json.p7
    protected boolean d(ob obVar) {
        int iC = obVar.c();
        return iC == 2004 || iC == 2005 || iC == 2204 || iC == 2301 || iC == 2300 || iC == 3009 || iC == 3502 || iC == 3501 || iC == 4005 || iC == 4009 || iC == 4502 || iC == 4501;
    }

    @Override // org.json.p7
    protected String e(int i) {
        return this.P;
    }

    @Override // org.json.p7
    protected void f(ob obVar) {
        this.P = obVar.b().optString("placement");
    }

    @Override // org.json.p7
    protected boolean j(ob obVar) {
        return false;
    }
}
