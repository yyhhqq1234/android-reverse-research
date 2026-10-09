package org.json;

import android.content.Context;
import org.json.mediationsdk.logger.IronLog;
import org.json.sdk.controller.FeaturesManager;
import org.json.sdk.utils.Logger;

/* JADX INFO: loaded from: classes3.dex */
public class bv {
    private final String a;
    private Context b;
    private b9 c;
    private ma d;
    private int e;
    private va f;
    private int g;
    private int h;
    private final String i = "bv";
    private a j;

    protected enum a {
        NOT_RECOVERED,
        RECOVERED,
        IN_RECOVERING,
        NOT_ALLOWED
    }

    public bv(Context context, b9 b9Var, ma maVar, int i, va vaVar, String str) {
        a aVarH = h();
        this.j = aVarH;
        if (aVarH != a.NOT_ALLOWED) {
            this.b = context;
            this.c = b9Var;
            this.d = maVar;
            this.e = i;
            this.f = vaVar;
            this.g = 0;
        }
        this.a = str;
    }

    private a h() {
        this.h = FeaturesManager.getInstance().getInitRecoverTrials();
        Logger.i(this.i, "getInitialState mMaxAllowedTrials: " + this.h);
        if (this.h > 0) {
            return a.NOT_RECOVERED;
        }
        Logger.i(this.i, "recovery is not allowed by config");
        return a.NOT_ALLOWED;
    }

    private void j() {
        if (this.g != this.h) {
            this.j = a.NOT_RECOVERED;
            return;
        }
        Logger.i(this.i, "handleRecoveringEndedFailed | Reached max trials");
        this.j = a.NOT_ALLOWED;
        a();
    }

    private void k() {
        a();
        this.j = a.RECOVERED;
    }

    public void a() {
        this.b = null;
        this.c = null;
        this.d = null;
        this.f = null;
    }

    public void a(boolean z) {
        if (this.j != a.IN_RECOVERING) {
            return;
        }
        if (z) {
            k();
        } else {
            j();
        }
    }

    public boolean a(dg.c cVar, dg.b bVar) {
        Logger.i(this.i, "shouldRecoverWebController: ");
        a aVar = this.j;
        if (aVar == a.NOT_ALLOWED) {
            Logger.i(this.i, "shouldRecoverWebController: false | recover is not allowed");
            return false;
        }
        if (cVar != dg.c.Native) {
            Logger.i(this.i, "shouldRecoverWebController: false | current controller type is: " + cVar);
            return false;
        }
        if (bVar == dg.b.Loading || bVar == dg.b.None) {
            Logger.i(this.i, "shouldRecoverWebController: false | a Controller is currently loading");
            return false;
        }
        if (aVar == a.RECOVERED) {
            Logger.i(this.i, "shouldRecoverWebController: false | already recovered");
            return false;
        }
        if (aVar == a.IN_RECOVERING) {
            Logger.i(this.i, "shouldRecoverWebController: false | currently in recovering");
            return false;
        }
        if (this.b == null || this.c == null || this.d == null) {
            Logger.i(this.i, "shouldRecoverWebController: false | missing mandatory param");
            return false;
        }
        Logger.i(this.i, "shouldRecoverWebController: true | allow recovering ");
        return true;
    }

    public Context b() {
        return this.b;
    }

    public String c() {
        return this.a;
    }

    public b9 d() {
        return this.c;
    }

    public int e() {
        return this.e;
    }

    public ma f() {
        return this.d;
    }

    public va g() {
        return this.f;
    }

    public JSONObject i() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(y8.h.A0, m());
            jSONObject.put(y8.h.B0, this.g);
            jSONObject.put(y8.h.C0, this.h);
        } catch (JSONException e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
        return jSONObject;
    }

    public boolean l() {
        return this.j == a.IN_RECOVERING;
    }

    public boolean m() {
        return this.j == a.RECOVERED;
    }

    public void n() {
        a aVar = this.j;
        a aVar2 = a.IN_RECOVERING;
        if (aVar != aVar2) {
            this.g++;
            Logger.i(this.i, "recoveringStarted - trial number " + this.g);
            this.j = aVar2;
        }
    }
}
