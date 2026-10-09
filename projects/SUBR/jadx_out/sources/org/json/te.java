package org.json;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public interface te {

    public static class a {
        private final ArrayList<ob> a;
        private boolean b;
        private int c;
        private Exception d;

        public a(ArrayList<ob> arrayList) {
            this.b = false;
            this.c = -1;
            this.a = arrayList;
        }

        a(ArrayList<ob> arrayList, int i, boolean z, Exception exc) {
            this.a = arrayList;
            this.b = z;
            this.d = exc;
            this.c = i;
        }

        public a a(int i) {
            return new a(this.a, i, this.b, this.d);
        }

        public a a(Exception exc) {
            return new a(this.a, this.c, this.b, exc);
        }

        public a a(boolean z) {
            return new a(this.a, this.c, z, this.d);
        }

        public String a() {
            if (this.b) {
                return "";
            }
            return "rc=" + this.c + ", ex=" + this.d;
        }

        public ArrayList<ob> b() {
            return this.a;
        }

        public boolean c() {
            return this.b;
        }

        public String toString() {
            return "EventSendResult{success=" + this.b + ", responseCode=" + this.c + ", exception=" + this.d + '}';
        }
    }

    void a(a aVar);
}
