package com.alipay.sdk.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.alipay.sdk.util.H5PayResultModel;
import com.alipay.sdk.util.e;
import com.alipay.sdk.util.k;
import com.alipay.sdk.util.m;
import java.io.IOException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class PayTask {
    static final Object a = com.alipay.sdk.util.e.class;
    private Activity b;
    private com.alipay.sdk.widget.a c;
    private String d = "wappaygw.alipay.com/service/rest.htm";
    private String e = "mclient.alipay.com/service/rest.htm";
    private String f = "mclient.alipay.com/home/exterfaceAssign.htm";
    private Map<String, a> g = new HashMap();

    public PayTask(Activity activity) {
        this.b = activity;
        com.alipay.sdk.sys.b a2 = com.alipay.sdk.sys.b.a();
        Activity activity2 = this.b;
        com.alipay.sdk.data.c.a();
        a2.a(activity2);
        com.alipay.sdk.app.statistic.a.a(activity);
        this.c = new com.alipay.sdk.widget.a(activity, com.alipay.sdk.widget.a.b);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(17:(2:78|79)|4|(1:6)|7|(2:9|(1:11)(2:12|(1:14)))|(2:15|16)|(2:20|(11:22|(1:24)|25|26|27|(3:38|(4:41|(2:45|(2:46|(1:1)(2:48|(2:56|(3:59|60|61)(1:58))(3:52|53|54))))(0)|55|39)|65)|29|(1:31)|33|34|35))|69|25|26|27|(0)|29|(0)|33|34|35) */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x012f, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0130, code lost:
    
        com.alipay.sdk.app.statistic.a.a(com.alipay.sdk.app.statistic.c.b, com.alipay.sdk.app.statistic.c.y, r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x007d A[Catch: Throwable -> 0x012f, all -> 0x015c, TRY_LEAVE, TryCatch #0 {Throwable -> 0x012f, blocks: (B:27:0x0071, B:29:0x0077, B:31:0x007d, B:38:0x00b9, B:39:0x00c0, B:41:0x00c3, B:43:0x00cd, B:45:0x00d7, B:46:0x00ee, B:48:0x00f1, B:50:0x00fb, B:53:0x0105, B:56:0x0119, B:60:0x0123, B:55:0x0115), top: B:26:0x0071 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00b9 A[Catch: Throwable -> 0x012f, all -> 0x015c, TRY_ENTER, TryCatch #0 {Throwable -> 0x012f, blocks: (B:27:0x0071, B:29:0x0077, B:31:0x007d, B:38:0x00b9, B:39:0x00c0, B:41:0x00c3, B:43:0x00cd, B:45:0x00d7, B:46:0x00ee, B:48:0x00f1, B:50:0x00fb, B:53:0x0105, B:56:0x0119, B:60:0x0123, B:55:0x0115), top: B:26:0x0071 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized java.lang.String pay(java.lang.String r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 375
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alipay.sdk.app.PayTask.pay(java.lang.String, boolean):java.lang.String");
    }

    public synchronized Map<String, String> payV2(String str, boolean z) {
        return k.a(pay(str, z));
    }

    public synchronized String fetchTradeToken() {
        return com.alipay.sdk.util.j.b(this.b.getApplicationContext(), com.alipay.sdk.util.i.a, "");
    }

    public synchronized boolean payInterceptorWithUrl(String str, boolean z, H5PayCallback h5PayCallback) {
        String fetchOrderInfoFromH5PayUrl;
        fetchOrderInfoFromH5PayUrl = fetchOrderInfoFromH5PayUrl(str);
        if (!TextUtils.isEmpty(fetchOrderInfoFromH5PayUrl)) {
            new Thread(new g(this, fetchOrderInfoFromH5PayUrl, z, h5PayCallback)).start();
        }
        return !TextUtils.isEmpty(fetchOrderInfoFromH5PayUrl);
    }

    public synchronized String fetchOrderInfoFromH5PayUrl(String str) {
        String str2;
        if (!TextUtils.isEmpty(str)) {
            String trim = str.trim();
            if (trim.startsWith("https://" + this.d) || trim.startsWith("http://" + this.d)) {
                String trim2 = trim.replaceFirst("(http|https)://" + this.d + "\\?", "").trim();
                if (!TextUtils.isEmpty(trim2)) {
                    str2 = "_input_charset=\"utf-8\"&ordertoken=\"" + m.a("<request_token>", "</request_token>", m.a(trim2).get("req_data")) + "\"&pay_channel_id=\"alipay_sdk\"&bizcontext=\"" + new com.alipay.sdk.sys.a(this.b).a("sc", "h5tonative") + "\"";
                }
            }
            if (trim.startsWith("https://" + this.e) || trim.startsWith("http://" + this.e)) {
                String trim3 = trim.replaceFirst("(http|https)://" + this.e + "\\?", "").trim();
                if (!TextUtils.isEmpty(trim3)) {
                    str2 = "_input_charset=\"utf-8\"&ordertoken=\"" + m.a("<request_token>", "</request_token>", m.a(trim3).get("req_data")) + "\"&pay_channel_id=\"alipay_sdk\"&bizcontext=\"" + new com.alipay.sdk.sys.a(this.b).a("sc", "h5tonative") + "\"";
                }
            }
            if ((trim.startsWith("https://" + this.f) || trim.startsWith("http://" + this.f)) && ((trim.contains("alipay.wap.create.direct.pay.by.user") || trim.contains("create_forex_trade_wap")) && !TextUtils.isEmpty(trim.replaceFirst("(http|https)://" + this.f + "\\?", "").trim()))) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("url", str);
                    jSONObject.put("bizcontext", new com.alipay.sdk.sys.a(this.b).a("sc", "h5tonative"));
                    str2 = "new_external_info==" + jSONObject.toString();
                } catch (Throwable th) {
                }
            }
            if (Pattern.compile("^(http|https)://(maliprod\\.alipay\\.com\\/w\\/trade_pay\\.do.?|mali\\.alipay\\.com\\/w\\/trade_pay\\.do.?|mclient\\.alipay\\.com\\/w\\/trade_pay\\.do.?)").matcher(str).find()) {
                String a2 = m.a("?", "", str);
                if (!TextUtils.isEmpty(a2)) {
                    Map<String, String> a3 = m.a(a2);
                    StringBuilder sb = new StringBuilder();
                    if (a(false, true, com.alipay.sdk.app.statistic.c.H, sb, a3, com.alipay.sdk.app.statistic.c.H, "alipay_trade_no")) {
                        a(true, false, "pay_phase_id", sb, a3, "payPhaseId", "pay_phase_id", "out_relation_id");
                        sb.append("&biz_sub_type=\"TRADE\"");
                        sb.append("&biz_type=\"trade\"");
                        String str3 = a3.get("app_name");
                        if (TextUtils.isEmpty(str3) && !TextUtils.isEmpty(a3.get("cid"))) {
                            str3 = "ali1688";
                        } else if (TextUtils.isEmpty(str3) && (!TextUtils.isEmpty(a3.get("sid")) || !TextUtils.isEmpty(a3.get("s_id")))) {
                            str3 = "tb";
                        }
                        sb.append("&app_name=\"" + str3 + "\"");
                        if (!a(true, true, "extern_token", sb, a3, "extern_token", "cid", "sid", "s_id")) {
                            str2 = "";
                        } else {
                            a(true, false, "appenv", sb, a3, "appenv");
                            sb.append("&pay_channel_id=\"alipay_sdk\"");
                            a aVar = new a(this, (byte) 0);
                            aVar.a = a3.get("return_url");
                            aVar.b = a3.get("pay_order_id");
                            str2 = sb.toString() + "&bizcontext=\"" + new com.alipay.sdk.sys.a(this.b).a("sc", "h5tonative") + "\"";
                            this.g.put(str2, aVar);
                        }
                    }
                }
            }
            if (trim.contains("mclient.alipay.com/cashier/mobilepay.htm") || (EnvUtils.isSandBox() && trim.contains("mobileclientgw.alipaydev.com/cashier/mobilepay.htm"))) {
                String a4 = new com.alipay.sdk.sys.a(this.b).a("sc", "h5tonative");
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("url", trim);
                jSONObject2.put("bizcontext", a4);
                str2 = String.format("new_external_info==%s", jSONObject2.toString());
            }
        }
        str2 = "";
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a {
        String a;
        String b;

        private a() {
            this.a = "";
            this.b = "";
        }

        /* synthetic */ a(PayTask payTask, byte b) {
            this();
        }

        private String a() {
            return this.a;
        }

        private void a(String str) {
            this.a = str;
        }

        private String b() {
            return this.b;
        }

        private void b(String str) {
            this.b = str;
        }
    }

    private static boolean a(boolean z, boolean z2, String str, StringBuilder sb, Map<String, String> map, String... strArr) {
        String str2;
        int length = strArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                str2 = "";
                break;
            }
            String str3 = strArr[i];
            if (TextUtils.isEmpty(map.get(str3))) {
                i++;
            } else {
                str2 = map.get(str3);
                break;
            }
        }
        if (TextUtils.isEmpty(str2)) {
            if (z2) {
                return false;
            }
        } else if (z) {
            sb.append(com.alipay.sdk.sys.a.b).append(str).append("=\"").append(str2).append("\"");
        } else {
            sb.append(str).append("=\"").append(str2).append("\"");
        }
        return true;
    }

    public synchronized H5PayResultModel h5Pay(String str, boolean z) {
        H5PayResultModel h5PayResultModel;
        HashMap hashMap;
        synchronized (this) {
            H5PayResultModel h5PayResultModel2 = new H5PayResultModel();
            try {
                str.trim();
                String[] split = pay(str, z).split(com.alipay.sdk.util.i.b);
                hashMap = new HashMap();
                for (String str2 : split) {
                    String substring = str2.substring(0, str2.indexOf("={"));
                    String str3 = substring + "={";
                    hashMap.put(substring, str2.substring(str3.length() + str2.indexOf(str3), str2.lastIndexOf(com.alipay.sdk.util.i.d)));
                }
                if (hashMap.containsKey(k.a)) {
                    h5PayResultModel2.setResultCode((String) hashMap.get(k.a));
                }
            } catch (Throwable th) {
            }
            if (hashMap.containsKey("callBackUrl")) {
                h5PayResultModel2.setReturnUrl((String) hashMap.get("callBackUrl"));
            } else if (hashMap.containsKey(k.c)) {
                try {
                    String str4 = (String) hashMap.get(k.c);
                    if (str4.length() > 15) {
                        a aVar = this.g.get(str);
                        if (aVar != null) {
                            if (TextUtils.isEmpty(aVar.b)) {
                                h5PayResultModel2.setReturnUrl(aVar.a);
                            } else {
                                h5PayResultModel2.setReturnUrl(com.alipay.sdk.data.a.b().j.replace("$OrderId$", aVar.b));
                            }
                            this.g.remove(str);
                            h5PayResultModel = h5PayResultModel2;
                        } else {
                            String a2 = m.a("&callBackUrl=\"", "\"", str4);
                            if (TextUtils.isEmpty(a2)) {
                                a2 = m.a("&call_back_url=\"", "\"", str4);
                                if (TextUtils.isEmpty(a2)) {
                                    a2 = m.a(com.alipay.sdk.cons.a.o, "\"", str4);
                                    if (TextUtils.isEmpty(a2)) {
                                        a2 = URLDecoder.decode(m.a(com.alipay.sdk.cons.a.p, com.alipay.sdk.sys.a.b, str4), "utf-8");
                                        if (TextUtils.isEmpty(a2)) {
                                            a2 = URLDecoder.decode(m.a("&callBackUrl=", com.alipay.sdk.sys.a.b, str4), "utf-8");
                                        }
                                    }
                                }
                            }
                            String b = (TextUtils.isEmpty(a2) && !TextUtils.isEmpty(str4) && str4.contains("call_back_url")) ? m.b("call_back_url=\"", "\"", str4) : a2;
                            if (TextUtils.isEmpty(b)) {
                                b = com.alipay.sdk.data.a.b().j;
                            }
                            h5PayResultModel2.setReturnUrl(b);
                        }
                    } else {
                        a aVar2 = this.g.get(str);
                        if (aVar2 != null) {
                            h5PayResultModel2.setReturnUrl(aVar2.a);
                            this.g.remove(str);
                            h5PayResultModel = h5PayResultModel2;
                        }
                    }
                } catch (Throwable th2) {
                }
            }
            h5PayResultModel = h5PayResultModel2;
        }
        return h5PayResultModel;
    }

    private static String a(String str, String str2) {
        String str3 = str2 + "={";
        return str.substring(str3.length() + str.indexOf(str3), str.lastIndexOf(com.alipay.sdk.util.i.d));
    }

    private e.a a() {
        return new h(this);
    }

    private void b() {
        if (this.c != null) {
            this.c.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        if (this.c != null) {
            this.c.b();
            this.c = null;
        }
    }

    private String a(String str) {
        String a2 = new com.alipay.sdk.sys.a(this.b).a(str);
        if (a2.contains("paymethod=\"expressGateway\"")) {
            return b(a2);
        }
        if (m.c(this.b)) {
            com.alipay.sdk.util.e eVar = new com.alipay.sdk.util.e(this.b, new h(this));
            String a3 = eVar.a(a2);
            eVar.a = null;
            if (TextUtils.equals(a3, com.alipay.sdk.util.e.b)) {
                return b(a2);
            }
            if (TextUtils.isEmpty(a3)) {
                return i.a();
            }
            return a3;
        }
        return b(a2);
    }

    public String getVersion() {
        return com.alipay.sdk.cons.a.f;
    }

    private String b(String str) {
        j jVar;
        b();
        try {
            try {
                try {
                    List<com.alipay.sdk.protocol.b> a2 = com.alipay.sdk.protocol.b.a(new com.alipay.sdk.packet.impl.d().a(this.b.getApplicationContext(), str).a().optJSONObject(com.alipay.sdk.cons.c.c).optJSONObject(com.alipay.sdk.cons.c.d));
                    for (int i = 0; i < a2.size(); i++) {
                        if (a2.get(i).a == com.alipay.sdk.protocol.a.Update) {
                            String[] strArr = a2.get(i).b;
                            if (strArr.length == 3 && TextUtils.equals(com.alipay.sdk.cons.b.c, strArr[0])) {
                                Context context = com.alipay.sdk.sys.b.a().a;
                                com.alipay.sdk.tid.b a3 = com.alipay.sdk.tid.b.a();
                                if (!TextUtils.isEmpty(strArr[1]) && !TextUtils.isEmpty(strArr[2])) {
                                    a3.a = strArr[1];
                                    a3.b = strArr[2];
                                    com.alipay.sdk.tid.a aVar = new com.alipay.sdk.tid.a(context);
                                    try {
                                        aVar.a(com.alipay.sdk.util.a.a(context).a(), com.alipay.sdk.util.a.a(context).b(), a3.a, a3.b);
                                    } catch (Exception e) {
                                    } finally {
                                        aVar.close();
                                    }
                                }
                            }
                        }
                    }
                    c();
                    for (int i2 = 0; i2 < a2.size(); i2++) {
                        if (a2.get(i2).a == com.alipay.sdk.protocol.a.WapPay) {
                            return a(a2.get(i2));
                        }
                    }
                    c();
                    jVar = null;
                } catch (Throwable th) {
                    com.alipay.sdk.app.statistic.a.a(com.alipay.sdk.app.statistic.c.b, com.alipay.sdk.app.statistic.c.r, th);
                    c();
                    jVar = null;
                }
            } catch (IOException e2) {
                j a4 = j.a(j.NETWORK_ERROR.h);
                com.alipay.sdk.app.statistic.a.a(com.alipay.sdk.app.statistic.c.a, e2);
                c();
                jVar = a4;
            }
            if (jVar == null) {
                jVar = j.a(j.FAILED.h);
            }
            return i.a(jVar.h, jVar.i, "");
        } finally {
            c();
        }
    }

    private String a(com.alipay.sdk.protocol.b bVar) {
        String a2;
        String[] strArr = bVar.b;
        Intent intent = new Intent(this.b, (Class<?>) H5PayActivity.class);
        Bundle bundle = new Bundle();
        bundle.putString("url", strArr[0]);
        if (strArr.length == 2) {
            bundle.putString("cookie", strArr[1]);
        }
        intent.putExtras(bundle);
        this.b.startActivity(intent);
        synchronized (a) {
            try {
                a.wait();
            } catch (InterruptedException e) {
                a2 = i.a();
            }
        }
        a2 = i.a;
        if (TextUtils.isEmpty(a2)) {
            a2 = i.a();
        }
        return a2;
    }
}
