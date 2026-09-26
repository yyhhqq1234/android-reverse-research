package com.netease.download.listener;

import org.json.JSONObject;

/* loaded from: classes.dex */
public interface DownloadListener {
    void onFinish(JSONObject jSONObject);

    void onProgress(JSONObject jSONObject);
}
