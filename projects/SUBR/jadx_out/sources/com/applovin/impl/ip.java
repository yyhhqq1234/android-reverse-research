package com.applovin.impl;

import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import java.util.ArrayDeque;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
abstract class ip {
    private static gp b(gp gpVar, Map map) {
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(gpVar);
        while (!arrayDeque.isEmpty()) {
            gp gpVar2 = (gp) arrayDeque.pop();
            jp jpVarA = a(gpVar2.f, gpVar2.c(), map);
            if (jpVarA != null && jpVarA.i() == 3) {
                return gpVar2;
            }
            for (int iA = gpVar2.a() - 1; iA >= 0; iA--) {
                arrayDeque.push(gpVar2.a(iA));
            }
        }
        return null;
    }

    public static void a(Spannable spannable, int i, int i2, jp jpVar, gp gpVar, Map map, int i3) {
        gp gpVarB;
        jp jpVarA;
        int i4;
        if (jpVar.k() != -1) {
            spannable.setSpan(new StyleSpan(jpVar.k()), i, i2, 33);
        }
        if (jpVar.q()) {
            spannable.setSpan(new StrikethroughSpan(), i, i2, 33);
        }
        if (jpVar.r()) {
            spannable.setSpan(new UnderlineSpan(), i, i2, 33);
        }
        if (jpVar.p()) {
            pk.a(spannable, new ForegroundColorSpan(jpVar.b()), i, i2, 33);
        }
        if (jpVar.o()) {
            pk.a(spannable, new BackgroundColorSpan(jpVar.a()), i, i2, 33);
        }
        if (jpVar.c() != null) {
            pk.a(spannable, new TypefaceSpan(jpVar.c()), i, i2, 33);
        }
        if (jpVar.n() != null) {
            xn xnVar = (xn) b1.a(jpVar.n());
            int i5 = xnVar.a;
            if (i5 == -1) {
                i5 = (i3 == 2 || i3 == 1) ? 3 : 1;
                i4 = 1;
            } else {
                i4 = xnVar.b;
            }
            int i6 = xnVar.c;
            if (i6 == -2) {
                i6 = 1;
            }
            pk.a(spannable, new yn(i5, i4, i6), i, i2, 33);
        }
        int i7 = jpVar.i();
        if (i7 == 2) {
            gp gpVarA = a(gpVar, map);
            if (gpVarA != null && (gpVarB = b(gpVarA, map)) != null) {
                if (gpVarB.a() == 1 && gpVarB.a(0).b != null) {
                    String str = (String) xp.a((Object) gpVarB.a(0).b);
                    jp jpVarA2 = a(gpVarB.f, gpVarB.c(), map);
                    int iH = jpVarA2 != null ? jpVarA2.h() : -1;
                    if (iH == -1 && (jpVarA = a(gpVarA.f, gpVarA.c(), map)) != null) {
                        iH = jpVarA.h();
                    }
                    spannable.setSpan(new zi(str, iH), i, i2, 33);
                } else {
                    oc.c("TtmlRenderUtil", "Skipping rubyText node without exactly one text child.");
                }
            }
        } else if (i7 == 3 || i7 == 4) {
            spannable.setSpan(new n6(), i, i2, 33);
        }
        if (jpVar.m()) {
            pk.a(spannable, new oa(), i, i2, 33);
        }
        int iE = jpVar.e();
        if (iE == 1) {
            pk.a(spannable, new AbsoluteSizeSpan((int) jpVar.d(), true), i, i2, 33);
        } else if (iE == 2) {
            pk.a(spannable, new RelativeSizeSpan(jpVar.d()), i, i2, 33);
        } else {
            if (iE != 3) {
                return;
            }
            pk.a(spannable, new RelativeSizeSpan(jpVar.d() / 100.0f), i, i2, 33);
        }
    }

    static String a(String str) {
        return str.replaceAll("\r\n", "\n").replaceAll(" *\n *", "\n").replaceAll("\n", " ").replaceAll("[ \t\\x0B\f\r]+", " ");
    }

    static void a(SpannableStringBuilder spannableStringBuilder) {
        int length = spannableStringBuilder.length() - 1;
        while (length >= 0 && spannableStringBuilder.charAt(length) == ' ') {
            length--;
        }
        if (length < 0 || spannableStringBuilder.charAt(length) == '\n') {
            return;
        }
        spannableStringBuilder.append('\n');
    }

    private static gp a(gp gpVar, Map map) {
        while (gpVar != null) {
            jp jpVarA = a(gpVar.f, gpVar.c(), map);
            if (jpVarA != null && jpVarA.i() == 1) {
                return gpVar;
            }
            gpVar = gpVar.j;
        }
        return null;
    }

    public static jp a(jp jpVar, String[] strArr, Map map) {
        int i = 0;
        if (jpVar == null) {
            if (strArr == null) {
                return null;
            }
            if (strArr.length == 1) {
                return (jp) map.get(strArr[0]);
            }
            if (strArr.length > 1) {
                jp jpVar2 = new jp();
                int length = strArr.length;
                while (i < length) {
                    jpVar2.a((jp) map.get(strArr[i]));
                    i++;
                }
                return jpVar2;
            }
        } else {
            if (strArr != null && strArr.length == 1) {
                return jpVar.a((jp) map.get(strArr[0]));
            }
            if (strArr != null && strArr.length > 1) {
                int length2 = strArr.length;
                while (i < length2) {
                    jpVar.a((jp) map.get(strArr[i]));
                    i++;
                }
            }
        }
        return jpVar;
    }
}
