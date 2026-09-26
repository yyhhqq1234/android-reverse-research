package com.netease.epay.sdk.pay.c;

import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import com.netease.epay.sdk.NetCallback;
import com.netease.epay.sdk.base.core.BaseData;
import com.netease.epay.sdk.base.network.HttpClient;
import com.netease.epay.sdk.base.network.INetCallback;
import com.netease.epay.sdk.base.network.NewBaseResponse;
import com.netease.epay.sdk.base.util.LogUtil;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.model.JsonBuilder;
import com.netease.epay.sdk.pay.PayConstants;
import com.netease.epay.sdk.pay.model.GetPayActiveResponse;
import com.netease.epay.sdk.pay.ui.n;
import org.json.JSONObject;

/* compiled from: GetRedPapersPresenter.java */
/* loaded from: classes.dex */
public class f {
    private n c;
    private long d;
    private long e;
    private String g;
    private Handler f = new Handler();
    NetCallback<GetPayActiveResponse> a = new NetCallback<GetPayActiveResponse>() { // from class: com.netease.epay.sdk.pay.c.f.1
        @Override // com.netease.epay.sdk.base.network.INetCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void success(FragmentActivity fragmentActivity, GetPayActiveResponse getPayActiveResponse) {
            f.this.g = getPayActiveResponse.activeUrl;
            if (getPayActiveResponse.hasUrl()) {
                f.this.e();
                return;
            }
            if (getPayActiveResponse.hasPromotion) {
                long currentTimeMillis = System.currentTimeMillis() - f.this.e;
                if (currentTimeMillis >= 500) {
                    f.this.d();
                } else {
                    f.this.f.postDelayed(f.this.b, 500 - currentTimeMillis);
                }
            }
        }

        @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
        public boolean parseFailureBySelf(NewBaseResponse response) {
            f.this.c();
            return true;
        }
    };
    Runnable b = new Runnable() { // from class: com.netease.epay.sdk.pay.c.f.2
        @Override // java.lang.Runnable
        public void run() {
            f.this.d();
        }
    };

    public f(n nVar) {
        this.c = nVar;
    }

    public void a() {
        this.d = System.currentTimeMillis();
        d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        long currentTimeMillis = System.currentTimeMillis() - this.e;
        if (currentTimeMillis >= 500) {
            d();
        } else {
            this.f.postDelayed(this.b, 500 - currentTimeMillis);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (this.e - this.d >= 2000) {
            LogUtil.d("结束重试：上一次距最开始时间:" + (this.e - this.d));
            e();
            return;
        }
        if (!TextUtils.isEmpty(BaseData.sessionId)) {
            JSONObject build = new JsonBuilder().build();
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("cookieType", BaseData.cookieType);
                jSONObject.put("cookieVal", BaseData.cookie);
                jSONObject.put("type", "COOKIE");
            } catch (Exception e) {
                e.printStackTrace();
            }
            LogicUtil.jsonPut(build, "loginParamDto", jSONObject);
            HttpClient.startRequest(PayConstants.isShow_succ_active_info, build, false, (FragmentActivity) null, (INetCallback) this.a);
            this.e = System.currentTimeMillis();
            LogUtil.d("此次距离最开始的执行时间:" + (this.e - this.d));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        if (this.c != null && this.c.isVisible()) {
            this.c.a(this.g);
        }
    }

    public void b() {
        this.f.removeCallbacksAndMessages(null);
    }
}
