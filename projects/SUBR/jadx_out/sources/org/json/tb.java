package org.json;

import android.util.Pair;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class tb {
    private String a;
    private boolean b;
    private String c;
    private we d;
    private boolean e;
    private ArrayList<Pair<String, String>> f;

    public static class a {
        private String a;
        private we d;
        private boolean b = false;
        private String c = "POST";
        private boolean e = false;
        private ArrayList<Pair<String, String>> f = new ArrayList<>();

        public a(String str) {
            this.a = "";
            if (str == null || str.isEmpty()) {
                return;
            }
            this.a = str;
        }

        public a a(Pair<String, String> pair) {
            this.f.add(pair);
            return this;
        }

        public a a(we weVar) {
            this.d = weVar;
            return this;
        }

        public a a(List<Pair<String, String>> list) {
            this.f.addAll(list);
            return this;
        }

        public a a(boolean z) {
            this.e = z;
            return this;
        }

        public tb a() {
            return new tb(this);
        }

        public a b() {
            this.c = "GET";
            return this;
        }

        public a b(boolean z) {
            this.b = z;
            return this;
        }

        public a c() {
            this.c = "POST";
            return this;
        }
    }

    tb(a aVar) {
        this.e = false;
        this.a = aVar.a;
        this.b = aVar.b;
        this.c = aVar.c;
        this.d = aVar.d;
        this.e = aVar.e;
        if (aVar.f != null) {
            this.f = new ArrayList<>(aVar.f);
        }
    }

    public boolean a() {
        return this.b;
    }

    public String b() {
        return this.a;
    }

    public we c() {
        return this.d;
    }

    public ArrayList<Pair<String, String>> d() {
        return new ArrayList<>(this.f);
    }

    public String e() {
        return this.c;
    }

    public boolean f() {
        return this.e;
    }
}
