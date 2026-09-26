package com.netease.mpay.server.a;

import android.content.Context;
import com.dodola.rocoo.Hack;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.mpay.server.response.aa;
import com.netease.unisdk.gmbridge.utils.ResIdReader;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ar extends ax {
    String a;

    public ar(String str) {
        super(0, "/api/qrcode/scan");
        this.a = str;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private String a(String str) {
        if (str == null || str.indexOf("@") == -1) {
            return null;
        }
        return str.split("@")[0];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.server.a.ax
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.netease.mpay.server.response.aa b(Context context, JSONObject jSONObject) {
        com.netease.mpay.server.response.aa aaVar = new com.netease.mpay.server.response.aa();
        JSONObject a = a(jSONObject, "qrcode_info");
        aaVar.b = aa.a.a(g(a, "action"));
        aaVar.a = e(a, BaseConstants.NET_KEY_uuid);
        JSONObject a2 = a(a, "game");
        aaVar.c = f(a2, "name");
        aaVar.f = f(a2, "qrcode_channel_name");
        try {
            JSONObject a3 = a(a, "user");
            aaVar.getClass();
            aa.b bVar = new aa.b();
            bVar.a = e(a3, ResIdReader.RES_TYPE_ID);
            bVar.b = g(a3, "login_type");
            try {
                String e = e(a3, "username");
                if (bVar.b == 7) {
                    bVar.c = a(e);
                } else {
                    bVar.c = e;
                }
            } catch (JSONException e2) {
                bVar.c = null;
            }
            aaVar.d = bVar;
        } catch (JSONException e3) {
            aaVar.d = null;
        }
        try {
            aaVar.e = e(a(a, "order"), ResIdReader.RES_TYPE_ID);
        } catch (JSONException e4) {
            aaVar.e = null;
        }
        return aaVar;
    }

    @Override // com.netease.mpay.server.a.ax
    protected ArrayList a(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.netease.mpay.widget.a.a(BaseConstants.NET_KEY_uuid, this.a));
        return arrayList;
    }
}
