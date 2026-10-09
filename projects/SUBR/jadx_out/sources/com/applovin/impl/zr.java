package com.applovin.impl;

import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public abstract class zr {
    private static final Pattern a = Pattern.compile("^NOTE([ \t].*)?$");

    public static boolean a(ah ahVar) {
        String strL = ahVar.l();
        return strL != null && strL.startsWith("WEBVTT");
    }

    public static long b(String str) {
        String[] strArrB = xp.b(str, "\\.");
        long j = 0;
        for (String str2 : xp.a(strArrB[0], ":")) {
            j = (j * 60) + Long.parseLong(str2);
        }
        long j2 = j * 1000;
        if (strArrB.length == 2) {
            j2 += Long.parseLong(strArrB[1]);
        }
        return j2 * 1000;
    }

    public static void b(ah ahVar) throws ch {
        int iD = ahVar.d();
        if (a(ahVar)) {
            return;
        }
        ahVar.f(iD);
        throw ch.a("Expected WEBVTT. Got " + ahVar.l(), null);
    }

    public static float a(String str) {
        if (str.endsWith("%")) {
            return Float.parseFloat(str.substring(0, str.length() - 1)) / 100.0f;
        }
        throw new NumberFormatException("Percentages must end with %");
    }
}
