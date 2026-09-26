package com.netease.codescanner;

import com.google.zxing.BarcodeFormat;
import java.util.Collection;

/* loaded from: classes.dex */
public class CodeScanConfig {
    public Collection<BarcodeFormat> decode_formats;
    public boolean decode_generateErrorPreview = false;
    public int decode_frameWidth = 250;
    public int decode_frameHeight = 250;
    public long camera_updateIntervalMs = 1000;

    public CodeScanConfig() {
        this.decode_formats = null;
        this.decode_formats = b.c;
    }
}
