package io.netty.handler.codec.http;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.Unpooled;
import io.netty.handler.codec.http.HttpHeaders;
import io.netty.util.internal.StringUtil;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public class DefaultLastHttpContent extends DefaultHttpContent implements LastHttpContent {
    private final HttpHeaders trailingHeaders;
    private final boolean validateHeaders;

    public DefaultLastHttpContent() {
        this(Unpooled.buffer(0));
    }

    public DefaultLastHttpContent(ByteBuf content) {
        this(content, true);
    }

    public DefaultLastHttpContent(ByteBuf content, boolean validateHeaders) {
        super(content);
        this.trailingHeaders = new TrailingHeaders(validateHeaders);
        this.validateHeaders = validateHeaders;
    }

    @Override // io.netty.handler.codec.http.DefaultHttpContent, io.netty.handler.codec.http.HttpContent, io.netty.buffer.ByteBufHolder
    public LastHttpContent copy() {
        DefaultLastHttpContent copy = new DefaultLastHttpContent(content().copy(), this.validateHeaders);
        copy.trailingHeaders().set(trailingHeaders());
        return copy;
    }

    @Override // io.netty.handler.codec.http.DefaultHttpContent, io.netty.handler.codec.http.HttpContent, io.netty.buffer.ByteBufHolder
    public LastHttpContent duplicate() {
        DefaultLastHttpContent copy = new DefaultLastHttpContent(content().duplicate(), this.validateHeaders);
        copy.trailingHeaders().set(trailingHeaders());
        return copy;
    }

    @Override // io.netty.handler.codec.http.DefaultHttpContent, io.netty.util.ReferenceCounted
    public LastHttpContent retain(int increment) {
        super.retain(increment);
        return this;
    }

    @Override // io.netty.handler.codec.http.DefaultHttpContent, io.netty.util.ReferenceCounted
    public LastHttpContent retain() {
        super.retain();
        return this;
    }

    @Override // io.netty.handler.codec.http.LastHttpContent
    public HttpHeaders trailingHeaders() {
        return this.trailingHeaders;
    }

    @Override // io.netty.handler.codec.http.DefaultHttpContent
    public String toString() {
        StringBuilder buf = new StringBuilder(super.toString());
        buf.append(StringUtil.NEWLINE);
        appendHeaders(buf);
        buf.setLength(buf.length() - StringUtil.NEWLINE.length());
        return buf.toString();
    }

    private void appendHeaders(StringBuilder buf) {
        Iterator<Map.Entry<String, String>> it = trailingHeaders().iterator();
        while (it.hasNext()) {
            Map.Entry<String, String> e = it.next();
            buf.append(e.getKey());
            buf.append(": ");
            buf.append(e.getValue());
            buf.append(StringUtil.NEWLINE);
        }
    }

    /* loaded from: classes.dex */
    private static final class TrailingHeaders extends DefaultHttpHeaders {
        TrailingHeaders(boolean validate) {
            super(validate);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // io.netty.handler.codec.http.DefaultHttpHeaders
        public void validateHeaderName0(CharSequence name) {
            super.validateHeaderName0(name);
            if (HttpHeaders.equalsIgnoreCase(HttpHeaders.Names.CONTENT_LENGTH, name) || HttpHeaders.equalsIgnoreCase(HttpHeaders.Names.TRANSFER_ENCODING, name) || HttpHeaders.equalsIgnoreCase(HttpHeaders.Names.TRAILER, name)) {
                throw new IllegalArgumentException("prohibited trailing header: " + ((Object) name));
            }
        }
    }
}
