package com.applovin.impl;

import com.google.android.gms.nearby.connection.ConnectionsStatusCodes;

/* JADX INFO: loaded from: classes.dex */
public abstract class sf {
    private static final String[] a = {"audio/mpeg-L1", "audio/mpeg-L2", "audio/mpeg"};
    private static final int[] b = {44100, 48000, 32000};
    private static final int[] c = {32000, 64000, 96000, 128000, 160000, 192000, 224000, 256000, 288000, 320000, 352000, 384000, 416000, 448000};
    private static final int[] d = {32000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 144000, 160000, 176000, 192000, 224000, 256000};
    private static final int[] e = {32000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000, 384000};
    private static final int[] f = {32000, 40000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000};
    private static final int[] g = {ConnectionsStatusCodes.STATUS_NETWORK_NOT_CONNECTED, 16000, 24000, 32000, 40000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 144000, 160000};

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean c(int i) {
        return (i & (-2097152)) == -2097152;
    }

    public static final class a {
        public int a;
        public String b;
        public int c;
        public int d;
        public int e;
        public int f;
        public int g;

        public boolean a(int i) {
            int i2;
            int i3;
            int i4;
            int i5;
            int i6;
            if (!sf.c(i) || (i2 = (i >>> 19) & 3) == 1 || (i3 = (i >>> 17) & 3) == 0 || (i4 = (i >>> 12) & 15) == 0 || i4 == 15 || (i5 = (i >>> 10) & 3) == 3) {
                return false;
            }
            this.a = i2;
            this.b = sf.a[3 - i3];
            int i7 = sf.b[i5];
            this.d = i7;
            if (i2 == 2) {
                this.d = i7 / 2;
            } else if (i2 == 0) {
                this.d = i7 / 4;
            }
            int i8 = (i >>> 9) & 1;
            this.g = sf.b(i2, i3);
            if (i3 == 3) {
                if (i2 == 3) {
                    i6 = sf.c[i4 - 1];
                } else {
                    i6 = sf.d[i4 - 1];
                }
                this.f = i6;
                this.c = (((i6 * 12) / this.d) + i8) * 4;
            } else {
                if (i2 == 3) {
                    int i9 = i3 == 2 ? sf.e[i4 - 1] : sf.f[i4 - 1];
                    this.f = i9;
                    this.c = ((i9 * 144) / this.d) + i8;
                } else {
                    int i10 = sf.g[i4 - 1];
                    this.f = i10;
                    this.c = (((i3 == 1 ? 72 : 144) * i10) / this.d) + i8;
                }
            }
            this.e = ((i >> 6) & 3) == 3 ? 1 : 2;
            return true;
        }
    }

    public static int b(int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        if (!c(i) || (i2 = (i >>> 19) & 3) == 1 || (i3 = (i >>> 17) & 3) == 0 || (i4 = (i >>> 12) & 15) == 0 || i4 == 15 || (i5 = (i >>> 10) & 3) == 3) {
            return -1;
        }
        int i7 = b[i5];
        if (i2 == 2) {
            i7 /= 2;
        } else if (i2 == 0) {
            i7 /= 4;
        }
        int i8 = (i >>> 9) & 1;
        if (i3 == 3) {
            return ((((i2 == 3 ? c[i4 - 1] : d[i4 - 1]) * 12) / i7) + i8) * 4;
        }
        if (i2 == 3) {
            i6 = i3 == 2 ? e[i4 - 1] : f[i4 - 1];
        } else {
            i6 = g[i4 - 1];
        }
        if (i2 == 3) {
            return ((i6 * 144) / i7) + i8;
        }
        return (((i3 == 1 ? 72 : 144) * i6) / i7) + i8;
    }

    public static int d(int i) {
        int i2;
        int i3;
        if (!c(i) || (i2 = (i >>> 19) & 3) == 1 || (i3 = (i >>> 17) & 3) == 0) {
            return -1;
        }
        int i4 = (i >>> 12) & 15;
        int i5 = (i >>> 10) & 3;
        if (i4 == 0 || i4 == 15 || i5 == 3) {
            return -1;
        }
        return b(i2, i3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int b(int i, int i2) {
        if (i2 == 1) {
            return i == 3 ? 1152 : 576;
        }
        if (i2 == 2) {
            return 1152;
        }
        if (i2 == 3) {
            return 384;
        }
        throw new IllegalArgumentException();
    }
}
