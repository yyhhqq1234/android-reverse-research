package io.netty.handler.codec.http;

import io.netty.util.internal.StringUtil;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class DefaultHttpMessage extends DefaultHttpObject implements HttpMessage {
    private final HttpHeaders headers;
    private HttpVersion version;

    protected DefaultHttpMessage(HttpVersion version) {
        this(version, true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public DefaultHttpMessage(HttpVersion version, boolean validate) {
        if (version == null) {
            throw new NullPointerException("version");
        }
        this.version = version;
        this.headers = new DefaultHttpHeaders(validate);
    }

    @Override // io.netty.handler.codec.http.HttpMessage
    public HttpHeaders headers() {
        return this.headers;
    }

    @Override // io.netty.handler.codec.http.HttpMessage
    public HttpVersion getProtocolVersion() {
        return this.version;
    }

    public String toString() {
        StringBuilder buf = new StringBuilder();
        buf.append(StringUtil.simpleClassName(this));
        buf.append("(version: ");
        buf.append(getProtocolVersion().text());
        buf.append(", keepAlive: ");
        buf.append(HttpHeaders.isKeepAlive(this));
        buf.append(')');
        buf.append(StringUtil.NEWLINE);
        appendHeaders(buf);
        buf.setLength(buf.length() - StringUtil.NEWLINE.length());
        return buf.toString();
    }

    public HttpMessage setProtocolVersion(HttpVersion version) {
        if (version == null) {
            throw new NullPointerException("version");
        }
        this.version = version;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void appendHeaders(StringBuilder buf) {
        Iterator<Map.Entry<String, String>> it = headers().iterator();
        while (it.hasNext()) {
            Map.Entry<String, String> e = it.next();
            buf.append(e.getKey());
            buf.append(": ");
            buf.append(e.getValue());
            buf.append(StringUtil.NEWLINE);
        }
    }
}
