package com.tencent.mm.opensdk.diffdev.a;

import android.os.AsyncTask;
import com.netease.cloud.nos.android.constants.Code;
import com.tencent.mm.opensdk.diffdev.OAuthErrCode;
import com.tencent.mm.opensdk.diffdev.OAuthListener;
import com.tencent.mm.opensdk.utils.Log;
import org.json.JSONObject;

/* loaded from: classes.dex */
final class f extends AsyncTask<Void, Void, a> {
    private OAuthListener m;
    private String p;
    private String url;
    private int v;

    /* loaded from: classes.dex */
    static class a {
        public OAuthErrCode o;
        public String w;
        public int x;

        a() {
        }

        public static a b(byte[] bArr) {
            a aVar = new a();
            if (bArr == null || bArr.length == 0) {
                Log.e("MicroMsg.SDK.NoopingResult", "parse fail, buf is null");
                aVar.o = OAuthErrCode.WechatAuth_Err_NetworkErr;
            } else {
                try {
                    try {
                        JSONObject jSONObject = new JSONObject(new String(bArr, "utf-8"));
                        aVar.x = jSONObject.getInt("wx_errcode");
                        Log.d("MicroMsg.SDK.NoopingResult", String.format("nooping uuidStatusCode = %d", Integer.valueOf(aVar.x)));
                        switch (aVar.x) {
                            case 402:
                                aVar.o = OAuthErrCode.WechatAuth_Err_Timeout;
                                break;
                            case Code.INVALID_TOKEN /* 403 */:
                                aVar.o = OAuthErrCode.WechatAuth_Err_Cancel;
                                break;
                            case 404:
                                aVar.o = OAuthErrCode.WechatAuth_Err_OK;
                                break;
                            case 405:
                                aVar.o = OAuthErrCode.WechatAuth_Err_OK;
                                aVar.w = jSONObject.getString("wx_code");
                                break;
                            case 408:
                                aVar.o = OAuthErrCode.WechatAuth_Err_OK;
                                break;
                            case 500:
                                aVar.o = OAuthErrCode.WechatAuth_Err_NormalErr;
                                break;
                            default:
                                aVar.o = OAuthErrCode.WechatAuth_Err_NormalErr;
                                break;
                        }
                    } catch (Exception e) {
                        Log.e("MicroMsg.SDK.NoopingResult", String.format("parse json fail, ex = %s", e.getMessage()));
                        aVar.o = OAuthErrCode.WechatAuth_Err_NormalErr;
                    }
                } catch (Exception e2) {
                    Log.e("MicroMsg.SDK.NoopingResult", String.format("parse fail, build String fail, ex = %s", e2.getMessage()));
                    aVar.o = OAuthErrCode.WechatAuth_Err_NormalErr;
                }
            }
            return aVar;
        }
    }

    public f(String str, OAuthListener oAuthListener) {
        this.p = str;
        this.m = oAuthListener;
        this.url = String.format("https://long.open.weixin.qq.com/connect/l/qrconnect?f=json&uuid=%s", str);
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ a doInBackground(Void[] voidArr) {
        if (this.p == null || this.p.length() == 0) {
            Log.e("MicroMsg.SDK.NoopingTask", "run fail, uuid is null");
            a aVar = new a();
            aVar.o = OAuthErrCode.WechatAuth_Err_NormalErr;
            return aVar;
        }
        while (!isCancelled()) {
            String str = this.url + (this.v == 0 ? "" : "&last=" + this.v);
            long currentTimeMillis = System.currentTimeMillis();
            byte[] a2 = e.a(str, 60000);
            long currentTimeMillis2 = System.currentTimeMillis();
            a b = a.b(a2);
            Log.d("MicroMsg.SDK.NoopingTask", String.format("nooping, url = %s, errCode = %s, uuidStatusCode = %d, time consumed = %d(ms)", str, b.o.toString(), Integer.valueOf(b.x), Long.valueOf(currentTimeMillis2 - currentTimeMillis)));
            if (b.o != OAuthErrCode.WechatAuth_Err_OK) {
                Log.e("MicroMsg.SDK.NoopingTask", String.format("nooping fail, errCode = %s, uuidStatusCode = %d", b.o.toString(), Integer.valueOf(b.x)));
                return b;
            }
            this.v = b.x;
            if (b.x == g.UUID_SCANED.getCode()) {
                this.m.onQrcodeScanned();
            } else if (b.x != g.UUID_KEEP_CONNECT.getCode() && b.x == g.UUID_CONFIRM.getCode()) {
                if (b.w != null && b.w.length() != 0) {
                    return b;
                }
                Log.e("MicroMsg.SDK.NoopingTask", "nooping fail, confirm with an empty code!!!");
                b.o = OAuthErrCode.WechatAuth_Err_NormalErr;
                return b;
            }
        }
        Log.i("MicroMsg.SDK.NoopingTask", "IDiffDevOAuth.stopAuth / detach invoked");
        a aVar2 = new a();
        aVar2.o = OAuthErrCode.WechatAuth_Err_Auth_Stopped;
        return aVar2;
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ void onPostExecute(a aVar) {
        a aVar2 = aVar;
        this.m.onAuthFinish(aVar2.o, aVar2.w);
    }
}
