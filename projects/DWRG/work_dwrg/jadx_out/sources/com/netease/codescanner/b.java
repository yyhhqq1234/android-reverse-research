package com.netease.codescanner;

import com.google.zxing.BarcodeFormat;
import java.util.Collection;
import java.util.EnumSet;

/* loaded from: classes.dex */
public final class b {
    public static final Collection<BarcodeFormat> c = EnumSet.of(BarcodeFormat.QR_CODE);
    public static final Collection<BarcodeFormat> d = EnumSet.of(BarcodeFormat.DATA_MATRIX);
    public static final Collection<BarcodeFormat> a = EnumSet.of(BarcodeFormat.UPC_A, BarcodeFormat.UPC_E, BarcodeFormat.EAN_13, BarcodeFormat.EAN_8, BarcodeFormat.RSS_14, BarcodeFormat.RSS_EXPANDED);
    public static final Collection<BarcodeFormat> b = EnumSet.of(BarcodeFormat.CODE_39, BarcodeFormat.CODE_93, BarcodeFormat.CODE_128, BarcodeFormat.ITF, BarcodeFormat.CODABAR);

    static {
        b.addAll(a);
    }
}
