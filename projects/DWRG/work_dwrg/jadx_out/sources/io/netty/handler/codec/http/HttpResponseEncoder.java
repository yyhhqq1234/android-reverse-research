package io.netty.handler.codec.http;

import io.netty.buffer.ByteBuf;

/* loaded from: classes.dex */
public class HttpResponseEncoder extends HttpObjectEncoder<HttpResponse> {
    private static final byte[] CRLF = {HttpConstants.CR, 10};

    @Override // io.netty.handler.codec.http.HttpObjectEncoder, io.netty.handler.codec.MessageToMessageEncoder
    public boolean acceptOutboundMessage(Object msg) throws Exception {
        return super.acceptOutboundMessage(msg) && !(msg instanceof HttpRequest);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.handler.codec.http.HttpObjectEncoder
    public void encodeInitialLine(ByteBuf buf, HttpResponse response) throws Exception {
        response.getProtocolVersion().encode(buf);
        buf.writeByte(32);
        response.getStatus().encode(buf);
        buf.writeBytes(CRLF);
    }
}
