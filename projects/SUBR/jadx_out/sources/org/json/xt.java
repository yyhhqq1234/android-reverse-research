package org.json;

import android.text.TextUtils;
import java.util.ArrayList;
import org.json.mediationsdk.model.NetworkSettings;

/* JADX INFO: loaded from: classes3.dex */
public class xt {
    private NetworkSettings b;
    private ArrayList<String> a = new ArrayList<>();
    private JSONObject c = null;
    private boolean d = true;

    xt() {
    }

    public static xt a() {
        return new xt();
    }

    public void a(NetworkSettings networkSettings) {
        this.b = networkSettings;
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.a.add(str);
    }

    public void a(JSONObject jSONObject) {
        this.c = jSONObject;
    }

    public void a(boolean z) {
        this.d = z;
    }

    public JSONObject b() {
        return this.c;
    }

    public NetworkSettings c() {
        return this.b;
    }

    public ArrayList<String> d() {
        return this.a;
    }

    public boolean e() {
        return this.d;
    }
}
