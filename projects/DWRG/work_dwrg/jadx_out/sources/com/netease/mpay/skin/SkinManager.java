package com.netease.mpay.skin;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import com.dodola.rocoo.Hack;
import com.netease.mpay.skin.g;
import com.netease.unisdk.gmbridge.utils.ResIdReader;

/* loaded from: classes.dex */
public class SkinManager {
    public static final String MPAY_SKINE_CHINESE_BLACK = "mpay-chinese-black.skin";
    public static final String MPAY_SKINE_CHINESE_WHITE = "mpay-chinese-white.skin";
    public static final String MPAY_SKIN_BLACK = "mpay-black.skin";
    public static final String MPAY_SKIN_DEFAULT = "mpay-white.skin";
    private static SkinManager b;
    private Context a;
    private g.a c;
    private g d;
    private String e = null;

    public SkinManager() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static synchronized SkinManager getInstance() {
        SkinManager skinManager;
        synchronized (SkinManager.class) {
            if (b == null) {
                b = new SkinManager();
            }
            skinManager = b;
        }
        return skinManager;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Drawable a(int i) {
        Drawable drawable = null;
        if (this.c != null && this.c.d != null && this.c.a != null) {
            int identifier = this.c.d.getIdentifier(this.a.getResources().getResourceEntryName(i), ResIdReader.RES_TYPE_DRAWABLE, this.c.a);
            try {
                drawable = Build.VERSION.SDK_INT < 22 ? this.c.d.getDrawable(identifier) : this.c.d.getDrawable(identifier, null);
            } catch (Resources.NotFoundException e) {
            }
        }
        return drawable;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b(int i) {
        if (this.c == null || this.c.d == null || this.c.a == null) {
            return this.a.getResources().getColor(i);
        }
        try {
            return this.c.d.getColor(this.c.d.getIdentifier(this.a.getResources().getResourceEntryName(i), ResIdReader.RES_TYPE_COLOR, this.c.a));
        } catch (Resources.NotFoundException e) {
            return this.a.getResources().getColor(i);
        }
    }

    public void loadSkin(Context context, String str) {
        this.a = context.getApplicationContext();
        if (this.e == null || str == null || !this.e.equals(str)) {
            this.e = str;
            this.d = new g(this.a, str);
            this.c = this.d.a();
        }
    }
}
