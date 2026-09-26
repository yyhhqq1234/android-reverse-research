package com.alipay.sdk.auth;

import android.app.Activity;
import android.content.Intent;
import android.text.TextUtils;
import com.sina.weibo.sdk.constant.WBConstants;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class i implements Runnable {
    final /* synthetic */ Activity a;
    final /* synthetic */ StringBuilder b;
    final /* synthetic */ APAuthInfo c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(Activity activity, StringBuilder sb, APAuthInfo aPAuthInfo) {
        this.a = activity;
        this.b = sb;
        this.c = aPAuthInfo;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.alipay.sdk.widget.a aVar;
        com.alipay.sdk.widget.a aVar2;
        com.alipay.sdk.widget.a aVar3;
        com.alipay.sdk.widget.a aVar4;
        com.alipay.sdk.widget.a aVar5;
        String str;
        String str2;
        com.alipay.sdk.widget.a aVar6;
        com.alipay.sdk.widget.a aVar7;
        String str3;
        com.alipay.sdk.widget.a aVar8;
        com.alipay.sdk.widget.a aVar9;
        String str4;
        com.alipay.sdk.widget.a aVar10;
        com.alipay.sdk.widget.a aVar11;
        com.alipay.sdk.widget.a aVar12;
        int i = 0;
        try {
            com.alipay.sdk.packet.b bVar = null;
            try {
                bVar = new com.alipay.sdk.packet.impl.a().a(this.a, this.b.toString());
            } catch (Throwable th) {
            }
            aVar5 = h.c;
            if (aVar5 != null) {
                aVar12 = h.c;
                aVar12.b();
                h.b();
            }
            if (bVar == null) {
                String unused = h.d = this.c.getRedirectUri() + "?resultCode=202";
                Activity activity = this.a;
                str4 = h.d;
                h.a(activity, str4);
                aVar10 = h.c;
                if (aVar10 != null) {
                    aVar11 = h.c;
                    aVar11.b();
                    return;
                }
                return;
            }
            List<com.alipay.sdk.protocol.b> a = com.alipay.sdk.protocol.b.a(bVar.a().optJSONObject(com.alipay.sdk.cons.c.c).optJSONObject(com.alipay.sdk.cons.c.d));
            while (true) {
                int i2 = i;
                if (i2 >= a.size()) {
                    break;
                }
                if (a.get(i2).a == com.alipay.sdk.protocol.a.WapPay) {
                    String unused2 = h.d = a.get(i2).b[0];
                    break;
                }
                i = i2 + 1;
            }
            str = h.d;
            if (TextUtils.isEmpty(str)) {
                String unused3 = h.d = this.c.getRedirectUri() + "?resultCode=202";
                Activity activity2 = this.a;
                str3 = h.d;
                h.a(activity2, str3);
                aVar8 = h.c;
                if (aVar8 != null) {
                    aVar9 = h.c;
                    aVar9.b();
                    return;
                }
                return;
            }
            Intent intent = new Intent(this.a, (Class<?>) AuthActivity.class);
            str2 = h.d;
            intent.putExtra("params", str2);
            intent.putExtra(WBConstants.SSO_REDIRECT_URL, this.c.getRedirectUri());
            this.a.startActivity(intent);
            aVar6 = h.c;
            if (aVar6 != null) {
                aVar7 = h.c;
                aVar7.b();
            }
        } catch (Exception e) {
            aVar3 = h.c;
            if (aVar3 != null) {
                aVar4 = h.c;
                aVar4.b();
            }
        } catch (Throwable th2) {
            aVar = h.c;
            if (aVar != null) {
                aVar2 = h.c;
                aVar2.b();
            }
            throw th2;
        }
    }
}
