package com.netease.mpay.server.response;

import com.dodola.rocoo.Hack;
import com.netease.mpay.server.response.ai;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class m extends ac {
    public String a;
    public String b;
    public int c;
    public String e;
    public String f;
    public String q;
    public String r;
    public String s;
    public long t;
    public Boolean u;
    public ai v;
    public ArrayList w;
    public String d = null;
    public boolean g = false;
    public int h = 0;
    public String i = null;
    public boolean j = true;
    public String k = null;
    public String l = null;
    public String m = null;
    public String n = null;
    public int o = -1;
    public String p = null;

    public m() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public void a(ai aiVar) {
        if (aiVar == null || aiVar.b() < 1) {
            return;
        }
        if (this.v == null) {
            this.v = aiVar;
            return;
        }
        if (aiVar.b(ai.a.VERIFY_SMS)) {
            this.v.a(ai.a.VERIFY_SMS);
        }
        if (aiVar.b(ai.a.SET_PASSWORD)) {
            this.v.a(ai.a.SET_PASSWORD);
        }
        if (aiVar.b(ai.a.SET_EMAIL)) {
            this.v.a(ai.a.SET_EMAIL);
        }
        if (aiVar.b(ai.a.SET_REAL_NAME)) {
            this.v.a(ai.a.SET_REAL_NAME);
        }
    }

    public boolean a() {
        return this.v != null && this.v.b(ai.a.VERIFY_SMS);
    }

    public boolean b() {
        return this.u.booleanValue() || (this.v != null && this.v.a());
    }

    public boolean c() {
        return (this.v == null || this.v.b() <= 0 || a() || b()) ? false : true;
    }

    public boolean d() {
        return this.u.booleanValue() || (this.v != null && this.v.b() > 0);
    }
}
