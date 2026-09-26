package okhttp3.internal.http;

import io.netty.handler.codec.http.HttpHeaders;
import java.io.IOException;
import java.util.List;
import okhttp3.Cookie;
import okhttp3.CookieJar;
import okhttp3.Headers;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.internal.Util;
import okhttp3.internal.Version;
import okio.GzipSource;
import okio.Okio;

/* loaded from: classes.dex */
public final class BridgeInterceptor implements Interceptor {
    private final CookieJar cookieJar;

    public BridgeInterceptor(CookieJar cookieJar) {
        this.cookieJar = cookieJar;
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Request userRequest = chain.request();
        Request.Builder requestBuilder = userRequest.newBuilder();
        RequestBody body = userRequest.body();
        if (body != null) {
            MediaType contentType = body.contentType();
            if (contentType != null) {
                requestBuilder.header(HttpHeaders.Names.CONTENT_TYPE, contentType.toString());
            }
            long contentLength = body.contentLength();
            if (contentLength != -1) {
                requestBuilder.header(HttpHeaders.Names.CONTENT_LENGTH, Long.toString(contentLength));
                requestBuilder.removeHeader(HttpHeaders.Names.TRANSFER_ENCODING);
            } else {
                requestBuilder.header(HttpHeaders.Names.TRANSFER_ENCODING, HttpHeaders.Values.CHUNKED);
                requestBuilder.removeHeader(HttpHeaders.Names.CONTENT_LENGTH);
            }
        }
        if (userRequest.header("Host") == null) {
            requestBuilder.header("Host", Util.hostHeader(userRequest.url(), false));
        }
        if (userRequest.header(HttpHeaders.Names.CONNECTION) == null) {
            requestBuilder.header(HttpHeaders.Names.CONNECTION, "Keep-Alive");
        }
        boolean transparentGzip = false;
        if (userRequest.header(HttpHeaders.Names.ACCEPT_ENCODING) == null && userRequest.header("Range") == null) {
            transparentGzip = true;
            requestBuilder.header(HttpHeaders.Names.ACCEPT_ENCODING, HttpHeaders.Values.GZIP);
        }
        List<Cookie> cookies = this.cookieJar.loadForRequest(userRequest.url());
        if (!cookies.isEmpty()) {
            requestBuilder.header(HttpHeaders.Names.COOKIE, cookieHeader(cookies));
        }
        if (userRequest.header(HttpHeaders.Names.USER_AGENT) == null) {
            requestBuilder.header(HttpHeaders.Names.USER_AGENT, Version.userAgent());
        }
        Response networkResponse = chain.proceed(requestBuilder.build());
        HttpHeaders.receiveHeaders(this.cookieJar, userRequest.url(), networkResponse.headers());
        Response.Builder responseBuilder = networkResponse.newBuilder().request(userRequest);
        if (transparentGzip && HttpHeaders.Values.GZIP.equalsIgnoreCase(networkResponse.header(HttpHeaders.Names.CONTENT_ENCODING)) && HttpHeaders.hasBody(networkResponse)) {
            GzipSource responseBody = new GzipSource(networkResponse.body().source());
            Headers strippedHeaders = networkResponse.headers().newBuilder().removeAll(HttpHeaders.Names.CONTENT_ENCODING).removeAll(HttpHeaders.Names.CONTENT_LENGTH).build();
            responseBuilder.headers(strippedHeaders);
            responseBuilder.body(new RealResponseBody(networkResponse.header(HttpHeaders.Names.CONTENT_TYPE), -1L, Okio.buffer(responseBody)));
        }
        return responseBuilder.build();
    }

    private String cookieHeader(List<Cookie> cookies) {
        StringBuilder cookieHeader = new StringBuilder();
        int size = cookies.size();
        for (int i = 0; i < size; i++) {
            if (i > 0) {
                cookieHeader.append("; ");
            }
            Cookie cookie = cookies.get(i);
            cookieHeader.append(cookie.name()).append('=').append(cookie.value());
        }
        return cookieHeader.toString();
    }
}
