package com.applovin.impl;

import java.io.IOException;
import java.io.StringReader;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* JADX INFO: loaded from: classes.dex */
abstract class hs {
    private static final String[] a = {"Camera:MotionPhoto", "GCamera:MotionPhoto", "Camera:MicroVideo", "GCamera:MicroVideo"};
    private static final String[] b = {"Camera:MotionPhotoPresentationTimestampUs", "GCamera:MotionPhotoPresentationTimestampUs", "Camera:MicroVideoPresentationTimestampUs", "GCamera:MicroVideoPresentationTimestampUs"};
    private static final String[] c = {"Camera:MicroVideoOffset", "GCamera:MicroVideoOffset"};

    private static lf b(String str) throws XmlPullParserException, IOException {
        XmlPullParser xmlPullParserNewPullParser = XmlPullParserFactory.newInstance().newPullParser();
        xmlPullParserNewPullParser.setInput(new StringReader(str));
        xmlPullParserNewPullParser.next();
        if (!gs.c(xmlPullParserNewPullParser, "x:xmpmeta")) {
            throw ch.a("Couldn't find xmp metadata", null);
        }
        db dbVarH = db.h();
        long jC = -9223372036854775807L;
        do {
            xmlPullParserNewPullParser.next();
            if (gs.c(xmlPullParserNewPullParser, "rdf:Description")) {
                if (!b(xmlPullParserNewPullParser)) {
                    return null;
                }
                jC = c(xmlPullParserNewPullParser);
                dbVarH = a(xmlPullParserNewPullParser);
            } else if (gs.c(xmlPullParserNewPullParser, "Container:Directory")) {
                dbVarH = a(xmlPullParserNewPullParser, "Container", "Item");
            } else if (gs.c(xmlPullParserNewPullParser, "GContainer:Directory")) {
                dbVarH = a(xmlPullParserNewPullParser, "GContainer", "GContainerItem");
            }
        } while (!gs.b(xmlPullParserNewPullParser, "x:xmpmeta"));
        if (dbVarH.isEmpty()) {
            return null;
        }
        return new lf(jC, dbVarH);
    }

    private static long c(XmlPullParser xmlPullParser) {
        for (String str : b) {
            String strA = gs.a(xmlPullParser, str);
            if (strA != null) {
                long j = Long.parseLong(strA);
                if (j == -1) {
                    return -9223372036854775807L;
                }
                return j;
            }
        }
        return -9223372036854775807L;
    }

    private static boolean b(XmlPullParser xmlPullParser) {
        for (String str : a) {
            String strA = gs.a(xmlPullParser, str);
            if (strA != null) {
                return Integer.parseInt(strA) == 1;
            }
        }
        return false;
    }

    public static lf a(String str) {
        try {
            return b(str);
        } catch (ch | NumberFormatException | XmlPullParserException unused) {
            oc.d("MotionPhotoXmpParser", "Ignoring unexpected XMP metadata");
            return null;
        }
    }

    private static db a(XmlPullParser xmlPullParser) {
        for (String str : c) {
            String strA = gs.a(xmlPullParser, str);
            if (strA != null) {
                return db.a(new lf.a("image/jpeg", "Primary", 0L, 0L), new lf.a("video/mp4", "MotionPhoto", Long.parseLong(strA), 0L));
            }
        }
        return db.h();
    }

    private static db a(XmlPullParser xmlPullParser, String str, String str2) throws XmlPullParserException, IOException {
        db.a aVarF = db.f();
        String str3 = str + ":Item";
        String str4 = str + ":Directory";
        do {
            xmlPullParser.next();
            if (gs.c(xmlPullParser, str3)) {
                String strA = gs.a(xmlPullParser, str2 + ":Mime");
                String strA2 = gs.a(xmlPullParser, str2 + ":Semantic");
                String strA3 = gs.a(xmlPullParser, str2 + ":Length");
                String strA4 = gs.a(xmlPullParser, str2 + ":Padding");
                if (strA != null && strA2 != null) {
                    aVarF.b(new lf.a(strA, strA2, strA3 != null ? Long.parseLong(strA3) : 0L, strA4 != null ? Long.parseLong(strA4) : 0L));
                } else {
                    return db.h();
                }
            }
        } while (!gs.b(xmlPullParser, str4));
        return aVarF.a();
    }
}
