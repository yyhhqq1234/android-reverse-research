package io.netty.handler.codec.http;

import io.netty.buffer.ByteBuf;
import io.netty.util.CharsetUtil;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class HttpMethod implements Comparable<HttpMethod> {
    private final byte[] bytes;
    private final String name;
    public static final HttpMethod OPTIONS = new HttpMethod("OPTIONS", true);
    public static final HttpMethod GET = new HttpMethod("GET", true);
    public static final HttpMethod HEAD = new HttpMethod("HEAD", true);
    public static final HttpMethod POST = new HttpMethod("POST", true);
    public static final HttpMethod PUT = new HttpMethod("PUT", true);
    public static final HttpMethod PATCH = new HttpMethod("PATCH", true);
    public static final HttpMethod DELETE = new HttpMethod("DELETE", true);
    public static final HttpMethod TRACE = new HttpMethod("TRACE", true);
    public static final HttpMethod CONNECT = new HttpMethod("CONNECT", true);
    private static final Map<String, HttpMethod> methodMap = new HashMap();

    static {
        methodMap.put(OPTIONS.toString(), OPTIONS);
        methodMap.put(GET.toString(), GET);
        methodMap.put(HEAD.toString(), HEAD);
        methodMap.put(POST.toString(), POST);
        methodMap.put(PUT.toString(), PUT);
        methodMap.put(PATCH.toString(), PATCH);
        methodMap.put(DELETE.toString(), DELETE);
        methodMap.put(TRACE.toString(), TRACE);
        methodMap.put(CONNECT.toString(), CONNECT);
    }

    public static HttpMethod valueOf(String name) {
        if (name == null) {
            throw new NullPointerException("name");
        }
        String name2 = name.trim();
        if (name2.isEmpty()) {
            throw new IllegalArgumentException("empty name");
        }
        HttpMethod result = methodMap.get(name2);
        return result != null ? result : new HttpMethod(name2);
    }

    public HttpMethod(String name) {
        this(name, false);
    }

    private HttpMethod(String name, boolean bytes) {
        if (name == null) {
            throw new NullPointerException("name");
        }
        String name2 = name.trim();
        if (name2.isEmpty()) {
            throw new IllegalArgumentException("empty name");
        }
        for (int i = 0; i < name2.length(); i++) {
            if (Character.isISOControl(name2.charAt(i)) || Character.isWhitespace(name2.charAt(i))) {
                throw new IllegalArgumentException("invalid character in name");
            }
        }
        this.name = name2;
        if (bytes) {
            this.bytes = name2.getBytes(CharsetUtil.US_ASCII);
        } else {
            this.bytes = null;
        }
    }

    public String name() {
        return this.name;
    }

    public int hashCode() {
        return name().hashCode();
    }

    public boolean equals(Object o) {
        if (!(o instanceof HttpMethod)) {
            return false;
        }
        HttpMethod that = (HttpMethod) o;
        return name().equals(that.name());
    }

    public String toString() {
        return name();
    }

    @Override // java.lang.Comparable
    public int compareTo(HttpMethod o) {
        return name().compareTo(o.name());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void encode(ByteBuf buf) {
        if (this.bytes == null) {
            HttpHeaders.encodeAscii0(this.name, buf);
        } else {
            buf.writeBytes(this.bytes);
        }
    }
}
