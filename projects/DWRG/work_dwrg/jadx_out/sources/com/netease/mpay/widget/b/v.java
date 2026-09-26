package com.netease.mpay.widget.b;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.net.Uri;
import android.os.Build;
import android.webkit.CookieManager;
import com.dodola.rocoo.Hack;
import java.lang.reflect.Field;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class v {
    private static final a a = new a(53, 0, 0, 0);
    private static final a b = new a(54, 0, 2840, 68);
    private static final a c = new a(54, 0, 2840, 85);
    private static final a d = new a(55, 0, 2883, 54);
    private static final Pattern e = Pattern.compile("^(\\d+)\\.(\\d+)\\.(\\d+)\\.(\\d+)$");
    private static final String[] f = {"com.google.android.webview", "com.android.chrome", "com.chrome.beta", "com.chrome.canary", "com.chrome.dev"};

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a implements Comparable {
        private int[] a;

        public a(int i, int i2, int i3, int i4) {
            this(new int[]{i, i2, i3, i4});
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        private a(int[] iArr) {
            this.a = iArr;
        }

        @Override // java.lang.Comparable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(a aVar) {
            for (int i = 0; i < 4; i++) {
                int i2 = this.a[i] - aVar.a[i];
                if (i2 != 0) {
                    return i2;
                }
            }
            return 0;
        }

        public boolean equals(Object obj) {
            if (obj instanceof a) {
                return Arrays.equals(this.a, ((a) obj).a);
            }
            return false;
        }

        public int hashCode() {
            return Arrays.hashCode(this.a);
        }
    }

    static {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static boolean a() {
        a c2 = c();
        if (c2 == null) {
            return false;
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        try {
            Date parse = simpleDateFormat.parse("2016-12-27");
            Date parse2 = simpleDateFormat.parse("2017-01-07");
            Date date = new Date();
            if (c2.compareTo(a) < 0) {
                return false;
            }
            if (c2.compareTo(b) < 0) {
                return true;
            }
            if (c2.compareTo(c) < 0) {
                return date.after(parse);
            }
            if (c2.compareTo(d) < 0) {
                return date.after(parse2);
            }
            return false;
        } catch (ParseException e2) {
            return false;
        }
    }

    public static boolean a(Context context) {
        Intent d2 = d();
        return (d2 == null || d2.resolveActivity(context.getPackageManager()) == null) ? false : true;
    }

    private static PackageInfo b() {
        try {
            if (Build.VERSION.SDK_INT < 21) {
                return null;
            }
            CookieManager.getInstance();
            Field declaredField = Class.forName("android.webkit.WebViewFactory").getDeclaredField("sPackageInfo");
            declaredField.setAccessible(true);
            return (PackageInfo) declaredField.get(null);
        } catch (Exception e2) {
            return null;
        }
    }

    public static boolean b(Context context) {
        Intent d2 = d();
        if (d2 == null) {
            return false;
        }
        try {
            context.startActivity(d2);
            return true;
        } catch (ActivityNotFoundException e2) {
            return false;
        }
    }

    private static a c() {
        PackageInfo b2 = b();
        if (b2 == null) {
            return null;
        }
        Matcher matcher = e.matcher(b2.versionName);
        if (matcher.matches()) {
            return new a(Integer.parseInt(matcher.group(1)), Integer.parseInt(matcher.group(2)), Integer.parseInt(matcher.group(3)), Integer.parseInt(matcher.group(4)));
        }
        return null;
    }

    private static Intent d() {
        PackageInfo b2 = b();
        if (b2 == null) {
            return null;
        }
        String str = b2.packageName;
        for (int i = 0; i < f.length; i++) {
            if (f[i].equals(str)) {
                return new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + str));
            }
        }
        return null;
    }
}
