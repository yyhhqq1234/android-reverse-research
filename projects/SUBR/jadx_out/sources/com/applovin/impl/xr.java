package com.applovin.impl;

import android.graphics.Color;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.text.Typography;

/* JADX INFO: loaded from: classes.dex */
public abstract class xr {
    public static final Pattern a = Pattern.compile("^(\\S+)\\s+-->\\s+(\\S+)(.*)?$");
    private static final Pattern b = Pattern.compile("(\\S+?):(\\S+)");
    private static final Map c;
    private static final Map d;

    static {
        HashMap map = new HashMap();
        map.put("white", Integer.valueOf(Color.rgb(255, 255, 255)));
        map.put("lime", Integer.valueOf(Color.rgb(0, 255, 0)));
        map.put("cyan", Integer.valueOf(Color.rgb(0, 255, 255)));
        map.put("red", Integer.valueOf(Color.rgb(255, 0, 0)));
        map.put("yellow", Integer.valueOf(Color.rgb(255, 255, 0)));
        map.put("magenta", Integer.valueOf(Color.rgb(255, 0, 255)));
        map.put("blue", Integer.valueOf(Color.rgb(0, 0, 255)));
        map.put("black", Integer.valueOf(Color.rgb(0, 0, 0)));
        c = Collections.unmodifiableMap(map);
        HashMap map2 = new HashMap();
        map2.put("bg_white", Integer.valueOf(Color.rgb(255, 255, 255)));
        map2.put("bg_lime", Integer.valueOf(Color.rgb(0, 255, 0)));
        map2.put("bg_cyan", Integer.valueOf(Color.rgb(0, 255, 255)));
        map2.put("bg_red", Integer.valueOf(Color.rgb(255, 0, 0)));
        map2.put("bg_yellow", Integer.valueOf(Color.rgb(255, 255, 0)));
        map2.put("bg_magenta", Integer.valueOf(Color.rgb(255, 0, 255)));
        map2.put("bg_blue", Integer.valueOf(Color.rgb(0, 0, 255)));
        map2.put("bg_black", Integer.valueOf(Color.rgb(0, 0, 0)));
        d = Collections.unmodifiableMap(map2);
    }

    static a5.b c(String str) {
        e eVar = new e();
        a(str, eVar);
        return eVar.b();
    }

    private static int d(String str) {
        str.hashCode();
        str.hashCode();
        switch (str) {
            case "center":
            case "middle":
                return 1;
            case "end":
                return 2;
            case "start":
                return 0;
            default:
                oc.d("WebvttCueParser", "Invalid anchor value: " + str);
                return Integer.MIN_VALUE;
        }
    }

    private static int e(String str) {
        str.hashCode();
        str.hashCode();
        switch (str) {
            case "line-left":
            case "start":
                return 0;
            case "center":
            case "middle":
                return 1;
            case "line-right":
            case "end":
                return 2;
            default:
                oc.d("WebvttCueParser", "Invalid anchor value: " + str);
                return Integer.MIN_VALUE;
        }
    }

    private static int g(String str) {
        str.hashCode();
        if (str.equals("lr")) {
            return 2;
        }
        if (str.equals("rl")) {
            return 1;
        }
        oc.d("WebvttCueParser", "Invalid 'vertical' value: " + str);
        return Integer.MIN_VALUE;
    }

    private static int f(String str) {
        str.hashCode();
        str.hashCode();
        switch (str) {
            case "center":
            case "middle":
                return 2;
            case "end":
                return 3;
            case "left":
                return 4;
            case "right":
                return 5;
            case "start":
                return 1;
            default:
                oc.d("WebvttCueParser", "Invalid alignment value: " + str);
                return 2;
        }
    }

    private static int b(List list, String str, c cVar) {
        List listA = a(list, str, cVar);
        for (int i = 0; i < listA.size(); i++) {
            vr vrVar = ((d) listA.get(i)).b;
            if (vrVar.g() != -1) {
                return vrVar.g();
            }
        }
        return -1;
    }

