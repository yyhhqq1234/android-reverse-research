package com.applovin.impl;

import android.graphics.Color;
import android.graphics.PointF;
import android.text.TextUtils;
import com.applovin.exoplayer2.common.base.Ascii;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
final class zk {
    public final String a;
    public final int b;
    public final Integer c;
    public final float d;
    public final boolean e;
    public final boolean f;
    public final boolean g;
    public final boolean h;

    private static boolean a(int i) {
        switch (i) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                return true;
            default:
                return false;
        }
    }

    private zk(String str, int i, Integer num, float f, boolean z, boolean z2, boolean z3, boolean z4) {
        this.a = str;
        this.b = i;
        this.c = num;
        this.d = f;
        this.e = z;
        this.f = z2;
        this.g = z3;
        this.h = z4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int b(String str) {
        try {
            int i = Integer.parseInt(str.trim());
            if (a(i)) {
                return i;
            }
        } catch (NumberFormatException unused) {
        }
        oc.d("SsaStyle", "Ignoring unknown alignment: " + str);
        return -1;
    }

    public static zk a(String str, a aVar) {
        b1.a(str.startsWith("Style:"));
        String[] strArrSplit = TextUtils.split(str.substring(6), ",");
        int length = strArrSplit.length;
        int i = aVar.i;
        if (length != i) {
            oc.d("SsaStyle", xp.a("Skipping malformed 'Style:' line (expected %s values, found %s): '%s'", Integer.valueOf(i), Integer.valueOf(strArrSplit.length), str));
            return null;
        }
        try {
            String strTrim = strArrSplit[aVar.a].trim();
            int i2 = aVar.b;
            int iB = i2 != -1 ? b(strArrSplit[i2].trim()) : -1;
            int i3 = aVar.c;
            Integer numD = i3 != -1 ? d(strArrSplit[i3].trim()) : null;
            int i4 = aVar.d;
            float fE = i4 != -1 ? e(strArrSplit[i4].trim()) : -3.4028235E38f;
            int i5 = aVar.e;
            boolean z = i5 != -1 && c(strArrSplit[i5].trim());
            int i6 = aVar.f;
            boolean z2 = i6 != -1 && c(strArrSplit[i6].trim());
            int i7 = aVar.g;
            boolean z3 = i7 != -1 && c(strArrSplit[i7].trim());
            int i8 = aVar.h;
            return new zk(strTrim, iB, numD, fE, z, z2, z3, i8 != -1 && c(strArrSplit[i8].trim()));
        } catch (RuntimeException e) {
            oc.c("SsaStyle", "Skipping malformed 'Style:' line: '" + str + "'", e);
            return null;
        }
    }

    public static Integer d(String str) {
        long j;
        try {
            if (str.startsWith("&H")) {
                j = Long.parseLong(str.substring(2), 16);
            } else {
                j = Long.parseLong(str);
            }
            b1.a(j <= 4294967295L);
            return Integer.valueOf(Color.argb(tb.a(((j >> 24) & 255) ^ 255), tb.a(j & 255), tb.a((j >> 8) & 255), tb.a((j >> 16) & 255)));
        } catch (IllegalArgumentException e) {
            oc.c("SsaStyle", "Failed to parse color expression: '" + str + "'", e);
            return null;
        }
    }

    private static float e(String str) {
        try {
            return Float.parseFloat(str);
        } catch (NumberFormatException e) {
            oc.c("SsaStyle", "Failed to parse font size: '" + str + "'", e);
            return -3.4028235E38f;
        }
    }

    private static boolean c(String str) {
        try {
            int i = Integer.parseInt(str);
            return i == 1 || i == -1;
        } catch (NumberFormatException e) {
            oc.c("SsaStyle", "Failed to parse boolean value: '" + str + "'", e);
            return false;
        }
    }

    static final class a {
        public final int a;
        public final int b;
        public final int c;
        public final int d;
        public final int e;
        public final int f;
        public final int g;
        public final int h;
        public final int i;

        private a(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
            this.a = i;
            this.b = i2;
            this.c = i3;
            this.d = i4;
            this.e = i5;
            this.f = i6;
            this.g = i7;
            this.h = i8;
            this.i = i9;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code duplicated, block: B:7:0x0030  */
        public static a a(String str) {
            String[] strArrSplit = TextUtils.split(str.substring(7), ",");
            int i = -1;
            int i2 = -1;
            int i3 = -1;
            int i4 = -1;
            int i5 = -1;
            int i6 = -1;
            int i7 = -1;
            int i8 = -1;
            for (int i9 = 0; i9 < strArrSplit.length; i9++) {
                String lowerCase = Ascii.toLowerCase(strArrSplit[i9].trim());
                lowerCase.hashCode();
                lowerCase.hashCode();
                switch (lowerCase) {
                    case "italic":
                        i6 = i9;
                        break;
                    case "underline":
                        i7 = i9;
                        break;
                    case "strikeout":
                        i8 = i9;
                        break;
                    case "primarycolour":
                        i3 = i9;
                        break;
                    case "bold":
                        i5 = i9;
                        break;
                    case "name":
                        i = i9;
                        break;
                    case "fontsize":
                        i4 = i9;
                        break;
                    case "alignment":
                        i2 = i9;
                        break;
                }
            }
            if (i != -1) {
                return new a(i, i2, i3, i4, i5, i6, i7, i8, strArrSplit.length);
            }
            return null;
        }
    }

    static final class b {
        private static final Pattern c = Pattern.compile("\\{([^}]*)\\}");
        private static final Pattern d = Pattern.compile(xp.a("\\\\pos\\((%1$s),(%1$s)\\)", "\\s*\\d+(?:\\.\\d+)?\\s*"));
        private static final Pattern e = Pattern.compile(xp.a("\\\\move\\(%1$s,%1$s,(%1$s),(%1$s)(?:,%1$s,%1$s)?\\)", "\\s*\\d+(?:\\.\\d+)?\\s*"));
        private static final Pattern f = Pattern.compile("\\\\an(\\d+)");
        public final int a;
        public final PointF b;

        private static int a(String str) {
            Matcher matcher = f.matcher(str);
            if (matcher.find()) {
                return zk.b((String) b1.a((Object) matcher.group(1)));
            }
            return -1;
        }

        private static PointF c(String str) {
            String strGroup;
            String strGroup2;
            Matcher matcher = d.matcher(str);
            Matcher matcher2 = e.matcher(str);
            boolean zFind = matcher.find();
            boolean zFind2 = matcher2.find();
            if (zFind) {
                if (zFind2) {
                    oc.c("SsaStyle.Overrides", "Override has both \\pos(x,y) and \\move(x1,y1,x2,y2); using \\pos values. override='" + str + "'");
                }
                strGroup = matcher.group(1);
                strGroup2 = matcher.group(2);
            } else {
                if (!zFind2) {
                    return null;
                }
                strGroup = matcher2.group(1);
                strGroup2 = matcher2.group(2);
            }
            return new PointF(Float.parseFloat(((String) b1.a((Object) strGroup)).trim()), Float.parseFloat(((String) b1.a((Object) strGroup2)).trim()));
        }

        public static String d(String str) {
            return c.matcher(str).replaceAll("");
        }

        private b(int i, PointF pointF) {
            this.a = i;
            this.b = pointF;
        }

        public static b b(String str) {
            Matcher matcher = c.matcher(str);
            PointF pointF = null;
            int i = -1;
            while (matcher.find()) {
                String str2 = (String) b1.a((Object) matcher.group(1));
                try {
                    PointF pointFC = c(str2);
                    if (pointFC != null) {
                        pointF = pointFC;
                    }
                } catch (RuntimeException unused) {
                }
                try {
                    int iA = a(str2);
                    if (iA != -1) {
                        i = iA;
                    }
                } catch (RuntimeException unused2) {
                }
            }
            return new b(i, pointF);
        }
    }
}
