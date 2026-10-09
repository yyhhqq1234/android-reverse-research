package com.applovin.impl;

import android.text.TextUtils;
import com.applovin.exoplayer2.common.base.Ascii;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
final class ur {
    private static final Pattern c = Pattern.compile("\\[voice=\"([^\"]*)\"\\]");
    private static final Pattern d = Pattern.compile("^((?:[0-9]*\\.)?[0-9]+)(px|em|%)$");
    private final ah a = new ah();
    private final StringBuilder b = new StringBuilder();

    public List c(ah ahVar) {
        this.b.setLength(0);
        int iD = ahVar.d();
        e(ahVar);
        this.a.a(ahVar.c(), ahVar.d());
        this.a.f(iD);
        ArrayList arrayList = new ArrayList();
        while (true) {
            String strD = d(this.a, this.b);
            if (strD == null || !"{".equals(b(this.a, this.b))) {
                return arrayList;
            }
            vr vrVar = new vr();
            a(vrVar, strD);
            String str = null;
            boolean z = false;
            while (!z) {
                int iD2 = this.a.d();
                String strB = b(this.a, this.b);
                boolean z2 = strB == null || "}".equals(strB);
                if (!z2) {
                    this.a.f(iD2);
                    a(this.a, vrVar, this.b);
                }
                str = strB;
                z = z2;
            }
            if ("}".equals(str)) {
                arrayList.add(vrVar);
            }
        }
    }

    private static String c(ah ahVar, StringBuilder sb) {
        StringBuilder sb2 = new StringBuilder();
        boolean z = false;
        while (!z) {
            int iD = ahVar.d();
            String strB = b(ahVar, sb);
            if (strB == null) {
                return null;
            }
            if (!"}".equals(strB) && !";".equals(strB)) {
                sb2.append(strB);
            } else {
                ahVar.f(iD);
                z = true;
            }
        }
        return sb2.toString();
    }

    private static String d(ah ahVar, StringBuilder sb) {
        f(ahVar);
        if (ahVar.a() < 5 || !"::cue".equals(ahVar.c(5))) {
            return null;
        }
        int iD = ahVar.d();
        String strB = b(ahVar, sb);
        if (strB == null) {
            return null;
        }
        if ("{".equals(strB)) {
            ahVar.f(iD);
            return "";
        }
        String strD = "(".equals(strB) ? d(ahVar) : null;
        if (")".equals(b(ahVar, sb))) {
            return strD;
        }
        return null;
    }

    static void f(ah ahVar) {
        while (true) {
            for (boolean z = true; ahVar.a() > 0 && z; z = false) {
                if (!b(ahVar) && !a(ahVar)) {
                }
            }
            return;
        }
    }

    private static boolean b(ah ahVar) {
        char cA = a(ahVar, ahVar.d());
        if (cA != '\t' && cA != '\n' && cA != '\f' && cA != '\r' && cA != ' ') {
            return false;
        }
        ahVar.g(1);
        return true;
    }

    static void e(ah ahVar) {
        while (!TextUtils.isEmpty(ahVar.l())) {
        }
    }

    private static boolean a(ah ahVar) {
        int iD = ahVar.d();
        int iE = ahVar.e();
        byte[] bArrC = ahVar.c();
        int i = iD + 2;
        if (i > iE) {
            return false;
        }
        int i2 = iD + 1;
        if (bArrC[iD] != 47 || bArrC[i2] != 42) {
            return false;
        }
        while (true) {
            int i3 = i + 1;
            if (i3 < iE) {
                if (((char) bArrC[i]) == '*' && ((char) bArrC[i3]) == '/') {
                    i += 2;
                    iE = i;
                } else {
                    i = i3;
                }
            } else {
                ahVar.g(iE - ahVar.d());
                return true;
            }
        }
    }

    private static String d(ah ahVar) {
        int i;
        int iD = ahVar.d();
        int iE = ahVar.e();
        loop0: while (true) {
            boolean z = false;
            while (true) {
                if (iD >= iE || z) {
                    break loop0;
                }
                i = iD + 1;
                if (((char) ahVar.c()[iD]) == ')') {
                    z = true;
                    iD = i;
                }
            }
            iD = i;
        }
        return ahVar.c((iD - 1) - ahVar.d()).trim();
    }

    static String b(ah ahVar, StringBuilder sb) {
        f(ahVar);
        if (ahVar.a() == 0) {
            return null;
        }
        String strA = a(ahVar, sb);
        if (!"".equals(strA)) {
            return strA;
        }
        return "" + ((char) ahVar.w());
    }

