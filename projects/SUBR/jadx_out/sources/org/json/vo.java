package org.json;

import android.text.TextUtils;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class vo {
    private final ArrayList<String> a = new ArrayList<>();
    private final ArrayList<String> b = new ArrayList<>();
    private final ArrayList<String> c = new ArrayList<>();
    private final ArrayList<String> d = new ArrayList<>();

    public ArrayList<String> a() {
        return this.c;
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.c.add(str);
    }

    public ArrayList<String> b() {
        return this.b;
    }

    public void b(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.b.add(str);
    }

    public ArrayList<String> c() {
        return this.d;
    }

    public void c(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.d.add(str);
    }

    public ArrayList<String> d() {
        return this.a;
    }

    public void d(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.a.add(str);
    }
}
