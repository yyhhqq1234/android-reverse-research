package org.json.alipay;

import android.support.v4.view.MotionEventCompat;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collection;

/* loaded from: classes.dex */
public class a {
    private ArrayList a;

    public a() {
        this.a = new ArrayList();
    }

    public a(Object obj) {
        this();
        if (!obj.getClass().isArray()) {
            throw new JSONException("JSONArray initial value should be a string or collection or array.");
        }
        int length = Array.getLength(obj);
        for (int i = 0; i < length; i++) {
            this.a.add(Array.get(obj, i));
        }
    }

    public a(String str) {
        this(new c(str));
    }

    public a(Collection collection) {
        this.a = collection == null ? new ArrayList() : new ArrayList(collection);
    }

    public a(c cVar) {
        this();
        char c;
        char c2 = cVar.c();
        if (c2 == '[') {
            c = ']';
        } else {
            if (c2 != '(') {
                throw cVar.a("A JSONArray text must start with '['");
            }
            c = ')';
        }
        if (cVar.c() == ']') {
            return;
        }
        cVar.a();
        while (true) {
            if (cVar.c() == ',') {
                cVar.a();
                this.a.add(null);
            } else {
                cVar.a();
                this.a.add(cVar.d());
            }
            char c3 = cVar.c();
            switch (c3) {
                case MotionEventCompat.AXIS_GENERIC_10 /* 41 */:
                case ']':
                    if (c != c3) {
                        throw cVar.a("Expected a '" + new Character(c) + "'");
                    }
                    return;
                case MotionEventCompat.AXIS_GENERIC_13 /* 44 */:
                case ';':
                    if (cVar.c() == ']') {
                        return;
                    } else {
                        cVar.a();
                    }
                default:
                    throw cVar.a("Expected a ',' or ']'");
            }
        }
    }

    private String a(String str) {
        int size = this.a.size();
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < size; i++) {
            if (i > 0) {
                stringBuffer.append(str);
            }
            stringBuffer.append(b.a(this.a.get(i)));
        }
        return stringBuffer.toString();
    }

    public final int a() {
        return this.a.size();
    }

    public final Object a(int i) {
        Object obj = (i < 0 || i >= this.a.size()) ? null : this.a.get(i);
        if (obj == null) {
            throw new JSONException("JSONArray[" + i + "] not found.");
        }
        return obj;
    }

    public String toString() {
        try {
            return "[" + a(",") + ']';
        } catch (Exception e) {
            return null;
        }
    }
}
