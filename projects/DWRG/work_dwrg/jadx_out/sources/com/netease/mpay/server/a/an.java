package com.netease.mpay.server.a;

import android.content.Context;
import com.dodola.rocoo.Hack;
import com.netease.epay.sdk.pay.PayConstants;
import com.netease.mpay.server.response.OrderInit;
import com.netease.unisdk.gmbridge.utils.ResIdReader;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class an extends ax {
    String a;
    String b;

    public an(String str, String str2, String str3, String str4) {
        super(0, "/games/" + str + "/orders/" + str4 + "/init");
        this.a = str2;
        this.b = str3;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(String str) {
        if ("ecard".equals(str)) {
            return "ecard";
        }
        if ("alipay".equals(str)) {
            return "alipay";
        }
        if ("mobilecard".equals(str)) {
            return "mcard";
        }
        if ("unionpay".equals(str)) {
            return "uppay";
        }
        if ("bankcard".equals(str)) {
            return "bankcard";
        }
        if ("epay".equals(str)) {
            return "epay";
        }
        if ("weixinpay".equals(str)) {
            return "weixinpay";
        }
        if ("weixinpayqr".equals(str)) {
            return "weixinpayqr";
        }
        if ("alipayqr".equals(str)) {
            return "alipayqr";
        }
        if ("tenpay".equals(str)) {
            return "tenpay";
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.server.a.ax
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public OrderInit b(Context context, JSONObject jSONObject) {
        OrderInit orderInit = new OrderInit();
        orderInit.a = e(a(jSONObject, "game"), "name");
        JSONObject a = a(jSONObject, "order");
        orderInit.b = e(a, "goods_name");
        orderInit.c = e(a, "price");
        orderInit.d = e(a, "discount_price");
        orderInit.e = e(a, "discount_reason");
        JSONArray c = c(jSONObject, "pay_methods");
        orderInit.f = new ArrayList();
        if (c != null && c.length() > 0) {
            for (int i = 0; i < c.length(); i++) {
                JSONObject a2 = a(c, i);
                OrderInit.PayChannel payChannel = new OrderInit.PayChannel();
                String e = e(a2, "key");
                payChannel.a = a(e);
                if (payChannel.a != null) {
                    payChannel.b = e(a2, "name");
                    payChannel.c = e(a2, "description");
                    payChannel.d = e(a2, "icon_url");
                    payChannel.g = orderInit.c;
                    payChannel.e = k(a2, "enabled");
                    if (payChannel.e) {
                        payChannel.h = a(a2, "discount_price", orderInit.c);
                        payChannel.i = f(a2, "discount_reason");
                    } else {
                        payChannel.f = f(a2, "reason");
                    }
                    payChannel.j = l(a2, "hot");
                    payChannel.k = h(a2, "status");
                    if (payChannel.e) {
                        if ("ecard".equals(e)) {
                            payChannel.l = h(a2, PayConstants.PAY_METHOD_BALABCE);
                        } else if ("mobilecard".equals(e)) {
                            payChannel.m = f(a2, "select_amounts");
                        }
                    }
                    orderInit.f.add(payChannel);
                }
            }
        }
        return orderInit;
    }

    @Override // com.netease.mpay.server.a.ax
    protected ArrayList a(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.netease.mpay.widget.a.a(ResIdReader.RES_TYPE_ID, this.a));
        arrayList.add(new com.netease.mpay.widget.a.a("token", this.b));
        return arrayList;
    }
}
