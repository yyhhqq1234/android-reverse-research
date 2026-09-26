package com.netease.mpay.auth;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;
import com.dodola.rocoo.Hack;
import com.netease.mpay.auth.b;
import com.netease.mpay.widget.RIdentifier;
import com.tencent.mm.opensdk.modelbase.BaseReq;
import com.tencent.mm.opensdk.modelbase.BaseResp;
import com.tencent.mm.opensdk.modelmsg.SendAuth;
import com.tencent.mm.opensdk.openapi.IWXAPI;
import com.tencent.mm.opensdk.openapi.IWXAPIEventHandler;
import com.tencent.mm.opensdk.openapi.WXAPIFactory;

/* loaded from: classes.dex */
public class WeixinHandlerActivity extends Activity implements IWXAPIEventHandler {
    private IWXAPI a;
    private Resources b;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a {
        int a;
        String b;

        public a(int i, String str) {
            this.a = i;
            this.b = str;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    public WeixinHandlerActivity() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private void a(a aVar) {
        LocalBroadcastManager.getInstance(this).sendBroadcast(b.c.a(aVar.a, aVar.b));
        finish();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        RIdentifier.init(this);
        this.b = getResources();
        this.a = WXAPIFactory.createWXAPI(this, b.a(), false);
        this.a.handleIntent(getIntent(), this);
    }

    public void onReq(BaseReq baseReq) {
    }

    public void onResp(BaseResp baseResp) {
        try {
            SendAuth.Resp resp = (SendAuth.Resp) baseResp;
            if (!new b.a(this).a(resp.state)) {
                throw new Exception();
            }
            switch (resp.errCode) {
                case -4:
                    a(new a(3, this.b.getString(RIdentifier.h.aw)));
                    return;
                case -3:
                case -1:
                default:
                    a(new a(1, this.b.getString(RIdentifier.h.aw)));
                    return;
                case -2:
                    a(new a(2, this.b.getString(RIdentifier.h.aw)));
                    return;
                case 0:
                    a(new a(0, resp.code));
                    return;
            }
        } catch (Exception e) {
            a(new a(1, this.b.getString(RIdentifier.h.aw)));
        }
    }
}
