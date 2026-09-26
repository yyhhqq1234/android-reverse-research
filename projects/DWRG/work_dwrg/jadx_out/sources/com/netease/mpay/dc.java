package com.netease.mpay;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import java.util.Locale;

/* loaded from: classes.dex */
public class dc {
    private int a;
    private String b;
    private String c;

    private dc() {
        this(1, "ZH", "CN");
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private dc(int i, String str, String str2) {
        this.a = i;
        this.b = str;
        this.c = str2;
    }

    public static dc a() {
        return a(-1);
    }

    public static dc a(int i) {
        switch (i) {
            case -1:
                return new dc(-1, null, null);
            case 0:
                return new dc(0, null, null);
            case 1:
            default:
                return new dc();
            case 2:
                return new dc(2, "ZH", "HK");
            case 3:
                return new dc(3, "ZH", "TW");
        }
    }

    private String a(String str, String str2) {
        return (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) ? TextUtils.isEmpty(str) ? !TextUtils.isEmpty(str2) ? str2 : "" : str : str + "-" + str2;
    }

    public void a(Context context) {
        if (context == null || -1 == this.a) {
            return;
        }
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        Resources resources = context.getResources();
        Configuration configuration = resources.getConfiguration();
        Locale locale = this.a == 0 ? new Locale(Locale.getDefault().getLanguage(), Locale.getDefault().getCountry()) : new Locale(this.b, this.c);
        if (Build.VERSION.SDK_INT > 17) {
            configuration.setLocale(locale);
        } else {
            configuration.locale = locale;
        }
        resources.updateConfiguration(configuration, resources.getDisplayMetrics());
    }

    public String b() {
        return this.a == 0 ? a(Locale.getDefault().getLanguage(), Locale.getDefault().getCountry()) : -1 == this.a ? "" : a(this.b, this.c);
    }
}
