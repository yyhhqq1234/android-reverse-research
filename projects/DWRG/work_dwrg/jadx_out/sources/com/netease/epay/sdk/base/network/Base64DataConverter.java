package com.netease.epay.sdk.base.network;

import android.text.TextUtils;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.epay.sdk.base.util.DigestUtil;
import com.netease.epay.sdk.base.util.ErrorCode;
import com.netease.epay.sdk.base.util.LogUtil;
import com.netease.epay.sdk.base.util.SdkBase64;
import com.netease.epay.sdk.model.JsonBuilder;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Enumeration;
import java.util.Hashtable;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okhttp3.Response;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class Base64DataConverter {
    private static final MediaType MEDIA_TYPE = MediaType.parse("application/x-www-form-urlencoded; charset=UTF-8");
    private static final String encode = "utf-8";

    public static RequestBody convert(JSONObject value) {
        String encode2 = SdkBase64.encode(value.toString().getBytes(encode));
        String optString = value.optString(JsonBuilder.SESSION_ID);
        String flexibleSecret = TextUtils.isEmpty(optString) ? BaseConstants.SECRET_CODE : DigestUtil.getFlexibleSecret(optString);
        Hashtable hashtable = new Hashtable();
        hashtable.put("sign", DigestUtil.getMd5WithSecret(encode2, flexibleSecret));
        hashtable.put("msg", encode2);
        return RequestBody.create(MEDIA_TYPE, params2String(hashtable).getBytes(encode));
    }

    public static String convert(Response value) {
        String str;
        String str2;
        String str3;
        JSONObject jSONObject;
        String str4 = null;
        try {
            String str5 = new String(value.body().bytes(), encode);
            try {
                jSONObject = new JSONObject(str5);
                str = jSONObject.optString("msg");
            } catch (JSONException e) {
                e = e;
                str = null;
            }
            try {
                str4 = jSONObject.optString("sign");
                str2 = str;
            } catch (JSONException e2) {
                e = e2;
                e.printStackTrace();
                LogUtil.d("error network response:" + str5);
                str2 = str;
                if (value.request() != null) {
                }
                str3 = BaseConstants.SECRET_CODE;
                if (str4 == null) {
                }
                return String.format(BaseConstants.FAIL_NET_RESPONSE_FORMAT, ErrorCode.FAIL_ERROR_SERVER_SIGN, ErrorCode.FAIL_ERROR_SIGN_STRING);
            }
            if (value.request() != null || value.request().tag() == null || !(value.request().tag() instanceof EpayNetRequest) || ((EpayNetRequest) value.request().tag()).reqParams == null) {
                str3 = BaseConstants.SECRET_CODE;
            } else {
                String optString = ((EpayNetRequest) value.request().tag()).reqParams.optString(JsonBuilder.SESSION_ID);
                str3 = TextUtils.isEmpty(optString) ? BaseConstants.SECRET_CODE : DigestUtil.getFlexibleSecret(optString);
            }
            if (str4 == null && str4.equals(DigestUtil.getMd5WithSecret(str2, str3))) {
                return new String(SdkBase64.decode(str2), encode);
            }
            return String.format(BaseConstants.FAIL_NET_RESPONSE_FORMAT, ErrorCode.FAIL_ERROR_SERVER_SIGN, ErrorCode.FAIL_ERROR_SIGN_STRING);
        } catch (IOException e3) {
            e3.printStackTrace();
            return String.format(BaseConstants.FAIL_NET_RESPONSE_FORMAT, ErrorCode.FAIL_NETWORK_ERROR, e3.getMessage());
        }
    }

    private static String params2String(Hashtable<String, String> params) {
        if (params == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        Enumeration<String> keys = params.keys();
        while (keys.hasMoreElements()) {
            String nextElement = keys.nextElement();
            if (nextElement != null) {
                String str = params.get(nextElement);
                stringBuffer.append(nextElement);
                stringBuffer.append('=');
                try {
                    stringBuffer.append(URLEncoder.encode(str, encode));
                } catch (UnsupportedEncodingException e) {
                    stringBuffer.append("");
                }
                stringBuffer.append('&');
            }
        }
        if (stringBuffer.length() > 1) {
            stringBuffer.deleteCharAt(stringBuffer.length() - 1);
        }
        return stringBuffer.toString();
    }
}
