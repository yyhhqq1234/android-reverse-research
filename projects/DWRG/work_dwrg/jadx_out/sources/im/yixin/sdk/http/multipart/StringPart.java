package im.yixin.sdk.http.multipart;

import java.io.IOException;
import java.io.OutputStream;
import org.apache.http.util.EncodingUtils;

/* loaded from: classes.dex */
public class StringPart extends PartBase {
    public static final String DEFAULT_CHARSET = "UTF-8";
    public static final String DEFAULT_CONTENT_TYPE = "text/plain";
    public static final String DEFAULT_TRANSFER_ENCODING = "8bit";
    private byte[] content;
    private String value;

    public StringPart(String name, String value, String charset) {
        super(name, DEFAULT_CONTENT_TYPE, charset == null ? "UTF-8" : charset, DEFAULT_TRANSFER_ENCODING);
        if (value == null) {
            throw new IllegalArgumentException("Value may not be null");
        }
        if (value.indexOf(0) != -1) {
            throw new IllegalArgumentException("NULs may not be present in string parts");
        }
        this.value = value;
    }

    public StringPart(String name, String value) {
        this(name, value, null);
    }

    private byte[] getContent() {
        if (this.content == null) {
            this.content = EncodingUtils.getBytes(this.value, getCharSet());
        }
        return this.content;
    }

    @Override // im.yixin.sdk.http.multipart.Part
    protected void sendData(OutputStream out) throws IOException {
        out.write(getContent());
    }

    @Override // im.yixin.sdk.http.multipart.Part
    protected long lengthOfData() {
        return getContent().length;
    }

    @Override // im.yixin.sdk.http.multipart.PartBase
    public void setCharSet(String charSet) {
        super.setCharSet(charSet);
        this.content = null;
    }
}
