package com.netease.mpay.f;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Parcel;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.facebook.AccessToken;
import com.facebook.FacebookSdk;
import com.netease.mpay.f.au;
import com.netease.mpay.server.a;
import com.netease.mpay.widget.RIdentifier;

/* loaded from: classes.dex */
public class r extends au {
    private String j;
    private String k;
    private AccessToken l;

    /* loaded from: classes.dex */
    public static class a {
        private final String a;

        public a(Context context, String str) {
            this.a = String.format("facebookToken%s", str);
            if (!FacebookSdk.isInitialized()) {
                FacebookSdk.sdkInitialize(context.getApplicationContext());
            }
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        private static AccessToken a(String str) {
            byte[] a = com.netease.mpay.widget.y.a(str, 0);
            Parcel obtain = Parcel.obtain();
            obtain.unmarshall(a, 0, a.length);
            obtain.setDataPosition(0);
            AccessToken accessToken = (AccessToken) obtain.readValue(AccessToken.class.getClassLoader());
            obtain.recycle();
            return accessToken;
        }

        private static String b(AccessToken accessToken) {
            Parcel obtain = Parcel.obtain();
            obtain.writeValue(accessToken);
            byte[] marshall = obtain.marshall();
            obtain.recycle();
            return com.netease.mpay.widget.y.b(marshall, 0);
        }

        private static SharedPreferences c() {
            return FacebookSdk.getApplicationContext().getSharedPreferences("accessTokens", 0);
        }

        public AccessToken a() {
            String string = c().getString(this.a, null);
            if (string == null) {
                return null;
            }
            return a(string);
        }

        @SuppressLint({"NewApi"})
        public void a(AccessToken accessToken) {
            SharedPreferences.Editor edit = c().edit();
            edit.putString(this.a, b(accessToken));
            edit.apply();
        }

        @SuppressLint({"NewApi"})
        public void b() {
            SharedPreferences.Editor edit = c().edit();
            edit.remove(this.a);
            edit.apply();
        }
    }

    public r(Activity activity, String str, String str2, String str3, String str4, AccessToken accessToken, boolean z, au.a aVar) {
        super(activity, str, str2, z, false, aVar);
        this.e = str2;
        this.j = str3;
        this.k = str4;
        this.l = accessToken;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.au
    protected com.netease.mpay.server.response.m a(au.b bVar) {
        String token = this.l.getToken();
        if (TextUtils.isEmpty(token)) {
            throw new a.f(this.c.getString(RIdentifier.h.u));
        }
        com.netease.mpay.server.response.m mVar = this.b ? (com.netease.mpay.server.response.m) bVar.b.a(new com.netease.mpay.server.a.v(this.d, bVar.c.j, this.j, this.l.getToken(), bVar.d.c, bVar.d.d)) : (com.netease.mpay.server.response.m) bVar.b.a(new com.netease.mpay.server.a.s(this.d, bVar.c.j, this.j, token));
        new a(this.c, this.j).a(this.l);
        a(bVar, mVar, new com.netease.mpay.e.b.k(this.j, this.k, token, null), true);
        return mVar;
    }
}
