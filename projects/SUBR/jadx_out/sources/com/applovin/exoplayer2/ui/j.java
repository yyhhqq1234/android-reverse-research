package com.applovin.exoplayer2.ui;

import android.content.Context;
import android.text.Layout;
import android.util.AttributeSet;
import android.util.Base64;
import android.view.MotionEvent;
import android.webkit.WebView;
import android.widget.FrameLayout;
import com.applovin.exoplayer2.common.base.Charsets;
import com.applovin.impl.a5;
import com.applovin.impl.b1;
import com.applovin.impl.x2;
import com.applovin.impl.xp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class j extends FrameLayout implements SubtitleView.a {
    private final com.applovin.exoplayer2.ui.a a;
    private final WebView b;
    private List c;
    private x2 d;
    private float f;
    private int g;
    private float h;

    class a extends WebView {
        a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        @Override // android.webkit.WebView, android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            super.onTouchEvent(motionEvent);
            return false;
        }

        @Override // android.view.View
        public boolean performClick() {
            super.performClick();
            return false;
        }
    }

    static /* synthetic */ class b {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[Layout.Alignment.values().length];
            a = iArr;
            try {
                iArr[Layout.Alignment.ALIGN_NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[Layout.Alignment.ALIGN_OPPOSITE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[Layout.Alignment.ALIGN_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public j(Context context) {
        this(context, null);
    }

    private static int a(int i) {
        if (i != 1) {
            return i != 2 ? 0 : -100;
        }
        return -50;
    }

    private static String b(int i) {
        if (i != 1) {
            return i != 2 ? "horizontal-tb" : "vertical-lr";
        }
        return "vertical-rl";
    }

    /* JADX WARN: Code duplicated, block: B:25:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:26:0x010a  */
    /* JADX WARN: Code duplicated, block: B:29:0x0124  */
    /* JADX WARN: Code duplicated, block: B:30:0x0127  */
    /* JADX WARN: Code duplicated, block: B:33:0x013e  */
    /* JADX WARN: Code duplicated, block: B:35:0x0141 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:36:0x0143  */
    /* JADX WARN: Code duplicated, block: B:38:0x0147 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:40:0x014a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:41:0x014c  */
    /* JADX WARN: Code duplicated, block: B:48:0x015e  */
    /* JADX WARN: Code duplicated, block: B:52:0x0186  */
    /* JADX WARN: Code duplicated, block: B:58:0x01af  */
    /* JADX WARN: Code duplicated, block: B:62:0x0222  */
    /* JADX WARN: Code duplicated, block: B:63:0x0240  */
    private void b() {
        String strA;
        int iA;
        boolean z;
        float f;
        String strA2;
        int i;
        int i2;
        int i3;
        String str;
        String str2;
        int i4;
        String str3;
        String str4;
        int i5;
        f.b bVarA;
        Iterator it;
        f.b bVar;
        Layout.Alignment alignment;
        String str5;
        boolean z2;
        j jVar = this;
        StringBuilder sb = new StringBuilder();
        float f2 = 1.2f;
        char c = 0;
        int i6 = 1;
        sb.append(xp.a("<body><div style='-webkit-user-select:none;position:fixed;top:0;bottom:0;left:0;right:0;color:%s;font-size:%s;line-height:%.2f;text-shadow:%s;'>", c.a(jVar.d.a), jVar.a(jVar.g, jVar.f), Float.valueOf(1.2f), a(jVar.d)));
        HashMap map = new HashMap();
        map.put(c.a("default_bg"), xp.a("background-color:%s;", c.a(jVar.d.b)));
        int i7 = 0;
        while (i7 < jVar.c.size()) {
            a5 a5Var = (a5) jVar.c.get(i7);
            float f3 = a5Var.i;
            float f4 = f3 != -3.4028235E38f ? f3 * 100.0f : 50.0f;
            int iA2 = a(a5Var.j);
            float f5 = a5Var.f;
            if (f5 == -3.4028235E38f) {
                Object[] objArr = new Object[i6];
                objArr[c] = Float.valueOf((1.0f - jVar.h) * 100.0f);
                strA = xp.a("%.2f%%", objArr);
                iA = -100;
            } else if (a5Var.g != i6) {
                Float fValueOf = Float.valueOf(f5 * 100.0f);
                Object[] objArr2 = new Object[i6];
                objArr2[c] = fValueOf;
                strA = xp.a("%.2f%%", objArr2);
                iA = a5Var.q == i6 ? -a(a5Var.h) : a(a5Var.h);
            } else {
                if (f5 >= 0.0f) {
                    Float fValueOf2 = Float.valueOf(f5 * f2);
                    Object[] objArr3 = new Object[i6];
                    objArr3[c] = fValueOf2;
                    strA = xp.a("%.2fem", objArr3);
                    iA = 0;
                } else {
                    Float fValueOf3 = Float.valueOf(((-f5) - 1.0f) * f2);
                    Object[] objArr4 = new Object[i6];
                    objArr4[c] = fValueOf3;
                    strA = xp.a("%.2fem", objArr4);
                    iA = 0;
                    z = true;
                }
                f = a5Var.k;
                if (f != -3.4028235E38f) {
                    Object[] objArr5 = new Object[i6];
                    objArr5[c] = Float.valueOf(f * 100.0f);
                    strA2 = xp.a("%.2f%%", objArr5);
                } else {
                    strA2 = "fit-content";
                }
                String strA3 = a(a5Var.b);
                String strB = b(a5Var.q);
                String strA4 = jVar.a(a5Var.o, a5Var.p);
                if (a5Var.m) {
                    i = a5Var.n;
                } else {
                    i = jVar.d.c;
                }
                String strA5 = c.a(i);
                i2 = iA;
                i3 = a5Var.q;
                str = "right";
                str2 = "left";
                if (i3 != 1) {
                    if (z) {
                        str = "left";
                    }
                    str2 = "top";
                    i4 = 2;
                    str3 = str;
                } else if (i3 != 2) {
                    str3 = z ? "bottom" : "top";
                    i4 = 2;
                } else {
                    if (!z) {
                        str = "left";
                    }
                    str2 = "top";
                    i4 = 2;
                    str3 = str;
                }
                if (i3 != i4 || i3 == 1) {
                    str4 = "height";
                    i5 = i2;
                    i2 = iA2;
                } else {
                    str4 = "width";
                    i5 = iA2;
                }
                bVarA = f.a(a5Var.a, getContext().getResources().getDisplayMetrics().density);
                it = map.keySet().iterator();
                while (it.hasNext()) {
                    Iterator it2 = it;
                    String str6 = (String) it.next();
                    f.b bVar2 = bVarA;
                    str5 = (String) map.put(str6, (String) map.get(str6));
                    if (str5 != null || str5.equals(map.get(str6))) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    b1.b(z2);
                    it = it2;
                    bVarA = bVar2;
                }
                bVar = bVarA;
                HashMap map2 = map;
                sb.append(xp.a("<div style='position:absolute;z-index:%s;%s:%.2f%%;%s:%s;%s:%s;text-align:%s;writing-mode:%s;font-size:%s;background-color:%s;transform:translate(%s%%,%s%%)%s;'>", Integer.valueOf(i7), str2, Float.valueOf(f4), str3, strA, str4, strA2, strA3, strB, strA4, strA5, Integer.valueOf(i5), Integer.valueOf(i2), a(a5Var)));
                sb.append(xp.a("<span class='%s'>", "default_bg"));
                alignment = a5Var.c;
                if (alignment != null) {
                    sb.append(xp.a("<span style='display:inline-block; text-align:%s;'>", a(alignment)));
                    sb.append(bVar.a);
                    sb.append("</span>");
                } else {
                    sb.append(bVar.a);
                }
                sb.append("</span></div>");
                i7++;
                jVar = this;
                map = map2;
                i6 = 1;
                f2 = 1.2f;
                c = 0;
            }
            z = false;
            f = a5Var.k;
            if (f != -3.4028235E38f) {
                Object[] objArr6 = new Object[i6];
                objArr6[c] = Float.valueOf(f * 100.0f);
                strA2 = xp.a("%.2f%%", objArr6);
            } else {
                strA2 = "fit-content";
            }
            String strA6 = a(a5Var.b);
            String strB2 = b(a5Var.q);
            String strA7 = jVar.a(a5Var.o, a5Var.p);
            if (a5Var.m) {
                i = a5Var.n;
            } else {
                i = jVar.d.c;
            }
            String strA8 = c.a(i);
            i2 = iA;
            i3 = a5Var.q;
            str = "right";
            str2 = "left";
            if (i3 != 1) {
                if (z) {
                    str = "left";
                }
                str2 = "top";
                i4 = 2;
                str3 = str;
            } else if (i3 != 2) {
                if (z) {
                }
                i4 = 2;
            } else {
                if (!z) {
                    str = "left";
                }
                str2 = "top";
                i4 = 2;
                str3 = str;
            }
            if (i3 != i4) {
                str4 = "height";
                i5 = i2;
                i2 = iA2;
            } else {
                str4 = "height";
                i5 = i2;
                i2 = iA2;
            }
            bVarA = f.a(a5Var.a, getContext().getResources().getDisplayMetrics().density);
            it = map.keySet().iterator();
            while (it.hasNext()) {
                Iterator it3 = it;
                String str7 = (String) it.next();
                f.b bVar3 = bVarA;
                str5 = (String) map.put(str7, (String) map.get(str7));
                if (str5 != null) {
                    z2 = true;
                } else {
                    z2 = true;
                }
                b1.b(z2);
                it = it3;
                bVarA = bVar3;
            }
            bVar = bVarA;
            HashMap map3 = map;
            sb.append(xp.a("<div style='position:absolute;z-index:%s;%s:%.2f%%;%s:%s;%s:%s;text-align:%s;writing-mode:%s;font-size:%s;background-color:%s;transform:translate(%s%%,%s%%)%s;'>", Integer.valueOf(i7), str2, Float.valueOf(f4), str3, strA, str4, strA2, strA6, strB2, strA7, strA8, Integer.valueOf(i5), Integer.valueOf(i2), a(a5Var)));
            sb.append(xp.a("<span class='%s'>", "default_bg"));
            alignment = a5Var.c;
            if (alignment != null) {
                sb.append(xp.a("<span style='display:inline-block; text-align:%s;'>", a(alignment)));
                sb.append(bVar.a);
                sb.append("</span>");
            } else {
                sb.append(bVar.a);
            }
            sb.append("</span></div>");
            i7++;
            jVar = this;
            map = map3;
            i6 = 1;
            f2 = 1.2f;
            c = 0;
        }
        Map map4 = map;
        sb.append("</div></body></html>");
        StringBuilder sb2 = new StringBuilder("<html><head><style>");
        for (String str8 : map4.keySet()) {
            sb2.append(str8);
            sb2.append("{");
            sb2.append((String) map4.get(str8));
            sb2.append("}");
        }
        sb2.append("</style></head>");
        sb.insert(0, sb2.toString());
        this.b.loadData(Base64.encodeToString(sb.toString().getBytes(Charsets.UTF_8), 1), "text/html", "base64");
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (!z || this.c.isEmpty()) {
            return;
        }
        b();
    }

    public j(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.c = Collections.emptyList();
        this.d = x2.g;
        this.f = 0.0533f;
        this.g = 0;
        this.h = 0.08f;
        com.applovin.exoplayer2.ui.a aVar = new com.applovin.exoplayer2.ui.a(context, attributeSet);
        this.a = aVar;
        a aVar2 = new a(context, attributeSet);
        this.b = aVar2;
        aVar2.setBackgroundColor(0);
        addView(aVar);
        addView(aVar2);
    }

    private static String a(x2 x2Var) {
        int i = x2Var.d;
        if (i == 1) {
            return xp.a("1px 1px 0 %1$s, 1px -1px 0 %1$s, -1px 1px 0 %1$s, -1px -1px 0 %1$s", c.a(x2Var.e));
        }
        if (i == 2) {
            return xp.a("0.1em 0.12em 0.15em %s", c.a(x2Var.e));
        }
        if (i != 3) {
            return i != 4 ? "unset" : xp.a("-0.05em -0.05em 0.15em %s", c.a(x2Var.e));
        }
        return xp.a("0.06em 0.08em 0.15em %s", c.a(x2Var.e));
    }

    private static String a(a5 a5Var) {
        float f = a5Var.r;
        if (f == 0.0f) {
            return "";
        }
        int i = a5Var.q;
        return xp.a("%s(%.2fdeg)", (i == 2 || i == 1) ? "skewY" : "skewX", Float.valueOf(f));
    }

    @Override // com.applovin.exoplayer2.ui.SubtitleView.a
    public void a(List list, x2 x2Var, float f, int i, float f2) {
        this.d = x2Var;
        this.f = f;
        this.g = i;
        this.h = f2;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            a5 a5Var = (a5) list.get(i2);
            if (a5Var.d != null) {
                arrayList.add(a5Var);
            } else {
                arrayList2.add(a5Var);
            }
        }
        if (!this.c.isEmpty() || !arrayList2.isEmpty()) {
            this.c = arrayList2;
            b();
        }
        this.a.a(arrayList, x2Var, f, i, f2);
        invalidate();
    }

    public void a() {
        this.b.destroy();
    }

    private String a(int i, float f) {
        float fA = h.a(i, f, getHeight(), (getHeight() - getPaddingTop()) - getPaddingBottom());
        return fA == -3.4028235E38f ? "unset" : xp.a("%.2fpx", Float.valueOf(fA / getContext().getResources().getDisplayMetrics().density));
    }

    private static String a(Layout.Alignment alignment) {
        if (alignment == null) {
            return "center";
        }
        int i = b.a[alignment.ordinal()];
        if (i != 1) {
            return i != 2 ? "center" : "end";
        }
        return "start";
    }
}
