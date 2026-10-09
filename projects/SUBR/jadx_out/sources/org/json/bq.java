package org.json;

import android.app.Activity;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
@Deprecated
public interface bq {
    void a(Activity activity);

    void a(String str, String str2, int i);

    void a(String str, String str2, String str3, Map<String, String> map, in inVar);

    void a(String str, String str2, String str3, Map<String, String> map, nn nnVar);

    void a(JSONObject jSONObject);

    boolean a(String str);

    void b(JSONObject jSONObject);

    void c(JSONObject jSONObject);

    void onPause(Activity activity);

    void onResume(Activity activity);
}
