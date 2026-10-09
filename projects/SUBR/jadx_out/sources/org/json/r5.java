package org.json;

import android.app.Activity;
import android.content.Context;
import org.json.mediationsdk.logger.IronLog;
import org.json.sdk.controller.v;

/* JADX INFO: loaded from: classes3.dex */
public class r5 {
    public static r5 a;

    static /* synthetic */ class a {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[dg.a.values().length];
            a = iArr;
            try {
                iArr[dg.a.None.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[dg.a.Device.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[dg.a.Controller.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static r5 a() {
        r5 r5Var = a;
        return r5Var == null ? new r5() : r5Var;
    }

    public boolean a(Activity activity) {
        if (a.a[fj.e().b().ordinal()] != 3) {
            return false;
        }
        try {
            v vVar = (v) si.a((Context) activity).a().j();
            if (vVar == null) {
                return true;
            }
            vVar.k("back");
            return true;
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
            return false;
        }
    }
}
