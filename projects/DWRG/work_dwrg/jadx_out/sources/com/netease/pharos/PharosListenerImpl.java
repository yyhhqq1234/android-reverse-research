package com.netease.pharos;

import org.json.JSONObject;

/* loaded from: classes.dex */
public interface PharosListenerImpl {
    void onPharosPolicy(JSONObject jSONObject);

    void onPharosQos(JSONObject jSONObject);

    void onPharosServer(JSONObject jSONObject);

    void onResult(JSONObject jSONObject);
}
