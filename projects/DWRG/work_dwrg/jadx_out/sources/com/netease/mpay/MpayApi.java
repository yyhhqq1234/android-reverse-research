package com.netease.mpay;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b;
import com.netease.mpay.b.a;
import com.netease.mpay.b.p;
import com.netease.mpay.codescanner.QrScannerOptions;
import com.netease.mpay.e.b.r;
import com.netease.mpay.f.an;
import com.netease.mpay.f.y;
import com.netease.mpay.sharer.ShareContent;
import com.netease.mpay.social.GetFriendsCallback;
import com.netease.mpay.widget.RIdentifier;
import com.netease.mpay.widget.webview.js.InjectedBridgeApi;
import com.sina.weibo.sdk.auth.Oauth2AccessToken;
import com.sina.weibo.sdk.constant.WBConstants;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public class MpayApi {
    public static final int LANGUAGE_AUTO = 0;
    public static final int LANGUAGE_ZH_CN = 1;
    public static final int LANGUAGE_ZH_HK = 2;
    public static final int LANGUAGE_ZH_TW = 3;
    public static final String PRODUCTION_ENVIRONMENT = "Mpay_Product_Environment";
    public static final String QQ_API = "qq";
    public static final String QR_LOGIN_EXTRA_KEY_JF_GAME_ID = "jf_game_id";
    public static final String QR_LOGIN_EXTRA_KEY_PAY_CHANNEL = "pay_channel";
    public static final int ScreenOrientation_Landscape = 2;
    public static final int ScreenOrientation_Portrait = 1;
    public static final int ScreenOrientation_Reverse_Landscape = 4;
    public static final int ScreenOrientation_Sensor_Landscape = 3;
    public static final String WEIBO_API = "weibo";
    public static final String WEIXIN_API = "weixin";
    public static final int WELCOME_WINDOW_TYPE_DEFAULT = 0;
    public static final int WELCOME_WINDOW_TYPE_NONE = 2;
    public static final int WELCOME_WINDOW_TYPE_TOAST = 1;
    public static final String YIXIN_API = "yixin";
    Activity a;
    Context b;
    String c;
    String d;
    String e;
    MpayConfig f;
    private final int g;
    private final int h;
    private AuthenticationCallback i;
    private BackgroundAuthenticationCallback j;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface a {
        void a();
    }

    public MpayApi(Activity activity, String str, String str2, String str3, String str4) {
        this(activity, str, str2, str4, str3, new MpayConfig());
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public MpayApi(Activity activity, String str, String str2, String str3, String str4, MpayConfig mpayConfig) {
        this.g = 3;
        this.h = 12;
        new ig().a(activity);
        RIdentifier.init(activity);
        Cdo.a((Context) activity);
        Cdo.b(a("2.14.1", "b1fbce6de7"));
        StringBuilder append = new StringBuilder().append("Enter MpayApi : ");
        String[] strArr = new String[5];
        strArr[0] = str2;
        strArr[1] = com.netease.mpay.widget.bd.a(str, 3, 12);
        strArr[2] = str3;
        strArr[3] = str4;
        strArr[4] = String.valueOf(mpayConfig != null);
        Cdo.c(append.append(a(strArr)).toString());
        if (!InjectedBridgeApi.available(activity)) {
            throw new RuntimeException("Project Assests Error");
        }
        if (Build.VERSION.SDK_INT >= 19) {
            a(bk.b.booleanValue());
        }
        this.a = activity;
        this.b = activity != null ? activity.getApplicationContext() : null;
        this.c = str;
        a(str2);
        this.d = "login";
        this.e = "pay";
        this.f = mpayConfig;
        hi.a().b(activity);
        hk.a().a(str, mpayConfig);
        new com.netease.mpay.e.b(activity, str).l().a(str3, str4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(Map map) {
        if (map == null) {
            return "" + map;
        }
        StringBuilder sb = new StringBuilder();
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            sb.append("【");
            sb.append((String) entry.getKey());
            sb.append("】");
            sb.append(':').append(' ');
            sb.append((String) entry.getValue());
            if (it.hasNext()) {
                sb.append('\n');
            }
        }
        return sb.toString();
    }

    private String a(String... strArr) {
        StringBuilder sb = new StringBuilder();
        sb.append(strArr[0]);
        for (int i = 1; i < strArr.length; i++) {
            sb.append(", ");
            sb.append(strArr[i]);
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        new Handler().postDelayed(new gv(this), 300L);
    }

    private static void a(Activity activity, String str, MpayConfig mpayConfig, String str2, BackgroundAuthenticationCallback backgroundAuthenticationCallback, Integer num) {
        b.a(activity, b.a.LoginLoaderActivity, new com.netease.mpay.b.l(new a.C0035a(str, str2, mpayConfig), "1", backgroundAuthenticationCallback), null, num);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(AuthenticationCallback authenticationCallback, QrCodeScannerCallback qrCodeScannerCallback, QrScannerOptions qrScannerOptions, String str) {
        com.netease.mpay.e.b.af a2 = new com.netease.mpay.e.b(this.a, this.c).e().a();
        if (a2.h) {
            b.a(this.a, b.a.ScanCodeActivity, new com.netease.mpay.b.v(new a.C0035a(this.c, null, this.f), str, authenticationCallback, qrCodeScannerCallback, qrScannerOptions), null, null);
        } else {
            new com.netease.mpay.widget.s(this.a).a((a2.i == null || a2.i.trim().equals("")) ? this.a.getString(RIdentifier.h.cU) : a2.i, this.a.getString(RIdentifier.h.cJ), new hf(this));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(AuthenticationCallback authenticationCallback, Integer num) {
        b.a(this.a, b.a.UserCenterActivity, new com.netease.mpay.b.k(new a.C0035a(this.c, this.d, this.f), authenticationCallback), null, num);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(a aVar, Integer num) {
        cz.a(this.a).a(this.a, this.c, true, new gz(this, num, aVar));
    }

    private void a(a aVar, String[] strArr, Integer num) {
        com.netease.mpay.widget.at.a(this.a, this.c, this.d, this.f, com.netease.mpay.widget.bd.b(com.netease.mpay.widget.bd.a(bk.m, strArr), (bk.n == null || bk.n.size() <= 0) ? null : (String[]) bk.n.toArray(new String[bk.n.size()])), new gx(this, aVar, num));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Integer num) {
        com.netease.mpay.e.b bVar = new com.netease.mpay.e.b(this.a, this.c);
        com.netease.mpay.e.b.o b = bVar.c().b(this.d);
        com.netease.mpay.e.b.f a2 = bVar.d().a();
        if (a2 == null || a2.j == null || a2.i == null || b == null || !b.l || !b.m) {
            a(false, num);
        } else if (!com.netease.mpay.e.a.a.a(b.f)) {
            new com.netease.mpay.f.bm(this.a, this.c, this.d, b, false, new fs(this, b, num, bVar)).h();
        } else {
            bVar.c().a(b.c, (String) null);
            a(false, num);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, com.netease.mpay.e.b.o oVar, Integer num) {
        b.a(this.a, b.a.PrepayChannelSelectorActivity, new com.netease.mpay.b.t(new a.C0035a(this.c, this.e, this.f), new p.a(str, oVar.c, oVar.e, oVar.d, oVar.f, oVar.a), "api"), null, num);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2, com.netease.mpay.e.b.o oVar, String str3, Integer num, PaymentCallback paymentCallback) {
        if (str == null) {
            Cdo.c("Order Info Error");
            if (paymentCallback != null) {
                paymentCallback.onFinish(1, PaymentResult.ORDER_EMPTY);
                return;
            }
            return;
        }
        if (com.netease.mpay.widget.bd.a(this.a, "netease_mpay", "loading.html")) {
            b.a(this.a, b.a.PayChannelDispatcherActivity, new com.netease.mpay.b.p(new a.C0035a(this.c, this.e, this.f), new p.a(str2, oVar.c, oVar.e, oVar.d, oVar.f, oVar.a), new p.b(str, new gn(this, new Handler(), paymentCallback))), null, num);
        } else {
            Cdo.c("Asset Files Error");
            if (paymentCallback != null) {
                paymentCallback.onFinish(1, PaymentResult.ASSETS_ERROR);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, boolean z, Integer num) {
        if (z) {
            a(z, num);
        } else {
            new com.netease.mpay.widget.s(this.a).a(str, this.a.getString(RIdentifier.h.K), new ft(this, z, num));
        }
    }

    @SuppressLint({"NewApi"})
    private void a(boolean z) {
        try {
            WebView.setWebContentsDebuggingEnabled(z);
        } catch (Exception e) {
            Cdo.a((Throwable) e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z, Integer num) {
        hi.a().a(this.a, new a.C0035a(this.c, this.d, this.f), true, false, z, this.i, num);
    }

    private boolean a(ExitCallback exitCallback, Integer num) {
        Cdo.c("Enter exitGame");
        hy.a();
        if (!new com.netease.mpay.e.b(this.a, this.c).e().a().j) {
            hi.a().a(this.a);
            return false;
        }
        ce.a(exitCallback);
        b.a(this.a, b.a.ExitDialogActivity, new com.netease.mpay.b.k(new a.C0035a(this.c, this.d, this.f), this.i), new b.C0036b(true), num);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        boolean z;
        d();
        com.netease.mpay.e.b bVar = new com.netease.mpay.e.b(this.a, this.c);
        com.netease.mpay.e.b.af a2 = bVar.e().a();
        com.netease.mpay.e.b.o b = bVar.c().b(this.d);
        if (a2.f && com.netease.mpay.e.a.a.d(b.f) && bVar.a().a(b.c).d()) {
            new com.netease.mpay.f.y(this.a, this.c, this.d, y.a.PREFETCH_HISTORY, null).h();
        }
        if (a2.e && b != null && b.c != null) {
            r a3 = bVar.a().a(b.c);
            a3.c = true;
            bVar.a().a(b.c, a3);
        }
        if (b != null && b.f == 2) {
            com.netease.mpay.server.response.r b2 = com.netease.mpay.server.response.u.a(this.a, this.c).b(2);
            long time = new Date().getTime() / 1000;
            com.netease.mpay.e.b.l c = bVar.k().c();
            switch (b.g) {
                case 0:
                    z = false;
                    break;
                case 1:
                default:
                    if (!c.a) {
                        if (c.b <= 0) {
                            c.b = time;
                            bVar.k().a(c);
                        }
                        if ((c.c && b2.f) || time - c.b > b2.d) {
                            z = true;
                            break;
                        } else {
                            z = false;
                            break;
                        }
                    } else if ((c.c && b2.f) || time - c.b > b2.e) {
                        z = true;
                        break;
                    } else {
                        z = false;
                        break;
                    }
                    break;
                case 2:
                    z = true;
                    break;
            }
            if (z) {
                c.a = true;
                c.b = time;
                c.c = false;
                bVar.k().a(c);
                new com.netease.mpay.widget.s(this.a).a(cq.a(this.a, this.c, RIdentifier.h.M, 2), this.a.getString(RIdentifier.h.f), new hc(this), this.a.getString(RIdentifier.h.dT), null, true);
            }
        }
        hy.a(b == null ? null : b.c);
        if (a2.F) {
            return;
        }
        b.a(this.a, b.a.WebLinksActivity, new com.netease.mpay.b.ah(new a.C0035a(this.c, this.d, this.f), an.a.GAME_AUDIT), null, null);
    }

    private static void b(Activity activity, String str, MpayConfig mpayConfig, String str2, BackgroundAuthenticationCallback backgroundAuthenticationCallback, Integer num) {
        b.a(activity, b.a.LoginLoaderActivity, new com.netease.mpay.b.l(new a.C0035a(str, str2, mpayConfig), "2", backgroundAuthenticationCallback), null, num);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Integer num) {
        new com.netease.mpay.widget.s(this.a).a(this.a.getString(RIdentifier.h.bX), this.a.getString(RIdentifier.h.bz), new gu(this, num), this.a.getString(RIdentifier.h.g), new gw(this), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        d();
        hy.a((String) null);
    }

    public static boolean changeENV(String str, String str2) {
        return false;
    }

    public static boolean changeTrackerKey(String str, String str2) {
        return false;
    }

    private void d() {
        try {
            CookieSyncManager.createInstance(this.b);
            CookieManager.getInstance().removeAllCookie();
        } catch (Exception e) {
            Cdo.a((Throwable) e);
        }
    }

    private boolean e() {
        return Build.VERSION.SDK_INT >= 9;
    }

    public static String getVersion() {
        return "2.14.1";
    }

    public static void resetApp(Context context) {
    }

    protected void a(String str) {
        bk.c = false;
        bk.f = PRODUCTION_ENVIRONMENT;
        bk.g = "https://service.mkey.163.com/mpay";
        bk.i = "https://mailbox.g.mkey.163.com/mpay/api/mailbox";
        bk.k = "u6uosOYKqABvK8GkMBrb1hnzk7CnS7ud";
        bk.j = "https://service.mkey.163.com/mpay/errors/error_id_token";
        com.netease.mpay.server.d.b(this.a, this.c);
    }

    public void authenticateUser() {
        authenticateUser(null);
    }

    public void authenticateUser(Integer num) {
        Cdo.c("Enter authenticateUser");
        if (hi.a().a("authenticateUser")) {
            a(new hh(this, num), (String[]) null, num);
        }
    }

    public void authenticateWeiboUser() {
        authenticateWeiboUser(null);
    }

    public void authenticateWeiboUser(Integer num) {
        Cdo.c("Enter authenticateWeiboUser");
        if (hi.a().a("authenticateWeiboUser")) {
            a(this.a, this.c, this.f, this.d, this.j, num);
        }
    }

    public void backgroundAuthenticateExternalUser(String str, String str2, String str3) {
        Cdo.c("Enter backgroundAuthenticateExternalUser : " + a(str, str2, str3));
        if (this.j == null) {
            return;
        }
        new com.netease.mpay.f.q(this.a, this.c, this.d, str, str2, str3, new fv(this)).h();
    }

    public void backgroundAuthenticateUser(String str, String str2) {
        Cdo.c("Enter backgroundAuthenticateUser");
        if (this.j == null) {
            return;
        }
        new com.netease.mpay.f.br(this.a, this.c, this.d, str, str2, -1, false, false, new fu(this)).h();
    }

    public boolean bindGuestUser() {
        return bindGuestUser(null);
    }

    public boolean bindGuestUser(Integer num) {
        Cdo.c("Enter bindGuestUser");
        if (!hi.a().a("bindGuestUser")) {
            return false;
        }
        a(new gq(this, num), (String[]) null, num);
        return true;
    }

    public void disableLogin(int i) {
        Cdo.c("Enter disableLogin " + i);
        com.netease.mpay.server.response.t.a(i);
    }

    public void enableQQSSO(String str) {
        Cdo.c("Enter enableQQSSO");
        com.netease.mpay.auth.a.a(str);
    }

    public void enableSinaWeiboSSO(String str, String str2) {
        Cdo.c("Enter enableSinaWeiboSSO");
        hi.a().l = true;
        hi.a().m = str;
        hi.a().n = str2;
    }

    public void enableWeixinSSO(String str) {
        Cdo.c("Enter enableWeixinSSO");
        com.netease.mpay.auth.b.a(str);
    }

    public boolean exitGame(ExitCallback exitCallback) {
        return a(exitCallback, (Integer) null);
    }

    public void externalUserPay(String str, String str2, String str3, Integer num, PaymentCallback paymentCallback) {
        Cdo.c("Enter externalUserPay : " + a(str, str2, str3));
        if (hi.a().a("externalUserPay")) {
            com.netease.mpay.e.b bVar = new com.netease.mpay.e.b(this.a, this.c);
            com.netease.mpay.e.b.f a2 = bVar.d().a();
            com.netease.mpay.e.b.o b = bVar.c().b(this.d);
            if (b == null || b.c == null || b.d == null || a2 == null || a2.j == null) {
                Cdo.c("LOGOUT");
                if (paymentCallback != null) {
                    paymentCallback.onFinish(3, PaymentResult.USER_ERROR);
                    return;
                }
                return;
            }
            String a3 = com.netease.mpay.e.b.j.a(b);
            String b2 = com.netease.mpay.e.b.j.b(b);
            String c = com.netease.mpay.e.b.j.c(b);
            if (com.netease.mpay.e.a.a.a(b.f) && a3 != null && b2 != null && c != null && a3.equals(str2) && b2.equals(str3)) {
                bVar.c().a(b.c, b.f, b.a(true));
                a(str, a2.j, b, c, num, paymentCallback);
            } else {
                Cdo.c("User Error");
                if (paymentCallback != null) {
                    paymentCallback.onFinish(1, PaymentResult.USER_ERROR);
                }
            }
        }
    }

    public String getApiPrefix() {
        return "";
    }

    public User getAuthenticatedUser() {
        com.netease.mpay.e.b.f a2;
        Cdo.c("Enter getAuthenticatedUser");
        com.netease.mpay.e.b bVar = new com.netease.mpay.e.b(this.a, this.c);
        com.netease.mpay.e.b.o b = bVar.c().b(this.d);
        if (b == null || !b.m || (a2 = bVar.d().a()) == null) {
            return null;
        }
        User user = new User(a2.j, b);
        if (user.uid == null || user.token == null || user.devId == null) {
            return null;
        }
        return user;
    }

    public void getDeviceTicket(DeviceTicketCallback deviceTicketCallback) {
        if (deviceTicketCallback == null) {
            return;
        }
        new com.netease.mpay.f.w(this.a, this.c, this.d, new gl(this, deviceTicketCallback)).h();
    }

    public void getUserFriends(GetFriendsCallback getFriendsCallback) {
        Cdo.c("Enter getUserFriends");
        if (getFriendsCallback == null) {
            throw new RuntimeException("Null GetFriendsCallback");
        }
        com.netease.mpay.e.b bVar = new com.netease.mpay.e.b(this.a, this.c);
        if (!bVar.e().a().B) {
            getFriendsCallback.onFailed(0);
        } else if (bVar.c().b(this.d).f == 3 && hi.a().l && hi.a().m != null) {
            new com.netease.mpay.social.b(this.a, hi.a().m, this.c, this.d, getFriendsCallback).a();
        } else {
            getFriendsCallback.onFailed(1);
        }
    }

    public String getUserNickname() {
        Cdo.c("Enter getUserNickname");
        com.netease.mpay.e.b.o b = new com.netease.mpay.e.b(this.a, this.c).c().b(this.d);
        if (b == null || !b.m || !b.l || TextUtils.isEmpty(b.h)) {
            return null;
        }
        return b.h;
    }

    public void getUserTicket(UserTicketCallback userTicketCallback) {
        if (userTicketCallback == null) {
            return;
        }
        new com.netease.mpay.f.ad(this.a, this.c, this.d, new gk(this, userTicketCallback)).h();
    }

    public void getUserWeiboInfo(GetFriendsCallback getFriendsCallback) {
        Cdo.c("Enter getUserWeiboInfo");
        if (getFriendsCallback == null) {
            throw new RuntimeException("Null GetFriendsCallback");
        }
        if (new com.netease.mpay.e.b(this.a, this.c).c().b(this.d).f != 3 || !hi.a().l || hi.a().m == null) {
            getFriendsCallback.onFailed(1);
            return;
        }
        Oauth2AccessToken a2 = com.netease.mpay.social.g.a(this.a, this.c, this.d);
        if (com.netease.mpay.social.g.a(a2)) {
            new com.netease.mpay.social.j(this.a, hi.a().m, a2).a(Long.valueOf(a2.getUid()).longValue(), new gs(this, getFriendsCallback));
        } else {
            getFriendsCallback.onFailed(1);
        }
    }

    public boolean hasNotification() {
        Cdo.c("Enter hasNotification");
        com.netease.mpay.e.b bVar = new com.netease.mpay.e.b(this.a, this.c);
        com.netease.mpay.e.b.ak d = bVar.e().d();
        com.netease.mpay.e.b.o b = bVar.c().b(this.d);
        boolean z = (((d.c > new Date().getTime() ? 1 : (d.c == new Date().getTime() ? 0 : -1)) > 0 || (d.c > 0L ? 1 : (d.c == 0L ? 0 : -1)) == 0) ? d.a : false) || ((b == null || b.c == null) ? false : bVar.a().a(b.c).c);
        Cdo.c("hasNotification ? " + z);
        return z;
    }

    public void initThirdApiKey(String str, String str2) {
        Cdo.c("Enter initThirdApiKey");
        if (str == null) {
            Cdo.c("ApiKey Error");
            return;
        }
        if (YIXIN_API.equals(str)) {
            com.netease.mpay.sharer.m.a(str2);
            return;
        }
        if (WEIXIN_API.equals(str)) {
            com.netease.mpay.sharer.l.a(str2);
        } else if (WEIBO_API.equals(str)) {
            com.netease.mpay.sharer.k.a(str2);
        } else if (QQ_API.equals(str)) {
            com.netease.mpay.sharer.a.a(str2);
        }
    }

    public void initThirdApiKeys(HashMap hashMap) {
        Cdo.c("Enter initThirdApiKeys");
        if (hashMap == null) {
            Cdo.c("ApiKeys Error");
            return;
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            initThirdApiKey((String) entry.getKey(), (String) entry.getValue());
        }
    }

    public void logoutAuthenticatedTVUser() {
        Cdo.c("Enter logoutAuthenticatedTVUser");
        com.netease.mpay.e.b bVar = new com.netease.mpay.e.b(this.a, this.c);
        com.netease.mpay.e.b.o b = bVar.c().b(this.d);
        if (b == null) {
            return;
        }
        bVar.c().c(b.c, this.d);
        c();
    }

    public void notifyOrderFinish(String str, String str2, int i) {
        Cdo.c("notifyOrderFinish " + str + ", " + str2 + ", " + i);
        new com.netease.mpay.f.bo(this.a, this.c, str, str2, i).h();
    }

    public void openLink(String str) {
    }

    public void pay(String str, String str2, Integer num, PaymentCallback paymentCallback) {
        Cdo.c("Enter pay : " + a(str, str2));
        if (hi.a().a("pay")) {
            a(new gm(this, str2, paymentCallback, str, num), (String[]) null, num);
        }
    }

    public void prepareAlitvPayOrder(String str, PrepareAlitvpayCallback prepareAlitvpayCallback) {
        Cdo.c("Enter prepareAlitvPayOrder : " + str);
        if (prepareAlitvpayCallback == null) {
            Cdo.c("PrepareAlitvpayCallback Error");
            return;
        }
        com.netease.mpay.e.b.o b = new com.netease.mpay.e.b(this.a, this.c).c().b(this.d);
        if (b != null && b.c != null && b.d != null && !com.netease.mpay.e.a.a.a(b.f)) {
            new com.netease.mpay.f.b(this.a, this.c, this.d, b.d, str, new gr(this, prepareAlitvpayCallback)).h();
        } else {
            Cdo.c("LOGOUT");
            prepareAlitvpayCallback.onFailed("User not logged in!");
        }
    }

    public boolean prepayNeteaseCoin() {
        return prepayNeteaseCoin(null);
    }

    public boolean prepayNeteaseCoin(Integer num) {
        Cdo.c("Enter prepayNeteaseCoin");
        if (!hi.a().a("prepayNeteaseCoin")) {
            return false;
        }
        com.netease.mpay.e.b bVar = new com.netease.mpay.e.b(this.a, this.c);
        if (!bVar.e().a().g) {
            Cdo.c("Prepay Channel Closed");
            return false;
        }
        com.netease.mpay.e.b.o b = bVar.c().b(this.d);
        com.netease.mpay.e.b.f a2 = bVar.d().a();
        if (a2 == null || a2.j == null || a2.i == null || b == null || !com.netease.mpay.e.a.a.c(b.f) || !b.l || !b.m) {
            Cdo.c("LOGOUT");
            return false;
        }
        bVar.c().a(b.c, b.f, b.a(true));
        if (7 == b.f) {
            new com.netease.mpay.f.ay(this.a, this.f, this.c, this.e, new gp(this, a2, b, num), b, num).h();
        } else {
            a(a2.j, b, num);
        }
        return true;
    }

    public void presentQRCodeScanner(HashMap hashMap, QrCodeScannerCallback qrCodeScannerCallback, QrScannerOptions qrScannerOptions) {
        Cdo.c("Enter scancode " + qrCodeScannerCallback);
        Cdo.c("Enter scancode ext: " + qrScannerOptions);
        if (hi.a().a("presentQRCodeScanner")) {
            if (e()) {
                a(new he(this, hashMap, qrCodeScannerCallback, qrScannerOptions), new String[]{"android.permission.CAMERA"}, (Integer) null);
            } else {
                new com.netease.mpay.widget.s(this.a).a(this.a.getString(RIdentifier.h.cT), this.a.getString(RIdentifier.h.cJ), new hd(this));
            }
        }
    }

    public void quickAuthenticateUser() {
        quickAuthenticateUser(null);
    }

    public void quickAuthenticateUser(Integer num) {
        Cdo.c("Enter quickAuthenticateUser");
        if (hi.a().a("quickAuthenticateUser")) {
            a(new fw(this, num), (String[]) null, num);
        }
    }

    public void refreshAuthenticatedUser(RefreshAuthenticatedUserCallback refreshAuthenticatedUserCallback) {
        Cdo.c("Enter refreshAuthenticatedUser");
        com.netease.mpay.e.b bVar = new com.netease.mpay.e.b(this.a, this.c);
        com.netease.mpay.e.b.o b = bVar.c().b(this.d);
        com.netease.mpay.e.b.f a2 = bVar.d().a();
        if (a2 == null || a2.j == null || a2.i == null || b == null || !b.l || !b.m) {
            refreshAuthenticatedUserCallback.onFail(this.a.getString(RIdentifier.h.v));
        } else {
            new com.netease.mpay.f.bm(this.a, this.c, this.d, b, false, new gg(this, refreshAuthenticatedUserCallback)).h();
        }
    }

    public void registEnterGame(ArrayList arrayList, AuthenticationCallback authenticationCallback) {
        Cdo.c("registEnterGame:");
        setAuthenticationCallback(authenticationCallback);
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Cdo.c("" + ((String) it.next()));
            }
        }
        bm.a(this.a, this.c, arrayList, new hg(this));
    }

    public void setAuthenticationCallback(AuthenticationCallback authenticationCallback) {
        Cdo.c("Enter setAuthenticationCallback");
        this.i = new fm(this, new Handler(), authenticationCallback);
    }

    public void setBackgroundAuthenticationCallback(BackgroundAuthenticationCallback backgroundAuthenticationCallback) {
        Cdo.c("Enter setBackgroundAuthenticationCallback");
        this.j = new gh(this, new Handler(), backgroundAuthenticationCallback);
    }

    public void setBackgroundMode(boolean z) {
    }

    public void setLanguage(int i) {
        Cdo.c("Enter setLanguage : " + i);
        bk.a = dc.a(i);
        bk.a.a(this.a);
    }

    public boolean setRoleInfo(String str, Map map) {
        Cdo.c("Enter setRoleInfo " + str + "\n" + a(map));
        if (this.a == null) {
            return false;
        }
        com.netease.mpay.e.b.o a2 = new com.netease.mpay.e.b(this.a, this.c).c().a(str);
        if (a2 == null || TextUtils.isEmpty(a2.d)) {
            Cdo.c("Enter setRoleInfo, user has logout");
            return false;
        }
        new com.netease.mpay.f.bp(this.a, this.c, this.d, a2, map, new gt(this)).h();
        return true;
    }

    public boolean share(ShareContent shareContent) {
        return share(shareContent, null);
    }

    public boolean share(ShareContent shareContent, Integer num) {
        Cdo.c("Enter share");
        if (shareContent == null || !shareContent.isValid() || !com.netease.mpay.sharer.d.a(this.a) || !hi.a().a(WBConstants.ACTION_LOG_TYPE_SHARE)) {
            return false;
        }
        b.a(this.a, b.a.ShareActivity, new com.netease.mpay.b.ab(new a.C0035a(this.c, this.d, this.f), com.netease.mpay.widget.bf.a(this.a), shareContent, null), new b.C0036b(true), num);
        this.a.overridePendingTransition(RIdentifier.a.f, 0);
        return true;
    }

    public boolean shareTo(ShareContent shareContent, int i) {
        Cdo.c("Enter shareTo");
        return new com.netease.mpay.sharer.d(this.a).a(shareContent, i);
    }

    public void showForumDialog() {
        Cdo.c("Enter showForumDialog");
        if (hi.a().a("showForumDialog")) {
            a(new fz(this), (String[]) null, (Integer) null);
        }
    }

    public boolean showMobileBindDialog(MobileBindCallback mobileBindCallback, Integer num) {
        Cdo.c("Enter showMobileBindDialog");
        if (!hi.a().a("showMobileBindDialog")) {
            return false;
        }
        com.netease.mpay.e.b bVar = new com.netease.mpay.e.b(this.a, this.c);
        com.netease.mpay.e.b.o b = bVar.c().b(this.d);
        com.netease.mpay.e.b.f a2 = bVar.d().a();
        if (a2 == null || a2.j == null || a2.i == null || b == null || !b.l || !b.m || com.netease.mpay.e.a.a.a(b.f)) {
            new com.netease.mpay.widget.s(this.a).a(this.a.getString(RIdentifier.h.v));
            return false;
        }
        a(new gd(this, new Handler(), mobileBindCallback, num), (String[]) null, num);
        return true;
    }

    public boolean showRealnameDialog(SetRealnameCallback setRealnameCallback, Integer num) {
        Cdo.c("Enter showRealnameDialog");
        if (!hi.a().a("showRealnameDialog")) {
            return false;
        }
        com.netease.mpay.e.b bVar = new com.netease.mpay.e.b(this.a, this.c);
        com.netease.mpay.e.b.o b = bVar.c().b(this.d);
        com.netease.mpay.e.b.f a2 = bVar.d().a();
        if (a2 == null || a2.j == null || a2.i == null || b == null || !b.l || !b.m || com.netease.mpay.e.a.a.a(b.f)) {
            new com.netease.mpay.widget.s(this.a).a(this.a.getString(RIdentifier.h.v));
            return false;
        }
        a(new ga(this, new Handler(), setRealnameCallback, num), (String[]) null, num);
        return true;
    }

    public void showUserDialog() {
        showUserDialog(null);
    }

    public void showUserDialog(Integer num) {
        Cdo.c("Enter showUserDialog");
        if (hi.a().a("showUserDialog")) {
            com.netease.mpay.e.b bVar = new com.netease.mpay.e.b(this.a, this.c);
            com.netease.mpay.e.b.o b = bVar.c().b(this.d);
            com.netease.mpay.e.b.f a2 = bVar.d().a();
            if (a2 == null || a2.j == null || a2.i == null || b == null || !b.l || !b.m || com.netease.mpay.e.a.a.a(b.f)) {
                authenticateUser(num);
            } else {
                a(new fy(this, num), (String[]) null, num);
            }
        }
    }

    public void unregistEnterGame() {
        Cdo.c("unregistEnterGame");
        bm.a();
    }

    public void ursRegister() {
        ursRegister(null);
    }

    public void ursRegister(Integer num) {
        Cdo.c("Enter ursRegister");
        if (hi.a().a("ursRegister")) {
            b(this.a, this.c, this.f, this.d, this.j, num);
        }
    }
}
