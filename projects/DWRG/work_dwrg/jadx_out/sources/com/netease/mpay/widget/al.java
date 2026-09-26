package com.netease.mpay.widget;

import android.annotation.SuppressLint;
import com.dodola.rocoo.Hack;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes.dex */
public class al {
    private HashMap a = new HashMap();
    private AtomicLong b = new AtomicLong(0);

    @SuppressLint({"UseSparseArrays"})
    public al() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public long a(Object obj) {
        long incrementAndGet = this.b.incrementAndGet();
        this.a.put(Long.valueOf(incrementAndGet), obj);
        return incrementAndGet;
    }

    public Object a(long j) {
        return this.a.remove(Long.valueOf(j));
    }

    public void a() {
        this.a.clear();
    }

    public Object b(long j) {
        return this.a.get(Long.valueOf(j));
    }
}
