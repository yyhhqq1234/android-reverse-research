package org.json;

import java.util.HashMap;
import org.json.sdk.utils.SDKUtils;

/* JADX INFO: loaded from: classes3.dex */
public class fg {
    private HashMap<String, Object> a = new HashMap<>();

    public fg a(String str, Object obj) {
        if (obj != null) {
            this.a.put(str, SDKUtils.encodeString(obj.toString()));
        }
        return this;
    }

    public HashMap<String, Object> a() {
        return this.a;
    }
}
