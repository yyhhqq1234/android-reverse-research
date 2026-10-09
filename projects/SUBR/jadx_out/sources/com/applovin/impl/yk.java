package com.applovin.impl;

import android.text.TextUtils;
import com.applovin.exoplayer2.common.base.Ascii;

/* JADX INFO: loaded from: classes.dex */
final class yk {
    public final int a;
    public final int b;
    public final int c;
    public final int d;
    public final int e;

    private yk(int i, int i2, int i3, int i4, int i5) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
        this.e = i5;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:7:0x0035  */
    public static yk a(String str) {
        b1.a(str.startsWith("Format:"));
        String[] strArrSplit = TextUtils.split(str.substring(7), ",");
        int i = -1;
        int i2 = -1;
        int i3 = -1;
        int i4 = -1;
        for (int i5 = 0; i5 < strArrSplit.length; i5++) {
            String lowerCase = Ascii.toLowerCase(strArrSplit[i5].trim());
            lowerCase.hashCode();
            lowerCase.hashCode();
            switch (lowerCase) {
                case "end":
                    i2 = i5;
                    break;
                case "text":
                    i4 = i5;
                    break;
                case "start":
                    i = i5;
                    break;
                case "style":
                    i3 = i5;
                    break;
            }
        }
        if (i == -1 || i2 == -1 || i4 == -1) {
            return null;
        }
        return new yk(i, i2, i3, i4, strArrSplit.length);
    }
}
