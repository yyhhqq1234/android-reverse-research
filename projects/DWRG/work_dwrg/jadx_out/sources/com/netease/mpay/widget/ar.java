package com.netease.mpay.widget;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;

/* loaded from: classes.dex */
public class ar {
    PackageInfo a;

    /* loaded from: classes.dex */
    public enum a {
        FACEBOOK_APP_ID,
        GOOGLE_GMS_VERSION,
        GOOGLE_SERVICE_CLIENT_ID;

        a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        public String a() {
            switch (this) {
                case FACEBOOK_APP_ID:
                    return "com.facebook.sdk.ApplicationId";
                case GOOGLE_GMS_VERSION:
                    return "com.google.android.gms.version";
                case GOOGLE_SERVICE_CLIENT_ID:
                    return "com.netease.mpay.GOOGLE_SERVER_CLIENT_ID";
                default:
                    return "";
            }
        }
    }

    public ar(Context context) {
        this.a = null;
        try {
            this.a = context.getPackageManager().getPackageInfo(context.getPackageName(), 128);
        } catch (PackageManager.NameNotFoundException e) {
            Cdo.a((Throwable) e);
        } catch (NullPointerException e2) {
            Cdo.a((Throwable) e2);
        }
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0025 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0043 A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String a(com.netease.mpay.widget.ar.a r7) {
        /*
            r6 = this;
            r0 = 0
            r5 = -1
            android.content.pm.PackageInfo r1 = r6.a     // Catch: java.lang.NullPointerException -> L26 java.lang.Exception -> L2c
            android.content.pm.ApplicationInfo r1 = r1.applicationInfo     // Catch: java.lang.NullPointerException -> L26 java.lang.Exception -> L2c
            android.os.Bundle r1 = r1.metaData     // Catch: java.lang.NullPointerException -> L26 java.lang.Exception -> L2c
            java.lang.String r2 = r7.a()     // Catch: java.lang.NullPointerException -> L26 java.lang.Exception -> L2c
            java.lang.String r1 = r1.getString(r2)     // Catch: java.lang.NullPointerException -> L26 java.lang.Exception -> L2c
        L10:
            if (r1 != 0) goto L41
            android.content.pm.PackageInfo r2 = r6.a     // Catch: java.lang.NullPointerException -> L37 java.lang.Exception -> L3d
            android.content.pm.ApplicationInfo r2 = r2.applicationInfo     // Catch: java.lang.NullPointerException -> L37 java.lang.Exception -> L3d
            android.os.Bundle r2 = r2.metaData     // Catch: java.lang.NullPointerException -> L37 java.lang.Exception -> L3d
            java.lang.String r3 = r7.a()     // Catch: java.lang.NullPointerException -> L37 java.lang.Exception -> L3d
            r4 = -1
            int r2 = r2.getInt(r3, r4)     // Catch: java.lang.NullPointerException -> L37 java.lang.Exception -> L3d
            if (r5 != r2) goto L32
        L23:
            if (r0 == 0) goto L43
        L25:
            return r0
        L26:
            r1 = move-exception
            com.netease.mpay.Cdo.a(r1)
            r1 = r0
            goto L10
        L2c:
            r1 = move-exception
            com.netease.mpay.Cdo.a(r1)
            r1 = r0
            goto L10
        L32:
            java.lang.String r0 = java.lang.String.valueOf(r2)     // Catch: java.lang.NullPointerException -> L37 java.lang.Exception -> L3d
            goto L23
        L37:
            r0 = move-exception
            com.netease.mpay.Cdo.a(r0)
            r0 = r1
            goto L23
        L3d:
            r0 = move-exception
            com.netease.mpay.Cdo.a(r0)
        L41:
            r0 = r1
            goto L23
        L43:
            java.lang.String r0 = ""
            goto L25
        */
        throw new UnsupportedOperationException("Method not decompiled: com.netease.mpay.widget.ar.a(com.netease.mpay.widget.ar$a):java.lang.String");
    }

    public boolean b(a aVar) {
        return !TextUtils.isEmpty(a(aVar));
    }
}
