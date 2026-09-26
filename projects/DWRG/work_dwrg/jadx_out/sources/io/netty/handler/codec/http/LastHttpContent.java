package io.netty.handler.codec.http;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.Unpooled;
import io.netty.handler.codec.DecoderResult;

/* loaded from: classes.dex */
public interface LastHttpContent extends HttpContent {
    public static final LastHttpContent EMPTY_LAST_CONTENT = new LastHttpContent() { // from class: io.netty.handler.codec.http.LastHttpContent.1
        @Override // io.netty.buffer.ByteBufHolder
        public ByteBuf content() {
            return Unpooled.EMPTY_BUFFER;
        }

        @Override // io.netty.handler.codec.http.HttpContent, io.netty.buffer.ByteBufHolder
        public LastHttpContent copy() {
            return EMPTY_LAST_CONTENT;
        }

        @Override // io.netty.handler.codec.http.HttpContent, io.netty.buffer.ByteBufHolder
        public LastHttpContent duplicate() {
            return this;
        }

        @Override // io.netty.handler.codec.http.LastHttpContent
        public HttpHeaders trailingHeaders() {
            return HttpHeaders.EMPTY_HEADERS;
        }

        @Override // io.netty.handler.codec.http.HttpObject
        public DecoderResult getDecoderResult() {
            return DecoderResult.SUCCESS;
        }

        @Override // io.netty.handler.codec.http.HttpObject
        public void setDecoderResult(DecoderResult result) {
            throw new UnsupportedOperationException("read only");
        }

        @Override // io.netty.util.ReferenceCounted
        public int refCnt() {
            return 1;
        }

        @Override // io.netty.util.ReferenceCounted
        public LastHttpContent retain() {
            return this;
        }

        @Override // io.netty.util.ReferenceCounted
        public LastHttpContent retain(int increment) {
            return this;
        }

        @Override // io.netty.util.ReferenceCounted
        public boolean release() {
            return false;
        }

        @Override // io.netty.util.ReferenceCounted
        public boolean release(int decrement) {
            return false;
        }

        public String toString() {
            return "EmptyLastHttpContent";
        }
    };

    @Override // io.netty.handler.codec.http.HttpContent, io.netty.buffer.ByteBufHolder
    LastHttpContent copy();

    @Override // io.netty.handler.codec.http.HttpContent, io.netty.buffer.ByteBufHolder, io.netty.util.ReferenceCounted
    LastHttpContent retain();

    @Override // io.netty.handler.codec.http.HttpContent, io.netty.buffer.ByteBufHolder, io.netty.util.ReferenceCounted
    LastHttpContent retain(int i);

    HttpHeaders trailingHeaders();
}
