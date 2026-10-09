package org.json;

import android.content.Context;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import org.json.sdk.utils.SDKUtils;

/* JADX INFO: loaded from: classes3.dex */
public class ig implements fe {
    private static Map<String, Object> a = new HashMap();

    public static class b {
        String a;
        String b;
        String c;
        Context d;
        String e;

        b a(Context context) {
            this.d = context;
            return this;
        }

        b a(String str) {
            this.b = str;
            return this;
        }

        public ig a() {
            return new ig(this);
        }

        b b(String str) {
            this.c = str;
            return this;
        }

        b c(String str) {
            this.a = str;
            return this;
        }

        b d(String str) {
            this.e = str;
            return this;
        }
    }

    private ig(b bVar) {
        a(bVar);
        a(bVar.d);
    }

    private void a(Context context) {
        a.put(rb.e, v8.b(context));
        a.put(rb.f, v8.d(context));
    }

    private void a(b bVar) {
        Context context = bVar.d;
        pa paVarB = pa.b(context);
        a.put(rb.j, SDKUtils.encodeString(paVarB.e()));
        a.put(rb.k, SDKUtils.encodeString(paVarB.f()));
        a.put(rb.l, Integer.valueOf(paVarB.a()));
        a.put(rb.m, SDKUtils.encodeString(paVarB.d()));
        a.put(rb.n, SDKUtils.encodeString(paVarB.c()));
        a.put(rb.d, SDKUtils.encodeString(context.getPackageName()));
        a.put(rb.g, SDKUtils.encodeString(bVar.b));
        a.put("sessionid", SDKUtils.encodeString(bVar.a));
        a.put(rb.b, SDKUtils.encodeString(SDKUtils.getSDKVersion()));
        a.put(rb.o, rb.t);
        a.put("origin", "n");
        if (TextUtils.isEmpty(bVar.e)) {
            return;
        }
        a.put(rb.i, SDKUtils.encodeString(bVar.e));
    }

    public static void a(String str) {
        a.put(rb.e, SDKUtils.encodeString(str));
    }

    public static void b(String str) {
        a.put(rb.f, SDKUtils.encodeString(str));
    }

    @Override // org.json.fe
    public Map<String, Object> a() {
        return a;
    }
}
