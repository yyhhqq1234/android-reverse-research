package com.netease.mpay.widget.b;

import android.app.Activity;
import android.content.pm.PackageManager;
import android.webkit.WebView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.MpayConfig;
import com.netease.mpay.e.b.af;
import com.netease.mpay.sharer.UrlShareContent;
import com.netease.mpay.widget.bd;
import com.netease.ntsharesdk.ShareArgs;
import com.sina.weibo.sdk.constant.WBConstants;
import com.tencent.open.SocialConstants;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class a {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.netease.mpay.widget.b.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0058a {
        private C0058a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        /* synthetic */ C0058a(com.netease.mpay.widget.b.b bVar) {
            this();
        }

        boolean a(String str, String str2) {
            return (str2 == null || str == null || !str2.startsWith(str)) ? false : true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [com.netease.mpay.widget.b.b] */
        /* JADX WARN: Type inference failed for: r0v6 */
        /* JADX WARN: Type inference failed for: r0v7 */
        /* JADX WARN: Type inference failed for: r0v8 */
        b b(String str, String str2) {
            String str3 = 0;
            str3 = 0;
            String[] split = str2.substring(str.length()).split("/");
            b bVar = new b(str3);
            if (split.length == 2) {
                String[] split2 = split[1].split("\\?");
                bVar.b = split2[0];
                bVar.c = null;
                if (split2.length > 1) {
                    str3 = split2[1];
                }
            } else {
                if (split.length != 3) {
                    return null;
                }
                bVar.b = split[1];
                String[] split3 = split[2].split("\\?");
                bVar.c = split3[0];
                if (split3.length > 1) {
                    str3 = split3[1];
                }
            }
            bVar.a = split[0];
            bVar.d = bd.c(str3);
            return bVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class b {
        public String a;
        public String b;
        public String c;
        public HashMap d;

        private b() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        /* synthetic */ b(com.netease.mpay.widget.b.b bVar) {
            this();
        }
    }

    private static boolean a(Activity activity, String str) {
        try {
            activity.getPackageManager().getApplicationInfo(str, 128);
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean a(Activity activity, String str, String str2, MpayConfig mpayConfig, WebView webView, String str3) {
        C0058a c0058a = new C0058a(null);
        if (c0058a.a("mpay://", str3)) {
            b b2 = c0058a.b("mpay://", str3);
            if (b2 != null && "gamecenter".equals(b2.a)) {
                if ("ifinstalled".equals(b2.b)) {
                    if (b2.d != null && b2.d.size() >= 1) {
                        Iterator it = b2.d.entrySet().iterator();
                        if (it.hasNext()) {
                            try {
                                JSONArray jSONArray = new JSONArray((String) ((Map.Entry) it.next()).getValue());
                                JSONObject jSONObject = new JSONObject();
                                int length = jSONArray.length();
                                for (int i = 0; i < length; i++) {
                                    String valueOf = String.valueOf(jSONArray.opt(i));
                                    jSONObject.put(valueOf, a(activity, valueOf));
                                }
                                webView.loadUrl("javascript:getInstalled(" + jSONObject.toString() + ")");
                            } catch (JSONException e) {
                                e.printStackTrace();
                            }
                        }
                    }
                    return true;
                }
                if ("launch".equals(b2.b)) {
                    if (b2.d != null && b2.d.size() >= 1) {
                        activity.startActivity(activity.getPackageManager().getLaunchIntentForPackage((String) b2.d.values().toArray()[0]));
                    }
                    return true;
                }
                if ("getinfo".equals(b2.b)) {
                    JSONObject jSONObject2 = new JSONObject();
                    try {
                        jSONObject2.put(WBConstants.GAME_PARAMS_GAME_ID, str);
                        com.netease.mpay.e.b.o b3 = new com.netease.mpay.e.b(activity, str).c().b(str2);
                        if (b3 != null && b3.d != null) {
                            jSONObject2.put("user_id", b3.c);
                            jSONObject2.put("user_name", b3.a);
                            jSONObject2.put("user_type", b3.f);
                        }
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                    }
                    webView.loadUrl("javascript:getInfo(" + jSONObject2.toString() + ")");
                    return true;
                }
                if (WBConstants.ACTION_LOG_TYPE_SHARE.equals(b2.b)) {
                    if (b2.d != null) {
                        String str4 = (String) b2.d.get("type");
                        String str5 = str4 == null ? "0" : str4;
                        String str6 = (String) b2.d.get(ShareArgs.TEXT);
                        String str7 = (String) b2.d.get("title");
                        String str8 = (String) b2.d.get("desc");
                        String str9 = (String) b2.d.get(SocialConstants.PARAM_SHARE_URL);
                        String str10 = (String) b2.d.get("imageurl");
                        String str11 = (String) b2.d.get("thumburl");
                        if (str11 == null) {
                            str11 = str10;
                        }
                        String str12 = (String) b2.d.get("invitecode");
                        UrlShareContent a = new UrlShareContent().b(str10).a(str11);
                        a.setType(Integer.valueOf(str5).intValue()).setText(str6).setTitle(str7).setDesc(str8).setWebUrl(str9).setDesc(str8);
                        a.a(activity, new com.netease.mpay.widget.b.b(activity, str, str2, mpayConfig, a, str12));
                    }
                    return true;
                }
            } else if (b2 != null && "mailbox".equals(b2.a) && "getinfo".equals(b2.b)) {
                JSONObject jSONObject3 = new JSONObject();
                try {
                    jSONObject3.put("ver", "a2.14.1");
                    com.netease.mpay.e.b bVar = new com.netease.mpay.e.b(activity, str);
                    af a2 = bVar.e().a();
                    jSONObject3.put("game_code", a2.b == null ? "" : a2.b);
                    com.netease.mpay.e.b.o b4 = bVar.c().b(str2);
                    if (b4 == null || b4.d == null) {
                        jSONObject3.put("user_name", "");
                        jSONObject3.put("user_nickname", "");
                    } else {
                        jSONObject3.put("user_name", b4.a);
                        jSONObject3.put("user_nickname", b4.h == null ? "" : b4.h);
                    }
                } catch (JSONException e3) {
                    e3.printStackTrace();
                }
                webView.loadUrl("javascript:getInfo(" + jSONObject3.toString() + ")");
                return true;
            }
        }
        return false;
    }
}
