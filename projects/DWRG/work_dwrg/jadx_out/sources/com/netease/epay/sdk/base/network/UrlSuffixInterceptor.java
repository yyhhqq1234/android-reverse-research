package com.netease.epay.sdk.base.network;

import android.text.TextUtils;
import com.netease.epay.sdk.base.util.LogUtil;
import com.netease.epay.sdk.model.JsonBuilder;
import java.net.URLEncoder;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class UrlSuffixInterceptor implements Interceptor {
    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) {
        Request build;
        StringBuilder sb = new StringBuilder();
        JSONObject jSONObject = null;
        if (chain.request().tag() != null && (chain.request().tag() instanceof EpayNetRequest)) {
            EpayNetRequest epayNetRequest = (EpayNetRequest) chain.request().tag();
            if (epayNetRequest.preParamsRequestInit != null) {
                epayNetRequest.reqParams = epayNetRequest.preParamsRequestInit.getJsonObject();
            }
            JSONObject jSONObject2 = epayNetRequest.reqParams;
            String optString = jSONObject2.optString("appName");
            String optString2 = jSONObject2.optString("appVersion");
            String optString3 = jSONObject2.optString("platformId");
            String optString4 = jSONObject2.optString(JsonBuilder.APPPLATFORM_ID);
            StringBuilder append = sb.append("?appName=");
            if (TextUtils.isEmpty(optString)) {
                optString = "";
            }
            append.append(URLEncoder.encode(optString, "utf-8")).append("&appVersion=").append(optString2).append("&platformId=").append(optString3).append("&appPlatformId=").append(optString4);
            jSONObject = jSONObject2;
        }
        String str = chain.request().url().toString() + ((Object) sb);
        LogUtil.d("full url:" + str);
        try {
            build = chain.request().newBuilder().post(Base64DataConverter.convert(jSONObject)).url(str).build();
        } catch (Exception e) {
            e.printStackTrace();
            build = chain.request().newBuilder().url(str).build();
        }
        return chain.proceed(build);
    }
}
