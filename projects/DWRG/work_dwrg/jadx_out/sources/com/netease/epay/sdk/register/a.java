package com.netease.epay.sdk.register;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.webkit.CookieSyncManager;
import com.netease.epay.sdk.Constants;
import com.netease.epay.sdk.NetCallback;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.epay.sdk.base.core.BaseData;
import com.netease.epay.sdk.base.network.FileDownloader;
import com.netease.epay.sdk.base.network.HttpClient;
import com.netease.epay.sdk.base.network.INetCallback;
import com.netease.epay.sdk.base.network.NewBaseResponse;
import com.netease.epay.sdk.base.ui.SdkActivity;
import com.netease.epay.sdk.base.util.AppUtils;
import com.netease.epay.sdk.base.util.FileUtil;
import com.netease.epay.sdk.base.util.LogUtil;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.base.util.SharedPreferencesUtil;
import com.netease.epay.sdk.model.CommonNotesData;
import com.netease.epay.sdk.model.GetCookieByToken;
import com.netease.epay.sdk.model.JsonBuilder;
import com.netease.epay.sdk.model.RegisterData;
import com.netease.epay.sdk.model.SenseTimeLicenceInfo;
import com.netease.mobsecurity.interfacejni.SecruityInfo;
import java.io.File;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: RegisterDeviceRequest.java */
/* loaded from: classes.dex */
public class a {
    private boolean a;
    private Context b;
    private InterfaceC0022a c;

