package im.yixin.sdk.http.multipart;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.util.EncodingUtils;

/* loaded from: classes.dex */
public class FilePart extends PartBase {
    public static final String DEFAULT_CHARSET = "UTF-8";
    public static final String DEFAULT_CONTENT_TYPE = "application/octet-stream";
    public static final String DEFAULT_TRANSFER_ENCODING = "binary";
    protected static final String FILE_NAME = "; filename=";
    private static final byte[] FILE_NAME_BYTES = EncodingUtils.getAsciiBytes(FILE_NAME);
    private PartSource source;

    public FilePart(String name, PartSource partSource, String contentType, String charset) {
        super(name, contentType == null ? DEFAULT_CONTENT_TYPE : contentType, charset == null ? "UTF-8" : charset, "binary");
        if (partSource == null) {
            throw new IllegalArgumentException("Source may not be null");
        }
        this.source = partSource;
    }

    public FilePart(String name, PartSource partSource) {
        this(name, partSource, null, null);
    }

    public FilePart(String name, String ofile, File file, String contentType, String charset) throws FileNotFoundException {
        this(name, new FilePartSource(ofile, file), contentType, charset);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // im.yixin.sdk.http.multipart.Part
    public void sendDispositionHeader(OutputStream out) throws IOException {
        super.sendDispositionHeader(out);
        String filename = this.source.getFileName();
        if (filename != null) {
            out.write(FILE_NAME_BYTES);
            out.write(QUOTE_BYTES);
            out.write(EncodingUtils.getAsciiBytes(filename));
            out.write(QUOTE_BYTES);
        }
    }

    @Override // im.yixin.sdk.http.multipart.Part
    protected void sendData(OutputStream out) throws IOException {
        if (lengthOfData() != 0) {
            byte[] tmp = new byte[4096];
            InputStream instream = this.source.createInputStream();
            while (true) {
                try {
                    int len = instream.read(tmp);
                    if (len >= 0) {
                        out.write(tmp, 0, len);
                    } else {
                        return;
                    }
                } finally {
                    instream.close();
                }
            }
        }
    }

    protected PartSource getSource() {
        return this.source;
    }

    @Override // im.yixin.sdk.http.multipart.Part
    protected long lengthOfData() {
        return this.source.getLength();
    }
}
