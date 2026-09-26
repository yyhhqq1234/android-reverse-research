package com.netease.mpay.c;

import android.graphics.Bitmap;
import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class b {
    private Map a = Collections.synchronizedMap(new LinkedHashMap(10, 1.5f, true));
    private long b = 0;
    private long c = 1000000;

    public b() {
        a(Runtime.getRuntime().maxMemory() / 4);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private void a() {
        if (this.b > this.c) {
            Iterator it = this.a.entrySet().iterator();
            while (it.hasNext()) {
                this.b -= a((Bitmap) ((Map.Entry) it.next()).getValue());
                it.remove();
                if (this.b <= this.c) {
                    break;
                }
            }
            Cdo.a("Clean cache. New size " + this.a.size());
        }
    }

    long a(Bitmap bitmap) {
        if (bitmap == null) {
            return 0L;
        }
        return bitmap.getRowBytes() * bitmap.getHeight();
    }

    public Bitmap a(String str) {
        try {
            if (this.a.containsKey(str)) {
                return (Bitmap) this.a.get(str);
            }
            return null;
        } catch (NullPointerException e) {
            Cdo.a((Throwable) e);
            return null;
        }
    }

    public void a(long j) {
        this.c = j;
    }

    public void a(String str, Bitmap bitmap) {
        try {
            if (this.a.containsKey(str)) {
                this.b -= a((Bitmap) this.a.get(str));
            }
            this.a.put(str, bitmap);
            this.b += a(bitmap);
            a();
        } catch (Throwable th) {
            Cdo.a(th);
        }
    }
}
