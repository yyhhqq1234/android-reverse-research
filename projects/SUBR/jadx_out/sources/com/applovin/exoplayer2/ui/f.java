package com.applovin.exoplayer2.ui;

import android.text.Html;
import android.text.Spanned;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import android.util.SparseArray;
import com.applovin.impl.b1;
import com.applovin.impl.fb;
import com.applovin.impl.oa;
import com.applovin.impl.xp;
import com.applovin.impl.yn;
import com.applovin.impl.zi;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
abstract class f {
    private static final Pattern a = Pattern.compile("(&#13;)?&#10;");

    public static class b {
        public final String a;
        public final Map b;

        private b(String str, Map map) {
            this.a = str;
            this.b = map;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class c {
        private static final Comparator e = new Comparator() { // from class: com.applovin.exoplayer2.ui.f$c$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return f.c.a((f.c) obj, (f.c) obj2);
            }
        };
        private static final Comparator f = new Comparator() { // from class: com.applovin.exoplayer2.ui.f$c$$ExternalSyntheticLambda1
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return f.c.b((f.c) obj, (f.c) obj2);
            }
        };
        public final int a;
        public final int b;
        public final String c;
        public final String d;

        private c(int i, int i2, String str, String str2) {
            this.a = i;
            this.b = i2;
            this.c = str;
            this.d = str2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int a(c cVar, c cVar2) {
            int iCompare = Integer.compare(cVar2.b, cVar.b);
            if (iCompare != 0) {
                return iCompare;
            }
            int iCompareTo = cVar.c.compareTo(cVar2.c);
            return iCompareTo != 0 ? iCompareTo : cVar.d.compareTo(cVar2.d);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int b(c cVar, c cVar2) {
            int iCompare = Integer.compare(cVar2.a, cVar.a);
            if (iCompare != 0) {
                return iCompare;
            }
            int iCompareTo = cVar2.c.compareTo(cVar.c);
            return iCompareTo != 0 ? iCompareTo : cVar2.d.compareTo(cVar.d);
        }
    }

    private static final class d {
        private final List a = new ArrayList();
        private final List b = new ArrayList();
    }

    public static b a(CharSequence charSequence, float f) {
        if (charSequence == null) {
            return new b("", fb.h());
        }
        if (!(charSequence instanceof Spanned)) {
            return new b(a(charSequence), fb.h());
        }
        Spanned spanned = (Spanned) charSequence;
        HashSet hashSet = new HashSet();
        int i = 0;
        for (BackgroundColorSpan backgroundColorSpan : (BackgroundColorSpan[]) spanned.getSpans(0, spanned.length(), BackgroundColorSpan.class)) {
            hashSet.add(Integer.valueOf(backgroundColorSpan.getBackgroundColor()));
        }
        HashMap map = new HashMap();
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            int iIntValue = ((Integer) it.next()).intValue();
            map.put(com.applovin.exoplayer2.ui.c.a("bg_" + iIntValue), xp.a("background-color:%s;", com.applovin.exoplayer2.ui.c.a(iIntValue)));
        }
        SparseArray sparseArrayA = a(spanned, f);
        StringBuilder sb = new StringBuilder(spanned.length());
        int i2 = 0;
        while (i < sparseArrayA.size()) {
            int iKeyAt = sparseArrayA.keyAt(i);
            sb.append(a(spanned.subSequence(i2, iKeyAt)));
            d dVar = (d) sparseArrayA.get(iKeyAt);
            Collections.sort(dVar.b, c.f);
            Iterator it2 = dVar.b.iterator();
            while (it2.hasNext()) {
                sb.append(((c) it2.next()).d);
            }
            Collections.sort(dVar.a, c.e);
            Iterator it3 = dVar.a.iterator();
            while (it3.hasNext()) {
                sb.append(((c) it3.next()).c);
            }
            i++;
            i2 = iKeyAt;
        }
        sb.append(a(spanned.subSequence(i2, spanned.length())));
        return new b(sb.toString(), map);
    }

    private static String a(int i) {
        return i != 2 ? "over right" : "under left";
    }

    private static SparseArray a(Spanned spanned, float f) {
        SparseArray sparseArray = new SparseArray();
        for (Object obj : spanned.getSpans(0, spanned.length(), Object.class)) {
            String strA = a(obj, f);
            String strA2 = a(obj);
            int spanStart = spanned.getSpanStart(obj);
            int spanEnd = spanned.getSpanEnd(obj);
            if (strA != null) {
                b1.a((Object) strA2);
                c cVar = new c(spanStart, spanEnd, strA, strA2);
                a(sparseArray, spanStart).a.add(cVar);
                a(sparseArray, spanEnd).b.add(cVar);
            }
        }
        return sparseArray;
    }

