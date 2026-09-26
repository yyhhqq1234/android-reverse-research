package im.yixin.sdk.http.multipart;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public class FilePartSource implements PartSource {
    private File file;
    private String fileName;

    public FilePartSource(String ofile, File file) throws FileNotFoundException {
        this.file = null;
        this.fileName = null;
        this.file = file;
        if (file != null) {
            if (!file.isFile()) {
                throw new FileNotFoundException("File is not a normal file.");
            }
            if (!file.canRead()) {
                throw new FileNotFoundException("File is not readable.");
            }
            this.fileName = ofile;
        }
    }

    @Override // im.yixin.sdk.http.multipart.PartSource
    public long getLength() {
        if (this.file != null) {
            return this.file.length();
        }
        return 0L;
    }

    @Override // im.yixin.sdk.http.multipart.PartSource
    public String getFileName() {
        return this.fileName == null ? "" : this.fileName;
    }

    @Override // im.yixin.sdk.http.multipart.PartSource
    public InputStream createInputStream() throws IOException {
        return this.file != null ? new FileInputStream(this.file) : new ByteArrayInputStream(new byte[0]);
    }
}
