package com.netease.mpay.server;

import com.dodola.rocoo.Hack;
import com.netease.mpay.bk;

/* loaded from: classes.dex */
public class b {

    /* loaded from: classes.dex */
    public static final class a {
        public static boolean a(int i) {
            return i == 200 || i == 201;
        }
    }

    /* renamed from: com.netease.mpay.server.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0048b {
        public static String a(boolean z) {
            return "" + (z ? 1 : 2);
        }
    }

    /* loaded from: classes.dex */
    public enum c {
        NICKNAME,
        AVATAR,
        EXIT_POPUP_INFO,
        REALNAME_STATUS,
        MOBILE_BIND_STATUS,
        ECARD_BALANCE;

        c() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        public String a() {
            switch (this) {
                case NICKNAME:
                    return "nickname";
                case AVATAR:
                    return "avatar";
                case EXIT_POPUP_INFO:
                    return "exit_popup_info";
                case REALNAME_STATUS:
                    return "realname_status";
                case MOBILE_BIND_STATUS:
                    return "mobile_bind_status";
                case ECARD_BALANCE:
                    return "ecard_balance";
                default:
                    return "";
            }
        }
    }

    public static String a() {
        return bk.h + "/api/qrcode/scan";
    }

    public static String a(String str) {
        return str == null ? "1" : str.equals("webLogin") ? "2" : str.equals("webPay") ? "3" : "1";
    }

    public static String a(c... cVarArr) {
        StringBuilder sb = new StringBuilder();
        for (c cVar : cVarArr) {
            if (cVar != null) {
                if (sb.length() > 0) {
                    sb.append(",").append(cVar.a());
                } else {
                    sb.append(cVar.a());
                }
            }
        }
        return sb.toString();
    }
}
