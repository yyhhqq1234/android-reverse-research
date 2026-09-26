package com.netease.mpay.e.b;

import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.cloud.nos.android.constants.Code;
import com.netease.mpay.e.b.i;
import com.netease.mpay.server.response.d;
import com.netease.mpay.widget.bd;
import com.tencent.connect.common.Constants;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public class af {
    public long a = 0;
    public String b = "";
    public String c = "";
    public long d = 0;
    public boolean e = false;
    public boolean f = false;
    public boolean g = false;
    public boolean h = false;
    public String i = null;
    public boolean j = false;
    public i k = new i();
    public boolean m = false;
    public String n = null;
    public String o = null;
    public String p = null;
    public boolean q = false;
    public String r = null;
    public long l = -1;
    public boolean u = false;
    public boolean v = true;
    public boolean w = true;
    public boolean x = true;
    public boolean y = true;
    public int z = Code.UPLOADING_CANCEL;
    public int A = Code.UPLOADING_CANCEL;
    public boolean B = false;
    public int C = 200;
    public long D = 172800;
    public long E = 1209600;
    public boolean s = false;
    public String t = null;
    public boolean F = false;
    public String G = null;
    public long H = 0;

    public af() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static af a(byte[] bArr) {
        int i = Code.UPLOADING_CANCEL;
        try {
            HashMap a = com.netease.mpay.e.a.a((HashMap) com.netease.mpay.e.a.a(bArr), String.class, String.class);
            af afVar = new af();
            afVar.c = (String) a.remove("game_type_label");
            String str = (String) a.remove("0");
            afVar.m = str != null && str.equals("1");
            String str2 = (String) a.remove("support_game_mail");
            afVar.f = str2 != null && str2.equals("1");
            String str3 = (String) a.remove("support_deposits");
            afVar.g = str3 != null && str3.equals("1");
            String str4 = (String) a.remove("support_avatar");
            afVar.s = str4 != null && str4.equals("1");
            afVar.t = (String) a.remove("avatar_setting_url");
            String str5 = (String) a.remove("support_qrcode_login");
            afVar.h = str5 != null && str5.equals("1");
            afVar.i = (String) a.remove("disable_qrcode_login_reason");
            String str6 = (String) a.remove("36");
            afVar.j = str6 != null && str6.equals("1");
            String str7 = (String) a.remove("banners");
            if (!TextUtils.isEmpty(str7)) {
                afVar.k = i.a(bd.a(str7));
            }
            afVar.n = (String) a.remove("11");
            afVar.o = (String) a.remove(Constants.VIA_REPORT_TYPE_SET_AVATAR);
            afVar.p = (String) a.remove(Constants.VIA_REPORT_TYPE_JOININ_GROUP);
            String str8 = (String) a.remove("game_forum_native_enable");
            afVar.q = str8 != null && str8.equals("1");
            afVar.r = (String) a.remove("game_forum_pid");
            String str9 = (String) a.remove("game_mail_fetch_interval");
            if (str9 == null) {
                str9 = String.valueOf(-1L);
            }
            afVar.l = Long.valueOf(str9).longValue();
            String str10 = (String) a.remove("deposit_balance");
            afVar.u = str10 != null && str10.equals("1");
            String str11 = (String) a.remove("et");
            if (str11 == null) {
                str11 = "0";
            }
            afVar.a = Long.valueOf(str11).longValue();
            String str12 = (String) a.remove("37");
            afVar.v = (str12 == null || str12.equals("0")) ? false : true;
            String str13 = (String) a.remove("38");
            afVar.w = str13 == null || str13.equals("1");
            String str14 = (String) a.remove("enable_online_report");
            afVar.x = str14 == null || str14.equals("1");
            String str15 = (String) a.remove("enable_role_info_report");
            afVar.y = str15 == null || str15.equals("1");
            String str16 = (String) a.remove("upload_interval");
            afVar.z = str16 == null ? 600 : Integer.valueOf(str16).intValue();
            String str17 = (String) a.remove("upload_online_report_interval");
            if (str17 != null) {
                i = Integer.valueOf(str17).intValue();
            }
            afVar.A = i;
            String str18 = (String) a.remove("enable_friends");
            afVar.B = str18 != null && str18.equals("1");
            String str19 = (String) a.remove("batch_limit");
            afVar.C = str19 == null ? 200 : Integer.valueOf(str19).intValue();
            String str20 = (String) a.remove("resync_nonsdki_nterval");
            afVar.D = str20 == null ? 172800L : Long.valueOf(str20).longValue();
            String str21 = (String) a.remove("resync_all_interval");
            afVar.E = str21 == null ? 1209600L : Long.valueOf(str21).longValue();
            afVar.b = (String) a.remove("39");
            String str22 = (String) a.remove("common_config_version");
            afVar.d = str22 == null ? 0L : Long.valueOf(str22).longValue();
            String str23 = (String) a.remove("debug_mode");
            afVar.e = str23 != null && str23.equals("1");
            String str24 = (String) a.remove("enable_warning");
            afVar.F = str24 != null && str24.equals("1");
            afVar.G = (String) a.remove("warning_text");
            String str25 = (String) a.remove("device_upload_timestamp");
            afVar.H = str25 != null ? Long.valueOf(str25).longValue() : 0L;
            return afVar;
        } catch (ClassCastException e) {
            return null;
        }
    }

    public void a(com.netease.mpay.server.response.d dVar) {
        this.a = new Date().getTime() + (dVar.a * 1000);
        this.b = dVar.c;
        this.c = dVar.d;
        this.d = dVar.e;
        this.f = dVar.l;
        this.g = dVar.n;
        this.h = dVar.q;
        this.i = dVar.r;
        this.j = dVar.s;
        if (dVar.t != null) {
            Iterator it = dVar.t.iterator();
            while (it.hasNext()) {
                d.a aVar = (d.a) it.next();
                i.a aVar2 = new i.a();
                aVar2.a = aVar.a;
                aVar2.b = aVar.b;
                aVar2.d = this.a;
                this.k.b.add(aVar2);
            }
        }
        this.m = dVar.f;
        this.n = dVar.g;
        this.o = dVar.h;
        this.p = dVar.i;
        this.q = dVar.j;
        this.r = dVar.k;
        this.l = dVar.m;
        this.s = dVar.o;
        this.t = dVar.p;
        this.u = dVar.u;
        this.v = dVar.B;
        this.w = dVar.C;
        this.x = dVar.D;
        this.y = dVar.E;
        this.z = dVar.F;
        this.A = dVar.G;
        this.B = dVar.H;
        this.C = dVar.I;
        this.D = dVar.J;
        this.E = dVar.K;
        this.e = dVar.v;
        this.F = dVar.w;
        this.G = dVar.x;
        this.H = dVar.L;
    }

    public byte[] a() {
        HashMap hashMap = new HashMap();
        hashMap.put("game_type_label", this.c);
        hashMap.put("support_game_mail", this.f ? "1" : "0");
        hashMap.put("support_deposits", this.g ? "1" : "0");
        hashMap.put("support_avatar", this.s ? "1" : "0");
        hashMap.put("avatar_setting_url", this.t);
        hashMap.put("support_qrcode_login", this.h ? "1" : "0");
        hashMap.put("disable_qrcode_login_reason", this.i);
        hashMap.put("36", this.j ? "1" : "0");
        hashMap.put("banners", bd.b(this.k.a()));
        hashMap.put("0", this.m ? "1" : "0");
        hashMap.put("11", this.n);
        hashMap.put(Constants.VIA_REPORT_TYPE_SET_AVATAR, this.o);
        hashMap.put(Constants.VIA_REPORT_TYPE_JOININ_GROUP, this.p);
        hashMap.put("game_forum_native_enable", this.q ? "1" : "0");
        hashMap.put("game_forum_pid", this.r);
        hashMap.put("game_mail_fetch_interval", String.valueOf(this.l));
        hashMap.put("deposit_balance", this.u ? "1" : "0");
        hashMap.put("et", String.valueOf(this.a));
        hashMap.put("37", this.v ? "1" : "0");
        hashMap.put("38", this.w ? "1" : "0");
        hashMap.put("enable_online_report", this.x ? "1" : "0");
        hashMap.put("enable_role_info_report", this.y ? "1" : "0");
        hashMap.put("upload_interval", String.valueOf(this.z));
        hashMap.put("upload_online_report_interval", String.valueOf(this.A));
        hashMap.put("enable_friends", this.B ? "1" : "0");
        hashMap.put("batch_limit", String.valueOf(this.C));
        hashMap.put("resync_nonsdki_nterval", String.valueOf(this.D));
        hashMap.put("resync_all_interval", String.valueOf(this.E));
        hashMap.put("39", this.b);
        hashMap.put("common_config_version", String.valueOf(this.d));
        hashMap.put("debug_mode", this.e ? "1" : "0");
        hashMap.put("enable_warning", this.F ? "1" : "0");
        hashMap.put("warning_text", this.G);
        hashMap.put("device_upload_timestamp", String.valueOf(this.H));
        return com.netease.mpay.e.a.a(hashMap);
    }
}
