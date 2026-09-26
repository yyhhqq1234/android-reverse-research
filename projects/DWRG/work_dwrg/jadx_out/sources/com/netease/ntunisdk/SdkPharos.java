package com.netease.ntunisdk;

import android.app.Activity;
import android.content.Context;
import com.netease.ntunisdk.base.OnFinishInitListener;
import com.netease.ntunisdk.base.OrderInfo;
import com.netease.ntunisdk.base.SdkBase;
import com.netease.ntunisdk.base.UniSdkUtils;

/* loaded from: classes.dex */
public class SdkPharos extends SdkBase {
    private static final String CHANNEL = "pharos";
    private static final String TAG = "SdkPharos";
    private static final String VER = "1.1.5";
    private Context mContext;
    private boolean mForceOpen;

    public SdkPharos(Context ctx) {
        super(ctx);
        this.mContext = null;
        this.mForceOpen = false;
        this.mContext = ctx;
        setPropInt("INNER_MODE_NO_PAY", 1);
        setPropInt("INNER_MODE_SECOND_CHANNEL", 1);
    }

    public void init(OnFinishInitListener initListner) {
        UniSdkUtils.d(TAG, "init");
        initListner.finishInit(2);
    }

    public void login() {
    }

    public String getLoginSession() {
        return hasLogin() ? getPropStr("SESSION") : "not_login";
    }

    public String getLoginUid() {
        return !hasLogin() ? "" : getPropStr("UIN");
    }

    public void checkOrder(OrderInfo order) {
    }

    public void logout() {
    }

    public void openManager() {
    }

    public String getChannel() {
        return CHANNEL;
    }

    public void upLoadUserInfo() {
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x008c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void extendFunc(java.lang.String r17) {
        /*
            Method dump skipped, instructions count: 468
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.netease.ntunisdk.SdkPharos.extendFunc(java.lang.String):void");
    }

    private boolean checkCtx() {
        return this.myCtx != null && (this.myCtx instanceof Activity);
    }

    public String getSDKVersion() {
        return "1.1.5";
    }

    public String getUniSDKVersion() {
        return "1.1.5";
    }
}
