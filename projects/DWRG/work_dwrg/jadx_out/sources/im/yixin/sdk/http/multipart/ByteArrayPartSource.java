package im.yixin.sdk.http.multipart;

import java.io.ByteArrayInputStream;
import java.io.InputStream;

/* loaded from: classes.dex */
public class ByteArrayPartSource implements PartSource {
    private byte[] bytes;
    private String fileName;

    public ByteArrayPartSource(String fileName, byte[] bytes) {
        this.fileName = fileName;
        this.bytes = bytes;
    }

    @Override // im.yixin.sdk.http.multipart.PartSource
    public long getLength() {
        return this.bytes.length;
    }

    @Override // im.yixin.sdk.http.multipart.PartSource
    public String getFileName() {
        return this.fileName;
    }

    @Override // im.yixin.sdk.http.multipart.PartSource
    public InputStream createInputStream() {
        return new ByteArrayInputStream(this.bytes);
    }
}
