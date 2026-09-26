package com.netease.mpay.e.c;

import android.content.Context;
import android.content.SharedPreferences;
import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;
import com.netease.mpay.widget.bd;

/* loaded from: classes.dex */
public class i extends com.netease.mpay.e.c.a.e {
    /* JADX INFO: Access modifiers changed from: protected */
    public i(Context context, String str) {
        super(context, str);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private com.netease.mpay.e.b.d a(String str) {
        byte[] a;
        com.netease.mpay.e.b.d a2;
        byte[] a3 = bd.a(str);
        if (a3 != null && (a = a(a3)) != null && (a2 = com.netease.mpay.e.b.d.a(a)) != null) {
            Cdo.a("loadIdentifier", a2);
            return a2;
        }
        return new com.netease.mpay.e.b.d();
    }

    private com.netease.mpay.e.b.l b(String str) {
        byte[] a;
        com.netease.mpay.e.b.l a2;
        byte[] a3 = bd.a(str);
        if (a3 != null && (a = a(a3)) != null && (a2 = com.netease.mpay.e.b.l.a(a)) != null) {
            Cdo.a("loadGuestGuideInfo", a2);
            return a2;
        }
        return new com.netease.mpay.e.b.l();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.netease.mpay.e.b.d a() {
        String string = this.a.getString("app", "");
        return (string == null || string.equals("")) ? new com.netease.mpay.e.b.d() : a(string);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(com.netease.mpay.e.b.d dVar) {
        Cdo.a("saveIdentifier", dVar);
        byte[] b = b(dVar.a());
        SharedPreferences.Editor edit = this.a.edit();
        edit.putInt("version", 1);
        edit.putString("app", bd.b(b));
        edit.commit();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(com.netease.mpay.e.b.l lVar) {
        Cdo.a("saveGuestGuideInfo", lVar);
        byte[] b = b(lVar.a());
        SharedPreferences.Editor edit = this.a.edit();
        edit.putInt("version", 1);
        edit.putString("guide", bd.b(b));
        edit.commit();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b() {
        Cdo.a("wipeIdentifier");
        SharedPreferences.Editor edit = this.a.edit();
        edit.remove("app");
        edit.commit();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c() {
        Cdo.a("wipeGuestGuideInfo");
        SharedPreferences.Editor edit = this.a.edit();
        edit.remove("guide");
        edit.commit();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.netease.mpay.e.b.l d() {
        String string = this.a.getString("guide", "");
        return (string == null || string.equals("")) ? new com.netease.mpay.e.b.l() : b(string);
    }
}
