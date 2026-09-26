package com.netease.mpay;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.net.Uri;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.RIdentifier;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class lo {
    private Activity a;
    private String b;
    private com.netease.mpay.widget.s c;

    public lo(Activity activity, String str) {
        this.a = activity;
        this.b = str;
        this.c = new com.netease.mpay.widget.s(activity);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private boolean a(ArrayList arrayList) {
        if (arrayList == null) {
            return true;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            try {
                this.a.getPackageManager().getApplicationInfo((String) it.next(), 128);
            } catch (PackageManager.NameNotFoundException e) {
                return false;
            }
        }
        return true;
    }

    private void b(String str) {
        try {
            if (!a(new com.netease.mpay.e.b(this.a, this.b).e().b().c)) {
                throw new ActivityNotFoundException();
            }
            this.a.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
        } catch (ActivityNotFoundException e) {
            Resources resources = this.a.getResources();
            this.c.a(resources.getString(RIdentifier.h.dY), resources.getString(RIdentifier.h.cn));
        }
    }

    private void c(String str) {
        try {
            this.a.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
        } catch (ActivityNotFoundException e) {
            Resources resources = this.a.getResources();
            this.c.a(resources.getString(RIdentifier.h.dW), resources.getString(RIdentifier.h.cn));
        }
    }

    public boolean a(String str) {
        if (str == null) {
            return true;
        }
        if (str.matches("uppay://.*")) {
            b(str);
            return true;
        }
        if (!str.matches("http(s)?://.+\\.apk")) {
            return false;
        }
        c(str);
        return true;
    }
}
