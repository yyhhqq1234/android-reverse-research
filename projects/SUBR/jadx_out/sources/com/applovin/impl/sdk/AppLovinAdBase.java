package com.applovin.impl.sdk;

import android.graphics.Color;
import com.applovin.impl.kg;
import com.applovin.impl.lg;
import com.applovin.impl.sdk.array.ArrayDirectDownloadAd;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sj;
import com.applovin.impl.tl;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class AppLovinAdBase implements kg, ArrayDirectDownloadAd {
    protected final JSONObject adObject;
    private final long createdAtMillis;
    protected final JSONObject fullResponse;
    protected final j sdk;
    protected final tl synchronizedAdObject;
    protected final tl synchronizedFullResponse;
    protected final Object adObjectLock = new Object();
    protected final Object fullResponseLock = new Object();

    protected AppLovinAdBase(JSONObject jSONObject, JSONObject jSONObject2, j jVar) {
        if (jSONObject == null) {
            throw new IllegalArgumentException("No ad object specified");
        }
        if (jSONObject2 == null) {
            throw new IllegalArgumentException("No response specified");
        }
        if (jVar == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        this.sdk = jVar;
        if (((Boolean) jVar.a(sj.i6)).booleanValue()) {
            this.synchronizedAdObject = new tl(jSONObject);
            this.synchronizedFullResponse = new tl(jSONObject2);
            this.adObject = null;
            this.fullResponse = null;
        } else {
            this.adObject = jSONObject;
            this.fullResponse = jSONObject2;
            this.synchronizedAdObject = null;
            this.synchronizedFullResponse = null;
        }
        this.createdAtMillis = System.currentTimeMillis();
    }

    protected boolean containsKeyForAdObject(String str) {
        boolean zHas;
        tl tlVar = this.synchronizedAdObject;
        if (tlVar != null) {
            return tlVar.a(str);
        }
        synchronized (this.adObjectLock) {
            zHas = this.adObject.has(str);
        }
        return zHas;
    }

    public String getAdDomain() {
        return getStringFromFullResponse("adomain", "");
    }

    @Override // com.applovin.impl.kg
    public abstract /* synthetic */ lg getAdEventTracker();

    public abstract long getAdIdNumber();

    protected boolean getBooleanFromAdObject(String str, Boolean bool) {
        boolean zBooleanValue;
        tl tlVar = this.synchronizedAdObject;
        if (tlVar != null) {
            return tlVar.a(str, bool).booleanValue();
        }
        synchronized (this.adObjectLock) {
            zBooleanValue = JsonUtils.getBoolean(this.adObject, str, bool).booleanValue();
        }
        return zBooleanValue;
    }

    protected boolean getBooleanFromFullResponse(String str, boolean z) {
        boolean zBooleanValue;
        tl tlVar = this.synchronizedFullResponse;
        if (tlVar != null) {
            return tlVar.a(str, Boolean.valueOf(z)).booleanValue();
        }
        synchronized (this.fullResponseLock) {
            zBooleanValue = JsonUtils.getBoolean(this.fullResponse, str, Boolean.valueOf(z)).booleanValue();
        }
        return zBooleanValue;
    }

    public String getClCode() {
        String stringFromAdObject = getStringFromAdObject("clcode", "");
        return StringUtils.isValidString(stringFromAdObject) ? stringFromAdObject : getStringFromFullResponse("clcode", "");
    }

    protected int getColorFromAdObject(String str, int i) {
        String stringFromAdObject = getStringFromAdObject(str, null);
        return StringUtils.isValidString(stringFromAdObject) ? Color.parseColor(stringFromAdObject) : i;
    }

    public long getCreatedAtMillis() {
        return this.createdAtMillis;
    }

    public String getDspId() {
        return getStringFromFullResponse("dsp_id", "");
    }

    public String getDspName() {
        return getStringFromFullResponse("dsp_name", "");
    }

    public long getFetchLatencyMillis() {
        return getLongFromFullResponse("ad_fetch_latency_millis", -1L);
    }

    public long getFetchResponseSize() {
        return getLongFromFullResponse("ad_fetch_response_size", -1L);
    }

    protected float getFloatFromAdObject(String str, float f) {
        float f2;
        tl tlVar = this.synchronizedAdObject;
        if (tlVar != null) {
            return tlVar.a(str, f);
        }
        synchronized (this.adObjectLock) {
            f2 = JsonUtils.getFloat(this.adObject, str, f);
        }
        return f2;
    }

    protected int getIntFromAdObject(String str, int i) {
        int i2;
        tl tlVar = this.synchronizedAdObject;
        if (tlVar != null) {
            return tlVar.a(str, i);
        }
        synchronized (this.adObjectLock) {
            i2 = JsonUtils.getInt(this.adObject, str, i);
        }
        return i2;
    }

    protected List<Integer> getIntegerListFromAdObject(String str, List<Integer> list) {
        List<Integer> integerList;
        tl tlVar = this.synchronizedAdObject;
        if (tlVar != null) {
            return tlVar.a(str, (List) list);
        }
        synchronized (this.adObjectLock) {
            integerList = JsonUtils.getIntegerList(this.adObject, str, list);
        }
        return integerList;
    }

    protected JSONArray getJsonArrayFromAdObject(String str, JSONArray jSONArray) {
        JSONArray jSONArray2;
        tl tlVar = this.synchronizedAdObject;
        if (tlVar != null) {
            return tlVar.a(str, jSONArray);
        }
        synchronized (this.adObjectLock) {
            jSONArray2 = JsonUtils.getJSONArray(this.adObject, str, jSONArray);
        }
        return jSONArray2;
    }

    protected JSONObject getJsonObjectFromAdObject(String str, JSONObject jSONObject) {
        JSONObject jSONObject2;
        tl tlVar = this.synchronizedAdObject;
        if (tlVar != null) {
            return tlVar.a(str, jSONObject);
        }
        synchronized (this.adObjectLock) {
            jSONObject2 = JsonUtils.getJSONObject(this.adObject, str, jSONObject);
        }
        return jSONObject2;
    }

    protected long getLongFromAdObject(String str, long j) {
        long j2;
        tl tlVar = this.synchronizedAdObject;
        if (tlVar != null) {
            return tlVar.a(str, j);
        }
        synchronized (this.adObjectLock) {
            j2 = JsonUtils.getLong(this.adObject, str, j);
        }
        return j2;
    }

    protected long getLongFromFullResponse(String str, long j) {
        long j2;
        tl tlVar = this.synchronizedFullResponse;
        if (tlVar != null) {
            return tlVar.a(str, j);
        }
        synchronized (this.fullResponseLock) {
            j2 = JsonUtils.getLong(this.fullResponse, str, j);
        }
        return j2;
    }

    @Override // com.applovin.impl.kg
    public abstract /* synthetic */ String getOpenMeasurementContentUrl();

    @Override // com.applovin.impl.kg
    public abstract /* synthetic */ String getOpenMeasurementCustomReferenceData();

    @Override // com.applovin.impl.kg
    public abstract /* synthetic */ List getOpenMeasurementVerificationScriptResources();

    public j getSdk() {
        return this.sdk;
    }

    protected String getStringFromAdObject(String str, String str2) {
        String string;
        tl tlVar = this.synchronizedAdObject;
        if (tlVar != null) {
            return tlVar.a(str, str2);
        }
        synchronized (this.adObjectLock) {
            string = JsonUtils.getString(this.adObject, str, str2);
        }
        return string;
    }

    protected String getStringFromFullResponse(String str, String str2) {
        String string;
        tl tlVar = this.synchronizedFullResponse;
        if (tlVar != null) {
            return tlVar.a(str, str2);
        }
        synchronized (this.fullResponseLock) {
            string = JsonUtils.getString(this.fullResponse, str, str2);
        }
        return string;
    }

    protected List<String> getStringListFromAdObject(String str, List<String> list) {
        List<String> stringList;
        tl tlVar = this.synchronizedAdObject;
        if (tlVar != null) {
            return tlVar.b(str, list);
        }
        synchronized (this.adObjectLock) {
            stringList = JsonUtils.getStringList(this.adObject, str, list);
        }
        return stringList;
    }

    @Override // com.applovin.impl.kg
    public abstract /* synthetic */ boolean isOpenMeasurementEnabled();
}
