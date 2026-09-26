package com.netease.mpay;

import android.app.Activity;
import android.os.Bundle;
import com.netease.mpay.widget.RIdentifier;

/* loaded from: classes.dex */
public class d {
    public static void a(Bundle bundle) {
        bundle.putBoolean("consts0", true);
        bundle.putString("const7", bk.g);
        bundle.putString("consts1", bk.h);
        bundle.putBoolean("consts2", bk.b.booleanValue());
        bundle.putBoolean("consts3", bk.c.booleanValue());
        bundle.putString("consts4", bk.i);
        bundle.putString("consts5", bk.j);
        bundle.putString("consts6", bk.k);
    }

    public static boolean a(Activity activity, Bundle bundle) {
        RIdentifier.init(activity);
        if (bundle == null) {
            return false;
        }
        String string = bundle.getString("const7");
        if (string == null) {
            string = bk.g;
        }
        bk.g = string;
        String string2 = bundle.getString("consts1");
        if (string2 == null) {
            string2 = bk.h;
        }
        bk.h = string2;
        bk.b = Boolean.valueOf(bundle.getBoolean("consts2", false));
        bk.c = Boolean.valueOf(bundle.getBoolean("consts3", false));
        String string3 = bundle.getString("consts4");
        if (string3 == null) {
            string3 = bk.i;
        }
        bk.i = string3;
        String string4 = bundle.getString("consts5");
        if (string4 == null) {
            string4 = bk.j;
        }
        bk.j = string4;
        String string5 = bundle.getString("consts6");
        if (string5 == null) {
            string5 = bk.k;
        }
        bk.k = string5;
        return true;
    }

    public static boolean b(Bundle bundle) {
        return bundle != null && bundle.getBoolean("consts0", false);
    }
}