    private static String a(ah ahVar, StringBuilder sb) {
        boolean z = false;
        sb.setLength(0);
        int iD = ahVar.d();
        int iE = ahVar.e();
        while (iD < iE && !z) {
            char c2 = (char) ahVar.c()[iD];
            if ((c2 < 'A' || c2 > 'Z') && ((c2 < 'a' || c2 > 'z') && !((c2 >= '0' && c2 <= '9') || c2 == '#' || c2 == '-' || c2 == '.' || c2 == '_'))) {
                z = true;
            } else {
                iD++;
                sb.append(c2);
            }
        }
        ahVar.g(iD - ahVar.d());
        return sb.toString();
    }

    private static void a(ah ahVar, vr vrVar, StringBuilder sb) {
        f(ahVar);
        String strA = a(ahVar, sb);
        if (!"".equals(strA) && ":".equals(b(ahVar, sb))) {
            f(ahVar);
            String strC = c(ahVar, sb);
            if (strC == null || "".equals(strC)) {
                return;
            }
            int iD = ahVar.d();
            String strB = b(ahVar, sb);
            if (!";".equals(strB)) {
                if (!"}".equals(strB)) {
                    return;
                } else {
                    ahVar.f(iD);
                }
            }
            if (com.ironsource.y8.h.S.equals(strA)) {
                vrVar.b(s3.a(strC));
                return;
            }
            if ("background-color".equals(strA)) {
                vrVar.a(s3.a(strC));
                return;
            }
            boolean z = true;
            if ("ruby-position".equals(strA)) {
                if ("over".equals(strC)) {
                    vrVar.d(1);
                    return;
                } else {
                    if ("under".equals(strC)) {
                        vrVar.d(2);
                        return;
                    }
                    return;
                }
            }
            if ("text-combine-upright".equals(strA)) {
                if (!"all".equals(strC) && !strC.startsWith("digits")) {
                    z = false;
                }
                vrVar.b(z);
                return;
            }
            if ("text-decoration".equals(strA)) {
                if ("underline".equals(strC)) {
                    vrVar.d(true);
                    return;
                }
                return;
            }
            if ("font-family".equals(strA)) {
                vrVar.a(strC);
                return;
            }
            if ("font-weight".equals(strA)) {
                if ("bold".equals(strC)) {
                    vrVar.a(true);
                }
            } else if ("font-style".equals(strA)) {
                if ("italic".equals(strC)) {
                    vrVar.c(true);
                }
            } else if ("font-size".equals(strA)) {
                a(strC, vrVar);
            }
        }
    }

    private static char a(ah ahVar, int i) {
        return (char) ahVar.c()[i];
    }

    private static void a(String str, vr vrVar) {
        Matcher matcher = d.matcher(Ascii.toLowerCase(str));
        if (!matcher.matches()) {
            oc.d("WebvttCssParser", "Invalid font-size: '" + str + "'.");
            return;
        }
        String str2 = (String) b1.a((Object) matcher.group(2));
        str2.hashCode();
        str2.hashCode();
        switch (str2) {
            case "%":
                vrVar.c(3);
                break;
            case "em":
                vrVar.c(2);
                break;
            case "px":
                vrVar.c(1);
                break;
            default:
                throw new IllegalStateException();
        }
        vrVar.a(Float.parseFloat((String) b1.a((Object) matcher.group(1))));
    }

    private void a(vr vrVar, String str) {
        if ("".equals(str)) {
            return;
        }
        int iIndexOf = str.indexOf(91);
        if (iIndexOf != -1) {
            Matcher matcher = c.matcher(str.substring(iIndexOf));
            if (matcher.matches()) {
                vrVar.d((String) b1.a((Object) matcher.group(1)));
            }
            str = str.substring(0, iIndexOf);
        }
        String[] strArrA = xp.a(str, "\\.");
        String str2 = strArrA[0];
        int iIndexOf2 = str2.indexOf(35);
        if (iIndexOf2 != -1) {
            vrVar.c(str2.substring(0, iIndexOf2));
            vrVar.b(str2.substring(iIndexOf2 + 1));
        } else {
            vrVar.c(str2);
        }
        if (strArrA.length > 1) {
            vrVar.a((String[]) xp.a(strArrA, 1, strArrA.length));
        }
    }
}