    private static void c(String str, e eVar) {
        int iIndexOf = str.indexOf(44);
        if (iIndexOf != -1) {
            eVar.i = e(str.substring(iIndexOf + 1));
            str = str.substring(0, iIndexOf);
        }
        eVar.h = zr.a(str);
    }

    private static void a(SpannableStringBuilder spannableStringBuilder, Set set, int i, int i2) {
        Iterator it = set.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            Map map = c;
            if (map.containsKey(str)) {
                spannableStringBuilder.setSpan(new ForegroundColorSpan(((Integer) map.get(str)).intValue()), i, i2, 33);
            } else {
                Map map2 = d;
                if (map2.containsKey(str)) {
                    spannableStringBuilder.setSpan(new BackgroundColorSpan(((Integer) map2.get(str)).intValue()), i, i2, 33);
                }
            }
        }
    }

    private static final class e {
        public CharSequence c;
        public long a = 0;
        public long b = 0;
        public int d = 2;
        public float e = -3.4028235E38f;
        public int f = 1;
        public int g = 0;
        public float h = -3.4028235E38f;
        public int i = Integer.MIN_VALUE;
        public float j = 1.0f;
        public int k = Integer.MIN_VALUE;

        private static float a(float f, int i) {
            if (f != -3.4028235E38f && i == 0 && (f < 0.0f || f > 1.0f)) {
                return 1.0f;
            }
            if (f != -3.4028235E38f) {
                return f;
            }
            return i == 0 ? 1.0f : -3.4028235E38f;
        }

        private static float b(int i) {
            if (i != 4) {
                return i != 5 ? 0.5f : 1.0f;
            }
            return 0.0f;
        }

        private static int c(int i) {
            if (i == 1) {
                return 0;
            }
            if (i == 3) {
                return 2;
            }
            if (i != 4) {
                return i != 5 ? 1 : 2;
            }
            return 0;
        }

        public a5.b b() {
            float fB = this.h;
            if (fB == -3.4028235E38f) {
                fB = b(this.d);
            }
            int iC = this.i;
            if (iC == Integer.MIN_VALUE) {
                iC = c(this.d);
            }
            a5.b bVarC = new a5.b().b(a(this.d)).a(a(this.e, this.f), this.f).a(this.g).b(fB).b(iC).d(Math.min(this.j, a(iC, fB))).c(this.k);
            CharSequence charSequence = this.c;
            if (charSequence != null) {
                bVarC.a(charSequence);
            }
            return bVarC;
        }

        private static Layout.Alignment a(int i) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            if (i != 5) {
                                oc.d("WebvttCueParser", "Unknown textAlignment: " + i);
                                return null;
                            }
                        }
                    }
                    return Layout.Alignment.ALIGN_OPPOSITE;
                }
                return Layout.Alignment.ALIGN_CENTER;
            }
            return Layout.Alignment.ALIGN_NORMAL;
        }

        private static float a(int i, float f) {
            if (i == 0) {
                return 1.0f - f;
            }
            if (i == 1) {
                return f <= 0.5f ? f * 2.0f : (1.0f - f) * 2.0f;
            }
            if (i == 2) {
                return f;
            }
            throw new IllegalStateException(String.valueOf(i));
        }

        public wr a() {
            return new wr(b().a(), this.a, this.b);
        }
    }

    private static final class d implements Comparable {
        public final int a;
        public final vr b;

        public d(int i, vr vrVar) {
            this.a = i;
            this.b = vrVar;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(d dVar) {
            return Integer.compare(this.a, dVar.a);
        }
    }

    private static final class c {
        public final String a;
        public final int b;
        public final String c;
        public final Set d;

        private c(String str, int i, String str2, Set set) {
            this.b = i;
            this.a = str;
            this.c = str2;
            this.d = set;
        }

        public static c a(String str, int i) {
            String str2;
            String strTrim = str.trim();
            b1.a(!strTrim.isEmpty());
            int iIndexOf = strTrim.indexOf(" ");
            if (iIndexOf == -1) {
                str2 = "";
            } else {
                String strTrim2 = strTrim.substring(iIndexOf).trim();
                strTrim = strTrim.substring(0, iIndexOf);
                str2 = strTrim2;
            }
            String[] strArrA = xp.a(strTrim, "\\.");
            String str3 = strArrA[0];
            HashSet hashSet = new HashSet();
            for (int i2 = 1; i2 < strArrA.length; i2++) {
                hashSet.add(strArrA[i2]);
            }
            return new c(str3, i, str2, hashSet);
        }

        public static c a() {
            return new c("", 0, "", Collections.emptySet());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class b {
        private static final Comparator c = new Comparator() { // from class: com.applovin.impl.xr$b$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return xr.b.a((xr.b) obj, (xr.b) obj2);
            }
        };
        private final c a;
        private final int b;

        private b(c cVar, int i) {
            this.a = cVar;
            this.b = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int a(b bVar, b bVar2) {
            return Integer.compare(bVar.a.b, bVar2.a.b);
        }
    }

    private static boolean b(String str) {
        str.hashCode();
        str.hashCode();
        switch (str) {
            case "b":
            case "c":
            case "i":
            case "u":
            case "v":
            case "rt":
            case "lang":
            case "ruby":
                return true;
            default:
                return false;
        }
    }

    private static void a(String str, SpannableStringBuilder spannableStringBuilder) {
        str.hashCode();
        str.hashCode();
        switch (str) {
            case "gt":
                spannableStringBuilder.append(Typography.greater);
                break;
            case "lt":
                spannableStringBuilder.append(Typography.less);
                break;
            case "amp":
                spannableStringBuilder.append(Typography.amp);
                break;
            case "nbsp":
                spannableStringBuilder.append(' ');
                break;
            default:
                oc.d("WebvttCueParser", "ignoring unsupported entity: '&" + str + ";'");
                break;
        }
    }

    private static void b(String str, e eVar) {
        int iIndexOf = str.indexOf(44);
        if (iIndexOf != -1) {
            eVar.g = d(str.substring(iIndexOf + 1));
            str = str.substring(0, iIndexOf);
        }
        if (str.endsWith("%")) {
            eVar.e = zr.a(str);
            eVar.f = 0;
        } else {
            eVar.e = Integer.parseInt(str);
            eVar.f = 1;
        }
    }

    private static void a(SpannableStringBuilder spannableStringBuilder, String str, c cVar, List list, List list2) {
        int iB = b(list2, str, cVar);
        ArrayList arrayList = new ArrayList(list.size());
        arrayList.addAll(list);
        Collections.sort(arrayList, b.c);
        int i = cVar.b;
        int length = 0;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            if ("rt".equals(((b) arrayList.get(i2)).a.a)) {
                b bVar = (b) arrayList.get(i2);
                int iA = a(b(list2, str, bVar.a), iB, 1);
                int i3 = bVar.a.b - length;
                int i4 = bVar.b - length;
                CharSequence charSequenceSubSequence = spannableStringBuilder.subSequence(i3, i4);
                spannableStringBuilder.delete(i3, i4);
                spannableStringBuilder.setSpan(new zi(charSequenceSubSequence.toString(), iA), i, i3, 33);
                length += charSequenceSubSequence.length();
                i = i3;
            }
        }
    }

    private static void a(String str, c cVar, List list, SpannableStringBuilder spannableStringBuilder, List list2) {
        int i = cVar.b;
        int length = spannableStringBuilder.length();
        String str2 = cVar.a;
        str2.hashCode();
        str2.hashCode();
        switch (str2) {
            case "":
            case "v":
            case "lang":
                break;
            case "b":
                spannableStringBuilder.setSpan(new StyleSpan(1), i, length, 33);
                break;
            case "c":
                a(spannableStringBuilder, cVar.d, i, length);
                break;
            case "i":
                spannableStringBuilder.setSpan(new StyleSpan(2), i, length, 33);
                break;
            case "u":
                spannableStringBuilder.setSpan(new UnderlineSpan(), i, length, 33);
                break;
            case "ruby":
                a(spannableStringBuilder, str, cVar, list, list2);
                break;
            default:
                return;
        }
        List listA = a(list2, str, cVar);
        for (int i2 = 0; i2 < listA.size(); i2++) {
            a(spannableStringBuilder, ((d) listA.get(i2)).b, i, length);
        }
    }

    private static void a(SpannableStringBuilder spannableStringBuilder, vr vrVar, int i, int i2) {
        if (vrVar == null) {
            return;
        }
        if (vrVar.h() != -1) {
            pk.a(spannableStringBuilder, new StyleSpan(vrVar.h()), i, i2, 33);
        }
        if (vrVar.k()) {
            spannableStringBuilder.setSpan(new StrikethroughSpan(), i, i2, 33);
        }
        if (vrVar.l()) {
            spannableStringBuilder.setSpan(new UnderlineSpan(), i, i2, 33);
        }
        if (vrVar.j()) {
            pk.a(spannableStringBuilder, new ForegroundColorSpan(vrVar.c()), i, i2, 33);
        }
        if (vrVar.i()) {
            pk.a(spannableStringBuilder, new BackgroundColorSpan(vrVar.a()), i, i2, 33);
        }
        if (vrVar.d() != null) {
            pk.a(spannableStringBuilder, new TypefaceSpan(vrVar.d()), i, i2, 33);
        }
        int iF = vrVar.f();
        if (iF == 1) {
            pk.a(spannableStringBuilder, new AbsoluteSizeSpan((int) vrVar.e(), true), i, i2, 33);
        } else if (iF == 2) {
            pk.a(spannableStringBuilder, new RelativeSizeSpan(vrVar.e()), i, i2, 33);
        } else if (iF == 3) {
            pk.a(spannableStringBuilder, new RelativeSizeSpan(vrVar.e() / 100.0f), i, i2, 33);
        }
        if (vrVar.b()) {
            spannableStringBuilder.setSpan(new oa(), i, i2, 33);
        }
    }

    private static int a(String str, int i) {
        int iIndexOf = str.indexOf(62, i);
        return iIndexOf == -1 ? str.length() : iIndexOf + 1;
    }

    private static int a(int i, int i2, int i3) {
        if (i != -1) {
            return i;
        }
        if (i2 != -1) {
            return i2;
        }
        if (i3 != -1) {
            return i3;
        }
        throw new IllegalArgumentException();
    }

    private static String a(String str) {
        String strTrim = str.trim();
        b1.a(!strTrim.isEmpty());
        return xp.b(strTrim, "[ \\.]")[0];
    }

    public static wr a(ah ahVar, List list) {
        String strL = ahVar.l();
        if (strL == null) {
            return null;
        }
        Pattern pattern = a;
        Matcher matcher = pattern.matcher(strL);
        if (matcher.matches()) {
            return a((String) null, matcher, ahVar, list);
        }
        String strL2 = ahVar.l();
        if (strL2 == null) {
            return null;
        }
        Matcher matcher2 = pattern.matcher(strL2);
        if (matcher2.matches()) {
            return a(strL.trim(), matcher2, ahVar, list);
        }
        return null;
    }

    private static wr a(String str, Matcher matcher, ah ahVar, List list) {
        e eVar = new e();
        try {
            eVar.a = zr.b((String) b1.a((Object) matcher.group(1)));
            eVar.b = zr.b((String) b1.a((Object) matcher.group(2)));
            a((String) b1.a((Object) matcher.group(3)), eVar);
            StringBuilder sb = new StringBuilder();
            String strL = ahVar.l();
            while (!TextUtils.isEmpty(strL)) {
                if (sb.length() > 0) {
                    sb.append("\n");
                }
                sb.append(strL.trim());
                strL = ahVar.l();
            }
            eVar.c = a(str, sb.toString(), list);
            return eVar.a();
        } catch (NumberFormatException unused) {
            oc.d("WebvttCueParser", "Skipping cue with bad header: " + matcher.group());
            return null;
        }
    }

    static a5 a(CharSequence charSequence) {
        e eVar = new e();
        eVar.c = charSequence;
        return eVar.b().a();
    }

    static SpannedString a(String str, String str2, List list) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        ArrayDeque arrayDeque = new ArrayDeque();
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i < str2.length()) {
            char cCharAt = str2.charAt(i);
            if (cCharAt == '&') {
                i++;
                int iIndexOf = str2.indexOf(59, i);
                int iIndexOf2 = str2.indexOf(32, i);
                if (iIndexOf == -1) {
                    iIndexOf = iIndexOf2;
                } else if (iIndexOf2 != -1) {
                    iIndexOf = Math.min(iIndexOf, iIndexOf2);
                }
                if (iIndexOf != -1) {
                    a(str2.substring(i, iIndexOf), spannableStringBuilder);
                    if (iIndexOf == iIndexOf2) {
                        spannableStringBuilder.append((CharSequence) " ");
                    }
                    i = iIndexOf + 1;
                } else {
                    spannableStringBuilder.append(cCharAt);
                }
            } else if (cCharAt != '<') {
                spannableStringBuilder.append(cCharAt);
                i++;
            } else {
                int iA = i + 1;
                if (iA < str2.length()) {
                    boolean z = str2.charAt(iA) == '/';
                    iA = a(str2, iA);
                    int i2 = iA - 2;
                    boolean z2 = str2.charAt(i2) == '/';
                    int i3 = i + (z ? 2 : 1);
                    if (!z2) {
                        i2 = iA - 1;
                    }
                    String strSubstring = str2.substring(i3, i2);
                    if (!strSubstring.trim().isEmpty()) {
                        String strA = a(strSubstring);
                        if (b(strA)) {
                            if (z) {
                                while (!arrayDeque.isEmpty()) {
                                    c cVar = (c) arrayDeque.pop();
                                    a(str, cVar, arrayList, spannableStringBuilder, list);
                                    if (!arrayDeque.isEmpty()) {
                                        arrayList.add(new b(cVar, spannableStringBuilder.length()));
                                    } else {
                                        arrayList.clear();
                                    }
                                    if (cVar.a.equals(strA)) {
                                        break;
                                    }
                                }
                            } else if (!z2) {
                                arrayDeque.push(c.a(strSubstring, spannableStringBuilder.length()));
                            }
                        }
                    }
                }
                i = iA;
            }
        }
        while (!arrayDeque.isEmpty()) {
            a(str, (c) arrayDeque.pop(), arrayList, spannableStringBuilder, list);
        }
        a(str, c.a(), Collections.emptyList(), spannableStringBuilder, list);
        return SpannedString.valueOf(spannableStringBuilder);
    }

    private static void a(String str, e eVar) {
        Matcher matcher = b.matcher(str);
        while (matcher.find()) {
            String str2 = (String) b1.a((Object) matcher.group(1));
            String str3 = (String) b1.a((Object) matcher.group(2));
            try {
                if ("line".equals(str2)) {
                    b(str3, eVar);
                } else if ("align".equals(str2)) {
                    eVar.d = f(str3);
                } else if (com.ironsource.y8.h.L.equals(str2)) {
                    c(str3, eVar);
                } else if ("size".equals(str2)) {
                    eVar.j = zr.a(str3);
                } else if ("vertical".equals(str2)) {
                    eVar.k = g(str3);
                } else {
                    oc.d("WebvttCueParser", "Unknown cue setting " + str2 + ":" + str3);
                }
            } catch (NumberFormatException unused) {
                oc.d("WebvttCueParser", "Skipping bad cue setting: " + matcher.group());
            }
        }
    }

    private static List a(List list, String str, c cVar) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            vr vrVar = (vr) list.get(i);
            int iA = vrVar.a(str, cVar.a, cVar.d, cVar.c);
            if (iA > 0) {
                arrayList.add(new d(iA, vrVar));
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }
}
