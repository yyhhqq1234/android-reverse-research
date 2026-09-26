package com.netease.mpay.widget;

import android.content.Context;
import com.dodola.rocoo.Hack;
import com.netease.download.Const;
import com.netease.mcount.MCountAgent;
import com.netease.mpay.RoleInfoKeys;
import com.netease.mpay.widget.aw;
import com.sina.weibo.sdk.constant.WBConstants;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ay {
    private static ay a;

    private ay(Context context, String str) {
        MCountAgent.init(context, str);
        MCountAgent.onStart(context);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static ay a(Context context, String str) {
        if (a != null) {
            return a;
        }
        a = new ay(context, str);
        return a;
    }

    private String a() {
        return aw.b.b() + "";
    }

    public static String a(String str, String str2) {
        try {
            StringBuilder sb = new StringBuilder(str);
            sb.append(str.equals("") ? "" : com.alipay.sdk.util.i.b);
            sb.append(str2);
            return sb.toString();
        } catch (NullPointerException e) {
            return null;
        }
    }

    private HashMap a(String str, String str2, String str3, int i) {
        HashMap hashMap = new HashMap();
        hashMap.put("game_alias", str);
        hashMap.put("app_ver", "a2.14.1");
        hashMap.put("account_id", str2);
        if (str3 != null) {
            str2 = str3;
        }
        hashMap.put("old_accountid", str2);
        hashMap.put("is_visitor", Integer.valueOf(2 == i ? 1 : 0));
        return hashMap;
    }

    private void a(Context context, String str, String str2, String str3, int i, String str4, String str5, String str6, String str7, boolean z) {
        HashMap a2 = a(str, str2, str3, i);
        a2.put("begin_time", a());
        a2.put("page_name", str4);
        a2.put("button_name", str5);
        a2.put("target_game", str6);
        a2.put("state", Integer.valueOf(z ? 0 : 1));
        a2.put("click_path", str7);
        MCountAgent.logEvent(context, "SydrMonitor", a2);
    }

    public void a(int i) {
        MCountAgent.setUploadInterval(i);
    }

    public void a(long j) {
        MCountAgent.setTimeOffsetSec(j);
    }

    public void a(Context context) {
        MCountAgent.onStop(context);
        a = null;
    }

    public void a(Context context, String str, String str2, String str3, int i, String str4) {
        HashMap a2 = a(str, str2, str3, i);
        a2.put("login_time", a());
        a2.put("page_name", str4);
        MCountAgent.logEvent(context, "LoginSydrPage", a2);
    }

    public void a(Context context, String str, String str2, String str3, int i, String str4, String str5) {
        HashMap a2 = a(str, str2, str3, i);
        a2.put("login_time", a());
        a2.put("page_name", str4);
        a2.put("click_path", str5);
        MCountAgent.logEvent(context, "LoginSydrPage", a2);
    }

    public void a(Context context, String str, String str2, String str3, int i, String str4, String str5, String str6) {
        a(context, str, str2, str3, i, str4, str5, str6, null, true);
    }

    public void a(Context context, String str, String str2, String str3, int i, String str4, String str5, String str6, boolean z) {
        a(context, str, str2, str3, i, str4, str5, "", str6, z);
    }

    public void a(Context context, String str, String str2, String str3, int i, String str4, String str5, boolean z) {
        a(context, str, str2, str3, i, str4, str5, "", null, z);
    }

    public void a(Context context, String str, String str2, String str3, String str4) {
        HashMap hashMap = new HashMap();
        hashMap.put(WBConstants.GAME_PARAMS_GAME_ID, str);
        hashMap.put("device_id", str2);
        hashMap.put("report", str3);
        hashMap.put("cv", str4);
        MCountAgent.logEvent(context, "network-test", hashMap);
    }

    public void a(Context context, String str, String str2, String str3, String str4, String str5) {
        HashMap hashMap = new HashMap();
        hashMap.put("game_alias", str);
        hashMap.put("device_id", str2);
        hashMap.put("register_type", str3);
        hashMap.put("register_op", str4);
        hashMap.put("account_id", str5);
        hashMap.put("register_time", a());
        MCountAgent.logEvent(context, "RegisterSydr", hashMap);
    }

    public void a(Context context, String str, String str2, String str3, String str4, String str5, long[][] jArr, String str6) {
        if (jArr == null || jArr.length <= 0) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put(WBConstants.GAME_PARAMS_GAME_ID, str);
        hashMap.put("device_id", str2);
        hashMap.put("user_id", str3);
        if (str4 != null) {
            hashMap.put(RoleInfoKeys.KEY_ROLE_ID, str4);
        }
        if (str5 != null) {
            hashMap.put(RoleInfoKeys.KEY_HOST_ID, str5);
        }
        JSONArray jSONArray = new JSONArray();
        for (long[] jArr2 : jArr) {
            if (jArr2 != null && jArr2.length >= 2) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put(Const.LOG_TYPE_STATE_START, jArr2[0]);
                    jSONObject.put("stop", jArr2[1]);
                    jSONArray.put(jSONObject);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        }
        hashMap.put("online_intervals", jSONArray);
        hashMap.put("cv", str6);
        MCountAgent.logEvent(context, "mpay-online-report", hashMap);
    }

    public void a(boolean z) {
        MCountAgent.setUploadOnlyWifi(z);
    }

    public void b(Context context) {
        MCountAgent.uploadLog(context);
    }
}
