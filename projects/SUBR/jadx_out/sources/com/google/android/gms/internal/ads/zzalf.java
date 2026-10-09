package com.google.android.gms.internal.ads;

import android.text.Layout;
import com.onesignal.notifications.internal.bundle.impl.NotificationBundleProcessor;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.y8;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzalf implements zzakf {
    private final XmlPullParserFactory zzi;
    private static final Pattern zzc = Pattern.compile("^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$");
    private static final Pattern zzd = Pattern.compile("^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$");
    private static final Pattern zze = Pattern.compile("^(([0-9]*.)?[0-9]+)(px|em|%)$");
    static final Pattern zza = Pattern.compile("^([-+]?\\d+\\.?\\d*?)%$");
    static final Pattern zzb = Pattern.compile("^([-+]?\\d+\\.?\\d*?)% ([-+]?\\d+\\.?\\d*?)%$");
    private static final Pattern zzf = Pattern.compile("^([-+]?\\d+\\.?\\d*?)px ([-+]?\\d+\\.?\\d*?)px$");
    private static final Pattern zzg = Pattern.compile("^(\\d+) (\\d+)$");
    private static final zzald zzh = new zzald(30.0f, 1, 1);

    /* JADX WARN: Code duplicated, block: B:50:0x0104  */
    private static long zzc(String str, zzald zzaldVar) throws zzakb {
        double d;
        double d2;
        Matcher matcher = zzc.matcher(str);
        byte b = 2;
        if (matcher.matches()) {
            String strGroup = matcher.group(1);
            strGroup.getClass();
            long j = Long.parseLong(strGroup) * 3600;
            String strGroup2 = matcher.group(2);
            strGroup2.getClass();
            long j2 = Long.parseLong(strGroup2) * 60;
            String strGroup3 = matcher.group(3);
            strGroup3.getClass();
            double d3 = j + j2;
            double d4 = Long.parseLong(strGroup3);
            String strGroup4 = matcher.group(4);
            double d5 = 0.0d;
            double d6 = strGroup4 != null ? Double.parseDouble(strGroup4) : 0.0d;
            double d7 = d3 + d4;
            String strGroup5 = matcher.group(5);
            double d8 = strGroup5 != null ? Long.parseLong(strGroup5) / zzaldVar.zza : 0.0d;
            double d9 = d7 + d6;
            String strGroup6 = matcher.group(6);
            if (strGroup6 != null) {
                d5 = (Long.parseLong(strGroup6) / ((double) zzaldVar.zzb)) / ((double) zzaldVar.zza);
            }
            return (long) ((d9 + d8 + d5) * 1000000.0d);
        }
        Matcher matcher2 = zzd.matcher(str);
        if (!matcher2.matches()) {
            throw new zzakb("Malformed time expression: ".concat(String.valueOf(str)));
        }
        String strGroup7 = matcher2.group(1);
        strGroup7.getClass();
        double d10 = Double.parseDouble(strGroup7);
        String strGroup8 = matcher2.group(2);
        strGroup8.getClass();
        int iHashCode = strGroup8.hashCode();
        if (iHashCode != 102) {
            if (iHashCode != 104) {
                if (iHashCode != 109) {
                    if (iHashCode != 3494) {
                        if (iHashCode != 115) {
                            if (iHashCode == 116 && strGroup8.equals("t")) {
                                b = 5;
                            } else {
                                b = -1;
                            }
                        } else if (!strGroup8.equals("s")) {
                            b = -1;
                        }
                    } else if (strGroup8.equals("ms")) {
                        b = 3;
                    } else {
                        b = -1;
                    }
                } else if (strGroup8.equals("m")) {
                    b = 1;
                } else {
                    b = -1;
                }
            } else if (strGroup8.equals("h")) {
                b = 0;
            } else {
                b = -1;
            }
        } else if (strGroup8.equals("f")) {
            b = 4;
        } else {
            b = -1;
        }
        if (b != 0) {
            if (b != 1) {
                if (b == 3) {
                    d2 = 1000.0d;
                } else if (b == 4) {
                    d2 = zzaldVar.zza;
                } else if (b == 5) {
                    d2 = zzaldVar.zzc;
                }
                d10 /= d2;
            } else {
                d = 60.0d;
            }
            return (long) (d10 * 1000000.0d);
        }
        d = 3600.0d;
        d10 *= d;
        return (long) (d10 * 1000000.0d);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:20:0x0042  */
    private static Layout.Alignment zzd(String str) {
        byte b;
        switch (zzftt.zza(str)) {
            case "center":
                b = 4;
                break;
            case "end":
                b = 3;
                break;
            case "left":
                b = 0;
                break;
            case "right":
                b = 2;
                break;
            case "start":
                b = 1;
                break;
            default:
                b = -1;
                break;
        }
        if (b == 0 || b == 1) {
            return Layout.Alignment.ALIGN_NORMAL;
        }
        if (b == 2 || b == 3) {
            return Layout.Alignment.ALIGN_OPPOSITE;
        }
        if (b != 4) {
            return null;
        }
        return Layout.Alignment.ALIGN_CENTER;
    }

    private static zzali zze(zzali zzaliVar) {
        return zzaliVar == null ? new zzali() : zzaliVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:52:0x00c1  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private static zzali zzf(XmlPullParser xmlPullParser, zzali zzaliVar) {
        Matcher matcher;
        int attributeCount = xmlPullParser.getAttributeCount();
        for (int i = 0; i < attributeCount; i++) {
            String attributeValue = xmlPullParser.getAttributeValue(i);
            byte b = -1;
            switch (xmlPullParser.getAttributeName(i)) {
                case "id":
                    if (!"style".equals(xmlPullParser.getName())) {
                        break;
                    } else {
                        zzaliVar = zze(zzaliVar);
                        zzaliVar.zzs(attributeValue);
                        break;
                    }
                    break;
                case "backgroundColor":
                    zzaliVar = zze(zzaliVar);
                    try {
                        zzaliVar.zzm(zzcz.zzb(attributeValue));
                        break;
                    } catch (IllegalArgumentException unused) {
                        zzdo.zzf("TtmlParser", "Failed parsing background value: ".concat(String.valueOf(attributeValue)));
                        break;
                    }
                    break;
                case "color":
                    zzaliVar = zze(zzaliVar);
                    try {
                        zzaliVar.zzo(zzcz.zzb(attributeValue));
                        break;
                    } catch (IllegalArgumentException unused2) {
                        zzdo.zzf("TtmlParser", "Failed parsing color value: ".concat(String.valueOf(attributeValue)));
                        break;
                    }
                    break;
                case "fontFamily":
                    zzaliVar = zze(zzaliVar);
                    zzaliVar.zzp(attributeValue);
                    break;
                case "fontSize":
                    try {
                        zzaliVar = zze(zzaliVar);
                        int i2 = zzei.zza;
                        String[] strArrSplit = attributeValue.split("\\s+", -1);
                        int length = strArrSplit.length;
                        if (length == 1) {
                            matcher = zze.matcher(attributeValue);
                        } else {
                            if (length != 2) {
                                throw new zzakb("Invalid number of entries for fontSize: " + length + ".");
                            }
                            matcher = zze.matcher(strArrSplit[1]);
                            zzdo.zzf("TtmlParser", "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first.");
                        }
                        if (!matcher.matches()) {
                            throw new zzakb("Invalid expression for fontSize: '" + attributeValue + "'.");
                        }
                        String strGroup = matcher.group(3);
                        strGroup.getClass();
                        String str = strGroup;
                        int iHashCode = strGroup.hashCode();
                        if (iHashCode != 37) {
                            if (iHashCode != 3240) {
                                if (iHashCode == 3592 && strGroup.equals("px")) {
                                    b = 0;
                                }
                            } else if (strGroup.equals("em")) {
                                b = 1;
                            }
                        } else if (strGroup.equals("%")) {
                            b = 2;
                        }
                        if (b == 0) {
                            zzaliVar.zzr(1);
                        } else if (b == 1) {
                            zzaliVar.zzr(2);
                        } else {
                            if (b != 2) {
                                throw new zzakb("Invalid unit for fontSize: '" + strGroup + "'.");
                            }
                            zzaliVar.zzr(3);
                        }
                        String strGroup2 = matcher.group(1);
                        strGroup2.getClass();
                        String str2 = strGroup2;
                        zzaliVar.zzq(Float.parseFloat(strGroup2));
                        break;
                    } catch (zzakb unused3) {
                        zzdo.zzf("TtmlParser", "Failed parsing fontSize value: ".concat(String.valueOf(attributeValue)));
                        break;
                    }
                    break;
                case "fontWeight":
                    zzaliVar = zze(zzaliVar);
                    zzaliVar.zzn("bold".equalsIgnoreCase(attributeValue));
                    break;
                case "fontStyle":
                    zzaliVar = zze(zzaliVar);
                    zzaliVar.zzt("italic".equalsIgnoreCase(attributeValue));
                    break;
                case "textAlign":
                    zzaliVar = zze(zzaliVar);
                    zzaliVar.zzz(zzd(attributeValue));
                    break;
                case "multiRowAlign":
                    zzaliVar = zze(zzaliVar);
                    zzaliVar.zzv(zzd(attributeValue));
                    break;
                case "textCombine":
                    String strZza = zzftt.zza(attributeValue);
                    int iHashCode2 = strZza.hashCode();
                    if (iHashCode2 != 96673) {
                        if (iHashCode2 == 3387192 && strZza.equals("none")) {
                            b = 0;
                        }
                    } else if (strZza.equals("all")) {
                        b = 1;
                    }
                    if (b == 0) {
                        zzaliVar = zze(zzaliVar);
                        zzaliVar.zzA(false);
                        break;
                    } else {
                        if (b == 1) {
                            zzaliVar = zze(zzaliVar);
                            zzaliVar.zzA(true);
                        }
                        break;
                    }
                    break;
                case "ruby":
                    String strZza2 = zzftt.zza(attributeValue);
                    switch (strZza2.hashCode()) {
                        case -618561360:
                            if (strZza2.equals("baseContainer")) {
                                b = 2;
                            }
                            break;
                        case -410956671:
                            if (strZza2.equals("container")) {
                                b = 0;
                            }
                            break;
                        case -250518009:
                            if (strZza2.equals("delimiter")) {
                                b = 5;
                            }
                            break;
                        case -136074796:
                            if (strZza2.equals("textContainer")) {
                                b = 4;
                            }
                            break;
                        case 3016401:
                            if (strZza2.equals("base")) {
                                b = 1;
                            }
                            break;
                        case 3556653:
                            if (strZza2.equals(y8.h.K0)) {
                                b = 3;
                            }
                            break;
                    }
                    if (b == 0) {
                        zzaliVar = zze(zzaliVar);
                        zzaliVar.zzx(1);
                        break;
                    } else {
                        if (b == 1 || b == 2) {
                            zzaliVar = zze(zzaliVar);
                            zzaliVar.zzx(2);
                        } else if (b == 3 || b == 4) {
                            zzaliVar = zze(zzaliVar);
                            zzaliVar.zzx(3);
                        } else if (b == 5) {
                            zzaliVar = zze(zzaliVar);
                            zzaliVar.zzx(4);
                        }
                        break;
                    }
                    break;
                case "rubyPosition":
                    String strZza3 = zzftt.zza(attributeValue);
                    int iHashCode3 = strZza3.hashCode();
                    if (iHashCode3 != -1392885889) {
                        if (iHashCode3 == 92734940 && strZza3.equals("after")) {
                            b = 1;
                        }
                    } else if (strZza3.equals("before")) {
                        b = 0;
                    }
                    if (b == 0) {
                        zzaliVar = zze(zzaliVar);
                        zzaliVar.zzw(1);
                        break;
                    } else {
                        if (b == 1) {
                            zzaliVar = zze(zzaliVar);
                            zzaliVar.zzw(2);
                        }
                        break;
                    }
                    break;
                case "textDecoration":
                    String strZza4 = zzftt.zza(attributeValue);
                    switch (strZza4.hashCode()) {
                        case -1461280213:
                            if (strZza4.equals("nounderline")) {
                                b = 3;
                            }
                            break;
                        case -1026963764:
                            if (strZza4.equals("underline")) {
                                b = 2;
                            }
                            break;
                        case 913457136:
                            if (strZza4.equals("nolinethrough")) {
                                b = 1;
                            }
                            break;
                        case 1679736913:
                            if (strZza4.equals("linethrough")) {
                                b = 0;
                            }
                            break;
                    }
                    if (b == 0) {
                        zzaliVar = zze(zzaliVar);
                        zzaliVar.zzu(true);
                        break;
                    } else {
                        if (b == 1) {
                            zzaliVar = zze(zzaliVar);
                            zzaliVar.zzu(false);
                        } else if (b == 2) {
                            zzaliVar = zze(zzaliVar);
                            zzaliVar.zzC(true);
                        } else if (b == 3) {
                            zzaliVar = zze(zzaliVar);
                            zzaliVar.zzC(false);
                        }
                        break;
                    }
                    break;
                case "textEmphasis":
                    zzaliVar = zze(zzaliVar);
                    zzaliVar.zzB(zzalb.zza(attributeValue));
                    break;
                case "shear":
                    zzaliVar = zze(zzaliVar);
                    Matcher matcher2 = zza.matcher(attributeValue);
                    float fMin = Float.MAX_VALUE;
                    if (matcher2.matches()) {
                        try {
                            String strGroup3 = matcher2.group(1);
                            strGroup3.getClass();
                            String str3 = strGroup3;
                            fMin = Math.min(100.0f, Math.max(-100.0f, Float.parseFloat(strGroup3)));
                        } catch (NumberFormatException e) {
                            zzdo.zzg("TtmlParser", "Failed to parse shear: ".concat(String.valueOf(attributeValue)), e);
                        }
                        break;
                    } else {
                        zzdo.zzf("TtmlParser", "Invalid value for shear: ".concat(String.valueOf(attributeValue)));
                    }
                    zzaliVar.zzy(fMin);
                    break;
            }
        }
        return zzaliVar;
    }

    private static String[] zzg(String str) {
        String strTrim = str.trim();
        if (strTrim.isEmpty()) {
            return new String[0];
        }
        int i = zzei.zza;
        return strTrim.split("\\s+", -1);
    }

    @Override // com.google.android.gms.internal.ads.zzakf
    public final void zza(byte[] bArr, int i, int i2, zzake zzakeVar, zzdb zzdbVar) {
        zzajz.zza(zzb(bArr, i, i2), zzakeVar, zzdbVar);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:111:0x0275 A[Catch: IOException -> 0x06ea, XmlPullParserException -> 0x06f4, TryCatch #17 {IOException -> 0x06ea, XmlPullParserException -> 0x06f4, blocks: (B:3:0x0006, B:6:0x0060, B:8:0x006b, B:11:0x0075, B:14:0x007f, B:16:0x0087, B:18:0x008e, B:21:0x0098, B:25:0x00aa, B:27:0x00c9, B:29:0x00d7, B:31:0x00de, B:33:0x00ea, B:35:0x00f5, B:61:0x017e, B:78:0x01db, B:81:0x01e9, B:83:0x01ef, B:85:0x01f7, B:87:0x01ff, B:89:0x0207, B:91:0x020f, B:93:0x0217, B:95:0x021d, B:97:0x0225, B:99:0x022d, B:101:0x0233, B:103:0x0239, B:105:0x0241, B:107:0x0249, B:110:0x0252, B:384:0x06ce, B:111:0x0275, B:113:0x027b, B:115:0x0284, B:117:0x0293, B:119:0x029d, B:121:0x02b1, B:123:0x02b7, B:251:0x0501, B:124:0x02bb, B:127:0x02c5, B:129:0x02cb, B:131:0x02d6, B:133:0x02dc, B:134:0x02e3, B:137:0x02ef, B:250:0x04fc, B:141:0x02fc, B:143:0x0304, B:147:0x031d, B:149:0x0324, B:151:0x0335, B:166:0x038a, B:168:0x0392, B:171:0x03a1, B:173:0x03a8, B:175:0x03b9, B:190:0x0411, B:192:0x0419, B:213:0x045f, B:215:0x0467, B:242:0x04b0, B:177:0x03c7, B:178:0x03d2, B:181:0x03da, B:184:0x03e6, B:186:0x03ed, B:188:0x03fc, B:243:0x04bc, B:244:0x04c7, B:245:0x04d2, B:153:0x0341, B:154:0x034b, B:157:0x0355, B:160:0x0360, B:162:0x0367, B:164:0x0376, B:246:0x04d9, B:247:0x04e4, B:248:0x04ef, B:256:0x0519, B:259:0x0536, B:312:0x05d6, B:293:0x0592, B:296:0x059b, B:358:0x0657, B:299:0x05a3, B:302:0x05ad, B:309:0x05c2, B:310:0x05c7, B:311:0x05cf, B:319:0x05eb, B:323:0x05f5, B:327:0x05fe, B:337:0x0612, B:345:0x0627, B:347:0x0635, B:349:0x063a, B:339:0x0619, B:64:0x0188, B:66:0x0194, B:69:0x019f, B:71:0x01a6, B:73:0x01b5, B:75:0x01c2, B:39:0x010d, B:41:0x0119, B:44:0x0124, B:46:0x012b, B:48:0x013a, B:54:0x0153, B:56:0x015a, B:60:0x0174, B:364:0x0677, B:367:0x0689, B:369:0x0693, B:371:0x069e, B:373:0x06ab, B:377:0x06bf, B:381:0x06c7, B:387:0x06e5), top: B:427:0x0006 }] */
    /* JADX WARN: Code duplicated, block: B:113:0x027b A[Catch: IOException -> 0x06ea, XmlPullParserException -> 0x06f4, LOOP:1: B:113:0x027b->B:254:0x050d, LOOP_START, PHI: r2 r5 r11
  0x027b: PHI (r2v37 java.lang.String) = (r2v18 java.lang.String), (r2v75 java.lang.String) binds: [B:112:0x0279, B:254:0x050d] A[DONT_GENERATE, DONT_INLINE]
  0x027b: PHI (r5v7 java.util.HashMap) = (r5v1 java.util.HashMap), (r5v30 java.util.HashMap) binds: [B:112:0x0279, B:254:0x050d] A[DONT_GENERATE, DONT_INLINE]
  0x027b: PHI (r11v10 com.google.android.gms.internal.ads.zzald) = (r11v5 com.google.android.gms.internal.ads.zzald), (r11v35 com.google.android.gms.internal.ads.zzald) binds: [B:112:0x0279, B:254:0x050d] A[DONT_GENERATE, DONT_INLINE], TryCatch #17 {IOException -> 0x06ea, XmlPullParserException -> 0x06f4, blocks: (B:3:0x0006, B:6:0x0060, B:8:0x006b, B:11:0x0075, B:14:0x007f, B:16:0x0087, B:18:0x008e, B:21:0x0098, B:25:0x00aa, B:27:0x00c9, B:29:0x00d7, B:31:0x00de, B:33:0x00ea, B:35:0x00f5, B:61:0x017e, B:78:0x01db, B:81:0x01e9, B:83:0x01ef, B:85:0x01f7, B:87:0x01ff, B:89:0x0207, B:91:0x020f, B:93:0x0217, B:95:0x021d, B:97:0x0225, B:99:0x022d, B:101:0x0233, B:103:0x0239, B:105:0x0241, B:107:0x0249, B:110:0x0252, B:384:0x06ce, B:111:0x0275, B:113:0x027b, B:115:0x0284, B:117:0x0293, B:119:0x029d, B:121:0x02b1, B:123:0x02b7, B:251:0x0501, B:124:0x02bb, B:127:0x02c5, B:129:0x02cb, B:131:0x02d6, B:133:0x02dc, B:134:0x02e3, B:137:0x02ef, B:250:0x04fc, B:141:0x02fc, B:143:0x0304, B:147:0x031d, B:149:0x0324, B:151:0x0335, B:166:0x038a, B:168:0x0392, B:171:0x03a1, B:173:0x03a8, B:175:0x03b9, B:190:0x0411, B:192:0x0419, B:213:0x045f, B:215:0x0467, B:242:0x04b0, B:177:0x03c7, B:178:0x03d2, B:181:0x03da, B:184:0x03e6, B:186:0x03ed, B:188:0x03fc, B:243:0x04bc, B:244:0x04c7, B:245:0x04d2, B:153:0x0341, B:154:0x034b, B:157:0x0355, B:160:0x0360, B:162:0x0367, B:164:0x0376, B:246:0x04d9, B:247:0x04e4, B:248:0x04ef, B:256:0x0519, B:259:0x0536, B:312:0x05d6, B:293:0x0592, B:296:0x059b, B:358:0x0657, B:299:0x05a3, B:302:0x05ad, B:309:0x05c2, B:310:0x05c7, B:311:0x05cf, B:319:0x05eb, B:323:0x05f5, B:327:0x05fe, B:337:0x0612, B:345:0x0627, B:347:0x0635, B:349:0x063a, B:339:0x0619, B:64:0x0188, B:66:0x0194, B:69:0x019f, B:71:0x01a6, B:73:0x01b5, B:75:0x01c2, B:39:0x010d, B:41:0x0119, B:44:0x0124, B:46:0x012b, B:48:0x013a, B:54:0x0153, B:56:0x015a, B:60:0x0174, B:364:0x0677, B:367:0x0689, B:369:0x0693, B:371:0x069e, B:373:0x06ab, B:377:0x06bf, B:381:0x06c7, B:387:0x06e5), top: B:427:0x0006 }] */
    /* JADX WARN: Code duplicated, block: B:115:0x0284 A[Catch: IOException -> 0x06ea, XmlPullParserException -> 0x06f4, TryCatch #17 {IOException -> 0x06ea, XmlPullParserException -> 0x06f4, blocks: (B:3:0x0006, B:6:0x0060, B:8:0x006b, B:11:0x0075, B:14:0x007f, B:16:0x0087, B:18:0x008e, B:21:0x0098, B:25:0x00aa, B:27:0x00c9, B:29:0x00d7, B:31:0x00de, B:33:0x00ea, B:35:0x00f5, B:61:0x017e, B:78:0x01db, B:81:0x01e9, B:83:0x01ef, B:85:0x01f7, B:87:0x01ff, B:89:0x0207, B:91:0x020f, B:93:0x0217, B:95:0x021d, B:97:0x0225, B:99:0x022d, B:101:0x0233, B:103:0x0239, B:105:0x0241, B:107:0x0249, B:110:0x0252, B:384:0x06ce, B:111:0x0275, B:113:0x027b, B:115:0x0284, B:117:0x0293, B:119:0x029d, B:121:0x02b1, B:123:0x02b7, B:251:0x0501, B:124:0x02bb, B:127:0x02c5, B:129:0x02cb, B:131:0x02d6, B:133:0x02dc, B:134:0x02e3, B:137:0x02ef, B:250:0x04fc, B:141:0x02fc, B:143:0x0304, B:147:0x031d, B:149:0x0324, B:151:0x0335, B:166:0x038a, B:168:0x0392, B:171:0x03a1, B:173:0x03a8, B:175:0x03b9, B:190:0x0411, B:192:0x0419, B:213:0x045f, B:215:0x0467, B:242:0x04b0, B:177:0x03c7, B:178:0x03d2, B:181:0x03da, B:184:0x03e6, B:186:0x03ed, B:188:0x03fc, B:243:0x04bc, B:244:0x04c7, B:245:0x04d2, B:153:0x0341, B:154:0x034b, B:157:0x0355, B:160:0x0360, B:162:0x0367, B:164:0x0376, B:246:0x04d9, B:247:0x04e4, B:248:0x04ef, B:256:0x0519, B:259:0x0536, B:312:0x05d6, B:293:0x0592, B:296:0x059b, B:358:0x0657, B:299:0x05a3, B:302:0x05ad, B:309:0x05c2, B:310:0x05c7, B:311:0x05cf, B:319:0x05eb, B:323:0x05f5, B:327:0x05fe, B:337:0x0612, B:345:0x0627, B:347:0x0635, B:349:0x063a, B:339:0x0619, B:64:0x0188, B:66:0x0194, B:69:0x019f, B:71:0x01a6, B:73:0x01b5, B:75:0x01c2, B:39:0x010d, B:41:0x0119, B:44:0x0124, B:46:0x012b, B:48:0x013a, B:54:0x0153, B:56:0x015a, B:60:0x0174, B:364:0x0677, B:367:0x0689, B:369:0x0693, B:371:0x069e, B:373:0x06ab, B:377:0x06bf, B:381:0x06c7, B:387:0x06e5), top: B:427:0x0006 }] */
    /* JADX WARN: Code duplicated, block: B:117:0x0293 A[Catch: IOException -> 0x06ea, XmlPullParserException -> 0x06f4, TryCatch #17 {IOException -> 0x06ea, XmlPullParserException -> 0x06f4, blocks: (B:3:0x0006, B:6:0x0060, B:8:0x006b, B:11:0x0075, B:14:0x007f, B:16:0x0087, B:18:0x008e, B:21:0x0098, B:25:0x00aa, B:27:0x00c9, B:29:0x00d7, B:31:0x00de, B:33:0x00ea, B:35:0x00f5, B:61:0x017e, B:78:0x01db, B:81:0x01e9, B:83:0x01ef, B:85:0x01f7, B:87:0x01ff, B:89:0x0207, B:91:0x020f, B:93:0x0217, B:95:0x021d, B:97:0x0225, B:99:0x022d, B:101:0x0233, B:103:0x0239, B:105:0x0241, B:107:0x0249, B:110:0x0252, B:384:0x06ce, B:111:0x0275, B:113:0x027b, B:115:0x0284, B:117:0x0293, B:119:0x029d, B:121:0x02b1, B:123:0x02b7, B:251:0x0501, B:124:0x02bb, B:127:0x02c5, B:129:0x02cb, B:131:0x02d6, B:133:0x02dc, B:134:0x02e3, B:137:0x02ef, B:250:0x04fc, B:141:0x02fc, B:143:0x0304, B:147:0x031d, B:149:0x0324, B:151:0x0335, B:166:0x038a, B:168:0x0392, B:171:0x03a1, B:173:0x03a8, B:175:0x03b9, B:190:0x0411, B:192:0x0419, B:213:0x045f, B:215:0x0467, B:242:0x04b0, B:177:0x03c7, B:178:0x03d2, B:181:0x03da, B:184:0x03e6, B:186:0x03ed, B:188:0x03fc, B:243:0x04bc, B:244:0x04c7, B:245:0x04d2, B:153:0x0341, B:154:0x034b, B:157:0x0355, B:160:0x0360, B:162:0x0367, B:164:0x0376, B:246:0x04d9, B:247:0x04e4, B:248:0x04ef, B:256:0x0519, B:259:0x0536, B:312:0x05d6, B:293:0x0592, B:296:0x059b, B:358:0x0657, B:299:0x05a3, B:302:0x05ad, B:309:0x05c2, B:310:0x05c7, B:311:0x05cf, B:319:0x05eb, B:323:0x05f5, B:327:0x05fe, B:337:0x0612, B:345:0x0627, B:347:0x0635, B:349:0x063a, B:339:0x0619, B:64:0x0188, B:66:0x0194, B:69:0x019f, B:71:0x01a6, B:73:0x01b5, B:75:0x01c2, B:39:0x010d, B:41:0x0119, B:44:0x0124, B:46:0x012b, B:48:0x013a, B:54:0x0153, B:56:0x015a, B:60:0x0174, B:364:0x0677, B:367:0x0689, B:369:0x0693, B:371:0x069e, B:373:0x06ab, B:377:0x06bf, B:381:0x06c7, B:387:0x06e5), top: B:427:0x0006 }] */
    /* JADX WARN: Code duplicated, block: B:119:0x029d A[Catch: IOException -> 0x06ea, XmlPullParserException -> 0x06f4, LOOP:2: B:118:0x029b->B:119:0x029d, LOOP_END, TryCatch #17 {IOException -> 0x06ea, XmlPullParserException -> 0x06f4, blocks: (B:3:0x0006, B:6:0x0060, B:8:0x006b, B:11:0x0075, B:14:0x007f, B:16:0x0087, B:18:0x008e, B:21:0x0098, B:25:0x00aa, B:27:0x00c9, B:29:0x00d7, B:31:0x00de, B:33:0x00ea, B:35:0x00f5, B:61:0x017e, B:78:0x01db, B:81:0x01e9, B:83:0x01ef, B:85:0x01f7, B:87:0x01ff, B:89:0x0207, B:91:0x020f, B:93:0x0217, B:95:0x021d, B:97:0x0225, B:99:0x022d, B:101:0x0233, B:103:0x0239, B:105:0x0241, B:107:0x0249, B:110:0x0252, B:384:0x06ce, B:111:0x0275, B:113:0x027b, B:115:0x0284, B:117:0x0293, B:119:0x029d, B:121:0x02b1, B:123:0x02b7, B:251:0x0501, B:124:0x02bb, B:127:0x02c5, B:129:0x02cb, B:131:0x02d6, B:133:0x02dc, B:134:0x02e3, B:137:0x02ef, B:250:0x04fc, B:141:0x02fc, B:143:0x0304, B:147:0x031d, B:149:0x0324, B:151:0x0335, B:166:0x038a, B:168:0x0392, B:171:0x03a1, B:173:0x03a8, B:175:0x03b9, B:190:0x0411, B:192:0x0419, B:213:0x045f, B:215:0x0467, B:242:0x04b0, B:177:0x03c7, B:178:0x03d2, B:181:0x03da, B:184:0x03e6, B:186:0x03ed, B:188:0x03fc, B:243:0x04bc, B:244:0x04c7, B:245:0x04d2, B:153:0x0341, B:154:0x034b, B:157:0x0355, B:160:0x0360, B:162:0x0367, B:164:0x0376, B:246:0x04d9, B:247:0x04e4, B:248:0x04ef, B:256:0x0519, B:259:0x0536, B:312:0x05d6, B:293:0x0592, B:296:0x059b, B:358:0x0657, B:299:0x05a3, B:302:0x05ad, B:309:0x05c2, B:310:0x05c7, B:311:0x05cf, B:319:0x05eb, B:323:0x05f5, B:327:0x05fe, B:337:0x0612, B:345:0x0627, B:347:0x0635, B:349:0x063a, B:339:0x0619, B:64:0x0188, B:66:0x0194, B:69:0x019f, B:71:0x01a6, B:73:0x01b5, B:75:0x01c2, B:39:0x010d, B:41:0x0119, B:44:0x0124, B:46:0x012b, B:48:0x013a, B:54:0x0153, B:56:0x015a, B:60:0x0174, B:364:0x0677, B:367:0x0689, B:369:0x0693, B:371:0x069e, B:373:0x06ab, B:377:0x06bf, B:381:0x06c7, B:387:0x06e5), top: B:427:0x0006 }] */
    /* JADX WARN: Code duplicated, block: B:120:0x02af  */
    /* JADX WARN: Code duplicated, block: B:123:0x02b7 A[Catch: IOException -> 0x06ea, XmlPullParserException -> 0x06f4, TryCatch #17 {IOException -> 0x06ea, XmlPullParserException -> 0x06f4, blocks: (B:3:0x0006, B:6:0x0060, B:8:0x006b, B:11:0x0075, B:14:0x007f, B:16:0x0087, B:18:0x008e, B:21:0x0098, B:25:0x00aa, B:27:0x00c9, B:29:0x00d7, B:31:0x00de, B:33:0x00ea, B:35:0x00f5, B:61:0x017e, B:78:0x01db, B:81:0x01e9, B:83:0x01ef, B:85:0x01f7, B:87:0x01ff, B:89:0x0207, B:91:0x020f, B:93:0x0217, B:95:0x021d, B:97:0x0225, B:99:0x022d, B:101:0x0233, B:103:0x0239, B:105:0x0241, B:107:0x0249, B:110:0x0252, B:384:0x06ce, B:111:0x0275, B:113:0x027b, B:115:0x0284, B:117:0x0293, B:119:0x029d, B:121:0x02b1, B:123:0x02b7, B:251:0x0501, B:124:0x02bb, B:127:0x02c5, B:129:0x02cb, B:131:0x02d6, B:133:0x02dc, B:134:0x02e3, B:137:0x02ef, B:250:0x04fc, B:141:0x02fc, B:143:0x0304, B:147:0x031d, B:149:0x0324, B:151:0x0335, B:166:0x038a, B:168:0x0392, B:171:0x03a1, B:173:0x03a8, B:175:0x03b9, B:190:0x0411, B:192:0x0419, B:213:0x045f, B:215:0x0467, B:242:0x04b0, B:177:0x03c7, B:178:0x03d2, B:181:0x03da, B:184:0x03e6, B:186:0x03ed, B:188:0x03fc, B:243:0x04bc, B:244:0x04c7, B:245:0x04d2, B:153:0x0341, B:154:0x034b, B:157:0x0355, B:160:0x0360, B:162:0x0367, B:164:0x0376, B:246:0x04d9, B:247:0x04e4, B:248:0x04ef, B:256:0x0519, B:259:0x0536, B:312:0x05d6, B:293:0x0592, B:296:0x059b, B:358:0x0657, B:299:0x05a3, B:302:0x05ad, B:309:0x05c2, B:310:0x05c7, B:311:0x05cf, B:319:0x05eb, B:323:0x05f5, B:327:0x05fe, B:337:0x0612, B:345:0x0627, B:347:0x0635, B:349:0x063a, B:339:0x0619, B:64:0x0188, B:66:0x0194, B:69:0x019f, B:71:0x01a6, B:73:0x01b5, B:75:0x01c2, B:39:0x010d, B:41:0x0119, B:44:0x0124, B:46:0x012b, B:48:0x013a, B:54:0x0153, B:56:0x015a, B:60:0x0174, B:364:0x0677, B:367:0x0689, B:369:0x0693, B:371:0x069e, B:373:0x06ab, B:377:0x06bf, B:381:0x06c7, B:387:0x06e5), top: B:427:0x0006 }] */
    /* JADX WARN: Code duplicated, block: B:124:0x02bb A[Catch: IOException -> 0x06ea, XmlPullParserException -> 0x06f4, TRY_LEAVE, TryCatch #17 {IOException -> 0x06ea, XmlPullParserException -> 0x06f4, blocks: (B:3:0x0006, B:6:0x0060, B:8:0x006b, B:11:0x0075, B:14:0x007f, B:16:0x0087, B:18:0x008e, B:21:0x0098, B:25:0x00aa, B:27:0x00c9, B:29:0x00d7, B:31:0x00de, B:33:0x00ea, B:35:0x00f5, B:61:0x017e, B:78:0x01db, B:81:0x01e9, B:83:0x01ef, B:85:0x01f7, B:87:0x01ff, B:89:0x0207, B:91:0x020f, B:93:0x0217, B:95:0x021d, B:97:0x0225, B:99:0x022d, B:101:0x0233, B:103:0x0239, B:105:0x0241, B:107:0x0249, B:110:0x0252, B:384:0x06ce, B:111:0x0275, B:113:0x027b, B:115:0x0284, B:117:0x0293, B:119:0x029d, B:121:0x02b1, B:123:0x02b7, B:251:0x0501, B:124:0x02bb, B:127:0x02c5, B:129:0x02cb, B:131:0x02d6, B:133:0x02dc, B:134:0x02e3, B:137:0x02ef, B:250:0x04fc, B:141:0x02fc, B:143:0x0304, B:147:0x031d, B:149:0x0324, B:151:0x0335, B:166:0x038a, B:168:0x0392, B:171:0x03a1, B:173:0x03a8, B:175:0x03b9, B:190:0x0411, B:192:0x0419, B:213:0x045f, B:215:0x0467, B:242:0x04b0, B:177:0x03c7, B:178:0x03d2, B:181:0x03da, B:184:0x03e6, B:186:0x03ed, B:188:0x03fc, B:243:0x04bc, B:244:0x04c7, B:245:0x04d2, B:153:0x0341, B:154:0x034b, B:157:0x0355, B:160:0x0360, B:162:0x0367, B:164:0x0376, B:246:0x04d9, B:247:0x04e4, B:248:0x04ef, B:256:0x0519, B:259:0x0536, B:312:0x05d6, B:293:0x0592, B:296:0x059b, B:358:0x0657, B:299:0x05a3, B:302:0x05ad, B:309:0x05c2, B:310:0x05c7, B:311:0x05cf, B:319:0x05eb, B:323:0x05f5, B:327:0x05fe, B:337:0x0612, B:345:0x0627, B:347:0x0635, B:349:0x063a, B:339:0x0619, B:64:0x0188, B:66:0x0194, B:69:0x019f, B:71:0x01a6, B:73:0x01b5, B:75:0x01c2, B:39:0x010d, B:41:0x0119, B:44:0x0124, B:46:0x012b, B:48:0x013a, B:54:0x0153, B:56:0x015a, B:60:0x0174, B:364:0x0677, B:367:0x0689, B:369:0x0693, B:371:0x069e, B:373:0x06ab, B:377:0x06bf, B:381:0x06c7, B:387:0x06e5), top: B:427:0x0006 }] */
    /* JADX WARN: Code duplicated, block: B:127:0x02c5 A[Catch: IOException -> 0x06ea, XmlPullParserException -> 0x06f4, TRY_ENTER, TryCatch #17 {IOException -> 0x06ea, XmlPullParserException -> 0x06f4, blocks: (B:3:0x0006, B:6:0x0060, B:8:0x006b, B:11:0x0075, B:14:0x007f, B:16:0x0087, B:18:0x008e, B:21:0x0098, B:25:0x00aa, B:27:0x00c9, B:29:0x00d7, B:31:0x00de, B:33:0x00ea, B:35:0x00f5, B:61:0x017e, B:78:0x01db, B:81:0x01e9, B:83:0x01ef, B:85:0x01f7, B:87:0x01ff, B:89:0x0207, B:91:0x020f, B:93:0x0217, B:95:0x021d, B:97:0x0225, B:99:0x022d, B:101:0x0233, B:103:0x0239, B:105:0x0241, B:107:0x0249, B:110:0x0252, B:384:0x06ce, B:111:0x0275, B:113:0x027b, B:115:0x0284, B:117:0x0293, B:119:0x029d, B:121:0x02b1, B:123:0x02b7, B:251:0x0501, B:124:0x02bb, B:127:0x02c5, B:129:0x02cb, B:131:0x02d6, B:133:0x02dc, B:134:0x02e3, B:137:0x02ef, B:250:0x04fc, B:141:0x02fc, B:143:0x0304, B:147:0x031d, B:149:0x0324, B:151:0x0335, B:166:0x038a, B:168:0x0392, B:171:0x03a1, B:173:0x03a8, B:175:0x03b9, B:190:0x0411, B:192:0x0419, B:213:0x045f, B:215:0x0467, B:242:0x04b0, B:177:0x03c7, B:178:0x03d2, B:181:0x03da, B:184:0x03e6, B:186:0x03ed, B:188:0x03fc, B:243:0x04bc, B:244:0x04c7, B:245:0x04d2, B:153:0x0341, B:154:0x034b, B:157:0x0355, B:160:0x0360, B:162:0x0367, B:164:0x0376, B:246:0x04d9, B:247:0x04e4, B:248:0x04ef, B:256:0x0519, B:259:0x0536, B:312:0x05d6, B:293:0x0592, B:296:0x059b, B:358:0x0657, B:299:0x05a3, B:302:0x05ad, B:309:0x05c2, B:310:0x05c7, B:311:0x05cf, B:319:0x05eb, B:323:0x05f5, B:327:0x05fe, B:337:0x0612, B:345:0x0627, B:347:0x0635, B:349:0x063a, B:339:0x0619, B:64:0x0188, B:66:0x0194, B:69:0x019f, B:71:0x01a6, B:73:0x01b5, B:75:0x01c2, B:39:0x010d, B:41:0x0119, B:44:0x0124, B:46:0x012b, B:48:0x013a, B:54:0x0153, B:56:0x015a, B:60:0x0174, B:364:0x0677, B:367:0x0689, B:369:0x0693, B:371:0x069e, B:373:0x06ab, B:377:0x06bf, B:381:0x06c7, B:387:0x06e5), top: B:427:0x0006 }] */
    /* JADX WARN: Code duplicated, block: B:129:0x02cb A[Catch: IOException -> 0x06ea, XmlPullParserException -> 0x06f4, LOOP:3: B:129:0x02cb->B:433:?, LOOP_START, TryCatch #17 {IOException -> 0x06ea, XmlPullParserException -> 0x06f4, blocks: (B:3:0x0006, B:6:0x0060, B:8:0x006b, B:11:0x0075, B:14:0x007f, B:16:0x0087, B:18:0x008e, B:21:0x0098, B:25:0x00aa, B:27:0x00c9, B:29:0x00d7, B:31:0x00de, B:33:0x00ea, B:35:0x00f5, B:61:0x017e, B:78:0x01db, B:81:0x01e9, B:83:0x01ef, B:85:0x01f7, B:87:0x01ff, B:89:0x0207, B:91:0x020f, B:93:0x0217, B:95:0x021d, B:97:0x0225, B:99:0x022d, B:101:0x0233, B:103:0x0239, B:105:0x0241, B:107:0x0249, B:110:0x0252, B:384:0x06ce, B:111:0x0275, B:113:0x027b, B:115:0x0284, B:117:0x0293, B:119:0x029d, B:121:0x02b1, B:123:0x02b7, B:251:0x0501, B:124:0x02bb, B:127:0x02c5, B:129:0x02cb, B:131:0x02d6, B:133:0x02dc, B:134:0x02e3, B:137:0x02ef, B:250:0x04fc, B:141:0x02fc, B:143:0x0304, B:147:0x031d, B:149:0x0324, B:151:0x0335, B:166:0x038a, B:168:0x0392, B:171:0x03a1, B:173:0x03a8, B:175:0x03b9, B:190:0x0411, B:192:0x0419, B:213:0x045f, B:215:0x0467, B:242:0x04b0, B:177:0x03c7, B:178:0x03d2, B:181:0x03da, B:184:0x03e6, B:186:0x03ed, B:188:0x03fc, B:243:0x04bc, B:244:0x04c7, B:245:0x04d2, B:153:0x0341, B:154:0x034b, B:157:0x0355, B:160:0x0360, B:162:0x0367, B:164:0x0376, B:246:0x04d9, B:247:0x04e4, B:248:0x04ef, B:256:0x0519, B:259:0x0536, B:312:0x05d6, B:293:0x0592, B:296:0x059b, B:358:0x0657, B:299:0x05a3, B:302:0x05ad, B:309:0x05c2, B:310:0x05c7, B:311:0x05cf, B:319:0x05eb, B:323:0x05f5, B:327:0x05fe, B:337:0x0612, B:345:0x0627, B:347:0x0635, B:349:0x063a, B:339:0x0619, B:64:0x0188, B:66:0x0194, B:69:0x019f, B:71:0x01a6, B:73:0x01b5, B:75:0x01c2, B:39:0x010d, B:41:0x0119, B:44:0x0124, B:46:0x012b, B:48:0x013a, B:54:0x0153, B:56:0x015a, B:60:0x0174, B:364:0x0677, B:367:0x0689, B:369:0x0693, B:371:0x069e, B:373:0x06ab, B:377:0x06bf, B:381:0x06c7, B:387:0x06e5), top: B:427:0x0006 }] */
    /* JADX WARN: Code duplicated, block: B:131:0x02d6 A[Catch: IOException -> 0x06ea, XmlPullParserException -> 0x06f4, TryCatch #17 {IOException -> 0x06ea, XmlPullParserException -> 0x06f4, blocks: (B:3:0x0006, B:6:0x0060, B:8:0x006b, B:11:0x0075, B:14:0x007f, B:16:0x0087, B:18:0x008e, B:21:0x0098, B:25:0x00aa, B:27:0x00c9, B:29:0x00d7, B:31:0x00de, B:33:0x00ea, B:35:0x00f5, B:61:0x017e, B:78:0x01db, B:81:0x01e9, B:83:0x01ef, B:85:0x01f7, B:87:0x01ff, B:89:0x0207, B:91:0x020f, B:93:0x0217, B:95:0x021d, B:97:0x0225, B:99:0x022d, B:101:0x0233, B:103:0x0239, B:105:0x0241, B:107:0x0249, B:110:0x0252, B:384:0x06ce, B:111:0x0275, B:113:0x027b, B:115:0x0284, B:117:0x0293, B:119:0x029d, B:121:0x02b1, B:123:0x02b7, B:251:0x0501, B:124:0x02bb, B:127:0x02c5, B:129:0x02cb, B:131:0x02d6, B:133:0x02dc, B:134:0x02e3, B:137:0x02ef, B:250:0x04fc, B:141:0x02fc, B:143:0x0304, B:147:0x031d, B:149:0x0324, B:151:0x0335, B:166:0x038a, B:168:0x0392, B:171:0x03a1, B:173:0x03a8, B:175:0x03b9, B:190:0x0411, B:192:0x0419, B:213:0x045f, B:215:0x0467, B:242:0x04b0, B:177:0x03c7, B:178:0x03d2, B:181:0x03da, B:184:0x03e6, B:186:0x03ed, B:188:0x03fc, B:243:0x04bc, B:244:0x04c7, B:245:0x04d2, B:153:0x0341, B:154:0x034b, B:157:0x0355, B:160:0x0360, B:162:0x0367, B:164:0x0376, B:246:0x04d9, B:247:0x04e4, B:248:0x04ef, B:256:0x0519, B:259:0x0536, B:312:0x05d6, B:293:0x0592, B:296:0x059b, B:358:0x0657, B:299:0x05a3, B:302:0x05ad, B:309:0x05c2, B:310:0x05c7, B:311:0x05cf, B:319:0x05eb, B:323:0x05f5, B:327:0x05fe, B:337:0x0612, B:345:0x0627, B:347:0x0635, B:349:0x063a, B:339:0x0619, B:64:0x0188, B:66:0x0194, B:69:0x019f, B:71:0x01a6, B:73:0x01b5, B:75:0x01c2, B:39:0x010d, B:41:0x0119, B:44:0x0124, B:46:0x012b, B:48:0x013a, B:54:0x0153, B:56:0x015a, B:60:0x0174, B:364:0x0677, B:367:0x0689, B:369:0x0693, B:371:0x069e, B:373:0x06ab, B:377:0x06bf, B:381:0x06c7, B:387:0x06e5), top: B:427:0x0006 }] */
    /* JADX WARN: Code duplicated, block: B:137:0x02ef A[Catch: IOException -> 0x06ea, XmlPullParserException -> 0x06f4, TryCatch #17 {IOException -> 0x06ea, XmlPullParserException -> 0x06f4, blocks: (B:3:0x0006, B:6:0x0060, B:8:0x006b, B:11:0x0075, B:14:0x007f, B:16:0x0087, B:18:0x008e, B:21:0x0098, B:25:0x00aa, B:27:0x00c9, B:29:0x00d7, B:31:0x00de, B:33:0x00ea, B:35:0x00f5, B:61:0x017e, B:78:0x01db, B:81:0x01e9, B:83:0x01ef, B:85:0x01f7, B:87:0x01ff, B:89:0x0207, B:91:0x020f, B:93:0x0217, B:95:0x021d, B:97:0x0225, B:99:0x022d, B:101:0x0233, B:103:0x0239, B:105:0x0241, B:107:0x0249, B:110:0x0252, B:384:0x06ce, B:111:0x0275, B:113:0x027b, B:115:0x0284, B:117:0x0293, B:119:0x029d, B:121:0x02b1, B:123:0x02b7, B:251:0x0501, B:124:0x02bb, B:127:0x02c5, B:129:0x02cb, B:131:0x02d6, B:133:0x02dc, B:134:0x02e3, B:137:0x02ef, B:250:0x04fc, B:141:0x02fc, B:143:0x0304, B:147:0x031d, B:149:0x0324, B:151:0x0335, B:166:0x038a, B:168:0x0392, B:171:0x03a1, B:173:0x03a8, B:175:0x03b9, B:190:0x0411, B:192:0x0419, B:213:0x045f, B:215:0x0467, B:242:0x04b0, B:177:0x03c7, B:178:0x03d2, B:181:0x03da, B:184:0x03e6, B:186:0x03ed, B:188:0x03fc, B:243:0x04bc, B:244:0x04c7, B:245:0x04d2, B:153:0x0341, B:154:0x034b, B:157:0x0355, B:160:0x0360, B:162:0x0367, B:164:0x0376, B:246:0x04d9, B:247:0x04e4, B:248:0x04ef, B:256:0x0519, B:259:0x0536, B:312:0x05d6, B:293:0x0592, B:296:0x059b, B:358:0x0657, B:299:0x05a3, B:302:0x05ad, B:309:0x05c2, B:310:0x05c7, B:311:0x05cf, B:319:0x05eb, B:323:0x05f5, B:327:0x05fe, B:337:0x0612, B:345:0x0627, B:347:0x0635, B:349:0x063a, B:339:0x0619, B:64:0x0188, B:66:0x0194, B:69:0x019f, B:71:0x01a6, B:73:0x01b5, B:75:0x01c2, B:39:0x010d, B:41:0x0119, B:44:0x0124, B:46:0x012b, B:48:0x013a, B:54:0x0153, B:56:0x015a, B:60:0x0174, B:364:0x0677, B:367:0x0689, B:369:0x0693, B:371:0x069e, B:373:0x06ab, B:377:0x06bf, B:381:0x06c7, B:387:0x06e5), top: B:427:0x0006 }] */
    /* JADX WARN: Code duplicated, block: B:139:0x02f5  */
    /* JADX WARN: Code duplicated, block: B:141:0x02fc A[Catch: IOException -> 0x06ea, XmlPullParserException -> 0x06f4, TryCatch #17 {IOException -> 0x06ea, XmlPullParserException -> 0x06f4, blocks: (B:3:0x0006, B:6:0x0060, B:8:0x006b, B:11:0x0075, B:14:0x007f, B:16:0x0087, B:18:0x008e, B:21:0x0098, B:25:0x00aa, B:27:0x00c9, B:29:0x00d7, B:31:0x00de, B:33:0x00ea, B:35:0x00f5, B:61:0x017e, B:78:0x01db, B:81:0x01e9, B:83:0x01ef, B:85:0x01f7, B:87:0x01ff, B:89:0x0207, B:91:0x020f, B:93:0x0217, B:95:0x021d, B:97:0x0225, B:99:0x022d, B:101:0x0233, B:103:0x0239, B:105:0x0241, B:107:0x0249, B:110:0x0252, B:384:0x06ce, B:111:0x0275, B:113:0x027b, B:115:0x0284, B:117:0x0293, B:119:0x029d, B:121:0x02b1, B:123:0x02b7, B:251:0x0501, B:124:0x02bb, B:127:0x02c5, B:129:0x02cb, B:131:0x02d6, B:133:0x02dc, B:134:0x02e3, B:137:0x02ef, B:250:0x04fc, B:141:0x02fc, B:143:0x0304, B:147:0x031d, B:149:0x0324, B:151:0x0335, B:166:0x038a, B:168:0x0392, B:171:0x03a1, B:173:0x03a8, B:175:0x03b9, B:190:0x0411, B:192:0x0419, B:213:0x045f, B:215:0x0467, B:242:0x04b0, B:177:0x03c7, B:178:0x03d2, B:181:0x03da, B:184:0x03e6, B:186:0x03ed, B:188:0x03fc, B:243:0x04bc, B:244:0x04c7, B:245:0x04d2, B:153:0x0341, B:154:0x034b, B:157:0x0355, B:160:0x0360, B:162:0x0367, B:164:0x0376, B:246:0x04d9, B:247:0x04e4, B:248:0x04ef, B:256:0x0519, B:259:0x0536, B:312:0x05d6, B:293:0x0592, B:296:0x059b, B:358:0x0657, B:299:0x05a3, B:302:0x05ad, B:309:0x05c2, B:310:0x05c7, B:311:0x05cf, B:319:0x05eb, B:323:0x05f5, B:327:0x05fe, B:337:0x0612, B:345:0x0627, B:347:0x0635, B:349:0x063a, B:339:0x0619, B:64:0x0188, B:66:0x0194, B:69:0x019f, B:71:0x01a6, B:73:0x01b5, B:75:0x01c2, B:39:0x010d, B:41:0x0119, B:44:0x0124, B:46:0x012b, B:48:0x013a, B:54:0x0153, B:56:0x015a, B:60:0x0174, B:364:0x0677, B:367:0x0689, B:369:0x0693, B:371:0x069e, B:373:0x06ab, B:377:0x06bf, B:381:0x06c7, B:387:0x06e5), top: B:427:0x0006 }] */
    /* JADX WARN: Code duplicated, block: B:143:0x0304 A[Catch: IOException -> 0x06ea, XmlPullParserException -> 0x06f4, TRY_LEAVE, TryCatch #17 {IOException -> 0x06ea, XmlPullParserException -> 0x06f4, blocks: (B:3:0x0006, B:6:0x0060, B:8:0x006b, B:11:0x0075, B:14:0x007f, B:16:0x0087, B:18:0x008e, B:21:0x0098, B:25:0x00aa, B:27:0x00c9, B:29:0x00d7, B:31:0x00de, B:33:0x00ea, B:35:0x00f5, B:61:0x017e, B:78:0x01db, B:81:0x01e9, B:83:0x01ef, B:85:0x01f7, B:87:0x01ff, B:89:0x0207, B:91:0x020f, B:93:0x0217, B:95:0x021d, B:97:0x0225, B:99:0x022d, B:101:0x0233, B:103:0x0239, B:105:0x0241, B:107:0x0249, B:110:0x0252, B:384:0x06ce, B:111:0x0275, B:113:0x027b, B:115:0x0284, B:117:0x0293, B:119:0x029d, B:121:0x02b1, B:123:0x02b7, B:251:0x0501, B:124:0x02bb, B:127:0x02c5, B:129:0x02cb, B:131:0x02d6, B:133:0x02dc, B:134:0x02e3, B:137:0x02ef, B:250:0x04fc, B:141:0x02fc, B:143:0x0304, B:147:0x031d, B:149:0x0324, B:151:0x0335, B:166:0x038a, B:168:0x0392, B:171:0x03a1, B:173:0x03a8, B:175:0x03b9, B:190:0x0411, B:192:0x0419, B:213:0x045f, B:215:0x0467, B:242:0x04b0, B:177:0x03c7, B:178:0x03d2, B:181:0x03da, B:184:0x03e6, B:186:0x03ed, B:188:0x03fc, B:243:0x04bc, B:244:0x04c7, B:245:0x04d2, B:153:0x0341, B:154:0x034b, B:157:0x0355, B:160:0x0360, B:162:0x0367, B:164:0x0376, B:246:0x04d9, B:247:0x04e4, B:248:0x04ef, B:256:0x0519, B:259:0x0536, B:312:0x05d6, B:293:0x0592, B:296:0x059b, B:358:0x0657, B:299:0x05a3, B:302:0x05ad, B:309:0x05c2, B:310:0x05c7, B:311:0x05cf, B:319:0x05eb, B:323:0x05f5, B:327:0x05fe, B:337:0x0612, B:345:0x0627, B:347:0x0635, B:349:0x063a, B:339:0x0619, B:64:0x0188, B:66:0x0194, B:69:0x019f, B:71:0x01a6, B:73:0x01b5, B:75:0x01c2, B:39:0x010d, B:41:0x0119, B:44:0x0124, B:46:0x012b, B:48:0x013a, B:54:0x0153, B:56:0x015a, B:60:0x0174, B:364:0x0677, B:367:0x0689, B:369:0x0693, B:371:0x069e, B:373:0x06ab, B:377:0x06bf, B:381:0x06c7, B:387:0x06e5), top: B:427:0x0006 }] */
    /* JADX WARN: Code duplicated, block: B:146:0x031a  */
    /* JADX WARN: Code duplicated, block: B:154:0x034b A[Catch: IOException -> 0x06ea, XmlPullParserException -> 0x06f4, TryCatch #17 {IOException -> 0x06ea, XmlPullParserException -> 0x06f4, blocks: (B:3:0x0006, B:6:0x0060, B:8:0x006b, B:11:0x0075, B:14:0x007f, B:16:0x0087, B:18:0x008e, B:21:0x0098, B:25:0x00aa, B:27:0x00c9, B:29:0x00d7, B:31:0x00de, B:33:0x00ea, B:35:0x00f5, B:61:0x017e, B:78:0x01db, B:81:0x01e9, B:83:0x01ef, B:85:0x01f7, B:87:0x01ff, B:89:0x0207, B:91:0x020f, B:93:0x0217, B:95:0x021d, B:97:0x0225, B:99:0x022d, B:101:0x0233, B:103:0x0239, B:105:0x0241, B:107:0x0249, B:110:0x0252, B:384:0x06ce, B:111:0x0275, B:113:0x027b, B:115:0x0284, B:117:0x0293, B:119:0x029d, B:121:0x02b1, B:123:0x02b7, B:251:0x0501, B:124:0x02bb, B:127:0x02c5, B:129:0x02cb, B:131:0x02d6, B:133:0x02dc, B:134:0x02e3, B:137:0x02ef, B:250:0x04fc, B:141:0x02fc, B:143:0x0304, B:147:0x031d, B:149:0x0324, B:151:0x0335, B:166:0x038a, B:168:0x0392, B:171:0x03a1, B:173:0x03a8, B:175:0x03b9, B:190:0x0411, B:192:0x0419, B:213:0x045f, B:215:0x0467, B:242:0x04b0, B:177:0x03c7, B:178:0x03d2, B:181:0x03da, B:184:0x03e6, B:186:0x03ed, B:188:0x03fc, B:243:0x04bc, B:244:0x04c7, B:245:0x04d2, B:153:0x0341, B:154:0x034b, B:157:0x0355, B:160:0x0360, B:162:0x0367, B:164:0x0376, B:246:0x04d9, B:247:0x04e4, B:248:0x04ef, B:256:0x0519, B:259:0x0536, B:312:0x05d6, B:293:0x0592, B:296:0x059b, B:358:0x0657, B:299:0x05a3, B:302:0x05ad, B:309:0x05c2, B:310:0x05c7, B:311:0x05cf, B:319:0x05eb, B:323:0x05f5, B:327:0x05fe, B:337:0x0612, B:345:0x0627, B:347:0x0635, B:349:0x063a, B:339:0x0619, B:64:0x0188, B:66:0x0194, B:69:0x019f, B:71:0x01a6, B:73:0x01b5, B:75:0x01c2, B:39:0x010d, B:41:0x0119, B:44:0x0124, B:46:0x012b, B:48:0x013a, B:54:0x0153, B:56:0x015a, B:60:0x0174, B:364:0x0677, B:367:0x0689, B:369:0x0693, B:371:0x069e, B:373:0x06ab, B:377:0x06bf, B:381:0x06c7, B:387:0x06e5), top: B:427:0x0006 }] */
    /* JADX WARN: Code duplicated, block: B:156:0x0353 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:157:0x0355 A[Catch: IOException -> 0x06ea, XmlPullParserException -> 0x06f4, TRY_LEAVE, TryCatch #17 {IOException -> 0x06ea, XmlPullParserException -> 0x06f4, blocks: (B:3:0x0006, B:6:0x0060, B:8:0x006b, B:11:0x0075, B:14:0x007f, B:16:0x0087, B:18:0x008e, B:21:0x0098, B:25:0x00aa, B:27:0x00c9, B:29:0x00d7, B:31:0x00de, B:33:0x00ea, B:35:0x00f5, B:61:0x017e, B:78:0x01db, B:81:0x01e9, B:83:0x01ef, B:85:0x01f7, B:87:0x01ff, B:89:0x0207, B:91:0x020f, B:93:0x0217, B:95:0x021d, B:97:0x0225, B:99:0x022d, B:101:0x0233, B:103:0x0239, B:105:0x0241, B:107:0x0249, B:110:0x0252, B:384:0x06ce, B:111:0x0275, B:113:0x027b, B:115:0x0284, B:117:0x0293, B:119:0x029d, B:121:0x02b1, B:123:0x02b7, B:251:0x0501, B:124:0x02bb, B:127:0x02c5, B:129:0x02cb, B:131:0x02d6, B:133:0x02dc, B:134:0x02e3, B:137:0x02ef, B:250:0x04fc, B:141:0x02fc, B:143:0x0304, B:147:0x031d, B:149:0x0324, B:151:0x0335, B:166:0x038a, B:168:0x0392, B:171:0x03a1, B:173:0x03a8, B:175:0x03b9, B:190:0x0411, B:192:0x0419, B:213:0x045f, B:215:0x0467, B:242:0x04b0, B:177:0x03c7, B:178:0x03d2, B:181:0x03da, B:184:0x03e6, B:186:0x03ed, B:188:0x03fc, B:243:0x04bc, B:244:0x04c7, B:245:0x04d2, B:153:0x0341, B:154:0x034b, B:157:0x0355, B:160:0x0360, B:162:0x0367, B:164:0x0376, B:246:0x04d9, B:247:0x04e4, B:248:0x04ef, B:256:0x0519, B:259:0x0536, B:312:0x05d6, B:293:0x0592, B:296:0x059b, B:358:0x0657, B:299:0x05a3, B:302:0x05ad, B:309:0x05c2, B:310:0x05c7, B:311:0x05cf, B:319:0x05eb, B:323:0x05f5, B:327:0x05fe, B:337:0x0612, B:345:0x0627, B:347:0x0635, B:349:0x063a, B:339:0x0619, B:64:0x0188, B:66:0x0194, B:69:0x019f, B:71:0x01a6, B:73:0x01b5, B:75:0x01c2, B:39:0x010d, B:41:0x0119, B:44:0x0124, B:46:0x012b, B:48:0x013a, B:54:0x0153, B:56:0x015a, B:60:0x0174, B:364:0x0677, B:367:0x0689, B:369:0x0693, B:371:0x069e, B:373:0x06ab, B:377:0x06bf, B:381:0x06c7, B:387:0x06e5), top: B:427:0x0006 }] */
    /* JADX WARN: Code duplicated, block: B:159:0x035f  */
    /* JADX WARN: Code duplicated, block: B:168:0x0392 A[Catch: IOException -> 0x06ea, XmlPullParserException -> 0x06f4, TRY_LEAVE, TryCatch #17 {IOException -> 0x06ea, XmlPullParserException -> 0x06f4, blocks: (B:3:0x0006, B:6:0x0060, B:8:0x006b, B:11:0x0075, B:14:0x007f, B:16:0x0087, B:18:0x008e, B:21:0x0098, B:25:0x00aa, B:27:0x00c9, B:29:0x00d7, B:31:0x00de, B:33:0x00ea, B:35:0x00f5, B:61:0x017e, B:78:0x01db, B:81:0x01e9, B:83:0x01ef, B:85:0x01f7, B:87:0x01ff, B:89:0x0207, B:91:0x020f, B:93:0x0217, B:95:0x021d, B:97:0x0225, B:99:0x022d, B:101:0x0233, B:103:0x0239, B:105:0x0241, B:107:0x0249, B:110:0x0252, B:384:0x06ce, B:111:0x0275, B:113:0x027b, B:115:0x0284, B:117:0x0293, B:119:0x029d, B:121:0x02b1, B:123:0x02b7, B:251:0x0501, B:124:0x02bb, B:127:0x02c5, B:129:0x02cb, B:131:0x02d6, B:133:0x02dc, B:134:0x02e3, B:137:0x02ef, B:250:0x04fc, B:141:0x02fc, B:143:0x0304, B:147:0x031d, B:149:0x0324, B:151:0x0335, B:166:0x038a, B:168:0x0392, B:171:0x03a1, B:173:0x03a8, B:175:0x03b9, B:190:0x0411, B:192:0x0419, B:213:0x045f, B:215:0x0467, B:242:0x04b0, B:177:0x03c7, B:178:0x03d2, B:181:0x03da, B:184:0x03e6, B:186:0x03ed, B:188:0x03fc, B:243:0x04bc, B:244:0x04c7, B:245:0x04d2, B:153:0x0341, B:154:0x034b, B:157:0x0355, B:160:0x0360, B:162:0x0367, B:164:0x0376, B:246:0x04d9, B:247:0x04e4, B:248:0x04ef, B:256:0x0519, B:259:0x0536, B:312:0x05d6, B:293:0x0592, B:296:0x059b, B:358:0x0657, B:299:0x05a3, B:302:0x05ad, B:309:0x05c2, B:310:0x05c7, B:311:0x05cf, B:319:0x05eb, B:323:0x05f5, B:327:0x05fe, B:337:0x0612, B:345:0x0627, B:347:0x0635, B:349:0x063a, B:339:0x0619, B:64:0x0188, B:66:0x0194, B:69:0x019f, B:71:0x01a6, B:73:0x01b5, B:75:0x01c2, B:39:0x010d, B:41:0x0119, B:44:0x0124, B:46:0x012b, B:48:0x013a, B:54:0x0153, B:56:0x015a, B:60:0x0174, B:364:0x0677, B:367:0x0689, B:369:0x0693, B:371:0x069e, B:373:0x06ab, B:377:0x06bf, B:381:0x06c7, B:387:0x06e5), top: B:427:0x0006 }] */
    /* JADX WARN: Code duplicated, block: B:170:0x03a0  */
    /* JADX WARN: Code duplicated, block: B:178:0x03d2 A[Catch: IOException -> 0x06ea, XmlPullParserException -> 0x06f4, TryCatch #17 {IOException -> 0x06ea, XmlPullParserException -> 0x06f4, blocks: (B:3:0x0006, B:6:0x0060, B:8:0x006b, B:11:0x0075, B:14:0x007f, B:16:0x0087, B:18:0x008e, B:21:0x0098, B:25:0x00aa, B:27:0x00c9, B:29:0x00d7, B:31:0x00de, B:33:0x00ea, B:35:0x00f5, B:61:0x017e, B:78:0x01db, B:81:0x01e9, B:83:0x01ef, B:85:0x01f7, B:87:0x01ff, B:89:0x0207, B:91:0x020f, B:93:0x0217, B:95:0x021d, B:97:0x0225, B:99:0x022d, B:101:0x0233, B:103:0x0239, B:105:0x0241, B:107:0x0249, B:110:0x0252, B:384:0x06ce, B:111:0x0275, B:113:0x027b, B:115:0x0284, B:117:0x0293, B:119:0x029d, B:121:0x02b1, B:123:0x02b7, B:251:0x0501, B:124:0x02bb, B:127:0x02c5, B:129:0x02cb, B:131:0x02d6, B:133:0x02dc, B:134:0x02e3, B:137:0x02ef, B:250:0x04fc, B:141:0x02fc, B:143:0x0304, B:147:0x031d, B:149:0x0324, B:151:0x0335, B:166:0x038a, B:168:0x0392, B:171:0x03a1, B:173:0x03a8, B:175:0x03b9, B:190:0x0411, B:192:0x0419, B:213:0x045f, B:215:0x0467, B:242:0x04b0, B:177:0x03c7, B:178:0x03d2, B:181:0x03da, B:184:0x03e6, B:186:0x03ed, B:188:0x03fc, B:243:0x04bc, B:244:0x04c7, B:245:0x04d2, B:153:0x0341, B:154:0x034b, B:157:0x0355, B:160:0x0360, B:162:0x0367, B:164:0x0376, B:246:0x04d9, B:247:0x04e4, B:248:0x04ef, B:256:0x0519, B:259:0x0536, B:312:0x05d6, B:293:0x0592, B:296:0x059b, B:358:0x0657, B:299:0x05a3, B:302:0x05ad, B:309:0x05c2, B:310:0x05c7, B:311:0x05cf, B:319:0x05eb, B:323:0x05f5, B:327:0x05fe, B:337:0x0612, B:345:0x0627, B:347:0x0635, B:349:0x063a, B:339:0x0619, B:64:0x0188, B:66:0x0194, B:69:0x019f, B:71:0x01a6, B:73:0x01b5, B:75:0x01c2, B:39:0x010d, B:41:0x0119, B:44:0x0124, B:46:0x012b, B:48:0x013a, B:54:0x0153, B:56:0x015a, B:60:0x0174, B:364:0x0677, B:367:0x0689, B:369:0x0693, B:371:0x069e, B:373:0x06ab, B:377:0x06bf, B:381:0x06c7, B:387:0x06e5), top: B:427:0x0006 }] */
    /* JADX WARN: Code duplicated, block: B:180:0x03d8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:181:0x03da A[Catch: IOException -> 0x06ea, XmlPullParserException -> 0x06f4, TRY_LEAVE, TryCatch #17 {IOException -> 0x06ea, XmlPullParserException -> 0x06f4, blocks: (B:3:0x0006, B:6:0x0060, B:8:0x006b, B:11:0x0075, B:14:0x007f, B:16:0x0087, B:18:0x008e, B:21:0x0098, B:25:0x00aa, B:27:0x00c9, B:29:0x00d7, B:31:0x00de, B:33:0x00ea, B:35:0x00f5, B:61:0x017e, B:78:0x01db, B:81:0x01e9, B:83:0x01ef, B:85:0x01f7, B:87:0x01ff, B:89:0x0207, B:91:0x020f, B:93:0x0217, B:95:0x021d, B:97:0x0225, B:99:0x022d, B:101:0x0233, B:103:0x0239, B:105:0x0241, B:107:0x0249, B:110:0x0252, B:384:0x06ce, B:111:0x0275, B:113:0x027b, B:115:0x0284, B:117:0x0293, B:119:0x029d, B:121:0x02b1, B:123:0x02b7, B:251:0x0501, B:124:0x02bb, B:127:0x02c5, B:129:0x02cb, B:131:0x02d6, B:133:0x02dc, B:134:0x02e3, B:137:0x02ef, B:250:0x04fc, B:141:0x02fc, B:143:0x0304, B:147:0x031d, B:149:0x0324, B:151:0x0335, B:166:0x038a, B:168:0x0392, B:171:0x03a1, B:173:0x03a8, B:175:0x03b9, B:190:0x0411, B:192:0x0419, B:213:0x045f, B:215:0x0467, B:242:0x04b0, B:177:0x03c7, B:178:0x03d2, B:181:0x03da, B:184:0x03e6, B:186:0x03ed, B:188:0x03fc, B:243:0x04bc, B:244:0x04c7, B:245:0x04d2, B:153:0x0341, B:154:0x034b, B:157:0x0355, B:160:0x0360, B:162:0x0367, B:164:0x0376, B:246:0x04d9, B:247:0x04e4, B:248:0x04ef, B:256:0x0519, B:259:0x0536, B:312:0x05d6, B:293:0x0592, B:296:0x059b, B:358:0x0657, B:299:0x05a3, B:302:0x05ad, B:309:0x05c2, B:310:0x05c7, B:311:0x05cf, B:319:0x05eb, B:323:0x05f5, B:327:0x05fe, B:337:0x0612, B:345:0x0627, B:347:0x0635, B:349:0x063a, B:339:0x0619, B:64:0x0188, B:66:0x0194, B:69:0x019f, B:71:0x01a6, B:73:0x01b5, B:75:0x01c2, B:39:0x010d, B:41:0x0119, B:44:0x0124, B:46:0x012b, B:48:0x013a, B:54:0x0153, B:56:0x015a, B:60:0x0174, B:364:0x0677, B:367:0x0689, B:369:0x0693, B:371:0x069e, B:373:0x06ab, B:377:0x06bf, B:381:0x06c7, B:387:0x06e5), top: B:427:0x0006 }] */
    /* JADX WARN: Code duplicated, block: B:183:0x03e5  */
    /* JADX WARN: Code duplicated, block: B:192:0x0419 A[Catch: IOException -> 0x06ea, XmlPullParserException -> 0x06f4, TRY_LEAVE, TryCatch #17 {IOException -> 0x06ea, XmlPullParserException -> 0x06f4, blocks: (B:3:0x0006, B:6:0x0060, B:8:0x006b, B:11:0x0075, B:14:0x007f, B:16:0x0087, B:18:0x008e, B:21:0x0098, B:25:0x00aa, B:27:0x00c9, B:29:0x00d7, B:31:0x00de, B:33:0x00ea, B:35:0x00f5, B:61:0x017e, B:78:0x01db, B:81:0x01e9, B:83:0x01ef, B:85:0x01f7, B:87:0x01ff, B:89:0x0207, B:91:0x020f, B:93:0x0217, B:95:0x021d, B:97:0x0225, B:99:0x022d, B:101:0x0233, B:103:0x0239, B:105:0x0241, B:107:0x0249, B:110:0x0252, B:384:0x06ce, B:111:0x0275, B:113:0x027b, B:115:0x0284, B:117:0x0293, B:119:0x029d, B:121:0x02b1, B:123:0x02b7, B:251:0x0501, B:124:0x02bb, B:127:0x02c5, B:129:0x02cb, B:131:0x02d6, B:133:0x02dc, B:134:0x02e3, B:137:0x02ef, B:250:0x04fc, B:141:0x02fc, B:143:0x0304, B:147:0x031d, B:149:0x0324, B:151:0x0335, B:166:0x038a, B:168:0x0392, B:171:0x03a1, B:173:0x03a8, B:175:0x03b9, B:190:0x0411, B:192:0x0419, B:213:0x045f, B:215:0x0467, B:242:0x04b0, B:177:0x03c7, B:178:0x03d2, B:181:0x03da, B:184:0x03e6, B:186:0x03ed, B:188:0x03fc, B:243:0x04bc, B:244:0x04c7, B:245:0x04d2, B:153:0x0341, B:154:0x034b, B:157:0x0355, B:160:0x0360, B:162:0x0367, B:164:0x0376, B:246:0x04d9, B:247:0x04e4, B:248:0x04ef, B:256:0x0519, B:259:0x0536, B:312:0x05d6, B:293:0x0592, B:296:0x059b, B:358:0x0657, B:299:0x05a3, B:302:0x05ad, B:309:0x05c2, B:310:0x05c7, B:311:0x05cf, B:319:0x05eb, B:323:0x05f5, B:327:0x05fe, B:337:0x0612, B:345:0x0627, B:347:0x0635, B:349:0x063a, B:339:0x0619, B:64:0x0188, B:66:0x0194, B:69:0x019f, B:71:0x01a6, B:73:0x01b5, B:75:0x01c2, B:39:0x010d, B:41:0x0119, B:44:0x0124, B:46:0x012b, B:48:0x013a, B:54:0x0153, B:56:0x015a, B:60:0x0174, B:364:0x0677, B:367:0x0689, B:369:0x0693, B:371:0x069e, B:373:0x06ab, B:377:0x06bf, B:381:0x06c7, B:387:0x06e5), top: B:427:0x0006 }] */
    /* JADX WARN: Code duplicated, block: B:195:0x0426  */
    /* JADX WARN: Code duplicated, block: B:198:0x042c  */
    /* JADX WARN: Code duplicated, block: B:201:0x0436  */
    /* JADX WARN: Code duplicated, block: B:203:0x043e  */
    /* JADX WARN: Code duplicated, block: B:204:0x0440  */
    /* JADX WARN: Code duplicated, block: B:206:0x0443  */
    /* JADX WARN: Code duplicated, block: B:209:0x0447  */
    /* JADX WARN: Code duplicated, block: B:210:0x044e  */
    /* JADX WARN: Code duplicated, block: B:211:0x0458  */
    /* JADX WARN: Code duplicated, block: B:215:0x0467 A[Catch: IOException -> 0x06ea, XmlPullParserException -> 0x06f4, TRY_LEAVE, TryCatch #17 {IOException -> 0x06ea, XmlPullParserException -> 0x06f4, blocks: (B:3:0x0006, B:6:0x0060, B:8:0x006b, B:11:0x0075, B:14:0x007f, B:16:0x0087, B:18:0x008e, B:21:0x0098, B:25:0x00aa, B:27:0x00c9, B:29:0x00d7, B:31:0x00de, B:33:0x00ea, B:35:0x00f5, B:61:0x017e, B:78:0x01db, B:81:0x01e9, B:83:0x01ef, B:85:0x01f7, B:87:0x01ff, B:89:0x0207, B:91:0x020f, B:93:0x0217, B:95:0x021d, B:97:0x0225, B:99:0x022d, B:101:0x0233, B:103:0x0239, B:105:0x0241, B:107:0x0249, B:110:0x0252, B:384:0x06ce, B:111:0x0275, B:113:0x027b, B:115:0x0284, B:117:0x0293, B:119:0x029d, B:121:0x02b1, B:123:0x02b7, B:251:0x0501, B:124:0x02bb, B:127:0x02c5, B:129:0x02cb, B:131:0x02d6, B:133:0x02dc, B:134:0x02e3, B:137:0x02ef, B:250:0x04fc, B:141:0x02fc, B:143:0x0304, B:147:0x031d, B:149:0x0324, B:151:0x0335, B:166:0x038a, B:168:0x0392, B:171:0x03a1, B:173:0x03a8, B:175:0x03b9, B:190:0x0411, B:192:0x0419, B:213:0x045f, B:215:0x0467, B:242:0x04b0, B:177:0x03c7, B:178:0x03d2, B:181:0x03da, B:184:0x03e6, B:186:0x03ed, B:188:0x03fc, B:243:0x04bc, B:244:0x04c7, B:245:0x04d2, B:153:0x0341, B:154:0x034b, B:157:0x0355, B:160:0x0360, B:162:0x0367, B:164:0x0376, B:246:0x04d9, B:247:0x04e4, B:248:0x04ef, B:256:0x0519, B:259:0x0536, B:312:0x05d6, B:293:0x0592, B:296:0x059b, B:358:0x0657, B:299:0x05a3, B:302:0x05ad, B:309:0x05c2, B:310:0x05c7, B:311:0x05cf, B:319:0x05eb, B:323:0x05f5, B:327:0x05fe, B:337:0x0612, B:345:0x0627, B:347:0x0635, B:349:0x063a, B:339:0x0619, B:64:0x0188, B:66:0x0194, B:69:0x019f, B:71:0x01a6, B:73:0x01b5, B:75:0x01c2, B:39:0x010d, B:41:0x0119, B:44:0x0124, B:46:0x012b, B:48:0x013a, B:54:0x0153, B:56:0x015a, B:60:0x0174, B:364:0x0677, B:367:0x0689, B:369:0x0693, B:371:0x069e, B:373:0x06ab, B:377:0x06bf, B:381:0x06c7, B:387:0x06e5), top: B:427:0x0006 }] */
    /* JADX WARN: Code duplicated, block: B:218:0x0473  */
    /* JADX WARN: Code duplicated, block: B:220:0x0478  */
    /* JADX WARN: Code duplicated, block: B:223:0x047e  */
    /* JADX WARN: Code duplicated, block: B:226:0x0488  */
    /* JADX WARN: Code duplicated, block: B:228:0x0490  */
    /* JADX WARN: Code duplicated, block: B:229:0x0492  */
    /* JADX WARN: Code duplicated, block: B:231:0x049a  */
    /* JADX WARN: Code duplicated, block: B:232:0x049c  */
    /* JADX WARN: Code duplicated, block: B:234:0x049f  */
    /* JADX WARN: Code duplicated, block: B:240:0x04a9  */
    /* JADX WARN: Code duplicated, block: B:241:0x04ac  */
    /* JADX WARN: Code duplicated, block: B:244:0x04c7 A[Catch: IOException -> 0x06ea, XmlPullParserException -> 0x06f4, TryCatch #17 {IOException -> 0x06ea, XmlPullParserException -> 0x06f4, blocks: (B:3:0x0006, B:6:0x0060, B:8:0x006b, B:11:0x0075, B:14:0x007f, B:16:0x0087, B:18:0x008e, B:21:0x0098, B:25:0x00aa, B:27:0x00c9, B:29:0x00d7, B:31:0x00de, B:33:0x00ea, B:35:0x00f5, B:61:0x017e, B:78:0x01db, B:81:0x01e9, B:83:0x01ef, B:85:0x01f7, B:87:0x01ff, B:89:0x0207, B:91:0x020f, B:93:0x0217, B:95:0x021d, B:97:0x0225, B:99:0x022d, B:101:0x0233, B:103:0x0239, B:105:0x0241, B:107:0x0249, B:110:0x0252, B:384:0x06ce, B:111:0x0275, B:113:0x027b, B:115:0x0284, B:117:0x0293, B:119:0x029d, B:121:0x02b1, B:123:0x02b7, B:251:0x0501, B:124:0x02bb, B:127:0x02c5, B:129:0x02cb, B:131:0x02d6, B:133:0x02dc, B:134:0x02e3, B:137:0x02ef, B:250:0x04fc, B:141:0x02fc, B:143:0x0304, B:147:0x031d, B:149:0x0324, B:151:0x0335, B:166:0x038a, B:168:0x0392, B:171:0x03a1, B:173:0x03a8, B:175:0x03b9, B:190:0x0411, B:192:0x0419, B:213:0x045f, B:215:0x0467, B:242:0x04b0, B:177:0x03c7, B:178:0x03d2, B:181:0x03da, B:184:0x03e6, B:186:0x03ed, B:188:0x03fc, B:243:0x04bc, B:244:0x04c7, B:245:0x04d2, B:153:0x0341, B:154:0x034b, B:157:0x0355, B:160:0x0360, B:162:0x0367, B:164:0x0376, B:246:0x04d9, B:247:0x04e4, B:248:0x04ef, B:256:0x0519, B:259:0x0536, B:312:0x05d6, B:293:0x0592, B:296:0x059b, B:358:0x0657, B:299:0x05a3, B:302:0x05ad, B:309:0x05c2, B:310:0x05c7, B:311:0x05cf, B:319:0x05eb, B:323:0x05f5, B:327:0x05fe, B:337:0x0612, B:345:0x0627, B:347:0x0635, B:349:0x063a, B:339:0x0619, B:64:0x0188, B:66:0x0194, B:69:0x019f, B:71:0x01a6, B:73:0x01b5, B:75:0x01c2, B:39:0x010d, B:41:0x0119, B:44:0x0124, B:46:0x012b, B:48:0x013a, B:54:0x0153, B:56:0x015a, B:60:0x0174, B:364:0x0677, B:367:0x0689, B:369:0x0693, B:371:0x069e, B:373:0x06ab, B:377:0x06bf, B:381:0x06c7, B:387:0x06e5), top: B:427:0x0006 }] */
    /* JADX WARN: Code duplicated, block: B:245:0x04d2 A[Catch: IOException -> 0x06ea, XmlPullParserException -> 0x06f4, TryCatch #17 {IOException -> 0x06ea, XmlPullParserException -> 0x06f4, blocks: (B:3:0x0006, B:6:0x0060, B:8:0x006b, B:11:0x0075, B:14:0x007f, B:16:0x0087, B:18:0x008e, B:21:0x0098, B:25:0x00aa, B:27:0x00c9, B:29:0x00d7, B:31:0x00de, B:33:0x00ea, B:35:0x00f5, B:61:0x017e, B:78:0x01db, B:81:0x01e9, B:83:0x01ef, B:85:0x01f7, B:87:0x01ff, B:89:0x0207, B:91:0x020f, B:93:0x0217, B:95:0x021d, B:97:0x0225, B:99:0x022d, B:101:0x0233, B:103:0x0239, B:105:0x0241, B:107:0x0249, B:110:0x0252, B:384:0x06ce, B:111:0x0275, B:113:0x027b, B:115:0x0284, B:117:0x0293, B:119:0x029d, B:121:0x02b1, B:123:0x02b7, B:251:0x0501, B:124:0x02bb, B:127:0x02c5, B:129:0x02cb, B:131:0x02d6, B:133:0x02dc, B:134:0x02e3, B:137:0x02ef, B:250:0x04fc, B:141:0x02fc, B:143:0x0304, B:147:0x031d, B:149:0x0324, B:151:0x0335, B:166:0x038a, B:168:0x0392, B:171:0x03a1, B:173:0x03a8, B:175:0x03b9, B:190:0x0411, B:192:0x0419, B:213:0x045f, B:215:0x0467, B:242:0x04b0, B:177:0x03c7, B:178:0x03d2, B:181:0x03da, B:184:0x03e6, B:186:0x03ed, B:188:0x03fc, B:243:0x04bc, B:244:0x04c7, B:245:0x04d2, B:153:0x0341, B:154:0x034b, B:157:0x0355, B:160:0x0360, B:162:0x0367, B:164:0x0376, B:246:0x04d9, B:247:0x04e4, B:248:0x04ef, B:256:0x0519, B:259:0x0536, B:312:0x05d6, B:293:0x0592, B:296:0x059b, B:358:0x0657, B:299:0x05a3, B:302:0x05ad, B:309:0x05c2, B:310:0x05c7, B:311:0x05cf, B:319:0x05eb, B:323:0x05f5, B:327:0x05fe, B:337:0x0612, B:345:0x0627, B:347:0x0635, B:349:0x063a, B:339:0x0619, B:64:0x0188, B:66:0x0194, B:69:0x019f, B:71:0x01a6, B:73:0x01b5, B:75:0x01c2, B:39:0x010d, B:41:0x0119, B:44:0x0124, B:46:0x012b, B:48:0x013a, B:54:0x0153, B:56:0x015a, B:60:0x0174, B:364:0x0677, B:367:0x0689, B:369:0x0693, B:371:0x069e, B:373:0x06ab, B:377:0x06bf, B:381:0x06c7, B:387:0x06e5), top: B:427:0x0006 }] */
    /* JADX WARN: Code duplicated, block: B:247:0x04e4 A[Catch: IOException -> 0x06ea, XmlPullParserException -> 0x06f4, TryCatch #17 {IOException -> 0x06ea, XmlPullParserException -> 0x06f4, blocks: (B:3:0x0006, B:6:0x0060, B:8:0x006b, B:11:0x0075, B:14:0x007f, B:16:0x0087, B:18:0x008e, B:21:0x0098, B:25:0x00aa, B:27:0x00c9, B:29:0x00d7, B:31:0x00de, B:33:0x00ea, B:35:0x00f5, B:61:0x017e, B:78:0x01db, B:81:0x01e9, B:83:0x01ef, B:85:0x01f7, B:87:0x01ff, B:89:0x0207, B:91:0x020f, B:93:0x0217, B:95:0x021d, B:97:0x0225, B:99:0x022d, B:101:0x0233, B:103:0x0239, B:105:0x0241, B:107:0x0249, B:110:0x0252, B:384:0x06ce, B:111:0x0275, B:113:0x027b, B:115:0x0284, B:117:0x0293, B:119:0x029d, B:121:0x02b1, B:123:0x02b7, B:251:0x0501, B:124:0x02bb, B:127:0x02c5, B:129:0x02cb, B:131:0x02d6, B:133:0x02dc, B:134:0x02e3, B:137:0x02ef, B:250:0x04fc, B:141:0x02fc, B:143:0x0304, B:147:0x031d, B:149:0x0324, B:151:0x0335, B:166:0x038a, B:168:0x0392, B:171:0x03a1, B:173:0x03a8, B:175:0x03b9, B:190:0x0411, B:192:0x0419, B:213:0x045f, B:215:0x0467, B:242:0x04b0, B:177:0x03c7, B:178:0x03d2, B:181:0x03da, B:184:0x03e6, B:186:0x03ed, B:188:0x03fc, B:243:0x04bc, B:244:0x04c7, B:245:0x04d2, B:153:0x0341, B:154:0x034b, B:157:0x0355, B:160:0x0360, B:162:0x0367, B:164:0x0376, B:246:0x04d9, B:247:0x04e4, B:248:0x04ef, B:256:0x0519, B:259:0x0536, B:312:0x05d6, B:293:0x0592, B:296:0x059b, B:358:0x0657, B:299:0x05a3, B:302:0x05ad, B:309:0x05c2, B:310:0x05c7, B:311:0x05cf, B:319:0x05eb, B:323:0x05f5, B:327:0x05fe, B:337:0x0612, B:345:0x0627, B:347:0x0635, B:349:0x063a, B:339:0x0619, B:64:0x0188, B:66:0x0194, B:69:0x019f, B:71:0x01a6, B:73:0x01b5, B:75:0x01c2, B:39:0x010d, B:41:0x0119, B:44:0x0124, B:46:0x012b, B:48:0x013a, B:54:0x0153, B:56:0x015a, B:60:0x0174, B:364:0x0677, B:367:0x0689, B:369:0x0693, B:371:0x069e, B:373:0x06ab, B:377:0x06bf, B:381:0x06c7, B:387:0x06e5), top: B:427:0x0006 }] */
    /* JADX WARN: Code duplicated, block: B:248:0x04ef A[Catch: IOException -> 0x06ea, XmlPullParserException -> 0x06f4, TryCatch #17 {IOException -> 0x06ea, XmlPullParserException -> 0x06f4, blocks: (B:3:0x0006, B:6:0x0060, B:8:0x006b, B:11:0x0075, B:14:0x007f, B:16:0x0087, B:18:0x008e, B:21:0x0098, B:25:0x00aa, B:27:0x00c9, B:29:0x00d7, B:31:0x00de, B:33:0x00ea, B:35:0x00f5, B:61:0x017e, B:78:0x01db, B:81:0x01e9, B:83:0x01ef, B:85:0x01f7, B:87:0x01ff, B:89:0x0207, B:91:0x020f, B:93:0x0217, B:95:0x021d, B:97:0x0225, B:99:0x022d, B:101:0x0233, B:103:0x0239, B:105:0x0241, B:107:0x0249, B:110:0x0252, B:384:0x06ce, B:111:0x0275, B:113:0x027b, B:115:0x0284, B:117:0x0293, B:119:0x029d, B:121:0x02b1, B:123:0x02b7, B:251:0x0501, B:124:0x02bb, B:127:0x02c5, B:129:0x02cb, B:131:0x02d6, B:133:0x02dc, B:134:0x02e3, B:137:0x02ef, B:250:0x04fc, B:141:0x02fc, B:143:0x0304, B:147:0x031d, B:149:0x0324, B:151:0x0335, B:166:0x038a, B:168:0x0392, B:171:0x03a1, B:173:0x03a8, B:175:0x03b9, B:190:0x0411, B:192:0x0419, B:213:0x045f, B:215:0x0467, B:242:0x04b0, B:177:0x03c7, B:178:0x03d2, B:181:0x03da, B:184:0x03e6, B:186:0x03ed, B:188:0x03fc, B:243:0x04bc, B:244:0x04c7, B:245:0x04d2, B:153:0x0341, B:154:0x034b, B:157:0x0355, B:160:0x0360, B:162:0x0367, B:164:0x0376, B:246:0x04d9, B:247:0x04e4, B:248:0x04ef, B:256:0x0519, B:259:0x0536, B:312:0x05d6, B:293:0x0592, B:296:0x059b, B:358:0x0657, B:299:0x05a3, B:302:0x05ad, B:309:0x05c2, B:310:0x05c7, B:311:0x05cf, B:319:0x05eb, B:323:0x05f5, B:327:0x05fe, B:337:0x0612, B:345:0x0627, B:347:0x0635, B:349:0x063a, B:339:0x0619, B:64:0x0188, B:66:0x0194, B:69:0x019f, B:71:0x01a6, B:73:0x01b5, B:75:0x01c2, B:39:0x010d, B:41:0x0119, B:44:0x0124, B:46:0x012b, B:48:0x013a, B:54:0x0153, B:56:0x015a, B:60:0x0174, B:364:0x0677, B:367:0x0689, B:369:0x0693, B:371:0x069e, B:373:0x06ab, B:377:0x06bf, B:381:0x06c7, B:387:0x06e5), top: B:427:0x0006 }] */
    /* JADX WARN: Code duplicated, block: B:250:0x04fc A[Catch: IOException -> 0x06ea, XmlPullParserException -> 0x06f4, TryCatch #17 {IOException -> 0x06ea, XmlPullParserException -> 0x06f4, blocks: (B:3:0x0006, B:6:0x0060, B:8:0x006b, B:11:0x0075, B:14:0x007f, B:16:0x0087, B:18:0x008e, B:21:0x0098, B:25:0x00aa, B:27:0x00c9, B:29:0x00d7, B:31:0x00de, B:33:0x00ea, B:35:0x00f5, B:61:0x017e, B:78:0x01db, B:81:0x01e9, B:83:0x01ef, B:85:0x01f7, B:87:0x01ff, B:89:0x0207, B:91:0x020f, B:93:0x0217, B:95:0x021d, B:97:0x0225, B:99:0x022d, B:101:0x0233, B:103:0x0239, B:105:0x0241, B:107:0x0249, B:110:0x0252, B:384:0x06ce, B:111:0x0275, B:113:0x027b, B:115:0x0284, B:117:0x0293, B:119:0x029d, B:121:0x02b1, B:123:0x02b7, B:251:0x0501, B:124:0x02bb, B:127:0x02c5, B:129:0x02cb, B:131:0x02d6, B:133:0x02dc, B:134:0x02e3, B:137:0x02ef, B:250:0x04fc, B:141:0x02fc, B:143:0x0304, B:147:0x031d, B:149:0x0324, B:151:0x0335, B:166:0x038a, B:168:0x0392, B:171:0x03a1, B:173:0x03a8, B:175:0x03b9, B:190:0x0411, B:192:0x0419, B:213:0x045f, B:215:0x0467, B:242:0x04b0, B:177:0x03c7, B:178:0x03d2, B:181:0x03da, B:184:0x03e6, B:186:0x03ed, B:188:0x03fc, B:243:0x04bc, B:244:0x04c7, B:245:0x04d2, B:153:0x0341, B:154:0x034b, B:157:0x0355, B:160:0x0360, B:162:0x0367, B:164:0x0376, B:246:0x04d9, B:247:0x04e4, B:248:0x04ef, B:256:0x0519, B:259:0x0536, B:312:0x05d6, B:293:0x0592, B:296:0x059b, B:358:0x0657, B:299:0x05a3, B:302:0x05ad, B:309:0x05c2, B:310:0x05c7, B:311:0x05cf, B:319:0x05eb, B:323:0x05f5, B:327:0x05fe, B:337:0x0612, B:345:0x0627, B:347:0x0635, B:349:0x063a, B:339:0x0619, B:64:0x0188, B:66:0x0194, B:69:0x019f, B:71:0x01a6, B:73:0x01b5, B:75:0x01c2, B:39:0x010d, B:41:0x0119, B:44:0x0124, B:46:0x012b, B:48:0x013a, B:54:0x0153, B:56:0x015a, B:60:0x0174, B:364:0x0677, B:367:0x0689, B:369:0x0693, B:371:0x069e, B:373:0x06ab, B:377:0x06bf, B:381:0x06c7, B:387:0x06e5), top: B:427:0x0006 }] */
    /* JADX WARN: Code duplicated, block: B:254:0x050d A[LOOP:1: B:113:0x027b->B:254:0x050d, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:255:0x0515  */
    /* JADX WARN: Code duplicated, block: B:263:0x0547  */
    /* JADX WARN: Code duplicated, block: B:265:0x054f  */
    /* JADX WARN: Code duplicated, block: B:266:0x0551  */
    /* JADX WARN: Code duplicated, block: B:268:0x0557  */
    /* JADX WARN: Code duplicated, block: B:269:0x0559  */
    /* JADX WARN: Code duplicated, block: B:271:0x0561  */
    /* JADX WARN: Code duplicated, block: B:272:0x0563  */
    /* JADX WARN: Code duplicated, block: B:274:0x056b  */
    /* JADX WARN: Code duplicated, block: B:275:0x056d  */
    /* JADX WARN: Code duplicated, block: B:277:0x0575  */
    /* JADX WARN: Code duplicated, block: B:278:0x0577  */
    /* JADX WARN: Code duplicated, block: B:280:0x057d  */
    /* JADX WARN: Code duplicated, block: B:281:0x057f  */
    /* JADX WARN: Code duplicated, block: B:283:0x0582  */
    /* JADX WARN: Code duplicated, block: B:285:0x0585  */
    /* JADX WARN: Code duplicated, block: B:287:0x0588  */
    /* JADX WARN: Code duplicated, block: B:289:0x058b  */
    /* JADX WARN: Code duplicated, block: B:291:0x058e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:292:0x0590  */
    /* JADX WARN: Code duplicated, block: B:295:0x059a  */
    /* JADX WARN: Code duplicated, block: B:299:0x05a3 A[Catch: zzakb -> 0x05ba, IOException -> 0x06ea, XmlPullParserException -> 0x06f4, TryCatch #14 {zzakb -> 0x05ba, blocks: (B:296:0x059b, B:299:0x05a3, B:302:0x05ad), top: B:421:0x059b }] */
    /* JADX WARN: Code duplicated, block: B:301:0x05aa  */
    /* JADX WARN: Code duplicated, block: B:302:0x05ad A[Catch: zzakb -> 0x05ba, IOException -> 0x06ea, XmlPullParserException -> 0x06f4, TRY_LEAVE, TryCatch #14 {zzakb -> 0x05ba, blocks: (B:296:0x059b, B:299:0x05a3, B:302:0x05ad), top: B:421:0x059b }] */
    /* JADX WARN: Code duplicated, block: B:304:0x05b5  */
    /* JADX WARN: Code duplicated, block: B:308:0x05bf  */
    /* JADX WARN: Code duplicated, block: B:310:0x05c7 A[Catch: zzakb -> 0x0607, IOException -> 0x06ea, XmlPullParserException -> 0x06f4, TryCatch #4 {zzakb -> 0x0607, blocks: (B:312:0x05d6, B:309:0x05c2, B:310:0x05c7, B:311:0x05cf, B:319:0x05eb, B:323:0x05f5, B:327:0x05fe, B:337:0x0612, B:339:0x0619), top: B:405:0x05d6 }] */
    /* JADX WARN: Code duplicated, block: B:311:0x05cf A[Catch: zzakb -> 0x0607, IOException -> 0x06ea, XmlPullParserException -> 0x06f4, TryCatch #4 {zzakb -> 0x0607, blocks: (B:312:0x05d6, B:309:0x05c2, B:310:0x05c7, B:311:0x05cf, B:319:0x05eb, B:323:0x05f5, B:327:0x05fe, B:337:0x0612, B:339:0x0619), top: B:405:0x05d6 }] */
    /* JADX WARN: Code duplicated, block: B:319:0x05eb A[Catch: zzakb -> 0x0607, IOException -> 0x06ea, XmlPullParserException -> 0x06f4, TryCatch #4 {zzakb -> 0x0607, blocks: (B:312:0x05d6, B:309:0x05c2, B:310:0x05c7, B:311:0x05cf, B:319:0x05eb, B:323:0x05f5, B:327:0x05fe, B:337:0x0612, B:339:0x0619), top: B:405:0x05d6 }] */
    /* JADX WARN: Code duplicated, block: B:321:0x05f1  */
    /* JADX WARN: Code duplicated, block: B:323:0x05f5 A[Catch: zzakb -> 0x0607, IOException -> 0x06ea, XmlPullParserException -> 0x06f4, TryCatch #4 {zzakb -> 0x0607, blocks: (B:312:0x05d6, B:309:0x05c2, B:310:0x05c7, B:311:0x05cf, B:319:0x05eb, B:323:0x05f5, B:327:0x05fe, B:337:0x0612, B:339:0x0619), top: B:405:0x05d6 }] */
    /* JADX WARN: Code duplicated, block: B:324:0x05f8  */
    /* JADX WARN: Code duplicated, block: B:327:0x05fe A[Catch: zzakb -> 0x0607, IOException -> 0x06ea, XmlPullParserException -> 0x06f4, TryCatch #4 {zzakb -> 0x0607, blocks: (B:312:0x05d6, B:309:0x05c2, B:310:0x05c7, B:311:0x05cf, B:319:0x05eb, B:323:0x05f5, B:327:0x05fe, B:337:0x0612, B:339:0x0619), top: B:405:0x05d6 }] */
    /* JADX WARN: Code duplicated, block: B:328:0x0601  */
    /* JADX WARN: Code duplicated, block: B:329:0x0605 A[PHI: r29 r36
  0x0605: PHI (r29v3 long) = (r29v1 long), (r29v5 long) binds: [B:320:0x05ef, B:327:0x05fe] A[DONT_GENERATE, DONT_INLINE]
  0x0605: PHI (r36v4 long) = (r36v1 long), (r36v6 long) binds: [B:320:0x05ef, B:327:0x05fe] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:332:0x0609  */
    /* JADX WARN: Code duplicated, block: B:335:0x060e  */
    /* JADX WARN: Code duplicated, block: B:337:0x0612 A[Catch: zzakb -> 0x0607, IOException -> 0x06ea, XmlPullParserException -> 0x06f4, TryCatch #4 {zzakb -> 0x0607, blocks: (B:312:0x05d6, B:309:0x05c2, B:310:0x05c7, B:311:0x05cf, B:319:0x05eb, B:323:0x05f5, B:327:0x05fe, B:337:0x0612, B:339:0x0619), top: B:405:0x05d6 }] */
    /* JADX WARN: Code duplicated, block: B:338:0x0617 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:339:0x0619 A[Catch: zzakb -> 0x0607, IOException -> 0x06ea, XmlPullParserException -> 0x06f4, TRY_LEAVE, TryCatch #4 {zzakb -> 0x0607, blocks: (B:312:0x05d6, B:309:0x05c2, B:310:0x05c7, B:311:0x05cf, B:319:0x05eb, B:323:0x05f5, B:327:0x05fe, B:337:0x0612, B:339:0x0619), top: B:405:0x05d6 }] */
    /* JADX WARN: Code duplicated, block: B:342:0x061f  */
    /* JADX WARN: Code duplicated, block: B:343:0x0622  */
    /* JADX WARN: Code duplicated, block: B:344:0x0625  */
    /* JADX WARN: Code duplicated, block: B:349:0x063a A[Catch: zzakb -> 0x064a, IOException -> 0x06ea, XmlPullParserException -> 0x06f4, TRY_LEAVE, TryCatch #5 {zzakb -> 0x064a, blocks: (B:347:0x0635, B:349:0x063a), top: B:407:0x0635 }] */
    /* JADX WARN: Code duplicated, block: B:397:0x0592 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:425:0x0536 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:430:0x0507 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:63:0x0186  */
    /* JADX WARN: Code duplicated, block: B:64:0x0188 A[Catch: IOException -> 0x06ea, XmlPullParserException -> 0x06f4, TryCatch #17 {IOException -> 0x06ea, XmlPullParserException -> 0x06f4, blocks: (B:3:0x0006, B:6:0x0060, B:8:0x006b, B:11:0x0075, B:14:0x007f, B:16:0x0087, B:18:0x008e, B:21:0x0098, B:25:0x00aa, B:27:0x00c9, B:29:0x00d7, B:31:0x00de, B:33:0x00ea, B:35:0x00f5, B:61:0x017e, B:78:0x01db, B:81:0x01e9, B:83:0x01ef, B:85:0x01f7, B:87:0x01ff, B:89:0x0207, B:91:0x020f, B:93:0x0217, B:95:0x021d, B:97:0x0225, B:99:0x022d, B:101:0x0233, B:103:0x0239, B:105:0x0241, B:107:0x0249, B:110:0x0252, B:384:0x06ce, B:111:0x0275, B:113:0x027b, B:115:0x0284, B:117:0x0293, B:119:0x029d, B:121:0x02b1, B:123:0x02b7, B:251:0x0501, B:124:0x02bb, B:127:0x02c5, B:129:0x02cb, B:131:0x02d6, B:133:0x02dc, B:134:0x02e3, B:137:0x02ef, B:250:0x04fc, B:141:0x02fc, B:143:0x0304, B:147:0x031d, B:149:0x0324, B:151:0x0335, B:166:0x038a, B:168:0x0392, B:171:0x03a1, B:173:0x03a8, B:175:0x03b9, B:190:0x0411, B:192:0x0419, B:213:0x045f, B:215:0x0467, B:242:0x04b0, B:177:0x03c7, B:178:0x03d2, B:181:0x03da, B:184:0x03e6, B:186:0x03ed, B:188:0x03fc, B:243:0x04bc, B:244:0x04c7, B:245:0x04d2, B:153:0x0341, B:154:0x034b, B:157:0x0355, B:160:0x0360, B:162:0x0367, B:164:0x0376, B:246:0x04d9, B:247:0x04e4, B:248:0x04ef, B:256:0x0519, B:259:0x0536, B:312:0x05d6, B:293:0x0592, B:296:0x059b, B:358:0x0657, B:299:0x05a3, B:302:0x05ad, B:309:0x05c2, B:310:0x05c7, B:311:0x05cf, B:319:0x05eb, B:323:0x05f5, B:327:0x05fe, B:337:0x0612, B:345:0x0627, B:347:0x0635, B:349:0x063a, B:339:0x0619, B:64:0x0188, B:66:0x0194, B:69:0x019f, B:71:0x01a6, B:73:0x01b5, B:75:0x01c2, B:39:0x010d, B:41:0x0119, B:44:0x0124, B:46:0x012b, B:48:0x013a, B:54:0x0153, B:56:0x015a, B:60:0x0174, B:364:0x0677, B:367:0x0689, B:369:0x0693, B:371:0x069e, B:373:0x06ab, B:377:0x06bf, B:381:0x06c7, B:387:0x06e5), top: B:427:0x0006 }] */
    /* JADX WARN: Code duplicated, block: B:66:0x0194 A[Catch: IOException -> 0x06ea, XmlPullParserException -> 0x06f4, TRY_LEAVE, TryCatch #17 {IOException -> 0x06ea, XmlPullParserException -> 0x06f4, blocks: (B:3:0x0006, B:6:0x0060, B:8:0x006b, B:11:0x0075, B:14:0x007f, B:16:0x0087, B:18:0x008e, B:21:0x0098, B:25:0x00aa, B:27:0x00c9, B:29:0x00d7, B:31:0x00de, B:33:0x00ea, B:35:0x00f5, B:61:0x017e, B:78:0x01db, B:81:0x01e9, B:83:0x01ef, B:85:0x01f7, B:87:0x01ff, B:89:0x0207, B:91:0x020f, B:93:0x0217, B:95:0x021d, B:97:0x0225, B:99:0x022d, B:101:0x0233, B:103:0x0239, B:105:0x0241, B:107:0x0249, B:110:0x0252, B:384:0x06ce, B:111:0x0275, B:113:0x027b, B:115:0x0284, B:117:0x0293, B:119:0x029d, B:121:0x02b1, B:123:0x02b7, B:251:0x0501, B:124:0x02bb, B:127:0x02c5, B:129:0x02cb, B:131:0x02d6, B:133:0x02dc, B:134:0x02e3, B:137:0x02ef, B:250:0x04fc, B:141:0x02fc, B:143:0x0304, B:147:0x031d, B:149:0x0324, B:151:0x0335, B:166:0x038a, B:168:0x0392, B:171:0x03a1, B:173:0x03a8, B:175:0x03b9, B:190:0x0411, B:192:0x0419, B:213:0x045f, B:215:0x0467, B:242:0x04b0, B:177:0x03c7, B:178:0x03d2, B:181:0x03da, B:184:0x03e6, B:186:0x03ed, B:188:0x03fc, B:243:0x04bc, B:244:0x04c7, B:245:0x04d2, B:153:0x0341, B:154:0x034b, B:157:0x0355, B:160:0x0360, B:162:0x0367, B:164:0x0376, B:246:0x04d9, B:247:0x04e4, B:248:0x04ef, B:256:0x0519, B:259:0x0536, B:312:0x05d6, B:293:0x0592, B:296:0x059b, B:358:0x0657, B:299:0x05a3, B:302:0x05ad, B:309:0x05c2, B:310:0x05c7, B:311:0x05cf, B:319:0x05eb, B:323:0x05f5, B:327:0x05fe, B:337:0x0612, B:345:0x0627, B:347:0x0635, B:349:0x063a, B:339:0x0619, B:64:0x0188, B:66:0x0194, B:69:0x019f, B:71:0x01a6, B:73:0x01b5, B:75:0x01c2, B:39:0x010d, B:41:0x0119, B:44:0x0124, B:46:0x012b, B:48:0x013a, B:54:0x0153, B:56:0x015a, B:60:0x0174, B:364:0x0677, B:367:0x0689, B:369:0x0693, B:371:0x069e, B:373:0x06ab, B:377:0x06bf, B:381:0x06c7, B:387:0x06e5), top: B:427:0x0006 }] */
    /* JADX WARN: Code duplicated, block: B:68:0x019e  */
    public final zzaka zzb(byte[] bArr, int i, int i2) {
        String str;
        HashMap map;
        ArrayDeque arrayDeque;
        zzalj zzaljVar;
        int i3;
        String str2;
        HashMap map2;
        zzald zzaldVar;
        zzald zzaldVar2;
        zzakb zzakbVar;
        int attributeCount;
        String[] strArr;
        String strSubstring;
        String str3;
        long jZzc;
        long jZzc2;
        long jZzc3;
        int i4;
        zzalc zzalcVar;
        long j;
        zzalc zzalcVarZzb;
        long j2;
        long j3;
        String attributeName;
        String attributeValue;
        byte b;
        String[] strArrZzg;
        String strZza;
        String strZza2;
        String str4;
        Pattern pattern;
        Matcher matcher;
        Pattern pattern2;
        Matcher matcher2;
        float f;
        float f2;
        String strZza3;
        Matcher matcher3;
        Matcher matcher4;
        float f3;
        float f4;
        String strZza4;
        float f5;
        int i5;
        String strZza5;
        int i6;
        zzalg zzalgVar;
        String strZza6;
        int iHashCode;
        byte b2;
        String strZza7;
        int iHashCode2;
        byte b3;
        String strZza8;
        String strZza9;
        zzali zzaliVarZzf;
        String strZzE;
        String[] strArrZzg2;
        int length;
        int i7;
        float f6;
        zzald zzaldVar3;
        boolean z;
        String strZza10;
        Matcher matcher5;
        String str5 = "";
        String str6 = "http://www.w3.org/ns/ttml#parameter";
        try {
            XmlPullParser xmlPullParserNewPullParser = this.zzi.newPullParser();
            HashMap map3 = new HashMap();
            HashMap map4 = new HashMap();
            HashMap map5 = new HashMap();
            map4.put("", new zzalg("", -3.4028235E38f, -3.4028235E38f, Integer.MIN_VALUE, Integer.MIN_VALUE, -3.4028235E38f, -3.4028235E38f, Integer.MIN_VALUE, -3.4028235E38f, Integer.MIN_VALUE));
            xmlPullParserNewPullParser.setInput(new ByteArrayInputStream(bArr, i, i2), null);
            ArrayDeque arrayDeque2 = new ArrayDeque();
            int eventType = xmlPullParserNewPullParser.getEventType();
            zzald zzaldVar4 = zzh;
            zzalj zzaljVar2 = null;
            zzale zzaleVar = null;
            int i8 = 0;
            int i9 = 15;
            while (eventType != 1) {
                zzalc zzalcVar2 = (zzalc) arrayDeque2.peek();
                if (i8 == 0) {
                    String name = xmlPullParserNewPullParser.getName();
                    str = str5;
                    if (eventType == 2) {
                        if ("tt".equals(name)) {
                            String attributeValue2 = xmlPullParserNewPullParser.getAttributeValue(str6, "frameRate");
                            int i10 = attributeValue2 != null ? Integer.parseInt(attributeValue2) : 30;
                            String attributeValue3 = xmlPullParserNewPullParser.getAttributeValue(str6, "frameRateMultiplier");
                            if (attributeValue3 != null) {
                                int i11 = zzei.zza;
                                String[] strArrSplit = attributeValue3.split(" ", -1);
                                zzcw.zze(strArrSplit.length == 2, "frameRateMultiplier doesn't have 2 parts");
                                f6 = Integer.parseInt(strArrSplit[0]) / Integer.parseInt(strArrSplit[1]);
                            } else {
                                f6 = 1.0f;
                            }
                            zzald zzaldVar5 = zzh;
                            int i12 = zzaldVar5.zzb;
                            String attributeValue4 = xmlPullParserNewPullParser.getAttributeValue(str6, "subFrameRate");
                            int i13 = attributeValue4 != null ? Integer.parseInt(attributeValue4) : i12;
                            int i14 = zzaldVar5.zzc;
                            String attributeValue5 = xmlPullParserNewPullParser.getAttributeValue(str6, "tickRate");
                            zzald zzaldVar6 = new zzald(i10 * f6, i13, attributeValue5 != null ? Integer.parseInt(attributeValue5) : i14);
                            String attributeValue6 = xmlPullParserNewPullParser.getAttributeValue(str6, "cellResolution");
                            if (attributeValue6 == null) {
                                str6 = str6;
                                zzaldVar3 = zzaldVar6;
                                i9 = 15;
                            } else {
                                Matcher matcher6 = zzg.matcher(attributeValue6);
                                if (matcher6.matches()) {
                                    try {
                                        String strGroup = matcher6.group(1);
                                        strGroup.getClass();
                                        String str7 = strGroup;
                                        int i15 = Integer.parseInt(strGroup);
                                        String strGroup2 = matcher6.group(2);
                                        strGroup2.getClass();
                                        String str8 = strGroup2;
                                        int i16 = Integer.parseInt(strGroup2);
                                        if (i15 == 0) {
                                            i9 = i16;
                                            z = false;
                                        } else if (i16 != 0) {
                                            i9 = i16;
                                            z = true;
                                        } else {
                                            z = false;
                                            i9 = 0;
                                        }
                                        try {
                                            StringBuilder sb = new StringBuilder();
                                            zzaldVar3 = zzaldVar6;
                                            try {
                                                sb.append("Invalid cell resolution ");
                                                sb.append(i15);
                                                sb.append(" ");
                                                sb.append(i9);
                                                zzcw.zze(z, sb.toString());
                                            } catch (NumberFormatException unused) {
                                                zzdo.zzf("TtmlParser", "Ignoring malformed cell resolution: ".concat(attributeValue6));
                                                i9 = 15;
                                            }
                                        } catch (NumberFormatException unused2) {
                                            zzaldVar3 = zzaldVar6;
                                            zzdo.zzf("TtmlParser", "Ignoring malformed cell resolution: ".concat(attributeValue6));
                                            i9 = 15;
                                            strZza10 = zzej.zza(xmlPullParserNewPullParser, "extent");
                                            if (strZza10 == null) {
                                                zzaleVar = null;
                                            } else {
                                                matcher5 = zzf.matcher(strZza10);
                                                if (matcher5.matches()) {
                                                    try {
                                                        String strGroup3 = matcher5.group(1);
                                                        strGroup3.getClass();
                                                        String str9 = strGroup3;
                                                        int i17 = Integer.parseInt(strGroup3);
                                                        String strGroup4 = matcher5.group(2);
                                                        strGroup4.getClass();
                                                        String str10 = strGroup4;
                                                        zzaleVar = new zzale(i17, Integer.parseInt(strGroup4));
                                                    } catch (NumberFormatException unused3) {
                                                        zzdo.zzf("TtmlParser", "Ignoring malformed tts extent: ".concat(strZza10));
                                                        zzaleVar = null;
                                                    }
                                                } else {
                                                    zzdo.zzf("TtmlParser", "Ignoring non-pixel tts extent: ".concat(strZza10));
                                                }
                                                zzaleVar = null;
                                            }
                                            zzaldVar4 = zzaldVar3;
                                            str2 = "metadata";
                                            if (name.equals("tt")) {
                                                if ("head".equals(name)) {
                                                    while (true) {
                                                        xmlPullParserNewPullParser.next();
                                                        if (zzej.zzc(xmlPullParserNewPullParser, "style")) {
                                                            strZza9 = zzej.zza(xmlPullParserNewPullParser, "style");
                                                            zzaliVarZzf = zzf(xmlPullParserNewPullParser, new zzali());
                                                            if (strZza9 != null) {
                                                                strArrZzg2 = zzg(strZza9);
                                                                i7 = 0;
                                                                for (length = strArrZzg2.length; i7 < length; length = length) {
                                                                    zzaliVarZzf.zzl((zzali) map3.get(strArrZzg2[i7]));
                                                                    i7++;
                                                                }
                                                            }
                                                            strZzE = zzaliVarZzf.zzE();
                                                            if (strZzE != null) {
                                                                map3.put(strZzE, zzaliVarZzf);
                                                            }
                                                        } else {
                                                            zzaldVar4 = zzaldVar4;
                                                            if (zzej.zzc(xmlPullParserNewPullParser, "region")) {
                                                                strZza = zzej.zza(xmlPullParserNewPullParser, "id");
                                                                if (strZza == null) {
                                                                    str4 = str2;
                                                                    map2 = map3;
                                                                } else {
                                                                    strZza2 = zzej.zza(xmlPullParserNewPullParser, "origin");
                                                                    if (strZza2 != null) {
                                                                        pattern = zzb;
                                                                        matcher = pattern.matcher(strZza2);
                                                                        pattern2 = zzf;
                                                                        str4 = str2;
                                                                        matcher2 = pattern2.matcher(strZza2);
                                                                        if (matcher.matches()) {
                                                                            map2 = map3;
                                                                            String strGroup5 = matcher.group(1);
                                                                            strGroup5.getClass();
                                                                            String str11 = strGroup5;
                                                                            float f7 = Float.parseFloat(strGroup5) / 100.0f;
                                                                            String strGroup6 = matcher.group(2);
                                                                            strGroup6.getClass();
                                                                            String str12 = strGroup6;
                                                                            f2 = Float.parseFloat(strGroup6) / 100.0f;
                                                                            f = f7;
                                                                            strZza3 = zzej.zza(xmlPullParserNewPullParser, "extent");
                                                                            if (strZza3 != null) {
                                                                                matcher3 = pattern.matcher(strZza3);
                                                                                matcher4 = pattern2.matcher(strZza3);
                                                                                if (matcher3.matches()) {
                                                                                    String strGroup7 = matcher3.group(1);
                                                                                    strGroup7.getClass();
                                                                                    String str13 = strGroup7;
                                                                                    float f8 = Float.parseFloat(strGroup7) / 100.0f;
                                                                                    String strGroup8 = matcher3.group(2);
                                                                                    strGroup8.getClass();
                                                                                    String str14 = strGroup8;
                                                                                    f3 = Float.parseFloat(strGroup8) / 100.0f;
                                                                                    f4 = f8;
                                                                                    strZza4 = zzej.zza(xmlPullParserNewPullParser, "displayAlign");
                                                                                    if (strZza4 != null) {
                                                                                        strZza7 = zzftt.zza(strZza4);
                                                                                        iHashCode2 = strZza7.hashCode();
                                                                                        if (iHashCode2 != -1364013995) {
                                                                                            if (iHashCode2 != 92734940) {
                                                                                                b3 = -1;
                                                                                            } else {
                                                                                                b3 = 1;
                                                                                            }
                                                                                        } else if (strZza7.equals("center")) {
                                                                                            b3 = 0;
                                                                                        } else {
                                                                                            b3 = -1;
                                                                                        }
                                                                                        if (b3 != 0) {
                                                                                            f5 = f2 + (f3 / 2.0f);
                                                                                            i5 = 1;
                                                                                        } else if (b3 != 1) {
                                                                                            f5 = f2;
                                                                                            i5 = 0;
                                                                                        } else {
                                                                                            f5 = f2 + f3;
                                                                                            i5 = 2;
                                                                                        }
                                                                                    } else {
                                                                                        f5 = f2;
                                                                                        i5 = 0;
                                                                                    }
                                                                                    float f9 = 1.0f / i9;
                                                                                    strZza5 = zzej.zza(xmlPullParserNewPullParser, "writingMode");
                                                                                    if (strZza5 != null) {
                                                                                        strZza6 = zzftt.zza(strZza5);
                                                                                        iHashCode = strZza6.hashCode();
                                                                                        if (iHashCode != 3694) {
                                                                                            if (iHashCode != 3553396) {
                                                                                                if (iHashCode != 3553576) {
                                                                                                    b2 = -1;
                                                                                                } else {
                                                                                                    b2 = 2;
                                                                                                }
                                                                                            } else if (strZza6.equals("tblr")) {
                                                                                                b2 = 1;
                                                                                            } else {
                                                                                                b2 = -1;
                                                                                            }
                                                                                        } else if (strZza6.equals("tb")) {
                                                                                            b2 = 0;
                                                                                        } else {
                                                                                            b2 = -1;
                                                                                        }
                                                                                        if (b2 != 0) {
                                                                                            i6 = 2;
                                                                                        } else {
                                                                                            i6 = 2;
                                                                                        }
                                                                                    } else {
                                                                                        i6 = Integer.MIN_VALUE;
                                                                                    }
                                                                                    zzalgVar = new zzalg(strZza, f, f5, 0, i5, f4, f3, 1, f9, i6);
                                                                                } else if (matcher4.matches()) {
                                                                                    zzdo.zzf("TtmlParser", "Ignoring region with unsupported extent: ".concat(strZza2));
                                                                                } else if (zzaleVar == null) {
                                                                                    zzdo.zzf("TtmlParser", "Ignoring region with missing tts:extent: ".concat(strZza2));
                                                                                } else {
                                                                                    String strGroup9 = matcher4.group(1);
                                                                                    strGroup9.getClass();
                                                                                    String str15 = strGroup9;
                                                                                    int i18 = Integer.parseInt(strGroup9);
                                                                                    String strGroup10 = matcher4.group(2);
                                                                                    strGroup10.getClass();
                                                                                    String str16 = strGroup10;
                                                                                    int i19 = Integer.parseInt(strGroup10);
                                                                                    float f10 = i18 / zzaleVar.zza;
                                                                                    f3 = i19 / zzaleVar.zzb;
                                                                                    f4 = f10;
                                                                                    strZza4 = zzej.zza(xmlPullParserNewPullParser, "displayAlign");
                                                                                    if (strZza4 != null) {
                                                                                        strZza7 = zzftt.zza(strZza4);
                                                                                        iHashCode2 = strZza7.hashCode();
                                                                                        if (iHashCode2 != -1364013995) {
                                                                                            if (iHashCode2 != 92734940) {
                                                                                                b3 = -1;
                                                                                            } else {
                                                                                                b3 = 1;
                                                                                            }
                                                                                        } else if (strZza7.equals("center")) {
                                                                                            b3 = 0;
                                                                                        } else {
                                                                                            b3 = -1;
                                                                                        }
                                                                                        if (b3 != 0) {
                                                                                            f5 = f2 + (f3 / 2.0f);
                                                                                            i5 = 1;
                                                                                        } else if (b3 != 1) {
                                                                                            f5 = f2;
                                                                                            i5 = 0;
                                                                                        } else {
                                                                                            f5 = f2 + f3;
                                                                                            i5 = 2;
                                                                                        }
                                                                                    } else {
                                                                                        f5 = f2;
                                                                                        i5 = 0;
                                                                                    }
                                                                                    float f11 = 1.0f / i9;
                                                                                    strZza5 = zzej.zza(xmlPullParserNewPullParser, "writingMode");
                                                                                    if (strZza5 != null) {
                                                                                        strZza6 = zzftt.zza(strZza5);
                                                                                        iHashCode = strZza6.hashCode();
                                                                                        if (iHashCode != 3694) {
                                                                                            if (iHashCode != 3553396) {
                                                                                                if (iHashCode != 3553576) {
                                                                                                    b2 = -1;
                                                                                                } else {
                                                                                                    b2 = 2;
                                                                                                }
                                                                                            } else if (strZza6.equals("tblr")) {
                                                                                                b2 = 1;
                                                                                            } else {
                                                                                                b2 = -1;
                                                                                            }
                                                                                        } else if (strZza6.equals("tb")) {
                                                                                            b2 = 0;
                                                                                        } else {
                                                                                            b2 = -1;
                                                                                        }
                                                                                        if (b2 != 0) {
                                                                                            i6 = 2;
                                                                                        } else {
                                                                                            i6 = 2;
                                                                                        }
                                                                                    } else {
                                                                                        i6 = Integer.MIN_VALUE;
                                                                                    }
                                                                                    zzalgVar = new zzalg(strZza, f, f5, 0, i5, f4, f3, 1, f11, i6);
                                                                                }
                                                                                if (zzalgVar != null) {
                                                                                    map4.put(zzalgVar.zza, zzalgVar);
                                                                                }
                                                                            } else {
                                                                                zzdo.zzf("TtmlParser", "Ignoring region without an extent");
                                                                            }
                                                                        } else {
                                                                            map2 = map3;
                                                                            if (!matcher2.matches()) {
                                                                                zzdo.zzf("TtmlParser", "Ignoring region with unsupported origin: ".concat(strZza2));
                                                                            } else if (zzaleVar == null) {
                                                                                zzdo.zzf("TtmlParser", "Ignoring region with missing tts:extent: ".concat(strZza2));
                                                                            } else {
                                                                                String strGroup11 = matcher2.group(1);
                                                                                strGroup11.getClass();
                                                                                String str17 = strGroup11;
                                                                                int i20 = Integer.parseInt(strGroup11);
                                                                                String strGroup12 = matcher2.group(2);
                                                                                strGroup12.getClass();
                                                                                String str18 = strGroup12;
                                                                                float f12 = Integer.parseInt(strGroup12);
                                                                                f = i20 / zzaleVar.zza;
                                                                                f2 = f12 / zzaleVar.zzb;
                                                                                strZza3 = zzej.zza(xmlPullParserNewPullParser, "extent");
                                                                                if (strZza3 != null) {
                                                                                    matcher3 = pattern.matcher(strZza3);
                                                                                    matcher4 = pattern2.matcher(strZza3);
                                                                                    if (matcher3.matches()) {
                                                                                        String strGroup13 = matcher3.group(1);
                                                                                        strGroup13.getClass();
                                                                                        String str19 = strGroup13;
                                                                                        float f13 = Float.parseFloat(strGroup13) / 100.0f;
                                                                                        String strGroup14 = matcher3.group(2);
                                                                                        strGroup14.getClass();
                                                                                        String str110 = strGroup14;
                                                                                        f3 = Float.parseFloat(strGroup14) / 100.0f;
                                                                                        f4 = f13;
                                                                                        strZza4 = zzej.zza(xmlPullParserNewPullParser, "displayAlign");
                                                                                        if (strZza4 != null) {
                                                                                            strZza7 = zzftt.zza(strZza4);
                                                                                            iHashCode2 = strZza7.hashCode();
                                                                                            if (iHashCode2 != -1364013995) {
                                                                                                if (iHashCode2 != 92734940) {
                                                                                                    b3 = -1;
                                                                                                } else {
                                                                                                    b3 = 1;
                                                                                                }
                                                                                            } else if (strZza7.equals("center")) {
                                                                                                b3 = 0;
                                                                                            } else {
                                                                                                b3 = -1;
                                                                                            }
                                                                                            if (b3 != 0) {
                                                                                                f5 = f2 + (f3 / 2.0f);
                                                                                                i5 = 1;
                                                                                            } else if (b3 != 1) {
                                                                                                f5 = f2;
                                                                                                i5 = 0;
                                                                                            } else {
                                                                                                f5 = f2 + f3;
                                                                                                i5 = 2;
                                                                                            }
                                                                                        } else {
                                                                                            f5 = f2;
                                                                                            i5 = 0;
                                                                                        }
                                                                                        float f14 = 1.0f / i9;
                                                                                        strZza5 = zzej.zza(xmlPullParserNewPullParser, "writingMode");
                                                                                        if (strZza5 != null) {
                                                                                            strZza6 = zzftt.zza(strZza5);
                                                                                            iHashCode = strZza6.hashCode();
                                                                                            if (iHashCode != 3694) {
                                                                                                if (iHashCode != 3553396) {
                                                                                                    if (iHashCode != 3553576) {
                                                                                                        b2 = -1;
                                                                                                    } else {
                                                                                                        b2 = 2;
                                                                                                    }
                                                                                                } else if (strZza6.equals("tblr")) {
                                                                                                    b2 = 1;
                                                                                                } else {
                                                                                                    b2 = -1;
                                                                                                }
                                                                                            } else if (strZza6.equals("tb")) {
                                                                                                b2 = 0;
                                                                                            } else {
                                                                                                b2 = -1;
                                                                                            }
                                                                                            if (b2 != 0) {
                                                                                                i6 = 2;
                                                                                            } else {
                                                                                                i6 = 2;
                                                                                            }
                                                                                        } else {
                                                                                            i6 = Integer.MIN_VALUE;
                                                                                        }
                                                                                        zzalgVar = new zzalg(strZza, f, f5, 0, i5, f4, f3, 1, f14, i6);
                                                                                    } else if (matcher4.matches()) {
                                                                                        zzdo.zzf("TtmlParser", "Ignoring region with unsupported extent: ".concat(strZza2));
                                                                                    } else if (zzaleVar == null) {
                                                                                        zzdo.zzf("TtmlParser", "Ignoring region with missing tts:extent: ".concat(strZza2));
                                                                                    } else {
                                                                                        String strGroup15 = matcher4.group(1);
                                                                                        strGroup15.getClass();
                                                                                        String str111 = strGroup15;
                                                                                        int i110 = Integer.parseInt(strGroup15);
                                                                                        String strGroup16 = matcher4.group(2);
                                                                                        strGroup16.getClass();
                                                                                        String str112 = strGroup16;
                                                                                        int i111 = Integer.parseInt(strGroup16);
                                                                                        float f15 = i110 / zzaleVar.zza;
                                                                                        f3 = i111 / zzaleVar.zzb;
                                                                                        f4 = f15;
                                                                                        strZza4 = zzej.zza(xmlPullParserNewPullParser, "displayAlign");
                                                                                        if (strZza4 != null) {
                                                                                            strZza7 = zzftt.zza(strZza4);
                                                                                            iHashCode2 = strZza7.hashCode();
                                                                                            if (iHashCode2 != -1364013995) {
                                                                                                if (iHashCode2 != 92734940) {
                                                                                                    b3 = -1;
                                                                                                } else {
                                                                                                    b3 = 1;
                                                                                                }
                                                                                            } else if (strZza7.equals("center")) {
                                                                                                b3 = 0;
                                                                                            } else {
                                                                                                b3 = -1;
                                                                                            }
                                                                                            if (b3 != 0) {
                                                                                                f5 = f2 + (f3 / 2.0f);
                                                                                                i5 = 1;
                                                                                            } else if (b3 != 1) {
                                                                                                f5 = f2;
                                                                                                i5 = 0;
                                                                                            } else {
                                                                                                f5 = f2 + f3;
                                                                                                i5 = 2;
                                                                                            }
                                                                                        } else {
                                                                                            f5 = f2;
                                                                                            i5 = 0;
                                                                                        }
                                                                                        float f16 = 1.0f / i9;
                                                                                        strZza5 = zzej.zza(xmlPullParserNewPullParser, "writingMode");
                                                                                        if (strZza5 != null) {
                                                                                            strZza6 = zzftt.zza(strZza5);
                                                                                            iHashCode = strZza6.hashCode();
                                                                                            if (iHashCode != 3694) {
                                                                                                if (iHashCode != 3553396) {
                                                                                                    if (iHashCode != 3553576) {
                                                                                                        b2 = -1;
                                                                                                    } else {
                                                                                                        b2 = 2;
                                                                                                    }
                                                                                                } else if (strZza6.equals("tblr")) {
                                                                                                    b2 = 1;
                                                                                                } else {
                                                                                                    b2 = -1;
                                                                                                }
                                                                                            } else if (strZza6.equals("tb")) {
                                                                                                b2 = 0;
                                                                                            } else {
                                                                                                b2 = -1;
                                                                                            }
                                                                                            if (b2 != 0) {
                                                                                                i6 = 2;
                                                                                            } else {
                                                                                                i6 = 2;
                                                                                            }
                                                                                        } else {
                                                                                            i6 = Integer.MIN_VALUE;
                                                                                        }
                                                                                        zzalgVar = new zzalg(strZza, f, f5, 0, i5, f4, f3, 1, f16, i6);
                                                                                    }
                                                                                    if (zzalgVar != null) {
                                                                                        map4.put(zzalgVar.zza, zzalgVar);
                                                                                    }
                                                                                } else {
                                                                                    zzdo.zzf("TtmlParser", "Ignoring region without an extent");
                                                                                }
                                                                            }
                                                                        }
                                                                    } else {
                                                                        str4 = str2;
                                                                        map2 = map3;
                                                                        zzdo.zzf("TtmlParser", "Ignoring region without an origin");
                                                                    }
                                                                }
                                                                zzalgVar = null;
                                                                if (zzalgVar != null) {
                                                                    map4.put(zzalgVar.zza, zzalgVar);
                                                                }
                                                            } else if (zzej.zzc(xmlPullParserNewPullParser, str2)) {
                                                                do {
                                                                    xmlPullParserNewPullParser.next();
                                                                    if (zzej.zzc(xmlPullParserNewPullParser, "image")) {
                                                                        map5.put(strZza8, xmlPullParserNewPullParser.nextText());
                                                                    }
                                                                } while (!zzej.zzb(xmlPullParserNewPullParser, str2));
                                                            }
                                                            if (zzej.zzb(xmlPullParserNewPullParser, "head")) {
                                                                zzaldVar2 = zzaldVar4;
                                                                arrayDeque = arrayDeque2;
                                                            } else {
                                                                zzaldVar4 = zzaldVar4;
                                                                str2 = str4;
                                                                map3 = map2;
                                                            }
                                                        }
                                                        str4 = str2;
                                                        map2 = map3;
                                                        if (zzej.zzb(xmlPullParserNewPullParser, "head")) {
                                                            zzaldVar2 = zzaldVar4;
                                                            arrayDeque = arrayDeque2;
                                                        } else {
                                                            zzaldVar4 = zzaldVar4;
                                                            str2 = str4;
                                                            map3 = map2;
                                                        }
                                                    }
                                                } else {
                                                    map2 = map3;
                                                    zzaldVar = zzaldVar4;
                                                    attributeCount = xmlPullParserNewPullParser.getAttributeCount();
                                                    zzali zzaliVarZzf2 = zzf(xmlPullParserNewPullParser, null);
                                                    strArr = null;
                                                    strSubstring = null;
                                                    str3 = str;
                                                    jZzc = -9223372036854775807L;
                                                    jZzc2 = -9223372036854775807L;
                                                    jZzc3 = -9223372036854775807L;
                                                    i4 = 0;
                                                    while (i4 < attributeCount) {
                                                        attributeName = xmlPullParserNewPullParser.getAttributeName(i4);
                                                        attributeValue = xmlPullParserNewPullParser.getAttributeValue(i4);
                                                        switch (attributeName) {
                                                            case "region":
                                                                b = 4;
                                                                break;
                                                            case "dur":
                                                                b = 2;
                                                                break;
                                                            case "end":
                                                                b = 1;
                                                                break;
                                                            case "begin":
                                                                b = 0;
                                                                break;
                                                            case "style":
                                                                b = 3;
                                                                break;
                                                            case "backgroundImage":
                                                                b = 5;
                                                                break;
                                                            default:
                                                                b = -1;
                                                                break;
                                                        }
                                                        if (b == 0) {
                                                            zzaldVar2 = zzaldVar;
                                                            jZzc2 = zzc(attributeValue, zzaldVar2);
                                                        } else if (b == 1) {
                                                            zzaldVar2 = zzaldVar;
                                                            jZzc = zzc(attributeValue, zzaldVar2);
                                                        } else if (b != 2) {
                                                            if (b == 3) {
                                                                strArrZzg = zzg(attributeValue);
                                                                if (strArrZzg.length > 0) {
                                                                    strArr = strArrZzg;
                                                                }
                                                            } else if (b != 4) {
                                                                if (b == 5) {
                                                                    if (attributeValue.startsWith("#")) {
                                                                        strSubstring = attributeValue.substring(1);
                                                                    }
                                                                }
                                                            } else if (map4.containsKey(attributeValue)) {
                                                                str3 = attributeValue;
                                                            }
                                                            zzaldVar2 = zzaldVar;
                                                        } else {
                                                            zzaldVar2 = zzaldVar;
                                                            jZzc3 = zzc(attributeValue, zzaldVar2);
                                                        }
                                                        i4++;
                                                        zzaldVar = zzaldVar2;
                                                    }
                                                    zzaldVar2 = zzaldVar;
                                                    if (zzalcVar2 != null) {
                                                        j3 = zzalcVar2.zzd;
                                                        if (j3 == -9223372036854775807L) {
                                                            zzalcVar = zzalcVar2;
                                                        } else {
                                                            if (jZzc2 != -9223372036854775807L) {
                                                                jZzc2 += j3;
                                                            } else {
                                                                jZzc2 = -9223372036854775807L;
                                                            }
                                                            if (jZzc != -9223372036854775807L) {
                                                                jZzc += j3;
                                                                zzalcVar = zzalcVar2;
                                                            } else {
                                                                zzalcVar = zzalcVar2;
                                                                jZzc = -9223372036854775807L;
                                                            }
                                                        }
                                                    } else {
                                                        zzalcVar = null;
                                                    }
                                                    if (jZzc != -9223372036854775807L) {
                                                        j = jZzc;
                                                    } else if (jZzc3 != -9223372036854775807L) {
                                                        j = jZzc2 + jZzc3;
                                                    } else if (zzalcVar != null) {
                                                        j2 = zzalcVar.zze;
                                                        if (j2 != -9223372036854775807L) {
                                                            j = j2;
                                                        } else {
                                                            j = -9223372036854775807L;
                                                        }
                                                    } else {
                                                        j = -9223372036854775807L;
                                                    }
                                                    zzalcVarZzb = zzalc.zzb(xmlPullParserNewPullParser.getName(), jZzc2, j, zzaliVarZzf2, strArr, str3, strSubstring, zzalcVar);
                                                    arrayDeque = arrayDeque2;
                                                    arrayDeque.push(zzalcVarZzb);
                                                    if (zzalcVar2 != null) {
                                                        zzalcVar2.zzf(zzalcVarZzb);
                                                    }
                                                }
                                                zzaldVar4 = zzaldVar2;
                                                zzaleVar = zzaleVar;
                                                i9 = i9;
                                                zzaljVar2 = zzaljVar2;
                                                i8 = i8;
                                                map = map2;
                                            } else {
                                                if ("head".equals(name)) {
                                                    while (true) {
                                                        xmlPullParserNewPullParser.next();
                                                        if (zzej.zzc(xmlPullParserNewPullParser, "style")) {
                                                            strZza9 = zzej.zza(xmlPullParserNewPullParser, "style");
                                                            zzaliVarZzf = zzf(xmlPullParserNewPullParser, new zzali());
                                                            if (strZza9 != null) {
                                                                strArrZzg2 = zzg(strZza9);
                                                                i7 = 0;
                                                                while (i7 < length) {
                                                                    zzaliVarZzf.zzl((zzali) map3.get(strArrZzg2[i7]));
                                                                    i7++;
                                                                }
                                                            }
                                                            strZzE = zzaliVarZzf.zzE();
                                                            if (strZzE != null) {
                                                                map3.put(strZzE, zzaliVarZzf);
                                                            }
                                                        } else {
                                                            zzaldVar4 = zzaldVar4;
                                                            if (zzej.zzc(xmlPullParserNewPullParser, "region")) {
                                                                strZza = zzej.zza(xmlPullParserNewPullParser, "id");
                                                                if (strZza == null) {
                                                                    str4 = str2;
                                                                    map2 = map3;
                                                                } else {
                                                                    strZza2 = zzej.zza(xmlPullParserNewPullParser, "origin");
                                                                    if (strZza2 != null) {
                                                                        pattern = zzb;
                                                                        matcher = pattern.matcher(strZza2);
                                                                        pattern2 = zzf;
                                                                        str4 = str2;
                                                                        matcher2 = pattern2.matcher(strZza2);
                                                                        if (matcher.matches()) {
                                                                            map2 = map3;
                                                                            try {
                                                                                String strGroup17 = matcher.group(1);
                                                                                strGroup17.getClass();
                                                                                String str113 = strGroup17;
                                                                                float f17 = Float.parseFloat(strGroup17) / 100.0f;
                                                                                String strGroup18 = matcher.group(2);
                                                                                strGroup18.getClass();
                                                                                String str114 = strGroup18;
                                                                                f2 = Float.parseFloat(strGroup18) / 100.0f;
                                                                                f = f17;
                                                                                strZza3 = zzej.zza(xmlPullParserNewPullParser, "extent");
                                                                                if (strZza3 != null) {
                                                                                    matcher3 = pattern.matcher(strZza3);
                                                                                    matcher4 = pattern2.matcher(strZza3);
                                                                                    if (matcher3.matches()) {
                                                                                        try {
                                                                                            String strGroup19 = matcher3.group(1);
                                                                                            strGroup19.getClass();
                                                                                            String str115 = strGroup19;
                                                                                            float f18 = Float.parseFloat(strGroup19) / 100.0f;
                                                                                            String strGroup110 = matcher3.group(2);
                                                                                            strGroup110.getClass();
                                                                                            String str116 = strGroup110;
                                                                                            f3 = Float.parseFloat(strGroup110) / 100.0f;
                                                                                            f4 = f18;
                                                                                            strZza4 = zzej.zza(xmlPullParserNewPullParser, "displayAlign");
                                                                                            if (strZza4 != null) {
                                                                                                strZza7 = zzftt.zza(strZza4);
                                                                                                iHashCode2 = strZza7.hashCode();
                                                                                                if (iHashCode2 != -1364013995) {
                                                                                                    if (iHashCode2 != 92734940) {
                                                                                                        b3 = -1;
                                                                                                    } else {
                                                                                                        b3 = 1;
                                                                                                    }
                                                                                                } else if (strZza7.equals("center")) {
                                                                                                    b3 = 0;
                                                                                                } else {
                                                                                                    b3 = -1;
                                                                                                }
                                                                                                if (b3 != 0) {
                                                                                                    f5 = f2 + (f3 / 2.0f);
                                                                                                    i5 = 1;
                                                                                                } else if (b3 != 1) {
                                                                                                    f5 = f2;
                                                                                                    i5 = 0;
                                                                                                } else {
                                                                                                    f5 = f2 + f3;
                                                                                                    i5 = 2;
                                                                                                }
                                                                                            } else {
                                                                                                f5 = f2;
                                                                                                i5 = 0;
                                                                                            }
                                                                                            float f19 = 1.0f / i9;
                                                                                            strZza5 = zzej.zza(xmlPullParserNewPullParser, "writingMode");
                                                                                            if (strZza5 != null) {
                                                                                                strZza6 = zzftt.zza(strZza5);
                                                                                                iHashCode = strZza6.hashCode();
                                                                                                if (iHashCode != 3694) {
                                                                                                    if (iHashCode != 3553396) {
                                                                                                        if (iHashCode != 3553576) {
                                                                                                            b2 = -1;
                                                                                                        } else {
                                                                                                            b2 = 2;
                                                                                                        }
                                                                                                    } else if (strZza6.equals("tblr")) {
                                                                                                        b2 = 1;
                                                                                                    } else {
                                                                                                        b2 = -1;
                                                                                                    }
                                                                                                } else if (strZza6.equals("tb")) {
                                                                                                    b2 = 0;
                                                                                                } else {
                                                                                                    b2 = -1;
                                                                                                }
                                                                                                if (b2 != 0) {
                                                                                                    i6 = 2;
                                                                                                } else {
                                                                                                    i6 = 2;
                                                                                                }
                                                                                            } else {
                                                                                                i6 = Integer.MIN_VALUE;
                                                                                            }
                                                                                            zzalgVar = new zzalg(strZza, f, f5, 0, i5, f4, f3, 1, f19, i6);
                                                                                        } catch (NumberFormatException unused4) {
                                                                                            zzdo.zzf("TtmlParser", "Ignoring region with malformed extent: ".concat(strZza2));
                                                                                            zzalgVar = null;
                                                                                        }
                                                                                    } else if (matcher4.matches()) {
                                                                                        zzdo.zzf("TtmlParser", "Ignoring region with unsupported extent: ".concat(strZza2));
                                                                                    } else if (zzaleVar == null) {
                                                                                        zzdo.zzf("TtmlParser", "Ignoring region with missing tts:extent: ".concat(strZza2));
                                                                                    } else {
                                                                                        try {
                                                                                            String strGroup111 = matcher4.group(1);
                                                                                            strGroup111.getClass();
                                                                                            String str117 = strGroup111;
                                                                                            int i112 = Integer.parseInt(strGroup111);
                                                                                            String strGroup112 = matcher4.group(2);
                                                                                            strGroup112.getClass();
                                                                                            String str118 = strGroup112;
                                                                                            int i113 = Integer.parseInt(strGroup112);
                                                                                            float f110 = i112 / zzaleVar.zza;
                                                                                            f3 = i113 / zzaleVar.zzb;
                                                                                            f4 = f110;
                                                                                            strZza4 = zzej.zza(xmlPullParserNewPullParser, "displayAlign");
                                                                                            if (strZza4 != null) {
                                                                                                strZza7 = zzftt.zza(strZza4);
                                                                                                iHashCode2 = strZza7.hashCode();
                                                                                                if (iHashCode2 != -1364013995) {
                                                                                                    if (iHashCode2 != 92734940) {
                                                                                                        b3 = -1;
                                                                                                    } else {
                                                                                                        b3 = 1;
                                                                                                    }
                                                                                                } else if (strZza7.equals("center")) {
                                                                                                    b3 = 0;
                                                                                                } else {
                                                                                                    b3 = -1;
                                                                                                }
                                                                                                if (b3 != 0) {
                                                                                                    f5 = f2 + (f3 / 2.0f);
                                                                                                    i5 = 1;
                                                                                                } else if (b3 != 1) {
                                                                                                    f5 = f2;
                                                                                                    i5 = 0;
                                                                                                } else {
                                                                                                    f5 = f2 + f3;
                                                                                                    i5 = 2;
                                                                                                }
                                                                                            } else {
                                                                                                f5 = f2;
                                                                                                i5 = 0;
                                                                                            }
                                                                                            float f111 = 1.0f / i9;
                                                                                            strZza5 = zzej.zza(xmlPullParserNewPullParser, "writingMode");
                                                                                            if (strZza5 != null) {
                                                                                                strZza6 = zzftt.zza(strZza5);
                                                                                                iHashCode = strZza6.hashCode();
                                                                                                if (iHashCode != 3694) {
                                                                                                    if (iHashCode != 3553396) {
                                                                                                        if (iHashCode != 3553576) {
                                                                                                            b2 = -1;
                                                                                                        } else {
                                                                                                            b2 = 2;
                                                                                                        }
                                                                                                    } else if (strZza6.equals("tblr")) {
                                                                                                        b2 = 1;
                                                                                                    } else {
                                                                                                        b2 = -1;
                                                                                                    }
                                                                                                } else if (strZza6.equals("tb")) {
                                                                                                    b2 = 0;
                                                                                                } else {
                                                                                                    b2 = -1;
                                                                                                }
                                                                                                if (b2 != 0) {
                                                                                                    i6 = 2;
                                                                                                } else {
                                                                                                    i6 = 2;
                                                                                                }
                                                                                            } else {
                                                                                                i6 = Integer.MIN_VALUE;
                                                                                            }
                                                                                            zzalgVar = new zzalg(strZza, f, f5, 0, i5, f4, f3, 1, f111, i6);
                                                                                        } catch (NumberFormatException unused5) {
                                                                                            zzdo.zzf("TtmlParser", "Ignoring region with malformed extent: ".concat(strZza2));
                                                                                            zzalgVar = null;
                                                                                        }
                                                                                    }
                                                                                    if (zzalgVar != null) {
                                                                                        map4.put(zzalgVar.zza, zzalgVar);
                                                                                    }
                                                                                } else {
                                                                                    zzdo.zzf("TtmlParser", "Ignoring region without an extent");
                                                                                }
                                                                            } catch (NumberFormatException unused6) {
                                                                                zzdo.zzf("TtmlParser", "Ignoring region with malformed origin: ".concat(strZza2));
                                                                            }
                                                                        } else {
                                                                            map2 = map3;
                                                                            if (!matcher2.matches()) {
                                                                                zzdo.zzf("TtmlParser", "Ignoring region with unsupported origin: ".concat(strZza2));
                                                                            } else if (zzaleVar == null) {
                                                                                zzdo.zzf("TtmlParser", "Ignoring region with missing tts:extent: ".concat(strZza2));
                                                                            } else {
                                                                                try {
                                                                                    String strGroup113 = matcher2.group(1);
                                                                                    strGroup113.getClass();
                                                                                    String str119 = strGroup113;
                                                                                    int i21 = Integer.parseInt(strGroup113);
                                                                                    String strGroup114 = matcher2.group(2);
                                                                                    strGroup114.getClass();
                                                                                    String str120 = strGroup114;
                                                                                    float f112 = Integer.parseInt(strGroup114);
                                                                                    f = i21 / zzaleVar.zza;
                                                                                    f2 = f112 / zzaleVar.zzb;
                                                                                    strZza3 = zzej.zza(xmlPullParserNewPullParser, "extent");
                                                                                    if (strZza3 != null) {
                                                                                        matcher3 = pattern.matcher(strZza3);
                                                                                        matcher4 = pattern2.matcher(strZza3);
                                                                                        if (matcher3.matches()) {
                                                                                            String strGroup115 = matcher3.group(1);
                                                                                            strGroup115.getClass();
                                                                                            String str1110 = strGroup115;
                                                                                            float f113 = Float.parseFloat(strGroup115) / 100.0f;
                                                                                            String strGroup116 = matcher3.group(2);
                                                                                            strGroup116.getClass();
                                                                                            String str1111 = strGroup116;
                                                                                            f3 = Float.parseFloat(strGroup116) / 100.0f;
                                                                                            f4 = f113;
                                                                                            strZza4 = zzej.zza(xmlPullParserNewPullParser, "displayAlign");
                                                                                            if (strZza4 != null) {
                                                                                                strZza7 = zzftt.zza(strZza4);
                                                                                                iHashCode2 = strZza7.hashCode();
                                                                                                if (iHashCode2 != -1364013995) {
                                                                                                    if (iHashCode2 != 92734940) {
                                                                                                        b3 = -1;
                                                                                                    } else {
                                                                                                        b3 = 1;
                                                                                                    }
                                                                                                } else if (strZza7.equals("center")) {
                                                                                                    b3 = 0;
                                                                                                } else {
                                                                                                    b3 = -1;
                                                                                                }
                                                                                                if (b3 != 0) {
                                                                                                    f5 = f2 + (f3 / 2.0f);
                                                                                                    i5 = 1;
                                                                                                } else if (b3 != 1) {
                                                                                                    f5 = f2;
                                                                                                    i5 = 0;
                                                                                                } else {
                                                                                                    f5 = f2 + f3;
                                                                                                    i5 = 2;
                                                                                                }
                                                                                            } else {
                                                                                                f5 = f2;
                                                                                                i5 = 0;
                                                                                            }
                                                                                            float f114 = 1.0f / i9;
                                                                                            strZza5 = zzej.zza(xmlPullParserNewPullParser, "writingMode");
                                                                                            if (strZza5 != null) {
                                                                                                strZza6 = zzftt.zza(strZza5);
                                                                                                iHashCode = strZza6.hashCode();
                                                                                                if (iHashCode != 3694) {
                                                                                                    if (iHashCode != 3553396) {
                                                                                                        if (iHashCode != 3553576) {
                                                                                                            b2 = -1;
                                                                                                        } else {
                                                                                                            b2 = 2;
                                                                                                        }
                                                                                                    } else if (strZza6.equals("tblr")) {
                                                                                                        b2 = 1;
                                                                                                    } else {
                                                                                                        b2 = -1;
                                                                                                    }
                                                                                                } else if (strZza6.equals("tb")) {
                                                                                                    b2 = 0;
                                                                                                } else {
                                                                                                    b2 = -1;
                                                                                                }
                                                                                                if (b2 != 0) {
                                                                                                    i6 = 2;
                                                                                                } else {
                                                                                                    i6 = 2;
                                                                                                }
                                                                                            } else {
                                                                                                i6 = Integer.MIN_VALUE;
                                                                                            }
                                                                                            zzalgVar = new zzalg(strZza, f, f5, 0, i5, f4, f3, 1, f114, i6);
                                                                                        } else if (matcher4.matches()) {
                                                                                            zzdo.zzf("TtmlParser", "Ignoring region with unsupported extent: ".concat(strZza2));
                                                                                        } else if (zzaleVar == null) {
                                                                                            zzdo.zzf("TtmlParser", "Ignoring region with missing tts:extent: ".concat(strZza2));
                                                                                        } else {
                                                                                            String strGroup117 = matcher4.group(1);
                                                                                            strGroup117.getClass();
                                                                                            String str1112 = strGroup117;
                                                                                            int i114 = Integer.parseInt(strGroup117);
                                                                                            String strGroup118 = matcher4.group(2);
                                                                                            strGroup118.getClass();
                                                                                            String str1113 = strGroup118;
                                                                                            int i115 = Integer.parseInt(strGroup118);
                                                                                            float f115 = i114 / zzaleVar.zza;
                                                                                            f3 = i115 / zzaleVar.zzb;
                                                                                            f4 = f115;
                                                                                            strZza4 = zzej.zza(xmlPullParserNewPullParser, "displayAlign");
                                                                                            if (strZza4 != null) {
                                                                                                strZza7 = zzftt.zza(strZza4);
                                                                                                iHashCode2 = strZza7.hashCode();
                                                                                                if (iHashCode2 != -1364013995) {
                                                                                                    if (iHashCode2 != 92734940) {
                                                                                                        b3 = -1;
                                                                                                    } else {
                                                                                                        b3 = 1;
                                                                                                    }
                                                                                                } else if (strZza7.equals("center")) {
                                                                                                    b3 = 0;
                                                                                                } else {
                                                                                                    b3 = -1;
                                                                                                }
                                                                                                if (b3 != 0) {
                                                                                                    f5 = f2 + (f3 / 2.0f);
                                                                                                    i5 = 1;
                                                                                                } else if (b3 != 1) {
                                                                                                    f5 = f2;
                                                                                                    i5 = 0;
                                                                                                } else {
                                                                                                    f5 = f2 + f3;
                                                                                                    i5 = 2;
                                                                                                }
                                                                                            } else {
                                                                                                f5 = f2;
                                                                                                i5 = 0;
                                                                                            }
                                                                                            float f116 = 1.0f / i9;
                                                                                            strZza5 = zzej.zza(xmlPullParserNewPullParser, "writingMode");
                                                                                            if (strZza5 != null) {
                                                                                                strZza6 = zzftt.zza(strZza5);
                                                                                                iHashCode = strZza6.hashCode();
                                                                                                if (iHashCode != 3694) {
                                                                                                    if (iHashCode != 3553396) {
                                                                                                        if (iHashCode != 3553576) {
                                                                                                            b2 = -1;
                                                                                                        } else {
                                                                                                            b2 = 2;
                                                                                                        }
                                                                                                    } else if (strZza6.equals("tblr")) {
                                                                                                        b2 = 1;
                                                                                                    } else {
                                                                                                        b2 = -1;
                                                                                                    }
                                                                                                } else if (strZza6.equals("tb")) {
                                                                                                    b2 = 0;
                                                                                                } else {
                                                                                                    b2 = -1;
                                                                                                }
                                                                                                if (b2 != 0) {
                                                                                                    i6 = 2;
                                                                                                } else {
                                                                                                    i6 = 2;
                                                                                                }
                                                                                            } else {
                                                                                                i6 = Integer.MIN_VALUE;
                                                                                            }
                                                                                            zzalgVar = new zzalg(strZza, f, f5, 0, i5, f4, f3, 1, f116, i6);
                                                                                        }
                                                                                        if (zzalgVar != null) {
                                                                                            map4.put(zzalgVar.zza, zzalgVar);
                                                                                        }
                                                                                    } else {
                                                                                        zzdo.zzf("TtmlParser", "Ignoring region without an extent");
                                                                                    }
                                                                                } catch (NumberFormatException unused7) {
                                                                                    zzdo.zzf("TtmlParser", "Ignoring region with malformed origin: ".concat(strZza2));
                                                                                }
                                                                            }
                                                                        }
                                                                    } else {
                                                                        str4 = str2;
                                                                        map2 = map3;
                                                                        zzdo.zzf("TtmlParser", "Ignoring region without an origin");
                                                                    }
                                                                }
                                                                zzalgVar = null;
                                                                if (zzalgVar != null) {
                                                                    map4.put(zzalgVar.zza, zzalgVar);
                                                                }
                                                            } else if (zzej.zzc(xmlPullParserNewPullParser, str2)) {
                                                                do {
                                                                    xmlPullParserNewPullParser.next();
                                                                    if (zzej.zzc(xmlPullParserNewPullParser, "image")) {
                                                                        map5.put(strZza8, xmlPullParserNewPullParser.nextText());
                                                                    }
                                                                } while (!zzej.zzb(xmlPullParserNewPullParser, str2));
                                                            }
                                                            if (zzej.zzb(xmlPullParserNewPullParser, "head")) {
                                                                zzaldVar2 = zzaldVar4;
                                                                arrayDeque = arrayDeque2;
                                                            } else {
                                                                zzaldVar4 = zzaldVar4;
                                                                str2 = str4;
                                                                map3 = map2;
                                                            }
                                                        }
                                                        str4 = str2;
                                                        map2 = map3;
                                                        if (zzej.zzb(xmlPullParserNewPullParser, "head")) {
                                                            zzaldVar2 = zzaldVar4;
                                                            arrayDeque = arrayDeque2;
                                                        } else {
                                                            zzaldVar4 = zzaldVar4;
                                                            str2 = str4;
                                                            map3 = map2;
                                                        }
                                                    }
                                                } else {
                                                    map2 = map3;
                                                    zzaldVar = zzaldVar4;
                                                    try {
                                                        attributeCount = xmlPullParserNewPullParser.getAttributeCount();
                                                        zzali zzaliVarZzf3 = zzf(xmlPullParserNewPullParser, null);
                                                        strArr = null;
                                                        strSubstring = null;
                                                        str3 = str;
                                                        jZzc = -9223372036854775807L;
                                                        jZzc2 = -9223372036854775807L;
                                                        jZzc3 = -9223372036854775807L;
                                                        i4 = 0;
                                                        while (i4 < attributeCount) {
                                                            try {
                                                                attributeName = xmlPullParserNewPullParser.getAttributeName(i4);
                                                                attributeValue = xmlPullParserNewPullParser.getAttributeValue(i4);
                                                                switch (attributeName) {
                                                                    case -934795532:
                                                                        if (!attributeName.equals("region")) {
                                                                            b = 4;
                                                                        } else {
                                                                            b = -1;
                                                                        }
                                                                        break;
                                                                    case 99841:
                                                                        if (!attributeName.equals("dur")) {
                                                                            b = 2;
                                                                        } else {
                                                                            b = -1;
                                                                        }
                                                                        break;
                                                                    case 100571:
                                                                        if (!attributeName.equals("end")) {
                                                                            b = 1;
                                                                        } else {
                                                                            b = -1;
                                                                        }
                                                                        break;
                                                                    case 93616297:
                                                                        if (!attributeName.equals("begin")) {
                                                                            b = 0;
                                                                        } else {
                                                                            b = -1;
                                                                        }
                                                                        break;
                                                                    case 109780401:
                                                                        if (!attributeName.equals("style")) {
                                                                            b = 3;
                                                                        } else {
                                                                            b = -1;
                                                                        }
                                                                        break;
                                                                    case 1292595405:
                                                                        if (!attributeName.equals("backgroundImage")) {
                                                                            b = 5;
                                                                        } else {
                                                                            b = -1;
                                                                        }
                                                                        break;
                                                                    default:
                                                                        b = -1;
                                                                        break;
                                                                }
                                                                if (b == 0) {
                                                                    zzaldVar2 = zzaldVar;
                                                                    jZzc2 = zzc(attributeValue, zzaldVar2);
                                                                } else if (b == 1) {
                                                                    zzaldVar2 = zzaldVar;
                                                                    jZzc = zzc(attributeValue, zzaldVar2);
                                                                } else if (b != 2) {
                                                                    if (b == 3) {
                                                                        strArrZzg = zzg(attributeValue);
                                                                        if (strArrZzg.length > 0) {
                                                                            strArr = strArrZzg;
                                                                        }
                                                                    } else if (b != 4) {
                                                                        if (b == 5) {
                                                                            try {
                                                                                if (attributeValue.startsWith("#")) {
                                                                                    try {
                                                                                        strSubstring = attributeValue.substring(1);
                                                                                    } catch (zzakb e) {
                                                                                        e = e;
                                                                                        zzakbVar = e;
                                                                                        zzaldVar2 = zzaldVar;
                                                                                        arrayDeque = arrayDeque2;
                                                                                        zzdo.zzg("TtmlParser", "Suppressing parser error", zzakbVar);
                                                                                        zzaldVar4 = zzaldVar2;
                                                                                        map = map2;
                                                                                        i8 = 1;
                                                                                        xmlPullParserNewPullParser.next();
                                                                                        eventType = xmlPullParserNewPullParser.getEventType();
                                                                                        map3 = map;
                                                                                        arrayDeque2 = arrayDeque;
                                                                                        str5 = str;
                                                                                        str6 = str6;
                                                                                    }
                                                                                }
                                                                            } catch (zzakb e2) {
                                                                                e = e2;
                                                                            }
                                                                        }
                                                                    } else if (map4.containsKey(attributeValue)) {
                                                                        str3 = attributeValue;
                                                                    }
                                                                    zzaldVar2 = zzaldVar;
                                                                } else {
                                                                    zzaldVar2 = zzaldVar;
                                                                    jZzc3 = zzc(attributeValue, zzaldVar2);
                                                                }
                                                                try {
                                                                    i4++;
                                                                    zzaldVar = zzaldVar2;
                                                                } catch (zzakb e3) {
                                                                    e = e3;
                                                                    zzakbVar = e;
                                                                    arrayDeque = arrayDeque2;
                                                                    zzdo.zzg("TtmlParser", "Suppressing parser error", zzakbVar);
                                                                    zzaldVar4 = zzaldVar2;
                                                                    map = map2;
                                                                    i8 = 1;
                                                                    xmlPullParserNewPullParser.next();
                                                                    eventType = xmlPullParserNewPullParser.getEventType();
                                                                    map3 = map;
                                                                    arrayDeque2 = arrayDeque;
                                                                    str5 = str;
                                                                    str6 = str6;
                                                                }
                                                            } catch (zzakb e4) {
                                                                e = e4;
                                                                zzaldVar2 = zzaldVar;
                                                            }
                                                        }
                                                        zzaldVar2 = zzaldVar;
                                                        if (zzalcVar2 != null) {
                                                            j3 = zzalcVar2.zzd;
                                                            if (j3 == -9223372036854775807L) {
                                                                zzalcVar = zzalcVar2;
                                                            } else {
                                                                if (jZzc2 != -9223372036854775807L) {
                                                                    jZzc2 += j3;
                                                                } else {
                                                                    jZzc2 = -9223372036854775807L;
                                                                }
                                                                if (jZzc != -9223372036854775807L) {
                                                                    jZzc += j3;
                                                                    zzalcVar = zzalcVar2;
                                                                } else {
                                                                    zzalcVar = zzalcVar2;
                                                                    jZzc = -9223372036854775807L;
                                                                }
                                                            }
                                                        } else {
                                                            zzalcVar = null;
                                                        }
                                                        if (jZzc != -9223372036854775807L) {
                                                            j = jZzc;
                                                        } else if (jZzc3 != -9223372036854775807L) {
                                                            j = jZzc2 + jZzc3;
                                                        } else if (zzalcVar != null) {
                                                            j2 = zzalcVar.zze;
                                                            if (j2 != -9223372036854775807L) {
                                                                j = j2;
                                                            } else {
                                                                j = -9223372036854775807L;
                                                            }
                                                        } else {
                                                            j = -9223372036854775807L;
                                                        }
                                                        try {
                                                            zzalcVarZzb = zzalc.zzb(xmlPullParserNewPullParser.getName(), jZzc2, j, zzaliVarZzf3, strArr, str3, strSubstring, zzalcVar);
                                                            arrayDeque = arrayDeque2;
                                                            try {
                                                                arrayDeque.push(zzalcVarZzb);
                                                                if (zzalcVar2 != null) {
                                                                    zzalcVar2.zzf(zzalcVarZzb);
                                                                }
                                                            } catch (zzakb e5) {
                                                                e = e5;
                                                                zzakbVar = e;
                                                                zzdo.zzg("TtmlParser", "Suppressing parser error", zzakbVar);
                                                                zzaldVar4 = zzaldVar2;
                                                                map = map2;
                                                                i8 = 1;
                                                            }
                                                        } catch (zzakb e6) {
                                                            e = e6;
                                                            arrayDeque = arrayDeque2;
                                                        }
                                                    } catch (zzakb e7) {
                                                        e = e7;
                                                        zzaldVar2 = zzaldVar;
                                                        arrayDeque = arrayDeque2;
                                                    }
                                                }
                                                zzaldVar4 = zzaldVar2;
                                                zzaleVar = zzaleVar;
                                                i9 = i9;
                                                zzaljVar2 = zzaljVar2;
                                                i8 = i8;
                                                map = map2;
                                            }
                                            xmlPullParserNewPullParser.next();
                                            eventType = xmlPullParserNewPullParser.getEventType();
                                            map3 = map;
                                            arrayDeque2 = arrayDeque;
                                            str5 = str;
                                            str6 = str6;
                                        }
                                    } catch (NumberFormatException unused8) {
                                        str6 = str6;
                                    }
                                } else {
                                    zzdo.zzf("TtmlParser", "Ignoring malformed cell resolution: ".concat(attributeValue6));
                                    str6 = str6;
                                    zzaldVar3 = zzaldVar6;
                                    i9 = 15;
                                }
                            }
                            strZza10 = zzej.zza(xmlPullParserNewPullParser, "extent");
                            if (strZza10 == null) {
                                zzaleVar = null;
                            } else {
                                matcher5 = zzf.matcher(strZza10);
                                if (matcher5.matches()) {
                                    zzdo.zzf("TtmlParser", "Ignoring non-pixel tts extent: ".concat(strZza10));
                                } else {
                                    String strGroup20 = matcher5.group(1);
                                    strGroup20.getClass();
                                    String str20 = strGroup20;
                                    int i116 = Integer.parseInt(strGroup20);
                                    String strGroup21 = matcher5.group(2);
                                    strGroup21.getClass();
                                    String str121 = strGroup21;
                                    zzaleVar = new zzale(i116, Integer.parseInt(strGroup21));
                                }
                                zzaleVar = null;
                            }
                            zzaldVar4 = zzaldVar3;
                        } else {
                            str6 = str6;
                            arrayDeque2 = arrayDeque2;
                            zzaljVar2 = zzaljVar2;
                            i8 = i8;
                            zzaleVar = zzaleVar;
                            i9 = i9;
                        }
                        str2 = "metadata";
                        if (name.equals("tt") || name.equals("head") || name.equals(y8.h.E0) || name.equals("div") || name.equals(NotificationBundleProcessor.PUSH_MINIFIED_BUTTON_ICON) || name.equals("span") || name.equals("br") || name.equals("style") || name.equals("styling") || name.equals("layout") || name.equals("region") || name.equals("metadata") || name.equals("image") || name.equals("data") || name.equals("information")) {
                            if ("head".equals(name)) {
                                while (true) {
                                    xmlPullParserNewPullParser.next();
                                    if (zzej.zzc(xmlPullParserNewPullParser, "style")) {
                                        strZza9 = zzej.zza(xmlPullParserNewPullParser, "style");
                                        zzaliVarZzf = zzf(xmlPullParserNewPullParser, new zzali());
                                        if (strZza9 != null) {
                                            strArrZzg2 = zzg(strZza9);
                                            i7 = 0;
                                            while (i7 < length) {
                                                zzaliVarZzf.zzl((zzali) map3.get(strArrZzg2[i7]));
                                                i7++;
                                            }
                                        }
                                        strZzE = zzaliVarZzf.zzE();
                                        if (strZzE != null) {
                                            map3.put(strZzE, zzaliVarZzf);
                                        }
                                    } else {
                                        zzaldVar4 = zzaldVar4;
                                        if (zzej.zzc(xmlPullParserNewPullParser, "region")) {
                                            strZza = zzej.zza(xmlPullParserNewPullParser, "id");
                                            if (strZza == null) {
                                                str4 = str2;
                                                map2 = map3;
                                            } else {
                                                strZza2 = zzej.zza(xmlPullParserNewPullParser, "origin");
                                                if (strZza2 != null) {
                                                    pattern = zzb;
                                                    matcher = pattern.matcher(strZza2);
                                                    pattern2 = zzf;
                                                    str4 = str2;
                                                    matcher2 = pattern2.matcher(strZza2);
                                                    if (matcher.matches()) {
                                                        map2 = map3;
                                                        String strGroup119 = matcher.group(1);
                                                        strGroup119.getClass();
                                                        String str1114 = strGroup119;
                                                        float f117 = Float.parseFloat(strGroup119) / 100.0f;
                                                        String strGroup120 = matcher.group(2);
                                                        strGroup120.getClass();
                                                        String str1115 = strGroup120;
                                                        f2 = Float.parseFloat(strGroup120) / 100.0f;
                                                        f = f117;
                                                        strZza3 = zzej.zza(xmlPullParserNewPullParser, "extent");
                                                        if (strZza3 != null) {
                                                            matcher3 = pattern.matcher(strZza3);
                                                            matcher4 = pattern2.matcher(strZza3);
                                                            if (matcher3.matches()) {
                                                                String strGroup1110 = matcher3.group(1);
                                                                strGroup1110.getClass();
                                                                String str1116 = strGroup1110;
                                                                float f118 = Float.parseFloat(strGroup1110) / 100.0f;
                                                                String strGroup1111 = matcher3.group(2);
                                                                strGroup1111.getClass();
                                                                String str1117 = strGroup1111;
                                                                f3 = Float.parseFloat(strGroup1111) / 100.0f;
                                                                f4 = f118;
                                                                strZza4 = zzej.zza(xmlPullParserNewPullParser, "displayAlign");
                                                                if (strZza4 != null) {
                                                                    strZza7 = zzftt.zza(strZza4);
                                                                    iHashCode2 = strZza7.hashCode();
                                                                    if (iHashCode2 != -1364013995) {
                                                                        if (iHashCode2 != 92734940 && strZza7.equals("after")) {
                                                                            b3 = 1;
                                                                        } else {
                                                                            b3 = -1;
                                                                        }
                                                                    } else if (strZza7.equals("center")) {
                                                                        b3 = 0;
                                                                    } else {
                                                                        b3 = -1;
                                                                    }
                                                                    if (b3 != 0) {
                                                                        f5 = f2 + (f3 / 2.0f);
                                                                        i5 = 1;
                                                                    } else if (b3 != 1) {
                                                                        f5 = f2;
                                                                        i5 = 0;
                                                                    } else {
                                                                        f5 = f2 + f3;
                                                                        i5 = 2;
                                                                    }
                                                                } else {
                                                                    f5 = f2;
                                                                    i5 = 0;
                                                                }
                                                                float f119 = 1.0f / i9;
                                                                strZza5 = zzej.zza(xmlPullParserNewPullParser, "writingMode");
                                                                if (strZza5 != null) {
                                                                    strZza6 = zzftt.zza(strZza5);
                                                                    iHashCode = strZza6.hashCode();
                                                                    if (iHashCode != 3694) {
                                                                        if (iHashCode != 3553396) {
                                                                            if (iHashCode != 3553576 && strZza6.equals("tbrl")) {
                                                                                b2 = 2;
                                                                            } else {
                                                                                b2 = -1;
                                                                            }
                                                                        } else if (strZza6.equals("tblr")) {
                                                                            b2 = 1;
                                                                        } else {
                                                                            b2 = -1;
                                                                        }
                                                                    } else if (strZza6.equals("tb")) {
                                                                        b2 = 0;
                                                                    } else {
                                                                        b2 = -1;
                                                                    }
                                                                    if (b2 != 0 || b2 == 1) {
                                                                        i6 = 2;
                                                                    } else if (b2 != 2) {
                                                                        i6 = Integer.MIN_VALUE;
                                                                    } else {
                                                                        i6 = 1;
                                                                    }
                                                                } else {
                                                                    i6 = Integer.MIN_VALUE;
                                                                }
                                                                zzalgVar = new zzalg(strZza, f, f5, 0, i5, f4, f3, 1, f119, i6);
                                                            } else if (matcher4.matches()) {
                                                                zzdo.zzf("TtmlParser", "Ignoring region with unsupported extent: ".concat(strZza2));
                                                            } else if (zzaleVar == null) {
                                                                zzdo.zzf("TtmlParser", "Ignoring region with missing tts:extent: ".concat(strZza2));
                                                            } else {
                                                                String strGroup1112 = matcher4.group(1);
                                                                strGroup1112.getClass();
                                                                String str1118 = strGroup1112;
                                                                int i117 = Integer.parseInt(strGroup1112);
                                                                String strGroup1113 = matcher4.group(2);
                                                                strGroup1113.getClass();
                                                                String str1119 = strGroup1113;
                                                                int i118 = Integer.parseInt(strGroup1113);
                                                                float f1110 = i117 / zzaleVar.zza;
                                                                f3 = i118 / zzaleVar.zzb;
                                                                f4 = f1110;
                                                                strZza4 = zzej.zza(xmlPullParserNewPullParser, "displayAlign");
                                                                if (strZza4 != null) {
                                                                    strZza7 = zzftt.zza(strZza4);
                                                                    iHashCode2 = strZza7.hashCode();
                                                                    if (iHashCode2 != -1364013995) {
                                                                        if (iHashCode2 != 92734940) {
                                                                            b3 = -1;
                                                                        } else {
                                                                            b3 = 1;
                                                                        }
                                                                    } else if (strZza7.equals("center")) {
                                                                        b3 = 0;
                                                                    } else {
                                                                        b3 = -1;
                                                                    }
                                                                    if (b3 != 0) {
                                                                        f5 = f2 + (f3 / 2.0f);
                                                                        i5 = 1;
                                                                    } else if (b3 != 1) {
                                                                        f5 = f2;
                                                                        i5 = 0;
                                                                    } else {
                                                                        f5 = f2 + f3;
                                                                        i5 = 2;
                                                                    }
                                                                } else {
                                                                    f5 = f2;
                                                                    i5 = 0;
                                                                }
                                                                float f1111 = 1.0f / i9;
                                                                strZza5 = zzej.zza(xmlPullParserNewPullParser, "writingMode");
                                                                if (strZza5 != null) {
                                                                    strZza6 = zzftt.zza(strZza5);
                                                                    iHashCode = strZza6.hashCode();
                                                                    if (iHashCode != 3694) {
                                                                        if (iHashCode != 3553396) {
                                                                            if (iHashCode != 3553576) {
                                                                                b2 = -1;
                                                                            } else {
                                                                                b2 = 2;
                                                                            }
                                                                        } else if (strZza6.equals("tblr")) {
                                                                            b2 = 1;
                                                                        } else {
                                                                            b2 = -1;
                                                                        }
                                                                    } else if (strZza6.equals("tb")) {
                                                                        b2 = 0;
                                                                    } else {
                                                                        b2 = -1;
                                                                    }
                                                                    if (b2 != 0) {
                                                                        i6 = 2;
                                                                    } else {
                                                                        i6 = 2;
                                                                    }
                                                                } else {
                                                                    i6 = Integer.MIN_VALUE;
                                                                }
                                                                zzalgVar = new zzalg(strZza, f, f5, 0, i5, f4, f3, 1, f1111, i6);
                                                            }
                                                            if (zzalgVar != null) {
                                                                map4.put(zzalgVar.zza, zzalgVar);
                                                            }
                                                        } else {
                                                            zzdo.zzf("TtmlParser", "Ignoring region without an extent");
                                                        }
                                                    } else {
                                                        map2 = map3;
                                                        if (!matcher2.matches()) {
                                                            zzdo.zzf("TtmlParser", "Ignoring region with unsupported origin: ".concat(strZza2));
                                                        } else if (zzaleVar == null) {
                                                            zzdo.zzf("TtmlParser", "Ignoring region with missing tts:extent: ".concat(strZza2));
                                                        } else {
                                                            String strGroup1114 = matcher2.group(1);
                                                            strGroup1114.getClass();
                                                            String str1120 = strGroup1114;
                                                            int i22 = Integer.parseInt(strGroup1114);
                                                            String strGroup1115 = matcher2.group(2);
                                                            strGroup1115.getClass();
                                                            String str122 = strGroup1115;
                                                            float f1112 = Integer.parseInt(strGroup1115);
                                                            f = i22 / zzaleVar.zza;
                                                            f2 = f1112 / zzaleVar.zzb;
                                                            strZza3 = zzej.zza(xmlPullParserNewPullParser, "extent");
                                                            if (strZza3 != null) {
                                                                matcher3 = pattern.matcher(strZza3);
                                                                matcher4 = pattern2.matcher(strZza3);
                                                                if (matcher3.matches()) {
                                                                    String strGroup1116 = matcher3.group(1);
                                                                    strGroup1116.getClass();
                                                                    String str11110 = strGroup1116;
                                                                    float f1113 = Float.parseFloat(strGroup1116) / 100.0f;
                                                                    String strGroup1117 = matcher3.group(2);
                                                                    strGroup1117.getClass();
                                                                    String str11111 = strGroup1117;
                                                                    f3 = Float.parseFloat(strGroup1117) / 100.0f;
                                                                    f4 = f1113;
                                                                    strZza4 = zzej.zza(xmlPullParserNewPullParser, "displayAlign");
                                                                    if (strZza4 != null) {
                                                                        strZza7 = zzftt.zza(strZza4);
                                                                        iHashCode2 = strZza7.hashCode();
                                                                        if (iHashCode2 != -1364013995) {
                                                                            if (iHashCode2 != 92734940) {
                                                                                b3 = -1;
                                                                            } else {
                                                                                b3 = 1;
                                                                            }
                                                                        } else if (strZza7.equals("center")) {
                                                                            b3 = 0;
                                                                        } else {
                                                                            b3 = -1;
                                                                        }
                                                                        if (b3 != 0) {
                                                                            f5 = f2 + (f3 / 2.0f);
                                                                            i5 = 1;
                                                                        } else if (b3 != 1) {
                                                                            f5 = f2;
                                                                            i5 = 0;
                                                                        } else {
                                                                            f5 = f2 + f3;
                                                                            i5 = 2;
                                                                        }
                                                                    } else {
                                                                        f5 = f2;
                                                                        i5 = 0;
                                                                    }
                                                                    float f1114 = 1.0f / i9;
                                                                    strZza5 = zzej.zza(xmlPullParserNewPullParser, "writingMode");
                                                                    if (strZza5 != null) {
                                                                        strZza6 = zzftt.zza(strZza5);
                                                                        iHashCode = strZza6.hashCode();
                                                                        if (iHashCode != 3694) {
                                                                            if (iHashCode != 3553396) {
                                                                                if (iHashCode != 3553576) {
                                                                                    b2 = -1;
                                                                                } else {
                                                                                    b2 = 2;
                                                                                }
                                                                            } else if (strZza6.equals("tblr")) {
                                                                                b2 = 1;
                                                                            } else {
                                                                                b2 = -1;
                                                                            }
                                                                        } else if (strZza6.equals("tb")) {
                                                                            b2 = 0;
                                                                        } else {
                                                                            b2 = -1;
                                                                        }
                                                                        if (b2 != 0) {
                                                                            i6 = 2;
                                                                        } else {
                                                                            i6 = 2;
                                                                        }
                                                                    } else {
                                                                        i6 = Integer.MIN_VALUE;
                                                                    }
                                                                    zzalgVar = new zzalg(strZza, f, f5, 0, i5, f4, f3, 1, f1114, i6);
                                                                } else if (matcher4.matches()) {
                                                                    zzdo.zzf("TtmlParser", "Ignoring region with unsupported extent: ".concat(strZza2));
                                                                } else if (zzaleVar == null) {
                                                                    zzdo.zzf("TtmlParser", "Ignoring region with missing tts:extent: ".concat(strZza2));
                                                                } else {
                                                                    String strGroup1118 = matcher4.group(1);
                                                                    strGroup1118.getClass();
                                                                    String str11112 = strGroup1118;
                                                                    int i119 = Integer.parseInt(strGroup1118);
                                                                    String strGroup1119 = matcher4.group(2);
                                                                    strGroup1119.getClass();
                                                                    String str11113 = strGroup1119;
                                                                    int i1110 = Integer.parseInt(strGroup1119);
                                                                    float f1115 = i119 / zzaleVar.zza;
                                                                    f3 = i1110 / zzaleVar.zzb;
                                                                    f4 = f1115;
                                                                    strZza4 = zzej.zza(xmlPullParserNewPullParser, "displayAlign");
                                                                    if (strZza4 != null) {
                                                                        strZza7 = zzftt.zza(strZza4);
                                                                        iHashCode2 = strZza7.hashCode();
                                                                        if (iHashCode2 != -1364013995) {
                                                                            if (iHashCode2 != 92734940) {
                                                                                b3 = -1;
                                                                            } else {
                                                                                b3 = 1;
                                                                            }
                                                                        } else if (strZza7.equals("center")) {
                                                                            b3 = 0;
                                                                        } else {
                                                                            b3 = -1;
                                                                        }
                                                                        if (b3 != 0) {
                                                                            f5 = f2 + (f3 / 2.0f);
                                                                            i5 = 1;
                                                                        } else if (b3 != 1) {
                                                                            f5 = f2;
                                                                            i5 = 0;
                                                                        } else {
                                                                            f5 = f2 + f3;
                                                                            i5 = 2;
                                                                        }
                                                                    } else {
                                                                        f5 = f2;
                                                                        i5 = 0;
                                                                    }
                                                                    float f1116 = 1.0f / i9;
                                                                    strZza5 = zzej.zza(xmlPullParserNewPullParser, "writingMode");
                                                                    if (strZza5 != null) {
                                                                        strZza6 = zzftt.zza(strZza5);
                                                                        iHashCode = strZza6.hashCode();
                                                                        if (iHashCode != 3694) {
                                                                            if (iHashCode != 3553396) {
                                                                                if (iHashCode != 3553576) {
                                                                                    b2 = -1;
                                                                                } else {
                                                                                    b2 = 2;
                                                                                }
                                                                            } else if (strZza6.equals("tblr")) {
                                                                                b2 = 1;
                                                                            } else {
                                                                                b2 = -1;
                                                                            }
                                                                        } else if (strZza6.equals("tb")) {
                                                                            b2 = 0;
                                                                        } else {
                                                                            b2 = -1;
                                                                        }
                                                                        if (b2 != 0) {
                                                                            i6 = 2;
                                                                        } else {
                                                                            i6 = 2;
                                                                        }
                                                                    } else {
                                                                        i6 = Integer.MIN_VALUE;
                                                                    }
                                                                    zzalgVar = new zzalg(strZza, f, f5, 0, i5, f4, f3, 1, f1116, i6);
                                                                }
                                                                if (zzalgVar != null) {
                                                                    map4.put(zzalgVar.zza, zzalgVar);
                                                                }
                                                            } else {
                                                                zzdo.zzf("TtmlParser", "Ignoring region without an extent");
                                                            }
                                                        }
                                                    }
                                                } else {
                                                    str4 = str2;
                                                    map2 = map3;
                                                    zzdo.zzf("TtmlParser", "Ignoring region without an origin");
                                                }
                                            }
                                            zzalgVar = null;
                                            if (zzalgVar != null) {
                                                map4.put(zzalgVar.zza, zzalgVar);
                                            }
                                        } else if (zzej.zzc(xmlPullParserNewPullParser, str2)) {
                                            do {
                                                xmlPullParserNewPullParser.next();
                                                if (zzej.zzc(xmlPullParserNewPullParser, "image") && (strZza8 = zzej.zza(xmlPullParserNewPullParser, "id")) != null) {
                                                    map5.put(strZza8, xmlPullParserNewPullParser.nextText());
                                                }
                                            } while (!zzej.zzb(xmlPullParserNewPullParser, str2));
                                        }
                                        if (zzej.zzb(xmlPullParserNewPullParser, "head")) {
                                            zzaldVar2 = zzaldVar4;
                                            arrayDeque = arrayDeque2;
                                        } else {
                                            zzaldVar4 = zzaldVar4;
                                            str2 = str4;
                                            map3 = map2;
                                        }
                                    }
                                    str4 = str2;
                                    map2 = map3;
                                    if (zzej.zzb(xmlPullParserNewPullParser, "head")) {
                                        zzaldVar2 = zzaldVar4;
                                        arrayDeque = arrayDeque2;
                                    } else {
                                        zzaldVar4 = zzaldVar4;
                                        str2 = str4;
                                        map3 = map2;
                                    }
                                }
                            } else {
                                map2 = map3;
                                zzaldVar = zzaldVar4;
                                attributeCount = xmlPullParserNewPullParser.getAttributeCount();
                                zzali zzaliVarZzf4 = zzf(xmlPullParserNewPullParser, null);
                                strArr = null;
                                strSubstring = null;
                                str3 = str;
                                jZzc = -9223372036854775807L;
                                jZzc2 = -9223372036854775807L;
                                jZzc3 = -9223372036854775807L;
                                i4 = 0;
                                while (i4 < attributeCount) {
                                    attributeName = xmlPullParserNewPullParser.getAttributeName(i4);
                                    attributeValue = xmlPullParserNewPullParser.getAttributeValue(i4);
                                    switch (attributeName) {
                                        case -934795532:
                                            if (!attributeName.equals("region")) {
                                                b = 4;
                                            } else {
                                                b = -1;
                                            }
                                            break;
                                        case 99841:
                                            if (!attributeName.equals("dur")) {
                                                b = 2;
                                            } else {
                                                b = -1;
                                            }
                                            break;
                                        case 100571:
                                            if (!attributeName.equals("end")) {
                                                b = 1;
                                            } else {
                                                b = -1;
                                            }
                                            break;
                                        case 93616297:
                                            if (!attributeName.equals("begin")) {
                                                b = 0;
                                            } else {
                                                b = -1;
                                            }
                                            break;
                                        case 109780401:
                                            if (!attributeName.equals("style")) {
                                                b = 3;
                                            } else {
                                                b = -1;
                                            }
                                            break;
                                        case 1292595405:
                                            if (!attributeName.equals("backgroundImage")) {
                                                b = 5;
                                            } else {
                                                b = -1;
                                            }
                                            break;
                                        default:
                                            b = -1;
                                            break;
                                    }
                                    if (b == 0) {
                                        zzaldVar2 = zzaldVar;
                                        jZzc2 = zzc(attributeValue, zzaldVar2);
                                    } else if (b == 1) {
                                        zzaldVar2 = zzaldVar;
                                        jZzc = zzc(attributeValue, zzaldVar2);
                                    } else if (b != 2) {
                                        if (b == 3) {
                                            strArrZzg = zzg(attributeValue);
                                            if (strArrZzg.length > 0) {
                                                strArr = strArrZzg;
                                            }
                                        } else if (b != 4) {
                                            if (b == 5) {
                                                if (attributeValue.startsWith("#")) {
                                                    strSubstring = attributeValue.substring(1);
                                                }
                                            }
                                        } else if (map4.containsKey(attributeValue)) {
                                            str3 = attributeValue;
                                        }
                                        zzaldVar2 = zzaldVar;
                                    } else {
                                        zzaldVar2 = zzaldVar;
                                        jZzc3 = zzc(attributeValue, zzaldVar2);
                                    }
                                    i4++;
                                    zzaldVar = zzaldVar2;
                                }
                                zzaldVar2 = zzaldVar;
                                if (zzalcVar2 != null) {
                                    j3 = zzalcVar2.zzd;
                                    if (j3 == -9223372036854775807L) {
                                        zzalcVar = zzalcVar2;
                                    } else {
                                        if (jZzc2 != -9223372036854775807L) {
                                            jZzc2 += j3;
                                        } else {
                                            jZzc2 = -9223372036854775807L;
                                        }
                                        if (jZzc != -9223372036854775807L) {
                                            jZzc += j3;
                                            zzalcVar = zzalcVar2;
                                        } else {
                                            zzalcVar = zzalcVar2;
                                            jZzc = -9223372036854775807L;
                                        }
                                    }
                                } else {
                                    zzalcVar = null;
                                }
                                if (jZzc != -9223372036854775807L) {
                                    j = jZzc;
                                } else if (jZzc3 != -9223372036854775807L) {
                                    j = jZzc2 + jZzc3;
                                } else if (zzalcVar != null) {
                                    j2 = zzalcVar.zze;
                                    if (j2 != -9223372036854775807L) {
                                        j = j2;
                                    } else {
                                        j = -9223372036854775807L;
                                    }
                                } else {
                                    j = -9223372036854775807L;
                                }
                                zzalcVarZzb = zzalc.zzb(xmlPullParserNewPullParser.getName(), jZzc2, j, zzaliVarZzf4, strArr, str3, strSubstring, zzalcVar);
                                arrayDeque = arrayDeque2;
                                arrayDeque.push(zzalcVarZzb);
                                if (zzalcVar2 != null) {
                                    zzalcVar2.zzf(zzalcVarZzb);
                                }
                            }
                            zzaldVar4 = zzaldVar2;
                            zzaleVar = zzaleVar;
                            i9 = i9;
                            zzaljVar2 = zzaljVar2;
                            i8 = i8;
                            map = map2;
                        } else {
                            zzdo.zze("TtmlParser", "Ignoring unsupported tag: " + xmlPullParserNewPullParser.getName());
                            map = map3;
                            arrayDeque = arrayDeque2;
                        }
                        i8 = 1;
                    } else {
                        str6 = str6;
                        HashMap map6 = map3;
                        arrayDeque = arrayDeque2;
                        zzaljVar = zzaljVar2;
                        i3 = i8;
                        if (eventType == 4) {
                            zzalcVar2.getClass();
                            zzalcVar2.zzf(zzalc.zzc(xmlPullParserNewPullParser.getText()));
                        } else {
                            if (eventType == 3) {
                                if (xmlPullParserNewPullParser.getName().equals("tt")) {
                                    zzalc zzalcVar3 = (zzalc) arrayDeque.peek();
                                    zzalcVar3.getClass();
                                    map = map6;
                                    zzaljVar2 = new zzalj(zzalcVar3, map, map4, map5);
                                } else {
                                    map = map6;
                                    zzaljVar2 = zzaljVar;
                                }
                                arrayDeque.pop();
                            }
                            i8 = i3;
                        }
                        map = map6;
                        zzaljVar2 = zzaljVar;
                        i8 = i3;
                    }
                } else {
                    str = str5;
                    str6 = str6;
                    map = map3;
                    arrayDeque = arrayDeque2;
                    zzaljVar = zzaljVar2;
                    i3 = i8;
                    if (eventType == 2) {
                        i8 = i3 + 1;
                    } else {
                        if (eventType == 3) {
                            i8 = i3 - 1;
                        }
                        zzaljVar2 = zzaljVar;
                        i8 = i3;
                    }
                    zzaljVar2 = zzaljVar;
                }
                xmlPullParserNewPullParser.next();
                eventType = xmlPullParserNewPullParser.getEventType();
                map3 = map;
                arrayDeque2 = arrayDeque;
                str5 = str;
                str6 = str6;
            }
            zzalj zzaljVar3 = zzaljVar2;
            zzaljVar3.getClass();
            return zzaljVar3;
        } catch (IOException e8) {
            throw new IllegalStateException("Unexpected error when reading input.", e8);
        } catch (XmlPullParserException e9) {
            throw new IllegalStateException("Unable to decode source", e9);
        }
    }

    public zzalf() {
        try {
            XmlPullParserFactory xmlPullParserFactoryNewInstance = XmlPullParserFactory.newInstance();
            this.zzi = xmlPullParserFactoryNewInstance;
            xmlPullParserFactoryNewInstance.setNamespaceAware(true);
        } catch (XmlPullParserException e) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e);
        }
    }
}
