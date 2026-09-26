package com.netease.mpay.server.a;

import android.content.Context;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.cloud.nos.android.constants.Code;
import com.netease.mpay.server.response.d;
import com.netease.mpay.widget.RIdentifier;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class g extends ax {
    String a;

    public g(String str, String str2) {
        super(0, "/games/" + str + "/config");
        this.a = str2;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.server.a.ax
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.netease.mpay.server.response.d b(Context context, JSONObject jSONObject) {
        com.netease.mpay.server.response.d dVar = new com.netease.mpay.server.response.d();
        JSONObject a = a(a(jSONObject, "game"), "config");
        dVar.a = i(a, "expire_time");
        dVar.b = f(a, "server_domain");
        dVar.c = e(a, "game_alias");
        dVar.e = i(a, "common_config_version");
        Integer num = 1;
        Integer num2 = 2;
        dVar.v = num.intValue() == a(a, "app_mode", num2.intValue());
        dVar.d = a(a, "game_category_name", context.getString(RIdentifier.h.D));
        JSONObject a2 = a(a, "cv_info");
        JSONObject a3 = a(a, "updates");
        JSONObject a4 = a(a, "modules");
        JSONObject a5 = a(a, "payments");
        JSONObject a6 = a(a4, "forum");
        dVar.f = k(a6, "enabled");
        dVar.g = f(a6, "reason");
        dVar.i = f(a6, "title");
        dVar.h = f(a6, "url");
        dVar.j = l(a6, "native_enabled");
        dVar.k = f(a6, "pid");
        JSONObject a7 = a(a4, "mail");
        dVar.l = k(a7, "enabled");
        dVar.m = a(a7, "expire_time", -1L);
        dVar.n = k(a(a4, "deposit"), "enabled");
        JSONObject a8 = a(a4, "nickname_and_avatar");
        dVar.o = k(a8, "enabled");
        dVar.p = f(a8, "setting_url");
        JSONObject a9 = a(a4, "exit.popup");
        dVar.s = k(a9, "enabled");
        JSONArray c = c(a9, "banners");
        if (c != null) {
            dVar.t = new ArrayList();
            int length = c.length();
            for (int i = 0; i < length; i++) {
                JSONObject jSONObject2 = c.getJSONObject(i);
                d.a aVar = new d.a();
                aVar.a = e(jSONObject2, "game_url");
                aVar.b = e(jSONObject2, "pic_url");
                dVar.t.add(aVar);
            }
        }
        JSONObject a10 = a(a4, "login.qrcode");
        dVar.q = k(a10, "enabled");
        dVar.r = e(a10, "reason");
        JSONObject a11 = a(a4, "stats");
        dVar.B = l(a11, "enabled");
        dVar.C = a(a11, "wifi_only", true);
        dVar.D = a(a11, "online_report", true);
        dVar.E = a(a11, "role_info_report", true);
        dVar.F = h(a11, "upload_interval");
        dVar.G = a(a11, "online_report_upload_interval", Code.UPLOADING_CANCEL);
        JSONObject a12 = a(a4, "friends");
        dVar.H = l(a12, "enabled");
        dVar.I = a(a12, "batch_limit", 200);
        dVar.J = a(a12, "resync_nonsdk_interval", 172800L);
        dVar.K = a(a12, "resync_all_interval", 1209600L);
        dVar.L = j(a(a4, com.alipay.sdk.packet.d.n), "force_upload_timestamp");
        dVar.u = l(a(a5, "mobilecard"), "deposit_balance");
        dVar.w = l(a2, "verify_status");
        dVar.x = f(a2, "warning_text");
        JSONObject b = b(a3, "user_center");
        if (b != null) {
            dVar.y = l(b, "enabled");
            dVar.z = j(b, "version");
            dVar.A = h(b, "expire_time");
        }
        return dVar;
    }

    @Override // com.netease.mpay.server.a.ax
    protected ArrayList a(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.netease.mpay.widget.a.a("device_udid", com.netease.mpay.widget.az.c(context)));
        if (!TextUtils.isEmpty(this.a)) {
            arrayList.add(new com.netease.mpay.widget.a.a("device_id", this.a));
        }
        return arrayList;
    }
}