    /* compiled from: RegisterDeviceRequest.java */
    /* renamed from: com.netease.epay.sdk.register.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0022a {
        void a();

        void a(NewBaseResponse newBaseResponse);
    }

    public a(Context context, InterfaceC0022a interfaceC0022a) {
        this.a = false;
        this.b = context;
        this.c = interfaceC0022a;
        BaseData.appId = context.getPackageName();
        BaseData.appNameFromSelf = AppUtils.getApplicationName(context);
        BaseData.appVersionFromSelf = AppUtils.getAppVersionName(context);
        try {
            CookieSyncManager.createInstance(context.getApplicationContext());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public a(Activity activity, InterfaceC0022a interfaceC0022a, boolean z) {
        this(activity, interfaceC0022a);
        this.a = z;
    }

    public void a() {
        BaseData.riskInfo = a(this.b.getApplicationContext(), 0.0d, 0.0d);
        BaseData.deviceId = new SecruityInfo(this.b.getApplicationContext()).getUUID(101);
        JSONObject build = new JsonBuilder().build();
        try {
            build.put("deviceId", BaseData.deviceId);
            if (TextUtils.isEmpty(BaseData.cookie)) {
                build.put("loginId", BaseData.loginId);
                build.put("loginToken", BaseData.loginToken);
            } else {
                build.put("cookie", BaseData.cookie);
                build.put("cookieType", BaseData.cookieType);
            }
            build.put("sessionExpiredLevel", "middle");
            build.put("appPlatformTime", BaseData.timeStamp);
            build.put("appPlatformSign", BaseData.platformSign);
            build.put("appPlatformSignExpireTime", BaseData.platformSignExpireTime);
            build.put("riskInfo", BaseData.riskInfo);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        SdkActivity sdkActivity = this.b instanceof SdkActivity ? (SdkActivity) this.b : null;
        HttpClient.startRequest(BaseConstants.registDeviceUrl, build, true, sdkActivity, new NetCallback<RegisterData>() { // from class: com.netease.epay.sdk.register.a.1
            @Override // com.netease.epay.sdk.base.network.INetCallback
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public void success(FragmentActivity fragmentActivity, RegisterData registerData) {
                BaseData.sessionId = registerData.sessionId;
                BaseData.accountId = registerData.accountId;
                BaseData.wordStart = Integer.valueOf(registerData.shortPwdEncodeFactor.word.index).intValue();
                BaseData.wordEnd = Integer.valueOf(registerData.shortPwdEncodeFactor.word.range).intValue() + BaseData.wordStart;
                BaseData.mStart = Integer.valueOf(registerData.shortPwdEncodeFactor.m.index).intValue();
                BaseData.mEnd = Integer.valueOf(registerData.shortPwdEncodeFactor.m.range).intValue() + BaseData.mStart;
                BaseData.nStart = Integer.valueOf(registerData.shortPwdEncodeFactor.n.index).intValue();
                BaseData.nEnd = Integer.valueOf(registerData.shortPwdEncodeFactor.n.range).intValue() + BaseData.nStart;
                a.this.c.a();
                if (a.this.a) {
                    a.this.a(fragmentActivity);
                }
                a.this.b();
                a.this.c();
            }

            @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
            public boolean parseFailureBySelf(NewBaseResponse response) {
                a.this.c.a(response);
                return true;
            }
        }, !AppUtils.isEpayApp(sdkActivity));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (TextUtils.isEmpty(BaseData.cookie)) {
            JSONObject build = new JsonBuilder().build();
            LogicUtil.jsonPut(build, "loginId", BaseData.loginId);
            LogicUtil.jsonPut(build, "loginToken", BaseData.loginToken);
            LogicUtil.jsonPut(build, "loginKey", BaseData.neURSKey);
            HttpClient.startRequest(BaseConstants.GET_COOKIE_BY_TOKEN, build, true, (FragmentActivity) (this.b instanceof SdkActivity ? (SdkActivity) this.b : null), (INetCallback) new NetCallback<GetCookieByToken>() { // from class: com.netease.epay.sdk.register.a.2
                @Override // com.netease.epay.sdk.base.network.INetCallback
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public void success(FragmentActivity fragmentActivity, GetCookieByToken getCookieByToken) {
                    BaseData.cookie = getCookieByToken.cookie;
                    BaseData.cookieType = getCookieByToken.cookieType;
                }

                @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
                public boolean parseFailureBySelf(NewBaseResponse response) {
                    return true;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(FragmentActivity fragmentActivity) {
        HttpClient.startRequest(BaseConstants.getCommonNotesUrl, new JsonBuilder().build(), false, (FragmentActivity) null, (INetCallback) new NetCallback<CommonNotesData>() { // from class: com.netease.epay.sdk.register.a.3
            @Override // com.netease.epay.sdk.base.network.INetCallback
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public void success(FragmentActivity fragmentActivity2, CommonNotesData commonNotesData) {
                BaseData.servicePhone = commonNotesData.serviceMobile;
            }

            @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
            public boolean parseFailureBySelf(NewBaseResponse response) {
                return true;
            }
        });
    }

    private JSONObject a(Context context, double d, double d2) {
        JSONObject jSONObject = null;
        if (context != null && (Build.VERSION.SDK_INT < 23 || context.checkSelfPermission("android.permission.READ_PHONE_STATE") == 0)) {
            SecruityInfo secruityInfo = new SecruityInfo(context);
            try {
                if (d == 0.0d && d2 == 0.0d) {
                    jSONObject = new JSONObject(secruityInfo.getSecInfo());
                } else {
                    jSONObject = new JSONObject(secruityInfo.getSecInfo(d, d2));
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        return jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        HttpClient.startRequest(BaseConstants.getFaceLicenceUrl, new JsonBuilder().build(), false, (FragmentActivity) null, (INetCallback) new NetCallback<SenseTimeLicenceInfo>() { // from class: com.netease.epay.sdk.register.a.4
            @Override // com.netease.epay.sdk.base.network.INetCallback
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public void success(FragmentActivity fragmentActivity, final SenseTimeLicenceInfo senseTimeLicenceInfo) {
                String licenceDownloadUrl = senseTimeLicenceInfo.getLicenceDownloadUrl();
                File file = new File(FileUtil.getExternalFilePath(a.this.b, BaseConstants.SENSETIME_LIC_FILE_NAME));
                String md5 = FileUtil.getMd5(file);
                LogUtil.d("SenseID_OCR md5:" + md5);
                LogUtil.d("net lic md5:" + senseTimeLicenceInfo.getLicenceMd5());
                if (!TextUtils.isEmpty(senseTimeLicenceInfo.getLicenceMd5()) && !senseTimeLicenceInfo.getLicenceMd5().equals(md5)) {
                    if (file.exists()) {
                        file.delete();
                    }
                    new FileDownloader().start(licenceDownloadUrl, file, new FileDownloader.DownloadListener() { // from class: com.netease.epay.sdk.register.a.4.1
                        @Override // com.netease.epay.sdk.base.network.FileDownloader.DownloadListener
                        public void onSuccess(File file2) {
                            SharedPreferencesUtil.writeString(a.this.b, Constants.SHARED_ST_LIC_FILE_MD5, senseTimeLicenceInfo.getLicenceMd5());
                        }

                        @Override // com.netease.epay.sdk.base.network.FileDownloader.DownloadListener
                        public void onFailed(String infos) {
                        }
                    });
                }
            }
        });
    }
}
