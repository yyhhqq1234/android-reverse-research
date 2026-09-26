package com.netease.mpay.server.a.b;

import android.content.Context;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.an;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class e extends n {
    private String a;
    private String b;
    private String c;
    private an.a d;

    public e(String str, String str2, an.a aVar) {
        super("/api/users/login/mobile/user_help");
        this.a = str;
        this.d = aVar;
        this.b = str2;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public e(String str, String str2, String str3, an.a aVar) {
        super("/api/users/login/mobile/user_center");
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = aVar;
    }

    private String a(an.a aVar) {
        if (aVar == null) {
            return null;
        }
        switch (f.a[aVar.ordinal()]) {
            case 1:
                return "offlinePasswordFind";
            case 2:
                return "offAccountAppeal";
            case 3:
                return "offAccountChange";
            case 4:
                return "offAccountLock";
            case 5:
                return "offAccountUnlock";
            case 6:
            case 14:
            default:
                return null;
            case 7:
                return "accountIndex";
            case 8:
                return "accountChange";
            case 9:
                return "passwordFind";
            case 10:
                return "passwordSet";
            case 11:
                return "secuEmailSet";
            case 12:
                return "realNameSet";
            case 13:
                return "accountAppeal";
        }
    }

    @Override // com.netease.mpay.server.a.ax
    protected ArrayList a(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.netease.mpay.widget.a.a("device_id", this.a));
        if (!TextUtils.isEmpty(this.c)) {
            arrayList.add(new com.netease.mpay.widget.a.a("token", this.c));
        }
        String a = a(this.d);
        if (!TextUtils.isEmpty(a)) {
            arrayList.add(new com.netease.mpay.widget.a.a("module", a));
        }
        if (!TextUtils.isEmpty(this.b)) {
            arrayList.add(new com.netease.mpay.widget.a.a("urs_udid", this.b));
        }
        return arrayList;
    }
}
