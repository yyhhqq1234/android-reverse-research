package com.applovin.impl;

import android.text.Layout;
import com.applovin.exoplayer2.common.base.Ascii;
import com.onesignal.notifications.internal.bundle.impl.NotificationBundleProcessor;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* JADX INFO: loaded from: classes.dex */
public final class fp extends ek {
    private static final Pattern p = Pattern.compile("^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$");
    private static final Pattern q = Pattern.compile("^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$");
    private static final Pattern r = Pattern.compile("^(([0-9]*.)?[0-9]+)(px|em|%)$");
    static final Pattern s = Pattern.compile("^([-+]?\\d+\\.?\\d*?)%$");
    static final Pattern t = Pattern.compile("^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$");
    private static final Pattern u = Pattern.compile("^(\\d+\\.?\\d*?)px (\\d+\\.?\\d*?)px$");
    private static final Pattern v = Pattern.compile("^(\\d+) (\\d+)$");
    private static final b w = new b(30.0f, 1, 1);
    private static final a x = new a(32, 15);
    private final XmlPullParserFactory o;

    private static float c(String str) {
        Matcher matcher = s.matcher(str);
        if (!matcher.matches()) {
            oc.d("TtmlDecoder", "Invalid value for shear: " + str);
            return Float.MAX_VALUE;
        }
        try {
            return Math.min(100.0f, Math.max(-100.0f, Float.parseFloat((String) b1.a((Object) matcher.group(1)))));
        } catch (NumberFormatException e) {
            oc.c("TtmlDecoder", "Failed to parse shear: " + str, e);
            return Float.MAX_VALUE;
        }
    }

