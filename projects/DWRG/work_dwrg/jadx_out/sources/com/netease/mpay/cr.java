package com.netease.mpay;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import com.dodola.rocoo.Hack;
import com.netease.forum.ForumApi;
import com.netease.forum.ForumApiCallback;
import com.netease.forum.ThemeConfig;
import com.netease.mpay.widget.RIdentifier;

/* loaded from: classes.dex */
public class cr {
    private ForumApi c;
    private Activity d;
    private String e;
    private String f;
    private com.netease.mpay.e.b.o g;
    private com.netease.mpay.e.b h;
    private final String a = "mpay_";
    private final String b = "mpay";
    private ForumApiCallback i = new cu(this);

    public cr(Activity activity, String str, String str2) {
        this.d = activity;
        this.e = str;
        this.f = str2;
        this.h = new com.netease.mpay.e.b(activity, this.e);
        this.g = this.h.c().b(this.f);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private void a(String str, boolean z) {
        ForumApi.init(this.d);
        this.c = new ForumApi(this.d, str, "mpay_" + str, "mpay");
        ThemeConfig createDefaultTheme = this.c.createDefaultTheme();
        createDefaultTheme.mActionBarTextColor = RIdentifier.c.l;
        createDefaultTheme.mButtonColor = RIdentifier.c.m;
        createDefaultTheme.mActionBarHeight = this.d.getResources().getDimensionPixelSize(RIdentifier.d.o);
        createDefaultTheme.mActionBarBackIcon = RIdentifier.e.p;
        createDefaultTheme.mActionBarBackIconSize = this.d.getResources().getDimensionPixelSize(RIdentifier.d.f);
        createDefaultTheme.mStatusBarColor = RIdentifier.c.n;
        this.c.setTheme(createDefaultTheme);
        this.c.setForumApiCallback(z ? new ct(this) : this.i);
    }

    public static boolean a(Context context) {
        if (Build.VERSION.SDK_INT < 9) {
            return false;
        }
        try {
            return Class.forName("com.netease.forum.ForumApi") != null;
        } catch (Exception e) {
            Cdo.a((Throwable) e);
            return false;
        }
    }

    public void a(String str, String str2) {
        boolean z = true;
        if (this.g != null && (7 == this.g.f || 1 == this.g.f)) {
            z = false;
        }
        if (this.c == null) {
            a(str, z);
        }
        if (z) {
            this.c.openGameForum((String) null);
        } else {
            new com.netease.mpay.f.ad(this.d, this.e, this.f, new cs(this)).c().h();
        }
    }
}
