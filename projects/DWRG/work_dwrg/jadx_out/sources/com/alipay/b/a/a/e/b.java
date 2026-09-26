package com.alipay.b.a.a.e;

import com.netease.unisdk.gmbridge.utils.ResIdReader;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class b {
    private File a;
    private com.alipay.b.a.a.c.b.a b;

    public b(String str, com.alipay.b.a.a.c.b.a aVar) {
        this.a = null;
        this.b = null;
        this.a = new File(str);
        this.b = aVar;
    }

    private static String a(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("type", ResIdReader.RES_TYPE_ID);
            jSONObject.put("error", str);
            return jSONObject.toString();
        } catch (Exception e) {
            return "";
        }
    }

    private void b() {
        new Thread(new c(this)).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void a() {
        String str;
        int i;
        synchronized (this) {
            if (this.a != null && this.a.exists() && this.a.isDirectory() && this.a.list().length != 0) {
                ArrayList arrayList = new ArrayList();
                for (String str2 : this.a.list()) {
                    arrayList.add(str2);
                }
                Collections.sort(arrayList);
                String str3 = (String) arrayList.get(arrayList.size() - 1);
                int size = arrayList.size();
                if (!str3.equals(new SimpleDateFormat("yyyyMMdd").format(Calendar.getInstance().getTime()) + ".log")) {
                    str = str3;
                    i = size;
                } else if (arrayList.size() >= 2) {
                    int i2 = size - 1;
                    str = (String) arrayList.get(arrayList.size() - 2);
                    i = i2;
                }
                int i3 = !this.b.a(a(com.alipay.b.a.a.a.b.a(this.a.getAbsolutePath(), str))) ? i - 1 : i;
                for (int i4 = 0; i4 < i3; i4++) {
                    new File(this.a, (String) arrayList.get(i4)).delete();
                }
            }
        }
    }
}
