package com.applovin.impl;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.text.TextUtils;
import android.util.Pair;
import com.applovin.exoplayer2.common.base.Ascii;
import com.unity3d.ads.core.domain.CommonGetHeaderBiddingToken;
import com.unity3d.services.core.device.MimeTypes;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public abstract class md {
    private static final Pattern a = Pattern.compile("^\\D?(\\d+)$");
    private static final HashMap b = new HashMap();
    private static int c = -1;

    private interface d {
        int a();

        MediaCodecInfo a(int i);

        boolean a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);

        boolean b();

        boolean b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);
    }

    private static final class e implements d {
        private e() {
        }

        @Override // com.applovin.impl.md.d
        public boolean a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return false;
        }

        @Override // com.applovin.impl.md.d
        public boolean b() {
            return false;
        }

        @Override // com.applovin.impl.md.d
        public boolean b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return "secure-playback".equals(str) && MimeTypes.VIDEO_H264.equals(str2);
        }

        @Override // com.applovin.impl.md.d
        public MediaCodecInfo a(int i) {
            return MediaCodecList.getCodecInfoAt(i);
        }

        @Override // com.applovin.impl.md.d
        public int a() {
            return MediaCodecList.getCodecCount();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    interface g {
        int a(Object obj);
    }

    private static int a(int i) {
        switch (i) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 4;
            case 3:
                return 8;
            case 4:
                return 16;
            case 5:
                return 32;
            case 6:
                return 64;
            case 7:
                return 128;
            case 8:
                return 256;
            case 9:
                return 512;
            case 10:
                return 1024;
            case 11:
                return 2048;
            case 12:
                return 4096;
            case 13:
                return 8192;
            case 14:
                return 16384;
            case 15:
                return 32768;
            case 16:
                return 65536;
            case 17:
                return 131072;
            case 18:
                return 262144;
            case 19:
                return 524288;
            case 20:
                return 1048576;
            case 21:
                return 2097152;
            case 22:
                return 4194304;
            case 23:
                return 8388608;
            default:
                return -1;
        }
    }

    private static int b(int i) {
        switch (i) {
            case 10:
                return 1;
            case 11:
                return 4;
            case 12:
                return 8;
            case 13:
                return 16;
            default:
                switch (i) {
                    case 20:
                        return 32;
                    case 21:
                        return 64;
                    case 22:
                        return 128;
                    default:
                        switch (i) {
                            case 30:
                                return 256;
                            case 31:
                                return 512;
                            case 32:
                                return 1024;
                            default:
                                switch (i) {
                                    case 40:
                                        return 2048;
                                    case 41:
                                        return 4096;
                                    case 42:
                                        return 8192;
                                    default:
                                        switch (i) {
                                            case 50:
                                                return 16384;
                                            case 51:
                                                return 32768;
                                            case 52:
                                                return 65536;
                                            default:
                                                return -1;
                                        }
                                }
                        }
                }
        }
    }

    private static int c(int i) {
        if (i == 1 || i == 2) {
            return 25344;
        }
        switch (i) {
            case 8:
            case 16:
            case 32:
                return 101376;
            case 64:
                return 202752;
            case 128:
            case 256:
                return 414720;
            case 512:
                return 921600;
            case 1024:
                return 1310720;
            case 2048:
            case 4096:
                return 2097152;
            case 8192:
                return 2228224;
            case 16384:
                return 5652480;
            case 32768:
            case 65536:
                return 9437184;
            case 131072:
            case 262144:
            case 524288:
                return 35651584;
            default:
                return -1;
        }
    }

    private static int d(int i) {
        if (i == 66) {
            return 1;
        }
        if (i == 77) {
            return 2;
        }
        if (i == 88) {
            return 4;
        }
        if (i == 100) {
            return 8;
        }
        if (i == 110) {
            return 16;
        }
        if (i != 122) {
            return i != 244 ? -1 : 64;
        }
        return 32;
    }

    private static int e(int i) {
        int i2 = 17;
        if (i != 17) {
            i2 = 20;
            if (i != 20) {
                i2 = 23;
                if (i != 23) {
                    i2 = 29;
                    if (i != 29) {
                        i2 = 39;
                        if (i != 39) {
                            i2 = 42;
                            if (i != 42) {
                                switch (i) {
                                    case 1:
                                        return 1;
                                    case 2:
                                        return 2;
                                    case 3:
                                        return 3;
                                    case 4:
                                        return 4;
                                    case 5:
                                        return 5;
                                    case 6:
                                        return 6;
                                    default:
                                        return -1;
                                }
                            }
                        }
                    }
                }
            }
        }
        return i2;
    }

    private static int f(int i) {
        if (i == 10) {
            return 1;
        }
        if (i == 11) {
            return 2;
        }
        if (i == 20) {
            return 4;
        }
        if (i == 21) {
            return 8;
        }
        if (i == 30) {
            return 16;
        }
        if (i == 31) {
            return 32;
        }
        if (i == 40) {
            return 64;
        }
        if (i == 41) {
            return 128;
        }
        if (i == 50) {
            return 256;
        }
        if (i == 51) {
            return 512;
        }
        switch (i) {
            case 60:
                return 2048;
            case 61:
                return 4096;
            case 62:
                return 8192;
            default:
                return -1;
        }
    }

    private static int g(int i) {
        if (i == 0) {
            return 1;
        }
        if (i == 1) {
            return 2;
        }
        if (i != 2) {
            return i != 3 ? -1 : 8;
        }
        return 4;
    }

    private static boolean g(MediaCodecInfo mediaCodecInfo) {
        if (xp.a >= 29) {
            return h(mediaCodecInfo);
        }
        String lowerCase = Ascii.toLowerCase(mediaCodecInfo.getName());
        return (lowerCase.startsWith("omx.google.") || lowerCase.startsWith("c2.android.") || lowerCase.startsWith("c2.google.")) ? false : true;
    }

    public static class c extends Exception {
        private c(Throwable th) {
            super("Failed to query underlying media codecs", th);
        }
    }

    private static boolean f(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isSoftwareOnly();
    }

    private static boolean h(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isVendor();
    }

    private static Pair c(String str, String[] strArr) {
        if (strArr.length < 3) {
            oc.d("MediaCodecUtil", "Ignoring malformed Dolby Vision codec string: " + str);
            return null;
        }
        Matcher matcher = a.matcher(strArr[1]);
        if (!matcher.matches()) {
            oc.d("MediaCodecUtil", "Ignoring malformed Dolby Vision codec string: " + str);
            return null;
        }
        String strGroup = matcher.group(1);
        Integer numB = b(strGroup);
        if (numB == null) {
            oc.d("MediaCodecUtil", "Unknown Dolby Vision profile string: " + strGroup);
            return null;
        }
        String str2 = strArr[2];
        Integer numA = a(str2);
        if (numA == null) {
            oc.d("MediaCodecUtil", "Unknown Dolby Vision level string: " + str2);
            return null;
        }
        return new Pair(numB, numA);
    }

    private static Pair d(String str, String[] strArr) {
        if (strArr.length < 4) {
            oc.d("MediaCodecUtil", "Ignoring malformed HEVC codec string: " + str);
            return null;
        }
        int i = 1;
        Matcher matcher = a.matcher(strArr[1]);
        if (!matcher.matches()) {
            oc.d("MediaCodecUtil", "Ignoring malformed HEVC codec string: " + str);
            return null;
        }
        String strGroup = matcher.group(1);
        if (!"1".equals(strGroup)) {
            if (!CommonGetHeaderBiddingToken.HB_TOKEN_VERSION.equals(strGroup)) {
                oc.d("MediaCodecUtil", "Unknown HEVC profile string: " + strGroup);
                return null;
            }
            i = 2;
        }
        String str2 = strArr[3];
        Integer numC = c(str2);
        if (numC == null) {
            oc.d("MediaCodecUtil", "Unknown HEVC level string: " + str2);
            return null;
        }
        return new Pair(Integer.valueOf(i), numC);
    }

    private static Pair e(String str, String[] strArr) {
        if (strArr.length < 3) {
            oc.d("MediaCodecUtil", "Ignoring malformed VP9 codec string: " + str);
            return null;
        }
        try {
            int i = Integer.parseInt(strArr[1]);
            int i2 = Integer.parseInt(strArr[2]);
            int iG = g(i);
            if (iG == -1) {
                oc.d("MediaCodecUtil", "Unknown VP9 profile: " + i);
                return null;
            }
            int iF = f(i2);
            if (iF == -1) {
                oc.d("MediaCodecUtil", "Unknown VP9 level: " + i2);
                return null;
            }
            return new Pair(Integer.valueOf(iG), Integer.valueOf(iF));
        } catch (NumberFormatException unused) {
            oc.d("MediaCodecUtil", "Ignoring malformed VP9 codec string: " + str);
            return null;
        }
    }

    private static boolean e(MediaCodecInfo mediaCodecInfo) {
        if (xp.a >= 29) {
            return f(mediaCodecInfo);
        }
        String lowerCase = Ascii.toLowerCase(mediaCodecInfo.getName());
        if (lowerCase.startsWith("arc.")) {
            return false;
        }
        return lowerCase.startsWith("omx.google.") || lowerCase.startsWith("omx.ffmpeg.") || (lowerCase.startsWith("omx.sec.") && lowerCase.contains(".sw.")) || lowerCase.equals("omx.qcom.video.decoder.hevcswvdec") || lowerCase.startsWith("c2.android.") || lowerCase.startsWith("c2.google.") || !(lowerCase.startsWith("omx.") || lowerCase.startsWith("c2."));
    }

    private static final class f implements d {
        private final int a;
        private MediaCodecInfo[] b;

        @Override // com.applovin.impl.md.d
        public boolean b() {
            return true;
        }

        public f(boolean z, boolean z2) {
            this.a = (z || z2) ? 1 : 0;
        }

        @Override // com.applovin.impl.md.d
        public int a() {
            c();
            return this.b.length;
        }

        @Override // com.applovin.impl.md.d
        public boolean b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureSupported(str);
        }

        private void c() {
            if (this.b == null) {
                this.b = new MediaCodecList(this.a).getCodecInfos();
            }
        }

        @Override // com.applovin.impl.md.d
        public MediaCodecInfo a(int i) {
            c();
            return this.b[i];
        }

        @Override // com.applovin.impl.md.d
        public boolean a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureRequired(str);
        }
    }

    private static final class b {
        public final String a;
        public final boolean b;
        public final boolean c;

        public b(String str, boolean z, boolean z2) {
            this.a = str;
            this.b = z;
            this.c = z2;
        }

        public int hashCode() {
            return ((((this.a.hashCode() + 31) * 31) + (this.b ? 1231 : 1237)) * 31) + (this.c ? 1231 : 1237);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || obj.getClass() != b.class) {
                return false;
            }
            b bVar = (b) obj;
            return TextUtils.equals(this.a, bVar.a) && this.b == bVar.b && this.c == bVar.c;
        }
    }

    private static Integer b(String str) {
        if (str == null) {
            return null;
        }
        str.hashCode();
        switch (str) {
            case "00":
                return 1;
            case "01":
                return 2;
            case "02":
                return 4;
            case "03":
                return 8;
            case "04":
                return 16;
            case "05":
                return 32;
            case "06":
                return 64;
            case "07":
                return 128;
            case "08":
                return 256;
            case "09":
                return 512;
            default:
                return null;
        }
    }

    private static Integer a(String str) {
        if (str == null) {
            return null;
        }
        str.hashCode();
        switch (str) {
            case "01":
                return 1;
            case "02":
                return 2;
            case "03":
                return 4;
            case "04":
                return 8;
            case "05":
                return 16;
            case "06":
                return 32;
            case "07":
                return 64;
            case "08":
                return 128;
            case "09":
                return 256;
            case "10":
                return 512;
            case "11":
                return 1024;
            case "12":
                return 2048;
            case "13":
                return 4096;
            default:
                return null;
        }
    }

    private static boolean d(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isHardwareAccelerated();
    }

    private static Integer c(String str) {
        if (str == null) {
            return null;
        }
        str.hashCode();
        switch (str) {
            case "H30":
                return 2;
            case "H60":
                return 8;
            case "H63":
                return 32;
            case "H90":
                return 128;
            case "H93":
                return 512;
            case "L30":
                return 1;
            case "L60":
                return 4;
            case "L63":
                return 16;
            case "L90":
                return 64;
            case "L93":
                return 256;
            case "H120":
                return 2048;
            case "H123":
                return 8192;
            case "H150":
                return 32768;
            case "H153":
                return 131072;
            case "H156":
                return 524288;
            case "H180":
                return 2097152;
            case "H183":
                return 8388608;
            case "H186":
                return 33554432;
            case "L120":
                return 1024;
            case "L123":
                return 4096;
            case "L150":
                return 16384;
            case "L153":
                return 65536;
            case "L156":
                return 262144;
            case "L180":
                return 1048576;
            case "L183":
                return 4194304;
            case "L186":
                return 16777216;
            default:
                return null;
        }
    }

    private static boolean c(MediaCodecInfo mediaCodecInfo) {
        if (xp.a >= 29) {
            return d(mediaCodecInfo);
        }
        return !e(mediaCodecInfo);
    }

    private static Pair b(String str, String[] strArr) {
        int i;
        int i2;
        if (strArr.length < 2) {
            oc.d("MediaCodecUtil", "Ignoring malformed AVC codec string: " + str);
            return null;
        }
        try {
            if (strArr[1].length() == 6) {
                i2 = Integer.parseInt(strArr[1].substring(0, 2), 16);
                i = Integer.parseInt(strArr[1].substring(4), 16);
            } else if (strArr.length >= 3) {
                int i3 = Integer.parseInt(strArr[1]);
                i = Integer.parseInt(strArr[2]);
                i2 = i3;
            } else {
                oc.d("MediaCodecUtil", "Ignoring malformed AVC codec string: " + str);
                return null;
            }
            int iD = d(i2);
            if (iD == -1) {
                oc.d("MediaCodecUtil", "Unknown AVC profile: " + i2);
                return null;
            }
            int iB = b(i);
            if (iB == -1) {
                oc.d("MediaCodecUtil", "Unknown AVC level: " + i);
                return null;
            }
            return new Pair(Integer.valueOf(iD), Integer.valueOf(iB));
        } catch (NumberFormatException unused) {
            oc.d("MediaCodecUtil", "Ignoring malformed AVC codec string: " + str);
            return null;
        }
    }

    private static Pair a(String str, String[] strArr) {
        int iE;
        if (strArr.length != 3) {
            oc.d("MediaCodecUtil", "Ignoring malformed MP4A codec string: " + str);
            return null;
        }
        try {
            if ("audio/mp4a-latm".equals(hf.a(Integer.parseInt(strArr[1], 16))) && (iE = e(Integer.parseInt(strArr[2]))) != -1) {
                return new Pair(Integer.valueOf(iE), 0);
            }
        } catch (NumberFormatException unused) {
            oc.d("MediaCodecUtil", "Ignoring malformed MP4A codec string: " + str);
        }
        return null;
    }

    private static boolean b(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isAlias();
    }

    private static Pair a(String str, String[] strArr, r3 r3Var) {
        int i;
        if (strArr.length < 4) {
            oc.d("MediaCodecUtil", "Ignoring malformed AV1 codec string: " + str);
            return null;
        }
        int i2 = 1;
        try {
            int i3 = Integer.parseInt(strArr[1]);
            int i4 = Integer.parseInt(strArr[2].substring(0, 2));
            int i5 = Integer.parseInt(strArr[3]);
            if (i3 != 0) {
                oc.d("MediaCodecUtil", "Unknown AV1 profile: " + i3);
                return null;
            }
            if (i5 != 8 && i5 != 10) {
                oc.d("MediaCodecUtil", "Unknown AV1 bit depth: " + i5);
                return null;
            }
            if (i5 != 8) {
                i2 = (r3Var == null || !(r3Var.d != null || (i = r3Var.c) == 7 || i == 6)) ? 2 : 4096;
            }
            int iA = a(i4);
            if (iA == -1) {
                oc.d("MediaCodecUtil", "Unknown AV1 level: " + i4);
                return null;
            }
            return new Pair(Integer.valueOf(i2), Integer.valueOf(iA));
        } catch (NumberFormatException unused) {
            oc.d("MediaCodecUtil", "Ignoring malformed AV1 codec string: " + str);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int b(jd jdVar) {
        return jdVar.a.startsWith("OMX.google") ? 1 : 0;
    }

    public static synchronized List b(String str, boolean z, boolean z2) {
        d eVar;
        b bVar = new b(str, z, z2);
        HashMap map = b;
        List list = (List) map.get(bVar);
        if (list != null) {
            return list;
        }
        int i = xp.a;
        if (i >= 21) {
            eVar = new f(z, z2);
        } else {
            eVar = new e();
        }
        ArrayList arrayListA = a(bVar, eVar);
        if (z && arrayListA.isEmpty() && 21 <= i && i <= 23) {
            arrayListA = a(bVar, new e());
            if (!arrayListA.isEmpty()) {
                oc.d("MediaCodecUtil", "MediaCodecList API didn't list secure decoder for: " + str + ". Assuming: " + ((jd) arrayListA.get(0)).a);
            }
        }
        a(str, arrayListA);
        List listUnmodifiableList = Collections.unmodifiableList(arrayListA);
        map.put(bVar, listUnmodifiableList);
        return listUnmodifiableList;
    }

    public static int b() {
        if (c == -1) {
            int iMax = 0;
            jd jdVarA = a(MimeTypes.VIDEO_H264, false, false);
            if (jdVarA != null) {
                MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArrA = jdVarA.a();
                int length = codecProfileLevelArrA.length;
                int iMax2 = 0;
                while (iMax < length) {
                    iMax2 = Math.max(c(codecProfileLevelArrA[iMax].level), iMax2);
                    iMax++;
                }
                iMax = Math.max(iMax2, xp.a >= 21 ? 345600 : 172800);
            }
            c = iMax;
        }
        return c;
    }

    private static String a(MediaCodecInfo mediaCodecInfo, String str, String str2) {
        for (String str3 : mediaCodecInfo.getSupportedTypes()) {
            if (str3.equalsIgnoreCase(str2)) {
                return str3;
            }
        }
        if (str2.equals("video/dolby-vision")) {
            if ("OMX.MS.HEVCDV.Decoder".equals(str)) {
                return "video/hevcdv";
            }
            if ("OMX.RTK.video.decoder".equals(str) || "OMX.realtek.video.decoder.tunneled".equals(str)) {
                return "video/dv_hevc";
            }
            return null;
        }
        if (str2.equals("audio/alac") && "OMX.lge.alac.decoder".equals(str)) {
            return "audio/x-lg-alac";
        }
        if (str2.equals("audio/flac") && "OMX.lge.flac.decoder".equals(str)) {
            return "audio/x-lg-flac";
        }
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:11:0x002e  */
    public static Pair a(e9 e9Var) {
        String str = e9Var.j;
        if (str == null) {
            return null;
        }
        String[] strArrSplit = str.split("\\.");
        if ("video/dolby-vision".equals(e9Var.m)) {
            return c(e9Var.j, strArrSplit);
        }
        byte b2 = 0;
        String str2 = strArrSplit[0];
        str2.hashCode();
        str2.hashCode();
        switch (str2.hashCode()) {
            case 3004662:
                if (!str2.equals("av01")) {
                    b2 = -1;
                }
                break;
            case 3006243:
                if (!str2.equals("avc1")) {
                    b2 = -1;
                } else {
                    b2 = 1;
                }
                break;
            case 3006244:
                if (!str2.equals("avc2")) {
                    b2 = -1;
                } else {
                    b2 = 2;
                }
                break;
            case 3199032:
                if (!str2.equals("hev1")) {
                    b2 = -1;
                } else {
                    b2 = 3;
                }
                break;
            case 3214780:
                if (!str2.equals("hvc1")) {
                    b2 = -1;
                } else {
                    b2 = 4;
                }
                break;
            case 3356560:
                if (!str2.equals("mp4a")) {
                    b2 = -1;
                } else {
                    b2 = 5;
                }
                break;
            case 3624515:
                if (!str2.equals("vp09")) {
                    b2 = -1;
                } else {
                    b2 = 6;
                }
                break;
            default:
                b2 = -1;
                break;
        }
        switch (b2) {
            case 0:
                return a(e9Var.j, strArrSplit, e9Var.y);
            case 1:
            case 2:
                return b(e9Var.j, strArrSplit);
            case 3:
            case 4:
                return d(e9Var.j, strArrSplit);
            case 5:
                return a(e9Var.j, strArrSplit);
            case 6:
                return e(e9Var.j, strArrSplit);
            default:
                return null;
        }
    }

    public static jd a(String str, boolean z, boolean z2) {
        List listB = b(str, z, z2);
        if (listB.isEmpty()) {
            return null;
        }
        return (jd) listB.get(0);
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0081  */
    /* JADX WARN: Code duplicated, block: B:39:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:57:0x0101 A[Catch: Exception -> 0x014f, TRY_ENTER, TryCatch #1 {Exception -> 0x014f, blocks: (B:3:0x0008, B:5:0x001b, B:60:0x0120, B:8:0x002d, B:11:0x0038, B:54:0x00f9, B:57:0x0101, B:59:0x0107, B:61:0x012a, B:62:0x014d), top: B:69:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0025  */
    /* JADX WARN: Code duplicated, block: B:81:0x012a A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    private static ArrayList a(b bVar, d dVar) throws c {
        String strA;
        String str;
        String str2;
        int i;
        boolean z;
        int i2;
        b bVar2 = bVar;
        try {
            ArrayList arrayList = new ArrayList();
            String str3 = bVar2.a;
            int iA = dVar.a();
            boolean zB = dVar.b();
            int i3 = 0;
            while (i3 < iA) {
                MediaCodecInfo mediaCodecInfoA = dVar.a(i3);
                if (a(mediaCodecInfoA)) {
                    i = i3;
                    z = zB;
                    i2 = iA;
                } else {
                    String name = mediaCodecInfoA.getName();
                    if (a(mediaCodecInfoA, name, zB, str3) && (strA = a(mediaCodecInfoA, name, str3)) != null) {
                        try {
                            MediaCodecInfo.CodecCapabilities capabilitiesForType = mediaCodecInfoA.getCapabilitiesForType(strA);
                            boolean zB2 = dVar.b("tunneled-playback", strA, capabilitiesForType);
                            boolean zA = dVar.a("tunneled-playback", strA, capabilitiesForType);
                            boolean z2 = bVar2.c;
                            if ((z2 || !zA) && (!z2 || zB2)) {
                                boolean zB3 = dVar.b("secure-playback", strA, capabilitiesForType);
                                boolean zA2 = dVar.a("secure-playback", strA, capabilitiesForType);
                                boolean z3 = bVar2.b;
                                if ((z3 || !zA2) && (!z3 || zB3)) {
                                    boolean zC = c(mediaCodecInfoA);
                                    boolean zE = e(mediaCodecInfoA);
                                    boolean zG = g(mediaCodecInfoA);
                                    if (zB && bVar2.b == zB3) {
                                        str = strA;
                                        i = i3;
                                        z = zB;
                                        i2 = iA;
                                        arrayList.add(jd.a(name, str3, strA, capabilitiesForType, zC, zE, zG, false, false));
                                    } else if (zB) {
                                        str = strA;
                                        i = i3;
                                        z = zB;
                                        i2 = iA;
                                        if (!z) {
                                            continue;
                                        }
                                    } else {
                                        try {
                                            if (bVar2.b) {
                                                str = strA;
                                                i = i3;
                                                z = zB;
                                                i2 = iA;
                                                if (!z && zB3) {
                                                    StringBuilder sb = new StringBuilder();
                                                    try {
                                                        sb.append(name);
                                                        sb.append(".secure");
                                                        str2 = name;
                                                        try {
                                                            arrayList.add(jd.a(sb.toString(), str3, str, capabilitiesForType, zC, zE, zG, false, true));
                                                            return arrayList;
                                                        } catch (Exception e2) {
                                                            e = e2;
                                                            if (xp.a > 23 && !arrayList.isEmpty()) {
                                                                oc.b("MediaCodecUtil", "Skipping codec " + str2 + " (failed to query capabilities)");
                                                                i3 = i + 1;
                                                                bVar2 = bVar;
                                                                iA = i2;
                                                                zB = z;
                                                            } else {
                                                                oc.b("MediaCodecUtil", "Failed to query codec " + str2 + " (" + str + ")");
                                                                throw e;
                                                            }
                                                        }
                                                    } catch (Exception e3) {
                                                        e = e3;
                                                        str2 = name;
                                                    }
                                                }
                                            } else {
                                                str = strA;
                                                i = i3;
                                                z = zB;
                                                i2 = iA;
                                                try {
                                                    arrayList.add(jd.a(name, str3, strA, capabilitiesForType, zC, zE, zG, false, false));
                                                } catch (Exception e4) {
                                                    e = e4;
                                                    str2 = name;
                                                    if (xp.a > 23) {
                                                    }
                                                    oc.b("MediaCodecUtil", "Failed to query codec " + str2 + " (" + str + ")");
                                                    throw e;
                                                }
                                            }
                                        } catch (Exception e5) {
                                            e = e5;
                                            str = strA;
                                            i = i3;
                                            z = zB;
                                            i2 = iA;
                                            str2 = name;
                                            if (xp.a > 23) {
                                            }
                                            oc.b("MediaCodecUtil", "Failed to query codec " + str2 + " (" + str + ")");
                                            throw e;
                                        }
                                    }
                                } else {
                                    i = i3;
                                    z = zB;
                                    i2 = iA;
                                }
                            } else {
                                i = i3;
                                z = zB;
                                i2 = iA;
                            }
                        } catch (Exception e6) {
                            e = e6;
                            str = strA;
                            str2 = name;
                            i = i3;
                            z = zB;
                            i2 = iA;
                        }
                    } else {
                        i = i3;
                        z = zB;
                        i2 = iA;
                    }
                }
                i3 = i + 1;
                bVar2 = bVar;
                iA = i2;
                zB = z;
            }
            return arrayList;
        } catch (Exception e7) {
            throw new c(e7);
        }
    }

    private static boolean a(MediaCodecInfo mediaCodecInfo, String str, boolean z, String str2) {
        if (mediaCodecInfo.isEncoder() || (!z && str.endsWith(".secure"))) {
            return false;
        }
        int i = xp.a;
        if (i < 21 && ("CIPAACDecoder".equals(str) || "CIPMP3Decoder".equals(str) || "CIPVorbisDecoder".equals(str) || "CIPAMRNBDecoder".equals(str) || "AACDecoder".equals(str) || "MP3Decoder".equals(str))) {
            return false;
        }
        if (i < 18 && "OMX.MTK.AUDIO.DECODER.AAC".equals(str)) {
            String str3 = xp.b;
            if ("a70".equals(str3) || ("Xiaomi".equals(xp.c) && str3.startsWith("HM"))) {
                return false;
            }
        }
        if (i == 16 && "OMX.qcom.audio.decoder.mp3".equals(str)) {
            String str4 = xp.b;
            if ("dlxu".equals(str4) || "protou".equals(str4) || "ville".equals(str4) || "villeplus".equals(str4) || "villec2".equals(str4) || str4.startsWith("gee") || "C6602".equals(str4) || "C6603".equals(str4) || "C6606".equals(str4) || "C6616".equals(str4) || "L36h".equals(str4) || "SO-02E".equals(str4)) {
                return false;
            }
        }
        if (i == 16 && "OMX.qcom.audio.decoder.aac".equals(str)) {
            String str5 = xp.b;
            if ("C1504".equals(str5) || "C1505".equals(str5) || "C1604".equals(str5) || "C1605".equals(str5)) {
                return false;
            }
        }
        if (i < 24 && (("OMX.SEC.aac.dec".equals(str) || "OMX.Exynos.AAC.Decoder".equals(str)) && "samsung".equals(xp.c))) {
            String str6 = xp.b;
            if (str6.startsWith("zeroflte") || str6.startsWith("zerolte") || str6.startsWith("zenlte") || "SC-05G".equals(str6) || "marinelteatt".equals(str6) || "404SC".equals(str6) || "SC-04G".equals(str6) || "SCV31".equals(str6)) {
                return false;
            }
        }
        if (i <= 19 && "OMX.SEC.vp8.dec".equals(str) && "samsung".equals(xp.c)) {
            String str7 = xp.b;
            if (str7.startsWith("d2") || str7.startsWith("serrano") || str7.startsWith("jflte") || str7.startsWith("santos") || str7.startsWith("t0")) {
                return false;
            }
        }
        if (i <= 19 && xp.b.startsWith("jflte") && "OMX.qcom.video.decoder.vp8".equals(str)) {
            return false;
        }
        return ("audio/eac3-joc".equals(str2) && "OMX.MTK.AUDIO.DECODER.DSPAC3".equals(str)) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(jd jdVar) {
        String str = jdVar.a;
        if (str.startsWith("OMX.google") || str.startsWith("c2.android")) {
            return 1;
        }
        return (xp.a >= 26 || !str.equals("OMX.MTK.AUDIO.DECODER.RAW")) ? 0 : -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(e9 e9Var, jd jdVar) {
        try {
            return jdVar.b(e9Var) ? 1 : 0;
        } catch (c unused) {
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(g gVar, Object obj, Object obj2) {
        return gVar.a(obj2) - gVar.a(obj);
    }

    private static void a(List list, final g gVar) {
        Collections.sort(list, new Comparator() { // from class: com.applovin.impl.md$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return md.a(gVar, obj, obj2);
            }
        });
    }

    public static jd a() {
        return a("audio/raw", false, false);
    }

    public static List a(List list, final e9 e9Var) {
        ArrayList arrayList = new ArrayList(list);
        a(arrayList, new g() { // from class: com.applovin.impl.md$$ExternalSyntheticLambda3
            @Override // com.applovin.impl.md.g
            public final int a(Object obj) {
                return md.a(e9Var, (jd) obj);
            }
        });
        return arrayList;
    }

    private static void a(String str, List list) {
        if ("audio/raw".equals(str)) {
            if (xp.a < 26 && xp.b.equals("R9") && list.size() == 1 && ((jd) list.get(0)).a.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                list.add(jd.a("OMX.google.raw.decoder", "audio/raw", "audio/raw", null, false, true, false, false, false));
            }
            a(list, new g() { // from class: com.applovin.impl.md$$ExternalSyntheticLambda1
                @Override // com.applovin.impl.md.g
                public final int a(Object obj) {
                    return md.a((jd) obj);
                }
            });
        }
        int i = xp.a;
        if (i < 21 && list.size() > 1) {
            String str2 = ((jd) list.get(0)).a;
            if ("OMX.SEC.mp3.dec".equals(str2) || "OMX.SEC.MP3.Decoder".equals(str2) || "OMX.brcm.audio.mp3.decoder".equals(str2)) {
                a(list, new g() { // from class: com.applovin.impl.md$$ExternalSyntheticLambda2
                    @Override // com.applovin.impl.md.g
                    public final int a(Object obj) {
                        return md.b((jd) obj);
                    }
                });
            }
        }
        if (i >= 32 || list.size() <= 1 || !"OMX.qti.audio.decoder.flac".equals(((jd) list.get(0)).a)) {
            return;
        }
        list.add((jd) list.remove(0));
    }

    private static boolean a(MediaCodecInfo mediaCodecInfo) {
        return xp.a >= 29 && b(mediaCodecInfo);
    }
}
