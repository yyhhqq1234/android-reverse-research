package org.json.alipay;

import android.support.v4.view.MotionEventCompat;
import com.netease.push.utils.PushConstants;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public class b {
    public static final Object a = new a(0);
    private Map b;

    /* loaded from: classes.dex */
    private static final class a {
        private a() {
        }

        /* synthetic */ a(byte b) {
            this();
        }

        protected final Object clone() {
            return this;
        }

        public final boolean equals(Object obj) {
            return obj == null || obj == this;
        }

        public final String toString() {
            return "null";
        }
    }

    public b() {
        this.b = new HashMap();
    }

    public b(String str) {
        this(new c(str));
    }

    public b(Map map) {
        this.b = map == null ? new HashMap() : map;
    }

    public b(c cVar) {
        this();
        if (cVar.c() != '{') {
            throw cVar.a("A JSONObject text must begin with '{'");
        }
        while (true) {
            switch (cVar.c()) {
                case 0:
                    throw cVar.a("A JSONObject text must end with '}'");
                case '}':
                    return;
                default:
                    cVar.a();
                    String obj = cVar.d().toString();
                    char c = cVar.c();
                    if (c == '=') {
                        if (cVar.b() != '>') {
                            cVar.a();
                        }
                    } else if (c != ':') {
                        throw cVar.a("Expected a ':' after a key");
                    }
                    Object d = cVar.d();
                    if (obj == null) {
                        throw new JSONException("Null key.");
                    }
                    if (d != null) {
                        b(d);
                        this.b.put(obj, d);
                    } else {
                        this.b.remove(obj);
                    }
                    switch (cVar.c()) {
                        case MotionEventCompat.AXIS_GENERIC_13 /* 44 */:
                        case ';':
                            if (cVar.c() == '}') {
                                return;
                            } else {
                                cVar.a();
                            }
                        case '}':
                            return;
                        default:
                            throw cVar.a("Expected a ',' or '}'");
                    }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(Object obj) {
        if (obj == null || obj.equals(null)) {
            return "null";
        }
        if (!(obj instanceof Number)) {
            return ((obj instanceof Boolean) || (obj instanceof b) || (obj instanceof org.json.alipay.a)) ? obj.toString() : obj instanceof Map ? new b((Map) obj).toString() : obj instanceof Collection ? new org.json.alipay.a((Collection) obj).toString() : obj.getClass().isArray() ? new org.json.alipay.a(obj).toString() : c(obj.toString());
        }
        Number number = (Number) obj;
        if (number == null) {
            throw new JSONException("Null pointer");
        }
        b(number);
        String obj2 = number.toString();
        if (obj2.indexOf(46) <= 0 || obj2.indexOf(101) >= 0 || obj2.indexOf(69) >= 0) {
            return obj2;
        }
        while (obj2.endsWith("0")) {
            obj2 = obj2.substring(0, obj2.length() - 1);
        }
        return obj2.endsWith(PushConstants.KEY_SEPARATOR) ? obj2.substring(0, obj2.length() - 1) : obj2;
    }

    private static void b(Object obj) {
        if (obj != null) {
            if (obj instanceof Double) {
                if (((Double) obj).isInfinite() || ((Double) obj).isNaN()) {
                    throw new JSONException("JSON does not allow non-finite numbers.");
                }
            } else if (obj instanceof Float) {
                if (((Float) obj).isInfinite() || ((Float) obj).isNaN()) {
                    throw new JSONException("JSON does not allow non-finite numbers.");
                }
            }
        }
    }

    public static String c(String str) {
        int i = 0;
        if (str == null || str.length() == 0) {
            return "\"\"";
        }
        int length = str.length();
        StringBuffer stringBuffer = new StringBuffer(length + 4);
        stringBuffer.append('\"');
        char c = 0;
        while (i < length) {
            char charAt = str.charAt(i);
            switch (charAt) {
                case '\b':
                    stringBuffer.append("\\b");
                    break;
                case '\t':
                    stringBuffer.append("\\t");
                    break;
                case '\n':
                    stringBuffer.append("\\n");
                    break;
                case '\f':
                    stringBuffer.append("\\f");
                    break;
                case '\r':
                    stringBuffer.append("\\r");
                    break;
                case '\"':
                case '\\':
                    stringBuffer.append('\\');
                    stringBuffer.append(charAt);
                    break;
                case MotionEventCompat.AXIS_GENERIC_16 /* 47 */:
                    if (c == '<') {
                        stringBuffer.append('\\');
                    }
                    stringBuffer.append(charAt);
                    break;
                default:
                    if (charAt >= ' ' && ((charAt < 128 || charAt >= 160) && (charAt < 8192 || charAt >= 8448))) {
                        stringBuffer.append(charAt);
                        break;
                    } else {
                        stringBuffer.append("\\u" + ("000" + Integer.toHexString(charAt)).substring(r1.length() - 4));
                        break;
                    }
                    break;
            }
            i++;
            c = charAt;
        }
        stringBuffer.append('\"');
        return stringBuffer.toString();
    }

    public final Object a(String str) {
        Object obj = str == null ? null : this.b.get(str);
        if (obj == null) {
            throw new JSONException("JSONObject[" + c(str) + "] not found.");
        }
        return obj;
    }

    public final Iterator a() {
        return this.b.keySet().iterator();
    }

    public final boolean b(String str) {
        return this.b.containsKey(str);
    }

    public String toString() {
        try {
            Iterator a2 = a();
            StringBuffer stringBuffer = new StringBuffer("{");
            while (a2.hasNext()) {
                if (stringBuffer.length() > 1) {
                    stringBuffer.append(',');
                }
                Object next = a2.next();
                stringBuffer.append(c(next.toString()));
                stringBuffer.append(':');
                stringBuffer.append(a(this.b.get(next)));
            }
            stringBuffer.append('}');
            return stringBuffer.toString();
        } catch (Exception e) {
            return null;
        }
    }
}
