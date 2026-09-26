package com.netease.cloud.nos.android.utils;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;

/* loaded from: classes.dex */
public class FileInput {
    private static final String LOGTAG = LogUtil.makeLogTag(FileInput.class);
    private final File file;
    private final String filename;
    private final RandomAccessFile randomAccessFile;

    public FileInput(File file) throws FileNotFoundException {
        this(file, null);
    }

    public FileInput(File file, String aliasFilename) throws FileNotFoundException {
        this.file = file;
        this.randomAccessFile = new RandomAccessFile(file, "r");
        this.filename = (aliasFilename == null || aliasFilename.trim().length() <= 0) ? file.getName() : aliasFilename;
    }

    public long length() {
        return this.file.length();
    }

    public String getFilename() {
        return this.filename;
    }

    public void doClose() {
        if (this.randomAccessFile != null) {
            try {
                this.randomAccessFile.close();
            } catch (IOException e) {
                LogUtil.e(LOGTAG, "close file exception", e);
            }
        }
    }

    public byte[] read(long offset, int len) throws IOException {
        if (offset == 0 && len == 0 && length() == 0) {
            return new byte[0];
        }
        if (offset >= length()) {
            return null;
        }
        byte[] bs = new byte[len];
        this.randomAccessFile.seek(offset);
        this.randomAccessFile.read(bs);
        long j = offset + len;
        return bs;
    }

    public void delete() {
        if (this.file != null) {
            this.file.delete();
        }
    }
}