    public fp() {
        super("TtmlDecoder");
        try {
            XmlPullParserFactory xmlPullParserFactoryNewInstance = XmlPullParserFactory.newInstance();
            this.o = xmlPullParserFactoryNewInstance;
            xmlPullParserFactoryNewInstance.setNamespaceAware(true);
        } catch (XmlPullParserException e) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e);
        }
    }

    private static String[] d(String str) {
        String strTrim = str.trim();
        return strTrim.isEmpty() ? new String[0] : xp.a(strTrim, "\\s+");
    }

    private static jp a(jp jpVar) {
        return jpVar == null ? new jp() : jpVar;
    }

    private static Layout.Alignment b(String str) {
        String lowerCase = Ascii.toLowerCase(str);
        lowerCase.hashCode();
        lowerCase.hashCode();
        switch (lowerCase) {
            case "center":
                return Layout.Alignment.ALIGN_CENTER;
            case "end":
            case "right":
                return Layout.Alignment.ALIGN_OPPOSITE;
            case "left":
            case "start":
                return Layout.Alignment.ALIGN_NORMAL;
            default:
                return null;
        }
    }

    @Override // com.applovin.impl.ek
    protected nl a(byte[] bArr, int i, boolean z) throws pl {
        b bVar;
        try {
            XmlPullParser xmlPullParserNewPullParser = this.o.newPullParser();
            HashMap map = new HashMap();
            HashMap map2 = new HashMap();
            HashMap map3 = new HashMap();
            map2.put("", new hp(""));
            c cVarB = null;
            xmlPullParserNewPullParser.setInput(new ByteArrayInputStream(bArr, 0, i), null);
            ArrayDeque arrayDeque = new ArrayDeque();
            b bVarA = w;
            a aVarA = x;
            kp kpVar = null;
            int i2 = 0;
            for (int eventType = xmlPullParserNewPullParser.getEventType(); eventType != 1; eventType = xmlPullParserNewPullParser.getEventType()) {
                gp gpVar = (gp) arrayDeque.peek();
                if (i2 == 0) {
                    String name = xmlPullParserNewPullParser.getName();
                    if (eventType == 2) {
                        if ("tt".equals(name)) {
                            bVarA = a(xmlPullParserNewPullParser);
                            aVarA = a(xmlPullParserNewPullParser, x);
                            cVarB = b(xmlPullParserNewPullParser);
                        }
                        c cVar = cVarB;
                        b bVar2 = bVarA;
                        a aVar = aVarA;
                        if (a(name)) {
                            if ("head".equals(name)) {
                                bVar = bVar2;
                                a(xmlPullParserNewPullParser, map, aVar, cVar, map2, map3);
                            } else {
                                bVar = bVar2;
                                try {
                                    gp gpVarA = a(xmlPullParserNewPullParser, gpVar, map2, bVar);
                                    arrayDeque.push(gpVarA);
                                    if (gpVar != null) {
                                        gpVar.a(gpVarA);
                                    }
                                } catch (pl e) {
                                    oc.c("TtmlDecoder", "Suppressing parser error", e);
                                    bVarA = bVar;
                                    cVarB = cVar;
                                    aVarA = aVar;
                                    i2++;
                                }
                            }
                            bVarA = bVar;
                            cVarB = cVar;
                            aVarA = aVar;
                        } else {
                            oc.c("TtmlDecoder", "Ignoring unsupported tag: " + xmlPullParserNewPullParser.getName());
                            bVar = bVar2;
                        }
                        bVarA = bVar;
                        cVarB = cVar;
                        aVarA = aVar;
                        i2++;
                    } else if (eventType == 4) {
                        ((gp) b1.a(gpVar)).a(gp.a(xmlPullParserNewPullParser.getText()));
                    } else if (eventType == 3) {
                        if (xmlPullParserNewPullParser.getName().equals("tt")) {
                            kpVar = new kp((gp) b1.a((gp) arrayDeque.peek()), map, map2, map3);
                        }
                        arrayDeque.pop();
                    }
                } else if (eventType == 2) {
                    i2++;
                } else if (eventType == 3) {
                    i2--;
                }
                xmlPullParserNewPullParser.next();
            }
            if (kpVar != null) {
                return kpVar;
            }
            throw new pl("No TTML subtitles found");
        } catch (IOException e2) {
            throw new IllegalStateException("Unexpected error when reading input.", e2);
        } catch (XmlPullParserException e3) {
            throw new pl("Unable to decode source", e3);
        }
    }

    private static final class b {
        final float a;
        final int b;
        final int c;

        b(float f, int i, int i2) {
            this.a = f;
            this.b = i;
            this.c = i2;
        }
    }

    private static final class a {
        final int a;
        final int b;

        a(int i, int i2) {
            this.a = i;
            this.b = i2;
        }
    }

    private static final class c {
        final int a;
        final int b;

        c(int i, int i2) {
            this.a = i;
            this.b = i2;
        }
    }

    private static c b(XmlPullParser xmlPullParser) {
        String strA = gs.a(xmlPullParser, "extent");
        if (strA == null) {
            return null;
        }
        Matcher matcher = u.matcher(strA);
        if (!matcher.matches()) {
            oc.d("TtmlDecoder", "Ignoring non-pixel tts extent: " + strA);
            return null;
        }
        try {
            return new c(Integer.parseInt((String) b1.a((Object) matcher.group(1))), Integer.parseInt((String) b1.a((Object) matcher.group(2))));
        } catch (NumberFormatException unused) {
            oc.d("TtmlDecoder", "Ignoring malformed tts extent: " + strA);
            return null;
        }
    }

    private static boolean a(String str) {
        return str.equals("tt") || str.equals("head") || str.equals(com.ironsource.y8.h.E0) || str.equals("div") || str.equals(NotificationBundleProcessor.PUSH_MINIFIED_BUTTON_ICON) || str.equals("span") || str.equals("br") || str.equals("style") || str.equals("styling") || str.equals("layout") || str.equals("region") || str.equals("metadata") || str.equals("image") || str.equals("data") || str.equals("information");
    }

    private static a a(XmlPullParser xmlPullParser, a aVar) throws pl {
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "cellResolution");
        if (attributeValue == null) {
            return aVar;
        }
        Matcher matcher = v.matcher(attributeValue);
        if (!matcher.matches()) {
            oc.d("TtmlDecoder", "Ignoring malformed cell resolution: " + attributeValue);
            return aVar;
        }
        try {
            int i = Integer.parseInt((String) b1.a((Object) matcher.group(1)));
            int i2 = Integer.parseInt((String) b1.a((Object) matcher.group(2)));
            if (i != 0 && i2 != 0) {
                return new a(i, i2);
            }
            throw new pl("Invalid cell resolution " + i + " " + i2);
        } catch (NumberFormatException unused) {
            oc.d("TtmlDecoder", "Ignoring malformed cell resolution: " + attributeValue);
            return aVar;
        }
    }

    private static void a(String str, jp jpVar) throws pl {
        Matcher matcher;
        String[] strArrA = xp.a(str, "\\s+");
        if (strArrA.length == 1) {
            matcher = r.matcher(str);
        } else if (strArrA.length == 2) {
            matcher = r.matcher(strArrA[1]);
            oc.d("TtmlDecoder", "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first.");
        } else {
            throw new pl("Invalid number of entries for fontSize: " + strArrA.length + ".");
        }
        if (matcher.matches()) {
            String str2 = (String) b1.a((Object) matcher.group(3));
            str2.hashCode();
            str2.hashCode();
            switch (str2) {
                case "%":
                    jpVar.c(3);
                    break;
                case "em":
                    jpVar.c(2);
                    break;
                case "px":
                    jpVar.c(1);
                    break;
                default:
                    throw new pl("Invalid unit for fontSize: '" + str2 + "'.");
            }
            jpVar.a(Float.parseFloat((String) b1.a((Object) matcher.group(1))));
            return;
        }
        throw new pl("Invalid expression for fontSize: '" + str + "'.");
    }

    private static b a(XmlPullParser xmlPullParser) throws pl {
        float f;
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRate");
        int i = attributeValue != null ? Integer.parseInt(attributeValue) : 30;
        String attributeValue2 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRateMultiplier");
        if (attributeValue2 != null) {
            String[] strArrA = xp.a(attributeValue2, " ");
            if (strArrA.length == 2) {
                f = Integer.parseInt(strArrA[0]) / Integer.parseInt(strArrA[1]);
            } else {
                throw new pl("frameRateMultiplier doesn't have 2 parts");
            }
        } else {
            f = 1.0f;
        }
        b bVar = w;
        int i2 = bVar.b;
        String attributeValue3 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "subFrameRate");
        if (attributeValue3 != null) {
            i2 = Integer.parseInt(attributeValue3);
        }
        int i3 = bVar.c;
        String attributeValue4 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "tickRate");
        if (attributeValue4 != null) {
            i3 = Integer.parseInt(attributeValue4);
        }
        return new b(i * f, i2, i3);
    }

    private static Map a(XmlPullParser xmlPullParser, Map map, a aVar, c cVar, Map map2, Map map3) throws XmlPullParserException, IOException {
        do {
            xmlPullParser.next();
            if (gs.c(xmlPullParser, "style")) {
                String strA = gs.a(xmlPullParser, "style");
                jp jpVarA = a(xmlPullParser, new jp());
                if (strA != null) {
                    for (String str : d(strA)) {
                        jpVarA.a((jp) map.get(str));
                    }
                }
                String strF = jpVarA.f();
                if (strF != null) {
                    map.put(strF, jpVarA);
                }
            } else if (gs.c(xmlPullParser, "region")) {
                hp hpVarA = a(xmlPullParser, aVar, cVar);
                if (hpVarA != null) {
                    map2.put(hpVarA.a, hpVarA);
                }
            } else if (gs.c(xmlPullParser, "metadata")) {
                a(xmlPullParser, map3);
            }
        } while (!gs.b(xmlPullParser, "head"));
        return map;
    }

    private static void a(XmlPullParser xmlPullParser, Map map) throws XmlPullParserException, IOException {
        String strA;
        do {
            xmlPullParser.next();
            if (gs.c(xmlPullParser, "image") && (strA = gs.a(xmlPullParser, "id")) != null) {
                map.put(strA, xmlPullParser.nextText());
            }
        } while (!gs.b(xmlPullParser, "metadata"));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:66:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:6:0x003c  */
    private static gp a(XmlPullParser xmlPullParser, gp gpVar, Map map, b bVar) throws pl {
        long j;
        long j2;
        int attributeCount = xmlPullParser.getAttributeCount();
        jp jpVarA = a(xmlPullParser, (jp) null);
        String[] strArr = null;
        String strSubstring = null;
        String str = "";
        long jA = -9223372036854775807L;
        long jA2 = -9223372036854775807L;
        long jA3 = -9223372036854775807L;
        for (int i = 0; i < attributeCount; i++) {
            String attributeName = xmlPullParser.getAttributeName(i);
            String attributeValue = xmlPullParser.getAttributeValue(i);
            attributeName.hashCode();
            attributeName.hashCode();
            switch (attributeName) {
                case "region":
                    if (map.containsKey(attributeValue)) {
                        str = attributeValue;
                        continue;
                    }
                    break;
                case "dur":
                    jA3 = a(attributeValue, bVar);
                    break;
                case "end":
                    jA2 = a(attributeValue, bVar);
                    break;
                case "begin":
                    jA = a(attributeValue, bVar);
                    break;
                case "style":
                    String[] strArrD = d(attributeValue);
                    if (strArrD.length > 0) {
                        strArr = strArrD;
                        break;
                    }
                    break;
                case "backgroundImage":
                    if (attributeValue.startsWith("#")) {
                        strSubstring = attributeValue.substring(1);
                        break;
                    }
                    break;
            }
        }
        if (gpVar != null) {
            long j3 = gpVar.d;
            j = -9223372036854775807L;
            if (j3 != -9223372036854775807L) {
                if (jA != -9223372036854775807L) {
                    jA += j3;
                }
                if (jA2 != -9223372036854775807L) {
                    jA2 += j3;
                }
            }
        } else {
            j = -9223372036854775807L;
        }
        long j4 = jA;
        if (jA2 != j) {
            j2 = jA2;
        } else if (jA3 != j) {
            j2 = j4 + jA3;
        } else if (gpVar != null) {
            long j5 = gpVar.e;
            if (j5 != j) {
                j2 = j5;
            } else {
                j2 = jA2;
            }
        } else {
            j2 = jA2;
        }
        return gp.a(xmlPullParser.getName(), j4, j2, jpVarA, strArr, str, strSubstring, gpVar);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:44:0x015d  */
    /* JADX WARN: Code duplicated, block: B:49:0x0182  */
    /* JADX WARN: Code duplicated, block: B:65:0x01ab  */
    private static hp a(XmlPullParser xmlPullParser, a aVar, c cVar) {
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        int i;
        int i2;
        String strA = gs.a(xmlPullParser, "id");
        if (strA == null) {
            return null;
        }
        String strA2 = gs.a(xmlPullParser, "origin");
        if (strA2 != null) {
            Pattern pattern = t;
            Matcher matcher = pattern.matcher(strA2);
            Pattern pattern2 = u;
            Matcher matcher2 = pattern2.matcher(strA2);
            if (matcher.matches()) {
                try {
                    float f6 = Float.parseFloat((String) b1.a((Object) matcher.group(1))) / 100.0f;
                    f = Float.parseFloat((String) b1.a((Object) matcher.group(2))) / 100.0f;
                    f2 = f6;
                } catch (NumberFormatException unused) {
                    oc.d("TtmlDecoder", "Ignoring region with malformed origin: " + strA2);
                    return null;
                }
            } else {
                if (!matcher2.matches()) {
                    oc.d("TtmlDecoder", "Ignoring region with unsupported origin: " + strA2);
                    return null;
                }
                if (cVar == null) {
                    oc.d("TtmlDecoder", "Ignoring region with missing tts:extent: " + strA2);
                    return null;
                }
                try {
                    int i3 = Integer.parseInt((String) b1.a((Object) matcher2.group(1)));
                    int i4 = Integer.parseInt((String) b1.a((Object) matcher2.group(2)));
                    f2 = i3 / cVar.a;
                    f = i4 / cVar.b;
                } catch (NumberFormatException unused2) {
                    oc.d("TtmlDecoder", "Ignoring region with malformed origin: " + strA2);
                    return null;
                }
            }
            String strA3 = gs.a(xmlPullParser, "extent");
            if (strA3 != null) {
                Matcher matcher3 = pattern.matcher(strA3);
                Matcher matcher4 = pattern2.matcher(strA3);
                if (matcher3.matches()) {
                    try {
                        f3 = Float.parseFloat((String) b1.a((Object) matcher3.group(1))) / 100.0f;
                        f4 = Float.parseFloat((String) b1.a((Object) matcher3.group(2))) / 100.0f;
                    } catch (NumberFormatException unused3) {
                        oc.d("TtmlDecoder", "Ignoring region with malformed extent: " + strA2);
                        return null;
                    }
                } else {
                    if (!matcher4.matches()) {
                        oc.d("TtmlDecoder", "Ignoring region with unsupported extent: " + strA2);
                        return null;
                    }
                    if (cVar == null) {
                        oc.d("TtmlDecoder", "Ignoring region with missing tts:extent: " + strA2);
                        return null;
                    }
                    try {
                        int i5 = Integer.parseInt((String) b1.a((Object) matcher4.group(1)));
                        int i6 = Integer.parseInt((String) b1.a((Object) matcher4.group(2)));
                        f3 = i5 / cVar.a;
                        f4 = i6 / cVar.b;
                    } catch (NumberFormatException unused4) {
                        oc.d("TtmlDecoder", "Ignoring region with malformed extent: " + strA2);
                        return null;
                    }
                }
                String strA4 = gs.a(xmlPullParser, "displayAlign");
                if (strA4 != null) {
                    String lowerCase = Ascii.toLowerCase(strA4);
                    lowerCase.hashCode();
                    if (lowerCase.equals("center")) {
                        f5 = f + (f4 / 2.0f);
                        i = 1;
                    } else if (lowerCase.equals("after")) {
                        f5 = f + f4;
                        i = 2;
                    } else {
                        f5 = f;
                        i = 0;
                    }
                } else {
                    f5 = f;
                    i = 0;
                }
                float f7 = 1.0f / aVar.b;
                String strA5 = gs.a(xmlPullParser, "writingMode");
                if (strA5 != null) {
                    String lowerCase2 = Ascii.toLowerCase(strA5);
                    lowerCase2.hashCode();
                    lowerCase2.hashCode();
                    switch (lowerCase2) {
                        case "tb":
                        case "tblr":
                            i2 = 2;
                            break;
                        case "tbrl":
                            i2 = 1;
                            break;
                        default:
                            i2 = Integer.MIN_VALUE;
                            break;
                    }
                } else {
                    i2 = Integer.MIN_VALUE;
                }
                return new hp(strA, f2, f5, 0, i, f3, f4, 1, f7, i2);
            }
            oc.d("TtmlDecoder", "Ignoring region without an extent");
            return null;
        }
        oc.d("TtmlDecoder", "Ignoring region without an origin");
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:100:0x01d5  */
    /* JADX WARN: Code duplicated, block: B:6:0x0023  */
    private static jp a(XmlPullParser xmlPullParser, jp jpVar) {
        int attributeCount = xmlPullParser.getAttributeCount();
        for (int i = 0; i < attributeCount; i++) {
            String attributeValue = xmlPullParser.getAttributeValue(i);
            String attributeName = xmlPullParser.getAttributeName(i);
            attributeName.hashCode();
            attributeName.hashCode();
            switch (attributeName) {
                case "fontStyle":
                    jpVar = a(jpVar).b("italic".equalsIgnoreCase(attributeValue));
                    break;
                case "fontFamily":
                    jpVar = a(jpVar).a(attributeValue);
                    break;
                case "textAlign":
                    jpVar = a(jpVar).b(b(attributeValue));
                    break;
                case "textDecoration":
                    String lowerCase = Ascii.toLowerCase(attributeValue);
                    lowerCase.hashCode();
                    lowerCase.hashCode();
                    switch (lowerCase) {
                        case "nounderline":
                            jpVar = a(jpVar).e(false);
                            break;
                        case "underline":
                            jpVar = a(jpVar).e(true);
                            break;
                        case "nolinethrough":
                            jpVar = a(jpVar).c(false);
                            break;
                        case "linethrough":
                            jpVar = a(jpVar).c(true);
                            break;
                    }
                    break;
                case "fontWeight":
                    jpVar = a(jpVar).a("bold".equalsIgnoreCase(attributeValue));
                    break;
                case "id":
                    if (!"style".equals(xmlPullParser.getName())) {
                        break;
                    } else {
                        jpVar = a(jpVar).b(attributeValue);
                        break;
                    }
                    break;
                case "ruby":
                    String lowerCase2 = Ascii.toLowerCase(attributeValue);
                    lowerCase2.hashCode();
                    lowerCase2.hashCode();
                    switch (lowerCase2) {
                        case "baseContainer":
                        case "base":
                            jpVar = a(jpVar).e(2);
                            break;
                        case "container":
                            jpVar = a(jpVar).e(1);
                            break;
                        case "delimiter":
                            jpVar = a(jpVar).e(4);
                            break;
                        case "textContainer":
                        case "text":
                            jpVar = a(jpVar).e(3);
                            break;
                    }
                    break;
                case "color":
                    jpVar = a(jpVar);
                    try {
                        jpVar.b(s3.b(attributeValue));
                        break;
                    } catch (IllegalArgumentException unused) {
                        oc.d("TtmlDecoder", "Failed parsing color value: " + attributeValue);
                        break;
                    }
                    break;
                case "shear":
                    jpVar = a(jpVar).b(c(attributeValue));
                    break;
                case "textCombine":
                    String lowerCase3 = Ascii.toLowerCase(attributeValue);
                    lowerCase3.hashCode();
                    if (!lowerCase3.equals("all")) {
                        if (lowerCase3.equals("none")) {
                            jpVar = a(jpVar).d(false);
                        }
                        break;
                    } else {
                        jpVar = a(jpVar).d(true);
                        break;
                    }
                    break;
                case "fontSize":
                    try {
                        jpVar = a(jpVar);
                        a(attributeValue, jpVar);
                        break;
                    } catch (pl unused2) {
                        oc.d("TtmlDecoder", "Failed parsing fontSize value: " + attributeValue);
                        break;
                    }
                    break;
                case "textEmphasis":
                    jpVar = a(jpVar).a(xn.a(attributeValue));
                    break;
                case "rubyPosition":
                    String lowerCase4 = Ascii.toLowerCase(attributeValue);
                    lowerCase4.hashCode();
                    if (!lowerCase4.equals("before")) {
                        if (lowerCase4.equals("after")) {
                            jpVar = a(jpVar).d(2);
                        }
                        break;
                    } else {
                        jpVar = a(jpVar).d(1);
                        break;
                    }
                    break;
                case "backgroundColor":
                    jpVar = a(jpVar);
                    try {
                        jpVar.a(s3.b(attributeValue));
                        break;
                    } catch (IllegalArgumentException unused3) {
                        oc.d("TtmlDecoder", "Failed parsing background value: " + attributeValue);
                        break;
                    }
                    break;
                case "multiRowAlign":
                    jpVar = a(jpVar).a(b(attributeValue));
                    break;
            }
        }
        return jpVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:21:0x00ba  */
    private static long a(String str, b bVar) throws pl {
        double d;
        double d2;
        Matcher matcher = p.matcher(str);
        if (matcher.matches()) {
            double d3 = (Long.parseLong((String) b1.a((Object) matcher.group(1))) * 3600) + (Long.parseLong((String) b1.a((Object) matcher.group(2))) * 60) + Long.parseLong((String) b1.a((Object) matcher.group(3)));
            String strGroup = matcher.group(4);
            double d4 = d3 + (strGroup != null ? Double.parseDouble(strGroup) : 0.0d);
            String strGroup2 = matcher.group(5);
            double d5 = d4 + (strGroup2 != null ? Long.parseLong(strGroup2) / bVar.a : 0.0d);
            String strGroup3 = matcher.group(6);
            return (long) ((d5 + (strGroup3 != null ? (Long.parseLong(strGroup3) / ((double) bVar.b)) / ((double) bVar.a) : 0.0d)) * 1000000.0d);
        }
        Matcher matcher2 = q.matcher(str);
        if (matcher2.matches()) {
            double d6 = Double.parseDouble((String) b1.a((Object) matcher2.group(1)));
            String str2 = (String) b1.a((Object) matcher2.group(2));
            str2.hashCode();
            str2.hashCode();
            switch (str2) {
                case "f":
                    d = bVar.a;
                    d6 /= d;
                    return (long) (d6 * 1000000.0d);
                case "h":
                    d2 = 3600.0d;
                    break;
                case "m":
                    d2 = 60.0d;
                    break;
                case "t":
                    d = bVar.c;
                    d6 /= d;
                    return (long) (d6 * 1000000.0d);
                case "ms":
                    d = 1000.0d;
                    d6 /= d;
                    return (long) (d6 * 1000000.0d);
                default:
                    return (long) (d6 * 1000000.0d);
            }
            d6 *= d2;
            return (long) (d6 * 1000000.0d);
        }
        throw new pl("Malformed time expression: " + str);
    }
}
