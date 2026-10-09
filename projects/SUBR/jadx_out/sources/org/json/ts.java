package org.json;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import com.google.android.gms.drive.DriveFile;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.testSuite.TestSuiteActivity;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001b\u0010\u001cJ\b\u0010\u0003\u001a\u00020\u0002H\u0002Jo\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u00042\b\u0010\t\u001a\u0004\u0018\u00010\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0011J\u0010\u0010\u0003\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0018\u0010\u0003\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0004H\u0002JG\u0010\u0003\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\r\u001a\u00020\n¢\u0006\u0004\b\u0003\u0010\u0018J\u0019\u0010\u0019\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0013\u001a\u00020\u0012H\u0000¢\u0006\u0004\b\u0019\u0010\u001a¨\u0006\u001d"}, d2 = {"Lcom/ironsource/ts;", "", "Lorg/json/JSONObject;", "a", "", "appKey", "sdkVersion", "bundleId", "appName", y8.i.W, "", y8.i.b0, "initResponse", "isRewardedVideoManual", "generalProperties", "adaptersVersions", "metaData", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lorg/json/JSONObject;ZLorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/String;", "Landroid/content/Context;", "context", "Landroid/content/SharedPreferences;", "dataString", "", "testSuiteControllerUrl", "(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Z)V", "b", "(Landroid/content/Context;)Ljava/lang/String;", "<init>", "()V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class ts {
    private final SharedPreferences a(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.unity3d.ad-mediation.testSuite", 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "context.getSharedPrefere…EY, Context.MODE_PRIVATE)");
        return sharedPreferences;
    }

    private final String a(String appKey, String sdkVersion, String bundleId, String appName, String appVersion, Boolean consent, JSONObject initResponse, boolean isRewardedVideoManual, JSONObject generalProperties, JSONObject adaptersVersions, JSONObject metaData) {
        String string = new JSONObject(MapsKt.mapOf(TuplesKt.to("deviceOS", y8.d), TuplesKt.to("appKey", appKey), TuplesKt.to("sdkVersion", sdkVersion), TuplesKt.to("bundleId", bundleId), TuplesKt.to("appName", appName), TuplesKt.to(y8.i.W, appVersion), TuplesKt.to("initResponse", initResponse), TuplesKt.to("isRvManual", Boolean.valueOf(isRewardedVideoManual)), TuplesKt.to("generalProperties", generalProperties), TuplesKt.to("adaptersVersion", adaptersVersions), TuplesKt.to("metaData", metaData), TuplesKt.to("gdprConsent", consent))).toString();
        Intrinsics.checkNotNullExpressionValue(string, "JSONObject(\n            …ent))\n        .toString()");
        return string;
    }

    private final JSONObject a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, List<String>> entry : et.a.d().entrySet()) {
            jSONObject.putOpt(entry.getKey(), new JSONArray((Collection) entry.getValue()));
        }
        return jSONObject;
    }

    private final void a(Context context, String dataString) {
        SharedPreferences.Editor editorEdit = a(context).edit();
        Intrinsics.checkNotNullExpressionValue(editorEdit, "getTestSuitePrefs(context).edit()");
        editorEdit.putString("dataString", dataString);
        editorEdit.apply();
    }

    public final void a(Context context, String appKey, JSONObject initResponse, String sdkVersion, String testSuiteControllerUrl, Boolean consent, boolean isRewardedVideoManual) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(appKey, "appKey");
        Intrinsics.checkNotNullParameter(initResponse, "initResponse");
        Intrinsics.checkNotNullParameter(sdkVersion, "sdkVersion");
        Intrinsics.checkNotNullParameter(testSuiteControllerUrl, "testSuiteControllerUrl");
        et etVar = et.a;
        a(context, a(appKey, sdkVersion, etVar.c(context), etVar.a(context), etVar.b(context), consent, initResponse, isRewardedVideoManual, etVar.b(), etVar.c(), a()));
        Intent intent = new Intent(context, (Class<?>) TestSuiteActivity.class);
        intent.setFlags(DriveFile.MODE_READ_WRITE);
        intent.putExtra("controllerUrl", testSuiteControllerUrl);
        context.startActivity(intent);
    }

    public final String b(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return a(context).getString("dataString", "");
    }
}
