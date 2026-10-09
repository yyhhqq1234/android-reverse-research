package com.applovin.impl;

import android.text.TextUtils;
import com.applovin.exoplayer2.common.base.Ascii;
import java.util.Set;
import java.util.regex.Pattern;
import kotlinx.coroutines.DebugKt;

/* JADX INFO: loaded from: classes.dex */
final class xn {
    private static final Pattern d = Pattern.compile("\\s+");
    private static final hb e = hb.a(DebugKt.DEBUG_PROPERTY_VALUE_AUTO, "none");
    private static final hb f = hb.a("dot", "sesame", "circle");
    private static final hb g = hb.a("filled", "open");
    private static final hb h = hb.a("after", "before", "outside");
    public final int a;
    public final int b;
    public final int c;

    private xn(int i, int i2, int i3) {
        this.a = i;
        this.b = i2;
        this.c = i3;
    }

    public static xn a(String str) {
        if (str == null) {
            return null;
        }
        String lowerCase = Ascii.toLowerCase(str.trim());
        if (lowerCase.isEmpty()) {
            return null;
        }
        return a(hb.a((Object[]) TextUtils.split(lowerCase, d)));
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0042  */
    /* JADX WARN: Code duplicated, block: B:55:0x00da  */
    /* JADX WARN: Code duplicated, block: B:57:0x00df  */
    /* JADX WARN: Code duplicated, block: B:63:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:65:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:66:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:68:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:69:0x0100  */
    /* JADX WARN: Code duplicated, block: B:71:0x0103 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:72:0x0105  */
    /* JADX WARN: Code duplicated, block: B:73:0x0107  */
    private static xn a(hb hbVar) {
        byte b;
        int i;
        String str;
        int iHashCode;
        String str2 = (String) vb.a(rj.a((Set) h, (Set) hbVar), "outside");
        int iHashCode2 = str2.hashCode();
        byte b2 = 0;
        int i2 = 2;
        int i3 = -1;
        if (iHashCode2 != -1392885889) {
            if (iHashCode2 != -1106037339) {
                if (iHashCode2 == 92734940 && str2.equals("after")) {
                    b = 0;
                } else {
                    b = -1;
                }
            } else if (str2.equals("outside")) {
                b = 1;
            } else {
                b = -1;
            }
        } else if (str2.equals("before")) {
            b = 2;
        } else {
            b = -1;
        }
        if (b != 0) {
            i = b != 1 ? 1 : -2;
        } else {
            i = 2;
        }
        rj.c cVarA = rj.a((Set) e, (Set) hbVar);
        if (!cVarA.isEmpty()) {
            String str3 = (String) cVarA.iterator().next();
            int iHashCode3 = str3.hashCode();
            if (iHashCode3 == 3005871) {
                str3.equals(DebugKt.DEBUG_PROPERTY_VALUE_AUTO);
            } else if (iHashCode3 == 3387192 && str3.equals("none")) {
                i3 = 0;
            }
            return new xn(i3, 0, i);
        }
        rj.c cVarA2 = rj.a((Set) g, (Set) hbVar);
        rj.c cVarA3 = rj.a((Set) f, (Set) hbVar);
        if (cVarA2.isEmpty() && cVarA3.isEmpty()) {
            return new xn(-1, 0, i);
        }
        String str4 = (String) vb.a(cVarA2, "filled");
        int iHashCode4 = str4.hashCode();
        if (iHashCode4 == -1274499742) {
            str4.equals("filled");
        } else {
            int i4 = (iHashCode4 == 3417674 && str4.equals("open")) ? 2 : 1;
            str = (String) vb.a(cVarA3, "circle");
            iHashCode = str.hashCode();
            if (iHashCode != -1360216880) {
                if (iHashCode != -905816648) {
                    if (iHashCode == 99657 || !str.equals("dot")) {
                        b2 = -1;
                    }
                } else if (str.equals("sesame")) {
                    b2 = 1;
                } else {
                    b2 = -1;
                }
            } else if (str.equals("circle")) {
                b2 = 2;
            } else {
                b2 = -1;
            }
            if (b2 != 0) {
                if (b2 != 1) {
                    i2 = 1;
                } else {
                    i2 = 3;
                }
            }
            return new xn(i2, i4, i);
        }
        str = (String) vb.a(cVarA3, "circle");
        iHashCode = str.hashCode();
        if (iHashCode != -1360216880) {
            if (iHashCode != -905816648) {
                if (iHashCode == 99657) {
                    b2 = -1;
                } else {
                    b2 = -1;
                }
            } else if (str.equals("sesame")) {
                b2 = 1;
            } else {
                b2 = -1;
            }
        } else if (str.equals("circle")) {
            b2 = 2;
        } else {
            b2 = -1;
        }
        if (b2 != 0) {
            if (b2 != 1) {
                i2 = 1;
            } else {
                i2 = 3;
            }
        }
        return new xn(i2, i4, i);
    }
}