    private static String a(Object obj, float f) {
        float size;
        if (obj instanceof StrikethroughSpan) {
            return "<span style='text-decoration:line-through;'>";
        }
        if (obj instanceof ForegroundColorSpan) {
            return xp.a("<span style='color:%s;'>", com.applovin.exoplayer2.ui.c.a(((ForegroundColorSpan) obj).getForegroundColor()));
        }
        if (obj instanceof BackgroundColorSpan) {
            return xp.a("<span class='bg_%s'>", Integer.valueOf(((BackgroundColorSpan) obj).getBackgroundColor()));
        }
        if (obj instanceof oa) {
            return "<span style='text-combine-upright:all;'>";
        }
        if (obj instanceof AbsoluteSizeSpan) {
            AbsoluteSizeSpan absoluteSizeSpan = (AbsoluteSizeSpan) obj;
            if (absoluteSizeSpan.getDip()) {
                size = absoluteSizeSpan.getSize();
            } else {
                size = absoluteSizeSpan.getSize() / f;
            }
            return xp.a("<span style='font-size:%.2fpx;'>", Float.valueOf(size));
        }
        if (obj instanceof RelativeSizeSpan) {
            return xp.a("<span style='font-size:%.2f%%;'>", Float.valueOf(((RelativeSizeSpan) obj).getSizeChange() * 100.0f));
        }
        if (obj instanceof TypefaceSpan) {
            String family = ((TypefaceSpan) obj).getFamily();
            if (family != null) {
                return xp.a("<span style='font-family:\"%s\";'>", family);
            }
            return null;
        }
        if (obj instanceof StyleSpan) {
            int style = ((StyleSpan) obj).getStyle();
            if (style == 1) {
                return "<b>";
            }
            if (style == 2) {
                return "<i>";
            }
            if (style != 3) {
                return null;
            }
            return "<b><i>";
        }
        if (obj instanceof zi) {
            int i = ((zi) obj).b;
            if (i == -1) {
                return "<ruby style='ruby-position:unset;'>";
            }
            if (i == 1) {
                return "<ruby style='ruby-position:over;'>";
            }
            if (i != 2) {
                return null;
            }
            return "<ruby style='ruby-position:under;'>";
        }
        if (obj instanceof UnderlineSpan) {
            return "<u>";
        }
        if (!(obj instanceof yn)) {
            return null;
        }
        yn ynVar = (yn) obj;
        return xp.a("<span style='-webkit-text-emphasis-style:%1$s;text-emphasis-style:%1$s;-webkit-text-emphasis-position:%2$s;text-emphasis-position:%2$s;display:inline-block;'>", a(ynVar.a, ynVar.b), a(ynVar.c));
    }

    private static String a(Object obj) {
        if ((obj instanceof StrikethroughSpan) || (obj instanceof ForegroundColorSpan) || (obj instanceof BackgroundColorSpan) || (obj instanceof oa) || (obj instanceof AbsoluteSizeSpan) || (obj instanceof RelativeSizeSpan) || (obj instanceof yn)) {
            return "</span>";
        }
        if (obj instanceof TypefaceSpan) {
            if (((TypefaceSpan) obj).getFamily() != null) {
                return "</span>";
            }
            return null;
        }
        if (obj instanceof StyleSpan) {
            int style = ((StyleSpan) obj).getStyle();
            if (style == 1) {
                return "</b>";
            }
            if (style == 2) {
                return "</i>";
            }
            if (style == 3) {
                return "</i></b>";
            }
        } else {
            if (obj instanceof zi) {
                return "<rt>" + a((CharSequence) ((zi) obj).a) + "</rt></ruby>";
            }
            if (obj instanceof UnderlineSpan) {
                return "</u>";
            }
        }
        return null;
    }

    private static String a(int i, int i2) {
        StringBuilder sb = new StringBuilder();
        if (i2 == 1) {
            sb.append("filled ");
        } else if (i2 == 2) {
            sb.append("open ");
        }
        if (i == 0) {
            sb.append("none");
        } else if (i == 1) {
            sb.append("circle");
        } else if (i == 2) {
            sb.append("dot");
        } else if (i != 3) {
            sb.append("unset");
        } else {
            sb.append("sesame");
        }
        return sb.toString();
    }

    private static d a(SparseArray sparseArray, int i) {
        d dVar = (d) sparseArray.get(i);
        if (dVar != null) {
            return dVar;
        }
        d dVar2 = new d();
        sparseArray.put(i, dVar2);
        return dVar2;
    }

    private static String a(CharSequence charSequence) {
        return a.matcher(Html.escapeHtml(charSequence)).replaceAll("<br>");
    }
}
