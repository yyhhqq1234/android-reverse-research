package com.netease.mpay.server.a;

import android.content.Context;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.epay.sdk.base.core.BaseConstants;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class ah extends ax {
    String a;
    String b;
    String c;

    public ah(String str, String str2, String str3) {
        super(1, "/api/users/login/mobile/get_sms");
        this.a = str;
        this.b = str2;
        this.c = str3;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.server.a.ax
    protected ArrayList a(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.netease.mpay.widget.a.a("device_id", this.a));
        arrayList.add(new com.netease.mpay.widget.a.a(BaseConstants.NET_KEY_mobile, this.b));
        if (!TextUtils.isEmpty(this.c)) {
            arrayList.add(new com.netease.mpay.widget.a.a("urs_udid", this.c));
        }
        return arrayList;
    }
}
