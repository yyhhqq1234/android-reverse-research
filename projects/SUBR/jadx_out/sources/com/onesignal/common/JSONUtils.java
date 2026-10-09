package com.onesignal.common;

import android.os.Bundle;
import com.onesignal.core.BuildConfig;
import com.onesignal.debug.internal.logging.Logging;
import com.unity3d.services.UnityAdsConstants;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: JSONUtils.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\u0010\r\u001a\u0004\u0018\u00010\fJ\u0010\u0010\u000e\u001a\u0004\u0018\u00010\b2\u0006\u0010\u000f\u001a\u00020\u0004J\u001a\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00112\u0006\u0010\u0012\u001a\u00020\u0006J\u0014\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00040\u00142\u0006\u0010\u0015\u001a\u00020\fJ\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0017\u001a\u00020\u0001J\u000e\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0006J\u0010\u0010\u001a\u001a\u00020\f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/onesignal/common/JSONUtils;", "", "()V", "EXTERNAL_USER_ID", "", "bundleAsJSONObject", "Lorg/json/JSONObject;", "bundle", "Landroid/os/Bundle;", "compareJSONArrays", "", "jsonArray1", "Lorg/json/JSONArray;", "jsonArray2", "jsonStringToBundle", "data", "newStringMapFromJSONObject", "", "jsonObject", "newStringSetFromJSONArray", "", "jsonArray", "normalizeType", "object", "toUnescapedEUIDString", "json", "wrapInJsonArray", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class JSONUtils {
    public static final String EXTERNAL_USER_ID = "external_user_id";
    public static final JSONUtils INSTANCE = new JSONUtils();

    private JSONUtils() {
    }

    public final JSONArray wrapInJsonArray(JSONObject jsonObject) {
        JSONArray jSONArrayPut = new JSONArray().put(jsonObject);
        Intrinsics.checkNotNullExpressionValue(jSONArrayPut, "JSONArray().put(jsonObject)");
        return jSONArrayPut;
    }

    public final JSONObject bundleAsJSONObject(Bundle bundle) {
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        JSONObject jSONObject = new JSONObject();
        for (String str : bundle.keySet()) {
            try {
                jSONObject.put(str, bundle.get(str));
            } catch (JSONException e) {
                Logging.error("bundleAsJSONObject error for key: " + str, e);
            }
        }
        return jSONObject;
    }

    public final Bundle jsonStringToBundle(String data) {
        Intrinsics.checkNotNullParameter(data, "data");
        try {
            JSONObject jSONObject = new JSONObject(data);
            Bundle bundle = new Bundle();
            Iterator<String> itKeys = jSONObject.keys();
            Intrinsics.checkNotNullExpressionValue(itKeys, "jsonObject.keys()");
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                Intrinsics.checkNotNull(next, "null cannot be cast to non-null type kotlin.String");
                String str = next;
                bundle.putString(str, jSONObject.getString(str));
            }
            return bundle;
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public final Map<String, String> newStringMapFromJSONObject(JSONObject jsonObject) {
        Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
        Iterator<String> itKeys = jsonObject.keys();
        Intrinsics.checkNotNullExpressionValue(itKeys, "jsonObject.keys()");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            try {
                Object objOpt = jsonObject.opt(next);
                if ((objOpt instanceof JSONArray) || (objOpt instanceof JSONObject)) {
                    Logging.error$default("Omitting key '" + next + "'! sendTags DO NOT supported nested values!", null, 2, null);
                } else if (jsonObject.isNull(next) || Intrinsics.areEqual("", objOpt)) {
                    linkedHashMap.put(next, "");
                } else {
                    linkedHashMap.put(next, objOpt.toString());
                }
            } catch (Throwable unused) {
            }
        }
        return linkedHashMap;
    }

    public final Set<String> newStringSetFromJSONArray(JSONArray jsonArray) throws JSONException {
        Intrinsics.checkNotNullParameter(jsonArray, "jsonArray");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        int length = jsonArray.length();
        for (int i = 0; i < length; i++) {
            String string = jsonArray.getString(i);
            Intrinsics.checkNotNullExpressionValue(string, "jsonArray.getString(i)");
            linkedHashSet.add(string);
        }
        return linkedHashSet;
    }

    public final String toUnescapedEUIDString(JSONObject json) {
        String strGroup;
        Intrinsics.checkNotNullParameter(json, "json");
        String string = json.toString();
        Intrinsics.checkNotNullExpressionValue(string, "json.toString()");
        if (!json.has(EXTERNAL_USER_ID)) {
            return string;
        }
        Matcher matcher = Pattern.compile("(?<=\"external_user_id\":\").*?(?=\")").matcher(string);
        if (!matcher.find() || (strGroup = matcher.group(0)) == null) {
            return string;
        }
        String strReplaceAll = matcher.replaceAll(Matcher.quoteReplacement(StringsKt.replace$default(strGroup, "\\/", UnityAdsConstants.DefaultUrls.AD_ASSET_PATH, false, 4, (Object) null)));
        Intrinsics.checkNotNullExpressionValue(strReplaceAll, "eidMatcher.replaceAll(unescapedEID)");
        return strReplaceAll;
    }

    public final boolean compareJSONArrays(JSONArray jsonArray1, JSONArray jsonArray2) {
        if (jsonArray1 == null && jsonArray2 == null) {
            return true;
        }
        if (jsonArray1 == null || jsonArray2 == null || jsonArray1.length() != jsonArray2.length()) {
            return false;
        }
        try {
            int length = jsonArray1.length();
            for (int i = 0; i < length; i++) {
                int length2 = jsonArray2.length();
                for (int i2 = 0; i2 < length2; i2++) {
                    Object obj = jsonArray1.get(i);
                    Intrinsics.checkNotNullExpressionValue(obj, "jsonArray1[i]");
                    Object objNormalizeType = normalizeType(obj);
                    Object obj2 = jsonArray2.get(i2);
                    Intrinsics.checkNotNullExpressionValue(obj2, "jsonArray2[j]");
                    if (Intrinsics.areEqual(objNormalizeType, normalizeType(obj2))) {
                    }
                }
                return false;
            }
            return true;
        } catch (JSONException e) {
            e.printStackTrace();
            return false;
        }
    }

    public final Object normalizeType(Object object) {
        Intrinsics.checkNotNullParameter(object, "object");
        Class<?> cls = object.getClass();
        if (Intrinsics.areEqual(cls, Integer.TYPE)) {
            return Long.valueOf(((Integer) object).intValue());
        }
        return Intrinsics.areEqual(cls, Float.TYPE) ? Double.valueOf(((Float) object).floatValue()) : object;
    }
}
