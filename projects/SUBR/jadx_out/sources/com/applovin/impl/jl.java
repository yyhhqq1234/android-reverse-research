package com.applovin.impl;

import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class jl extends ek {
    private static final Pattern q = Pattern.compile("\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*");
    private static final Pattern r = Pattern.compile("\\{\\\\.*?\\}");
    private final StringBuilder o;
    private final ArrayList p;

    public jl() {
        super("SubripDecoder");
        this.o = new StringBuilder();
        this.p = new ArrayList();
    }

    private static long a(Matcher matcher, int i) {
        String strGroup = matcher.group(i + 1);
        long j = (strGroup != null ? Long.parseLong(strGroup) * 3600000 : 0L) + (Long.parseLong((String) b1.a((Object) matcher.group(i + 2))) * 60000) + (Long.parseLong((String) b1.a((Object) matcher.group(i + 3))) * 1000);
        String strGroup2 = matcher.group(i + 4);
        if (strGroup2 != null) {
            j += Long.parseLong(strGroup2);
        }
        return j * 1000;
    }

    static float b(int i) {
        if (i == 0) {
            return 0.08f;
        }
        if (i == 1) {
            return 0.5f;
        }
        if (i == 2) {
            return 0.92f;
        }
        throw new IllegalArgumentException();
    }

    private String a(String str, ArrayList arrayList) {
        String strTrim = str.trim();
        StringBuilder sb = new StringBuilder(strTrim);
        Matcher matcher = r.matcher(strTrim);
        int i = 0;
        while (matcher.find()) {
            String strGroup = matcher.group();
            arrayList.add(strGroup);
            int iStart = matcher.start() - i;
            int length = strGroup.length();
            sb.replace(iStart, iStart + length, "");
            i += length;
        }
        return sb.toString();
    }

    @Override // com.applovin.impl.ek
    protected nl a(byte[] bArr, int i, boolean z) {
        String str;
        ArrayList arrayList = new ArrayList();
        qc qcVar = new qc();
        ah ahVar = new ah(bArr, i);
        while (true) {
            String strL = ahVar.l();
            int i2 = 0;
            if (strL == null) {
                break;
            }
            if (strL.length() != 0) {
                try {
                    Integer.parseInt(strL);
                    String strL2 = ahVar.l();
                    if (strL2 == null) {
                        oc.d("SubripDecoder", "Unexpected end");
                        break;
                    }
                    Matcher matcher = q.matcher(strL2);
                    if (matcher.matches()) {
                        qcVar.a(a(matcher, 1));
                        qcVar.a(a(matcher, 6));
                        this.o.setLength(0);
                        this.p.clear();
                        for (String strL3 = ahVar.l(); !TextUtils.isEmpty(strL3); strL3 = ahVar.l()) {
                            if (this.o.length() > 0) {
                                this.o.append("<br>");
                            }
                            this.o.append(a(strL3, this.p));
                        }
                        Spanned spannedFromHtml = Html.fromHtml(this.o.toString());
                        while (true) {
                            if (i2 >= this.p.size()) {
                                str = null;
                                break;
                            }
                            str = (String) this.p.get(i2);
                            if (str.matches("\\{\\\\an[1-9]\\}")) {
                                break;
                            }
                            i2++;
                        }
                        arrayList.add(a(spannedFromHtml, str));
                        arrayList.add(a5.s);
                    } else {
                        oc.d("SubripDecoder", "Skipping invalid timing: " + strL2);
                    }
                } catch (NumberFormatException unused) {
                    oc.d("SubripDecoder", "Skipping invalid index: " + strL);
                }
            }
        }
        return new kl((a5[]) arrayList.toArray(new a5[0]), qcVar.b());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:36:0x007b  */
    /* JADX WARN: Code duplicated, block: B:77:0x00e6  */
    private a5 a(Spanned spanned, String str) {
        byte b;
        byte b2;
        a5.b bVarA = new a5.b().a(spanned);
        if (str == null) {
            return bVarA.a();
        }
        switch (str) {
            case "{\an1}":
                b = 0;
                break;
            case "{\an2}":
                b = 6;
                break;
            case "{\an3}":
                b = 3;
                break;
            case "{\an4}":
                b = 1;
                break;
            case "{\an5}":
                b = 7;
                break;
            case "{\an6}":
                b = 4;
                break;
            case "{\an7}":
                b = 2;
                break;
            case "{\an8}":
                b = 8;
                break;
            case "{\an9}":
                b = 5;
                break;
            default:
                b = -1;
                break;
        }
        if (b == 0 || b == 1 || b == 2) {
            bVarA.b(0);
        } else if (b != 3 && b != 4 && b != 5) {
            bVarA.b(1);
        } else {
            bVarA.b(2);
        }
        switch (str) {
            case "{\an1}":
                b2 = 0;
                break;
            case "{\an2}":
                b2 = 1;
                break;
            case "{\an3}":
                b2 = 2;
                break;
            case "{\an4}":
                b2 = 6;
                break;
            case "{\an5}":
                b2 = 7;
                break;
            case "{\an6}":
                b2 = 8;
                break;
            case "{\an7}":
                b2 = 3;
                break;
            case "{\an8}":
                b2 = 4;
                break;
            case "{\an9}":
                b2 = 5;
                break;
            default:
                b2 = -1;
                break;
        }
        if (b2 == 0 || b2 == 1 || b2 == 2) {
            bVarA.a(2);
        } else if (b2 != 3 && b2 != 4 && b2 != 5) {
            bVarA.a(1);
        } else {
            bVarA.a(0);
        }
        return bVarA.b(b(bVarA.d())).a(b(bVarA.c()), 0).a();
    }
}
