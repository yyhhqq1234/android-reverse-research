package com.netease.mpay.e.c;

import android.content.Context;
import android.content.SharedPreferences;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;
import com.netease.mpay.e.b.af;
import com.netease.mpay.e.b.ag;
import com.netease.mpay.e.b.ai;
import com.netease.mpay.e.b.aj;
import com.netease.mpay.e.b.ak;
import com.netease.mpay.e.b.al;
import com.netease.mpay.widget.bc;
import com.netease.mpay.widget.bd;

/* loaded from: classes.dex */
public class b extends com.netease.mpay.e.c.a.e {
    public b(Context context, String str) {
        super(context, str);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private void a(ai aiVar) {
        Cdo.a("saveUrsUDIDStore", aiVar);
        byte[] b = b(aiVar.a());
        SharedPreferences.Editor edit = this.a.edit();
        edit.putInt("version", 1);
        edit.putString("urs_udid_store", bd.b(b));
        edit.commit();
    }

    private af d(String str) {
        byte[] a;
        af a2;
        byte[] a3 = bd.a(str);
        if (a3 != null && (a = a(a3)) != null && (a2 = af.a(a)) != null) {
            Cdo.a("loadConfing", a2);
            return a2;
        }
        return new af();
    }

    private com.netease.mpay.e.b.e e(String str) {
        byte[] a;
        com.netease.mpay.e.b.e a2;
        byte[] a3 = bd.a(str);
        if (a3 != null && (a = a(a3)) != null && (a2 = com.netease.mpay.e.b.e.a(a)) != null) {
            Cdo.a("loadCommonConfig", a2);
            return a2;
        }
        return new com.netease.mpay.e.b.e();
    }

    @NonNull
    private ai f(String str) {
        byte[] a;
        ai a2;
        byte[] a3 = bd.a(str);
        if (a3 != null && (a = a(a3)) != null && (a2 = ai.a(a)) != null) {
            Cdo.a("loadUrsUDIDStore", a2);
            return a2;
        }
        return new ai();
    }

    private aj g(String str) {
        byte[] a;
        aj a2;
        byte[] a3 = bd.a(str);
        if (a3 != null && (a = a(a3)) != null && (a2 = aj.a(a)) != null) {
            Cdo.a("loadUserCenter", a2);
            return a2;
        }
        return new aj();
    }

    private String h(String str) {
        return "user_center_config" + str;
    }

    private al i(String str) {
        byte[] a;
        al a2;
        byte[] a3 = bd.a(str);
        if (a3 != null && (a = a(a3)) != null && (a2 = al.a(a)) != null) {
            Cdo.a("loadUserCenterUpdates", a2);
            return a2;
        }
        return new al();
    }

    private ak j(String str) {
        byte[] a;
        ak a2;
        byte[] a3 = bd.a(str);
        if (a3 != null && (a = a(a3)) != null && (a2 = ak.a(a)) != null) {
            Cdo.a("loadUserCenterUpdate", a2);
            return a2;
        }
        return new ak();
    }

    public af a() {
        String string = this.a.getString("config", "");
        return (string == null || string.equals("")) ? new af() : d(string);
    }

    @Nullable
    public String a(Context context) {
        String string = this.a.getString("urs_udid_store", "");
        ai aiVar = TextUtils.isEmpty(string) ? new ai() : f(string);
        if (TextUtils.isEmpty(aiVar.a)) {
            aiVar.a = new bc().a(context);
            if (!TextUtils.isEmpty(aiVar.a)) {
                a(aiVar);
            }
        }
        return aiVar.a;
    }

    public void a(af afVar) {
        Cdo.a("saveConfig", afVar);
        byte[] b = b(afVar.a());
        SharedPreferences.Editor edit = this.a.edit();
        edit.putInt("version", 1);
        edit.putString("config", bd.b(b));
        edit.commit();
    }

    public void a(aj ajVar) {
        Cdo.a("saveUserCenter", ajVar);
        byte[] b = b(ajVar.a());
        SharedPreferences.Editor edit = this.a.edit();
        edit.putInt("version", 1);
        edit.putString("user_center_config", bd.b(b));
        edit.commit();
    }

    public void a(ak akVar) {
        Cdo.a("saveUserCenterUpdate", akVar);
        byte[] b = b(akVar.a());
        SharedPreferences.Editor edit = this.a.edit();
        edit.putInt("version", 1);
        edit.putString("user_center_update", bd.b(b));
        edit.commit();
    }

    public void a(com.netease.mpay.e.b.e eVar) {
        Cdo.a("saveCommonConfig", eVar);
        byte[] b = b(eVar.a());
        SharedPreferences.Editor edit = this.a.edit();
        edit.putInt("version", 1);
        edit.putString("commonConfig", bd.b(b));
        edit.commit();
    }

    public void a(String str) {
        Cdo.a("saveDomain", str);
        ag agVar = new ag();
        agVar.a = str;
        byte[] b = b(agVar.a());
        SharedPreferences.Editor edit = this.a.edit();
        edit.putInt("version", 1);
        edit.putString("server_domain", bd.b(b));
        edit.commit();
    }

    public void a(String str, al alVar) {
        Cdo.a("saveUserCenterUpdates", alVar);
        byte[] b = b(alVar.a());
        SharedPreferences.Editor edit = this.a.edit();
        edit.putInt("version", 1);
        edit.putString(h(str), bd.b(b));
        edit.commit();
    }

    public aj b(String str) {
        String string = this.a.getString("user_center_config", "");
        if (string == null || string.equals("")) {
            return null;
        }
        aj g = g(string);
        if (g == null || TextUtils.isEmpty(str) || !str.equals(g.a)) {
            return null;
        }
        return g;
    }

    public com.netease.mpay.e.b.e b() {
        String string = this.a.getString("commonConfig", "");
        return (string == null || string.equals("")) ? new com.netease.mpay.e.b.e() : e(string);
    }

    public al c(String str) {
        String string = this.a.getString(h(str), "");
        return (string == null || string.equals("")) ? new al() : i(string);
    }

    @Nullable
    public String c() {
        byte[] a;
        String string = this.a.getString("server_domain", "");
        if (TextUtils.isEmpty(string) || (a = bd.a(string)) == null) {
            return null;
        }
        byte[] a2 = a(a);
        ag a3 = a2 != null ? ag.a(a2) : null;
        Object[] objArr = new Object[1];
        objArr[0] = a3 != null ? a3 : "";
        Cdo.a("getDomain", objArr);
        if (a3 != null) {
            return a3.a;
        }
        return null;
    }

    public ak d() {
        String string = this.a.getString("user_center_update", "");
        return (string == null || string.equals("")) ? new ak() : j(string);
    }
}
