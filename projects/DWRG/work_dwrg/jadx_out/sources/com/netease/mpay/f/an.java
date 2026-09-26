package com.netease.mpay.f;

import android.app.Activity;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.view.MotionEventCompat;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.d;
import com.netease.mpay.server.a;
import com.netease.mpay.widget.RIdentifier;
import com.tencent.mm.opensdk.modelmsg.WXMediaMessage;

/* loaded from: classes.dex */
public class an extends com.netease.mpay.f.a.d {
    private a a;
    private String b;
    private String j;
    private String k;
    private String l;
    private String m;
    private String n;

    /* loaded from: classes.dex */
    public enum a {
        OUTGOING,
        LINK_URL,
        GAME_CENTER,
        MOBILE_SERVICE_RULE,
        MOBILE_PRIVACY_RULE,
        ONLINE_ACCOUNT_INDEX,
        ONLINE_ACCOUNT_CHANGE,
        ONLINE_PASSWORD_FIND,
        ONLINE_PASSWORD_SET,
        ONLINE_SECU_EMAIL_SET,
        ONLINE_REAL_NAME_SET,
        ONLINE_ACCOUNT_APPEAL,
        ONLINE_MOBILE_CENTER,
        OFFLINE_PASSWORD_FIND,
        OFFLINE_ACCOUNT_APPEAL,
        OFFLINE_ACCOUNT_CHANGE,
        OFFLINE_ACCOUNT_LOCK,
        OFFLINE_ACCOUNT_UNLOCK,
        OFFLINE_MOBILE_CENTER,
        GAME_AUDIT,
        URS_BIND_SENIOR_VERIFY,
        WEB_LOGIN,
        GUEST_BIND_URS,
        REGIST_URS,
        WEIBO_LOGIN,
        ECARD_PAY,
        ORDER_RESULT,
        PREPAY_RESULT_WITH_TICKET,
        SET_REALNAME,
        SET_RELATED_MOBILE,
        PAY_HELP,
        ILLEAGAL;

        a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        public static a a(int i) {
            try {
                return values()[i];
            } catch (IndexOutOfBoundsException e) {
                return ILLEAGAL;
            }
        }

        public String a(Activity activity) {
            switch (ao.a[ordinal()]) {
                case 13:
                    return activity.getString(RIdentifier.h.bl);
                case 14:
                default:
                    return "";
                case 15:
                    return activity.getString(RIdentifier.h.bm);
            }
        }
    }

    public an(Activity activity, String str, String str2, a aVar) {
        super(activity, str, str2, null);
        this.a = aVar;
        super.f();
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private com.netease.mpay.e.b.o c(d.C0045d c0045d) {
        String string = this.c.getString(RIdentifier.h.u);
        com.netease.mpay.e.b.o b = c0045d.a.c().b(this.e);
        if (b == null || TextUtils.isEmpty(b.c) || TextUtils.isEmpty(b.d)) {
            throw new a.f(string);
        }
        return b;
    }

    public an a(com.netease.mpay.f.a.b bVar) {
        this.f = bVar;
        return this;
    }

    public an a(String str) {
        this.k = str;
        return this;
    }

    public an a(@NonNull String str, @Nullable String str2) {
        this.m = str;
        this.n = str2;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.f.a.d
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.netease.mpay.server.response.ae b(d.C0045d c0045d) {
        com.netease.mpay.server.d dVar = new com.netease.mpay.server.d(this.c, this.d, this.e);
        switch (ao.a[this.a.ordinal()]) {
            case 1:
                return dVar.b(new com.netease.mpay.server.a.b.o(this.j));
            case 2:
                return dVar.b(new com.netease.mpay.server.a.b.o("https://aq.reg.163.com/yd/agreement"));
            case 3:
                return dVar.b(new com.netease.mpay.server.a.b.o("https://aq.reg.163.com/yd/agreementGame"));
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
                return dVar.b(new com.netease.mpay.server.a.b.e(c0045d.a().j, c0045d.a.e().a(this.c), c(c0045d).d, this.a));
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
                return dVar.b(new com.netease.mpay.server.a.b.e(c0045d.a().j, c0045d.a.e().a(this.c), this.a));
            case 17:
                return dVar.b(new com.netease.mpay.server.a.b.d());
            case 18:
                return dVar.b(new com.netease.mpay.server.a.b.c());
            case 19:
                return dVar.b(new com.netease.mpay.server.a.b.i(this.d));
            case 20:
                com.netease.mpay.e.b.o c = c(c0045d);
                return (com.netease.mpay.server.response.ae) dVar.a(new com.netease.mpay.server.a.am(this.d, c.c, c0045d.a().j, c0045d.a.e().a(this.c), c.d, this.b));
            case MotionEventCompat.AXIS_WHEEL /* 21 */:
                com.netease.mpay.e.b.o c2 = c(c0045d);
                return dVar.b(new com.netease.mpay.server.a.b.a(c0045d.a().j, c2.c, c2.d));
            case MotionEventCompat.AXIS_GAS /* 22 */:
                return dVar.b(new com.netease.mpay.server.a.b.k(c0045d.b().j));
            case 23:
                return dVar.b(new com.netease.mpay.server.a.b.r(this.d, c0045d.b().j, c0045d.b().i));
            case 24:
                return dVar.b(new com.netease.mpay.server.a.b.b(this.d, c0045d.a().j, c(c0045d).d, this.k));
            case 25:
                return dVar.b(new com.netease.mpay.server.a.b.h(this.d, c0045d.a().j, c(c0045d).d, this.k));
            case WXMediaMessage.IMediaObject.TYPE_EMOTIONLIST_SHARED /* 26 */:
                return dVar.b(new com.netease.mpay.server.a.b.j(c0045d.a().j, c(c0045d).d, this.l));
            case 27:
                if (TextUtils.isEmpty(this.m)) {
                    throw new com.netease.mpay.server.a(this.c.getString(RIdentifier.h.ci));
                }
                return dVar.b(new com.netease.mpay.server.a.b.q(this.m, c0045d.b().j, c0045d.a.e().a(this.c), this.n));
            case 28:
                return dVar.b(new com.netease.mpay.server.a.b.l(c0045d.b().j, c(c0045d).d));
            case 29:
                return dVar.b(new com.netease.mpay.server.a.b.m(c0045d.b().j, c(c0045d).d));
            default:
                return new com.netease.mpay.server.response.ae("");
        }
    }

    public an b(String str) {
        this.l = str;
        return this;
    }

    public an c(String str) {
        this.b = str;
        return this;
    }

    public an d(String str) {
        this.j = str;
        return this;
    }
}
