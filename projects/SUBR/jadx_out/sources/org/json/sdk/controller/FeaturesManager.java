package org.json.sdk.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
import org.json.l8;
import org.json.l9;
import org.json.m8;
import org.json.mediationsdk.logger.IronLog;
import org.json.nr;
import org.json.sdk.utils.SDKUtils;
import org.json.wd;
import org.json.y8;

/* JADX INFO: loaded from: classes3.dex */
public class FeaturesManager {
    private static volatile FeaturesManager c = null;
    private static final String d = "debugMode";
    private Map<String, ?> a;
    private final ArrayList<String> b = new a();

    class a extends ArrayList<String> {
        a() {
            add(y8.d.f);
            add(y8.d.e);
            add(y8.d.g);
            add(y8.d.h);
            add(y8.d.i);
            add(y8.d.j);
            add(y8.d.k);
            add(y8.d.l);
            add(y8.d.m);
        }
    }

    private FeaturesManager() {
        if (c != null) {
            throw new RuntimeException("Use getInstance() method to get the single instance of this class.");
        }
        this.a = new HashMap();
    }

    public static FeaturesManager getInstance() {
        if (c == null) {
            synchronized (FeaturesManager.class) {
                if (c == null) {
                    c = new FeaturesManager();
                }
            }
        }
        return c;
    }

    ArrayList<String> a() {
        return new ArrayList<>(this.b);
    }

    public JSONObject getDataManagerConfig() {
        JSONObject networkConfiguration = SDKUtils.getNetworkConfiguration();
        return networkConfiguration.has(y8.a.c) ? networkConfiguration.optJSONObject(y8.a.c) : new JSONObject();
    }

    public int getDebugMode() {
        Integer num = 0;
        try {
            if (this.a.containsKey("debugMode")) {
                num = (Integer) this.a.get("debugMode");
            }
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    public l8 getFeatureFlagCatchUrlError() {
        return new l8(SDKUtils.getNetworkConfiguration().optJSONObject(l8.a.FLAG_NAME));
    }

    public m8 getFeatureFlagClickCheck() {
        return new m8(SDKUtils.getNetworkConfiguration());
    }

    public wd getFeatureFlagHealthCheck() {
        return new wd(SDKUtils.getNetworkConfiguration().optJSONObject(y8.a.q));
    }

    public int getInitRecoverTrials() {
        JSONObject jSONObjectOptJSONObject = SDKUtils.getNetworkConfiguration().optJSONObject(y8.a.e);
        if (jSONObjectOptJSONObject != null) {
            return jSONObjectOptJSONObject.optInt(y8.a.d, 0);
        }
        return 0;
    }

    public nr getSessionHistoryConfig() {
        JSONObject networkConfiguration = SDKUtils.getNetworkConfiguration();
        return new nr(networkConfiguration.has(y8.a.r) ? networkConfiguration.optJSONObject(y8.a.r) : new JSONObject());
    }

    public void updateDebugConfigurations(Map<String, Object> map) {
        if (map == null) {
            return;
        }
        this.a = map;
    }
}
