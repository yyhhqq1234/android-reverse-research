package com.applovin.impl;

import android.graphics.PointF;
import android.text.Layout;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.work.WorkRequest;
import com.applovin.exoplayer2.common.base.Ascii;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class xk extends ek {
    private static final Pattern t = Pattern.compile("(?:(\\d+):)?(\\d+):(\\d+)[:.](\\d+)");
    private final boolean o;
    private final yk p;
    private Map q;
    private float r;
    private float s;

    private static float b(int i) {
        if (i == 0) {
            return 0.05f;
        }
        if (i != 1) {
            return i != 2 ? -3.4028235E38f : 0.95f;
        }
        return 0.5f;
    }

    public xk(List list) {
        super("SsaDecoder");
        this.r = -3.4028235E38f;
        this.s = -3.4028235E38f;
        if (list != null && !list.isEmpty()) {
            this.o = true;
            String strA = xp.a((byte[]) list.get(0));
            b1.a(strA.startsWith("Format:"));
            this.p = (yk) b1.a(yk.a(strA));
            a(new ah((byte[]) list.get(1)));
            return;
        }
        this.o = false;
        this.p = null;
    }

    private void b(ah ahVar) {
        while (true) {
            String strL = ahVar.l();
            if (strL == null) {
                return;
            }
            if (ahVar.a() != 0 && ahVar.g() == 91) {
                return;
            }
            String[] strArrSplit = strL.split(":");
            if (strArrSplit.length == 2) {
                String lowerCase = Ascii.toLowerCase(strArrSplit[0].trim());
                lowerCase.hashCode();
                if (lowerCase.equals("playresx")) {
                    this.r = Float.parseFloat(strArrSplit[1].trim());
                } else if (lowerCase.equals("playresy")) {
                    try {
                        this.s = Float.parseFloat(strArrSplit[1].trim());
                    } catch (NumberFormatException unused) {
                    }
                }
            }
        }
    }

    private static Layout.Alignment e(int i) {
        switch (i) {
            case -1:
                return null;
            case 0:
            default:
                oc.d("SsaDecoder", "Unknown alignment: " + i);
                return null;
            case 1:
            case 4:
            case 7:
                return Layout.Alignment.ALIGN_NORMAL;
            case 2:
            case 5:
            case 8:
                return Layout.Alignment.ALIGN_CENTER;
            case 3:
            case 6:
            case 9:
                return Layout.Alignment.ALIGN_OPPOSITE;
        }
    }

    private static int c(int i) {
        switch (i) {
            case -1:
                return Integer.MIN_VALUE;
            case 0:
            default:
                oc.d("SsaDecoder", "Unknown alignment: " + i);
                return Integer.MIN_VALUE;
            case 1:
            case 2:
            case 3:
                return 2;
            case 4:
            case 5:
            case 6:
                return 1;
            case 7:
            case 8:
            case 9:
                return 0;
        }
    }

    private static Map c(ah ahVar) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        zk.a aVarA = null;
        while (true) {
            String strL = ahVar.l();
            if (strL == null || (ahVar.a() != 0 && ahVar.g() == 91)) {
                break;
            }
            if (strL.startsWith("Format:")) {
                aVarA = zk.a.a(strL);
            } else if (strL.startsWith("Style:")) {
                if (aVarA == null) {
                    oc.d("SsaDecoder", "Skipping 'Style:' line before 'Format:' line: " + strL);
                } else {
                    zk zkVarA = zk.a(strL, aVarA);
                    if (zkVarA != null) {
                        linkedHashMap.put(zkVarA.a, zkVarA);
                    }
                }
            }
        }
        return linkedHashMap;
    }

    private static int d(int i) {
        switch (i) {
            case -1:
                return Integer.MIN_VALUE;
            case 0:
            default:
                oc.d("SsaDecoder", "Unknown alignment: " + i);
                return Integer.MIN_VALUE;
            case 1:
            case 4:
            case 7:
                return 0;
            case 2:
            case 5:
            case 8:
                return 1;
            case 3:
            case 6:
            case 9:
                return 2;
        }
    }

    private static int a(long j, List list, List list2) {
        int i;
        int size = list.size() - 1;
        while (true) {
            if (size < 0) {
                i = 0;
                break;
            }
            if (((Long) list.get(size)).longValue() == j) {
                return size;
            }
            if (((Long) list.get(size)).longValue() < j) {
                i = size + 1;
                break;
            }
            size--;
        }
        list.add(i, Long.valueOf(j));
        list2.add(i, i == 0 ? new ArrayList() : new ArrayList((Collection) list2.get(i - 1)));
        return i;
    }

    private static a5 a(String str, zk zkVar, zk.b bVar, float f, float f2) {
        SpannableString spannableString = new SpannableString(str);
        a5.b bVarA = new a5.b().a(spannableString);
        if (zkVar != null) {
            if (zkVar.c != null) {
                spannableString.setSpan(new ForegroundColorSpan(zkVar.c.intValue()), 0, spannableString.length(), 33);
            }
            float f3 = zkVar.d;
            if (f3 != -3.4028235E38f && f2 != -3.4028235E38f) {
                bVarA.b(f3 / f2, 1);
            }
            boolean z = zkVar.e;
            if (z && zkVar.f) {
                spannableString.setSpan(new StyleSpan(3), 0, spannableString.length(), 33);
            } else if (z) {
                spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 33);
            } else if (zkVar.f) {
                spannableString.setSpan(new StyleSpan(2), 0, spannableString.length(), 33);
            }
            if (zkVar.g) {
                spannableString.setSpan(new UnderlineSpan(), 0, spannableString.length(), 33);
            }
            if (zkVar.h) {
                spannableString.setSpan(new StrikethroughSpan(), 0, spannableString.length(), 33);
            }
        }
        int i = bVar.a;
        if (i == -1) {
            i = zkVar != null ? zkVar.b : -1;
        }
        bVarA.b(e(i)).b(d(i)).a(c(i));
        PointF pointF = bVar.b;
        if (pointF != null && f2 != -3.4028235E38f && f != -3.4028235E38f) {
            bVarA.b(pointF.x / f);
            bVarA.a(bVar.b.y / f2, 0);
        } else {
            bVarA.b(b(bVarA.d()));
            bVarA.a(b(bVarA.c()), 0);
        }
        return bVarA.a();
    }

    @Override // com.applovin.impl.ek
    protected nl a(byte[] bArr, int i, boolean z) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ah ahVar = new ah(bArr, i);
        if (!this.o) {
            a(ahVar);
        }
        a(ahVar, arrayList, arrayList2);
        return new al(arrayList, arrayList2);
    }

    private void a(String str, yk ykVar, List list, List list2) {
        int i;
        b1.a(str.startsWith("Dialogue:"));
        String[] strArrSplit = str.substring(9).split(",", ykVar.e);
        if (strArrSplit.length != ykVar.e) {
            oc.d("SsaDecoder", "Skipping dialogue line with fewer columns than format: " + str);
            return;
        }
        long jA = a(strArrSplit[ykVar.a]);
        if (jA == -9223372036854775807L) {
            oc.d("SsaDecoder", "Skipping invalid timing: " + str);
            return;
        }
        long jA2 = a(strArrSplit[ykVar.b]);
        if (jA2 == -9223372036854775807L) {
            oc.d("SsaDecoder", "Skipping invalid timing: " + str);
            return;
        }
        Map map = this.q;
        zk zkVar = (map == null || (i = ykVar.c) == -1) ? null : (zk) map.get(strArrSplit[i].trim());
        String str2 = strArrSplit[ykVar.d];
        a5 a5VarA = a(zk.b.d(str2).replace("\\N", "\n").replace("\\n", "\n").replace("\\h", " "), zkVar, zk.b.b(str2), this.r, this.s);
        int iA = a(jA2, list2, list);
        for (int iA2 = a(jA, list2, list); iA2 < iA; iA2++) {
            ((List) list.get(iA2)).add(a5VarA);
        }
    }

    private void a(ah ahVar, List list, List list2) {
        yk ykVarA = this.o ? this.p : null;
        while (true) {
            String strL = ahVar.l();
            if (strL == null) {
                return;
            }
            if (strL.startsWith("Format:")) {
                ykVarA = yk.a(strL);
            } else if (strL.startsWith("Dialogue:")) {
                if (ykVarA == null) {
                    oc.d("SsaDecoder", "Skipping dialogue line before complete format: " + strL);
                } else {
                    a(strL, ykVarA, list, list2);
                }
            }
        }
    }

    private void a(ah ahVar) {
        while (true) {
            String strL = ahVar.l();
            if (strL == null) {
                return;
            }
            if ("[Script Info]".equalsIgnoreCase(strL)) {
                b(ahVar);
            } else if ("[V4+ Styles]".equalsIgnoreCase(strL)) {
                this.q = c(ahVar);
            } else if ("[V4 Styles]".equalsIgnoreCase(strL)) {
                oc.c("SsaDecoder", "[V4 Styles] are not supported");
            } else if ("[Events]".equalsIgnoreCase(strL)) {
                return;
            }
        }
    }

    private static long a(String str) {
        Matcher matcher = t.matcher(str.trim());
        if (matcher.matches()) {
            return (Long.parseLong((String) xp.a((Object) matcher.group(1))) * 3600000000L) + (Long.parseLong((String) xp.a((Object) matcher.group(2))) * 60000000) + (Long.parseLong((String) xp.a((Object) matcher.group(3))) * 1000000) + (Long.parseLong((String) xp.a((Object) matcher.group(4))) * WorkRequest.MIN_BACKOFF_MILLIS);
        }
        return -9223372036854775807L;
    }
}
