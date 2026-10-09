package com.applovin.impl;

import com.google.android.gms.nearby.connection.ConnectionsStatusCodes;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    private static final int[] a = {96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, ConnectionsStatusCodes.STATUS_NETWORK_NOT_CONNECTED, 7350};
    private static final int[] b = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    public static byte[] a(int i, int i2, int i3) {
        return new byte[]{(byte) (((i << 3) & 248) | ((i2 >> 1) & 7)), (byte) (((i2 << 7) & 128) | ((i3 << 3) & 120))};
    }

    public static final class b {
        public final int a;
        public final int b;
        public final String c;

        private b(int i, int i2, String str) {
            this.a = i;
            this.b = i2;
            this.c = str;
        }
    }

    private static int b(zg zgVar) throws ch {
        int iA = zgVar.a(4);
        if (iA == 15) {
            return zgVar.a(24);
        }
        if (iA < 13) {
            return a[iA];
        }
        throw ch.a(null, null);
    }

    private static int a(zg zgVar) {
        int iA = zgVar.a(5);
        return iA == 31 ? zgVar.a(6) + 32 : iA;
    }

    public static b a(zg zgVar, boolean z) throws ch {
        int iA = a(zgVar);
        int iB = b(zgVar);
        int iA2 = zgVar.a(4);
        String str = "mp4a.40." + iA;
        if (iA == 5 || iA == 29) {
            iB = b(zgVar);
            iA = a(zgVar);
            if (iA == 22) {
                iA2 = zgVar.a(4);
            }
        }
        if (z) {
            if (iA != 6 && iA != 7 && iA != 17 && iA != 1 && iA != 2 && iA != 3 && iA != 4) {
                switch (iA) {
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                        break;
                    default:
                        throw ch.a("Unsupported audio object type: " + iA);
                }
            }
            a(zgVar, iA, iA2);
            switch (iA) {
                case 17:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                    int iA3 = zgVar.a(2);
                    if (iA3 == 2 || iA3 == 3) {
                        throw ch.a("Unsupported epConfig: " + iA3);
                    }
                    break;
            }
        }
        int i = b[iA2];
        if (i != -1) {
            return new b(iB, i, str);
        }
        throw ch.a(null, null);
    }

    private static void a(zg zgVar, int i, int i2) {
        if (zgVar.f()) {
            oc.d("AacUtil", "Unexpected frameLengthFlag = 1");
        }
        if (zgVar.f()) {
            zgVar.d(14);
        }
        boolean zF = zgVar.f();
        if (i2 == 0) {
            throw new UnsupportedOperationException();
        }
        if (i == 6 || i == 20) {
            zgVar.d(3);
        }
        if (zF) {
            if (i == 22) {
                zgVar.d(16);
            }
            if (i == 17 || i == 19 || i == 20 || i == 23) {
                zgVar.d(3);
            }
            zgVar.d(1);
        }
    }

    public static b a(byte[] bArr) {
        return a(new zg(bArr), false);
    }
}
