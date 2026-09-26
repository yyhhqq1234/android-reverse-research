package io.netty.handler.codec.http;

import io.netty.buffer.ByteBuf;
import io.netty.util.CharsetUtil;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class HttpHeaderEntity implements CharSequence {
    private final byte[] bytes;
    private final int hash;
    private final String name;
    private final int separatorLen;

    public HttpHeaderEntity(String name) {
        this(name, null);
    }

    public HttpHeaderEntity(String name, byte[] separator) {
        this.name = name;
        this.hash = HttpHeaders.hash(name);
        byte[] nameBytes = name.getBytes(CharsetUtil.US_ASCII);
        if (separator == null) {
            this.bytes = nameBytes;
            this.separatorLen = 0;
        } else {
            this.separatorLen = separator.length;
            this.bytes = new byte[nameBytes.length + separator.length];
            System.arraycopy(nameBytes, 0, this.bytes, 0, nameBytes.length);
            System.arraycopy(separator, 0, this.bytes, nameBytes.length, separator.length);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int hash() {
        return this.hash;
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.bytes.length - this.separatorLen;
    }

    @Override // java.lang.CharSequence
    public char charAt(int index) {
        if (this.bytes.length - this.separatorLen <= index) {
            throw new IndexOutOfBoundsException();
        }
        return (char) this.bytes[index];
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int start, int end) {
        return new HttpHeaderEntity(this.name.substring(start, end));
    }

    @Override // java.lang.CharSequence
    public String toString() {
        return this.name;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean encode(ByteBuf buf) {
        buf.writeBytes(this.bytes);
        return this.separatorLen > 0;
    }
}
