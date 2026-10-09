package com.google.android.gms.internal.ads;

import android.util.Pair;
import com.unity3d.ads.core.domain.CommonGetHeaderBiddingToken;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcy {
    public static final /* synthetic */ int zza = 0;
    private static final byte[] zzb = {0, 0, 0, 1};
    private static final String[] zzc = {"", "A", "B", "C"};
    private static final Pattern zzd = Pattern.compile("^\\D?(\\d+)$");

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:131:0x0251  */
    /* JADX WARN: Code duplicated, block: B:15:0x0064  */
    /* JADX WARN: Code duplicated, block: B:57:0x0119  */
    /* JADX WARN: Failed to clean up code after switch over string restore
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r3v21 int, still in use, count: 1, list:
  (r3v21 int) from 0x006d: IF  (r3v21 int) != (1567 int)  -> B:18:0x006f A[HIDDEN]
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
    	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
    	at jadx.core.utils.InsnRemover.perform(InsnRemover.java:75)
    	at jadx.core.utils.InsnRemover.removeAllMarked(InsnRemover.java:276)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.replaceWithMergedSwitch(SwitchOverStringVisitor.java:354)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:111)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:72)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:140)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterative(DepthRegionTraversal.java:47)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visit(SwitchOverStringVisitor.java:66)
     */
    /* JADX WARN: Failed to clean up code after switch over string restore
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r3v21 int, still in use, count: 1, list:
  (r3v21 int) from 0x006d: IF  (r3v21 int) != (1567 int)  -> B:18:0x006f A[HIDDEN]
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
    	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:93)
    	at jadx.core.utils.InsnRemover.remove(InsnRemover.java:226)
    	at jadx.core.utils.InsnRemover.remove(InsnRemover.java:215)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.replaceWithMergedSwitch(SwitchOverStringVisitor.java:355)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:111)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:72)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:140)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterative(DepthRegionTraversal.java:47)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visit(SwitchOverStringVisitor.java:66)
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static Pair zza(zzab zzabVar) {
        int i;
        int i2;
        int i3;
        Pair pair;
        int i4;
        int i5;
        int i6;
        int i7;
        Integer num;
        Integer num2;
        String str = zzabVar.zzk;
        if (str != null) {
            String[] strArrSplit = str.split("\\.");
            int i8 = 3;
            int i9 = 2;
            if (!"video/dolby-vision".equals(zzabVar.zzo)) {
                switch (strArrSplit[0]) {
                    case "s263":
                        String str2 = zzabVar.zzk;
                        Pair pair2 = new Pair(1, 1);
                        if (strArrSplit.length < 3) {
                            zzdo.zzf("CodecSpecificDataUtil", "Ignoring malformed H263 codec string: ".concat(String.valueOf(str2)));
                        } else {
                            try {
                                return new Pair(Integer.valueOf(Integer.parseInt(strArrSplit[1])), Integer.valueOf(Integer.parseInt(strArrSplit[2])));
                            } catch (NumberFormatException unused) {
                                zzdo.zzf("CodecSpecificDataUtil", "Ignoring malformed H263 codec string: ".concat(String.valueOf(str2)));
                            }
                        }
                        return pair2;
                    case "avc1":
                    case "avc2":
                        String str3 = zzabVar.zzk;
                        int length = strArrSplit.length;
                        if (length < 2) {
                            zzdo.zzf("CodecSpecificDataUtil", "Ignoring malformed AVC codec string: ".concat(String.valueOf(str3)));
                            break;
                        } else {
                            try {
                                if (strArrSplit[1].length() == 6) {
                                    i = Integer.parseInt(strArrSplit[1].substring(0, 2), 16);
                                    i2 = Integer.parseInt(strArrSplit[1].substring(4), 16);
                                } else if (length < 3) {
                                    zzdo.zzf("CodecSpecificDataUtil", "Ignoring malformed AVC codec string: " + str3);
                                } else {
                                    i = Integer.parseInt(strArrSplit[1]);
                                    i2 = Integer.parseInt(strArrSplit[2]);
                                }
                                if (i == 66) {
                                    i9 = 1;
                                } else if (i != 77) {
                                    if (i == 88) {
                                        i9 = 4;
                                    } else if (i == 100) {
                                        i9 = 8;
                                    } else if (i == 110) {
                                        i9 = 16;
                                    } else if (i != 122) {
                                        i9 = i != 244 ? -1 : 64;
                                    } else {
                                        i9 = 32;
                                    }
                                }
                                if (i9 == -1) {
                                    zzdo.zzf("CodecSpecificDataUtil", "Unknown AVC profile: " + i);
                                } else {
                                    switch (i2) {
                                        case 10:
                                            i3 = 1;
                                            break;
                                        case 11:
                                            i3 = 4;
                                            break;
                                        case 12:
                                            i3 = 8;
                                            break;
                                        case 13:
                                            i3 = 16;
                                            break;
                                        default:
                                            switch (i2) {
                                                case 20:
                                                    i3 = 32;
                                                    break;
                                                case 21:
                                                    i3 = 64;
                                                    break;
                                                case 22:
                                                    i3 = 128;
                                                    break;
                                                default:
                                                    switch (i2) {
                                                        case 30:
                                                            i3 = 256;
                                                            break;
                                                        case 31:
                                                            i3 = 512;
                                                            break;
                                                        case 32:
                                                            i3 = 1024;
                                                            break;
                                                        default:
                                                            switch (i2) {
                                                                case 40:
                                                                    i3 = 2048;
                                                                    break;
                                                                case 41:
                                                                    i3 = 4096;
                                                                    break;
                                                                case 42:
                                                                    i3 = 8192;
                                                                    break;
                                                                default:
                                                                    switch (i2) {
                                                                        case 50:
                                                                            i3 = 16384;
                                                                            break;
                                                                        case 51:
                                                                            i3 = 32768;
                                                                            break;
                                                                        case 52:
                                                                            i3 = 65536;
                                                                            break;
                                                                        default:
                                                                            i3 = -1;
                                                                            break;
                                                                    }
                                                                    break;
                                                            }
                                                            break;
                                                    }
                                                    break;
                                            }
                                            break;
                                    }
                                    if (i3 != -1) {
                                        pair = new Pair(Integer.valueOf(i9), Integer.valueOf(i3));
                                        return pair;
                                    }
                                    zzdo.zzf("CodecSpecificDataUtil", "Unknown AVC level: " + i2);
                                }
                            } catch (NumberFormatException unused2) {
                                zzdo.zzf("CodecSpecificDataUtil", "Ignoring malformed AVC codec string: ".concat(String.valueOf(str3)));
                            }
                            break;
                        }
                        break;
                    case "vp09":
                        String str4 = zzabVar.zzk;
                        if (strArrSplit.length < 3) {
                            zzdo.zzf("CodecSpecificDataUtil", "Ignoring malformed VP9 codec string: ".concat(String.valueOf(str4)));
                            break;
                        } else {
                            try {
                                int i10 = Integer.parseInt(strArrSplit[1]);
                                int i11 = Integer.parseInt(strArrSplit[2]);
                                if (i10 == 0) {
                                    i4 = 1;
                                } else if (i10 == 1) {
                                    i4 = 2;
                                } else if (i10 != 2) {
                                    i4 = i10 != 3 ? -1 : 8;
                                } else {
                                    i4 = 4;
                                }
                                if (i4 == -1) {
                                    zzdo.zzf("CodecSpecificDataUtil", "Unknown VP9 profile: " + i10);
                                } else {
                                    if (i11 == 10) {
                                        i9 = 1;
                                    } else if (i11 != 11) {
                                        if (i11 == 20) {
                                            i9 = 4;
                                        } else if (i11 == 21) {
                                            i9 = 8;
                                        } else if (i11 == 30) {
                                            i9 = 16;
                                        } else if (i11 == 31) {
                                            i9 = 32;
                                        } else if (i11 == 40) {
                                            i9 = 64;
                                        } else if (i11 == 41) {
                                            i9 = 128;
                                        } else if (i11 == 50) {
                                            i9 = 256;
                                        } else if (i11 != 51) {
                                            switch (i11) {
                                                case 60:
                                                    i9 = 2048;
                                                    break;
                                                case 61:
                                                    i9 = 4096;
                                                    break;
                                                case 62:
                                                    i9 = 8192;
                                                    break;
                                                default:
                                                    i9 = -1;
                                                    break;
                                            }
                                        } else {
                                            i9 = 512;
                                        }
                                    }
                                    if (i9 != -1) {
                                        pair = new Pair(Integer.valueOf(i4), Integer.valueOf(i9));
                                        return pair;
                                    }
                                    zzdo.zzf("CodecSpecificDataUtil", "Unknown VP9 level: " + i11);
                                }
                            } catch (NumberFormatException unused3) {
                                zzdo.zzf("CodecSpecificDataUtil", "Ignoring malformed VP9 codec string: ".concat(String.valueOf(str4)));
                            }
                            break;
                        }
                        break;
                    case "hev1":
                    case "hvc1":
                        return zzb(zzabVar.zzk, strArrSplit, zzabVar.zzC);
                    case "av01":
                        String str5 = zzabVar.zzk;
                        zzk zzkVar = zzabVar.zzC;
                        if (strArrSplit.length < 4) {
                            zzdo.zzf("CodecSpecificDataUtil", "Ignoring malformed AV1 codec string: ".concat(String.valueOf(str5)));
                            break;
                        } else {
                            try {
                                int i12 = Integer.parseInt(strArrSplit[1]);
                                int i13 = Integer.parseInt(strArrSplit[2].substring(0, 2));
                                int i14 = Integer.parseInt(strArrSplit[3]);
                                if (i12 != 0) {
                                    zzdo.zzf("CodecSpecificDataUtil", "Unknown AV1 profile: " + i12);
                                } else {
                                    if (i14 == 8) {
                                        i5 = 1;
                                    } else if (i14 != 10) {
                                        zzdo.zzf("CodecSpecificDataUtil", "Unknown AV1 bit depth: " + i14);
                                    } else {
                                        i5 = (zzkVar == null || !(zzkVar.zze != null || (i7 = zzkVar.zzd) == 7 || i7 == 6)) ? 2 : 4096;
                                    }
                                    switch (i13) {
                                        case 0:
                                            i6 = 1;
                                            break;
                                        case 1:
                                            i6 = 2;
                                            break;
                                        case 2:
                                            i6 = 4;
                                            break;
                                        case 3:
                                            i6 = 8;
                                            break;
                                        case 4:
                                            i6 = 16;
                                            break;
                                        case 5:
                                            i6 = 32;
                                            break;
                                        case 6:
                                            i6 = 64;
                                            break;
                                        case 7:
                                            i6 = 128;
                                            break;
                                        case 8:
                                            i6 = 256;
                                            break;
                                        case 9:
                                            i6 = 512;
                                            break;
                                        case 10:
                                            i6 = 1024;
                                            break;
                                        case 11:
                                            i6 = 2048;
                                            break;
                                        case 12:
                                            i6 = 4096;
                                            break;
                                        case 13:
                                            i6 = 8192;
                                            break;
                                        case 14:
                                            i6 = 16384;
                                            break;
                                        case 15:
                                            i6 = 32768;
                                            break;
                                        case 16:
                                            i6 = 65536;
                                            break;
                                        case 17:
                                            i6 = 131072;
                                            break;
                                        case 18:
                                            i6 = 262144;
                                            break;
                                        case 19:
                                            i6 = 524288;
                                            break;
                                        case 20:
                                            i6 = 1048576;
                                            break;
                                        case 21:
                                            i6 = 2097152;
                                            break;
                                        case 22:
                                            i6 = 4194304;
                                            break;
                                        case 23:
                                            i6 = 8388608;
                                            break;
                                        default:
                                            i6 = -1;
                                            break;
                                    }
                                    if (i6 != -1) {
                                        return new Pair(Integer.valueOf(i5), Integer.valueOf(i6));
                                    }
                                    zzdo.zzf("CodecSpecificDataUtil", "Unknown AV1 level: " + i13);
                                }
                            } catch (NumberFormatException unused4) {
                                zzdo.zzf("CodecSpecificDataUtil", "Ignoring malformed AV1 codec string: ".concat(String.valueOf(str5)));
                            }
                            break;
                        }
                        break;
                    case "mp4a":
                        String str6 = zzabVar.zzk;
                        if (strArrSplit.length != 3) {
                            zzdo.zzf("CodecSpecificDataUtil", "Ignoring malformed MP4A codec string: ".concat(String.valueOf(str6)));
                            break;
                        } else {
                            try {
                                if ("audio/mp4a-latm".equals(zzbb.zzd(Integer.parseInt(strArrSplit[1], 16)))) {
                                    int i15 = Integer.parseInt(strArrSplit[2]);
                                    if (i15 == 17) {
                                        i8 = 17;
                                    } else if (i15 == 20) {
                                        i8 = 20;
                                    } else if (i15 == 23) {
                                        i8 = 23;
                                    } else if (i15 == 29) {
                                        i8 = 29;
                                    } else if (i15 == 39) {
                                        i8 = 39;
                                    } else if (i15 != 42) {
                                        switch (i15) {
                                            case 1:
                                                i8 = 1;
                                                break;
                                            case 2:
                                                i8 = 2;
                                                break;
                                            case 3:
                                                break;
                                            case 4:
                                                i8 = 4;
                                                break;
                                            case 5:
                                                i8 = 5;
                                                break;
                                            case 6:
                                                i8 = 6;
                                                break;
                                            default:
                                                i8 = -1;
                                                break;
                                        }
                                    } else {
                                        i8 = 42;
                                    }
                                    if (i8 != -1) {
                                        return new Pair(Integer.valueOf(i8), 0);
                                    }
                                }
                            } catch (NumberFormatException unused5) {
                                zzdo.zzf("CodecSpecificDataUtil", "Ignoring malformed MP4A codec string: ".concat(String.valueOf(str6)));
                            }
                            break;
                        }
                        break;
                }
            } else {
                String str7 = zzabVar.zzk;
                if (strArrSplit.length < 3) {
                    zzdo.zzf("CodecSpecificDataUtil", "Ignoring malformed Dolby Vision codec string: ".concat(String.valueOf(str7)));
                } else {
                    Matcher matcher = zzd.matcher(strArrSplit[1]);
                    if (matcher.matches()) {
                        String strGroup = matcher.group(1);
                        if (strGroup != null) {
                            if (strGroup.hashCode() != 1567) {
                                switch (strGroup) {
                                    case "00":
                                        num = 1;
                                        break;
                                    case "01":
                                        num = 2;
                                        break;
                                    case "02":
                                        num = 4;
                                        break;
                                    case "03":
                                        num = 8;
                                        break;
                                    case "04":
                                        num = 16;
                                        break;
                                    case "05":
                                        num = 32;
                                        break;
                                    case "06":
                                        num = 64;
                                        break;
                                    case "07":
                                        num = 128;
                                        break;
                                    case "08":
                                        num = 256;
                                        break;
                                    case "09":
                                        num = 512;
                                        break;
                                    default:
                                        num = null;
                                        break;
                                }
                            } else if (strGroup.equals("10")) {
                                num = 1024;
                            } else {
                                num = null;
                            }
                        } else {
                            num = null;
                        }
                        if (num == null) {
                            zzdo.zzf("CodecSpecificDataUtil", "Unknown Dolby Vision profile string: ".concat(String.valueOf(strGroup)));
                        } else {
                            String str8 = strArrSplit[2];
                            if (str8 != null) {
                                str8.hashCode();
                                switch (str8) {
                                    case "01":
                                        num2 = 1;
                                        break;
                                    case "02":
                                        num2 = 2;
                                        break;
                                    case "03":
                                        num2 = 4;
                                        break;
                                    case "04":
                                        num2 = 8;
                                        break;
                                    case "05":
                                        num2 = 16;
                                        break;
                                    case "06":
                                        num2 = 32;
                                        break;
                                    case "07":
                                        num2 = 64;
                                        break;
                                    case "08":
                                        num2 = 128;
                                        break;
                                    case "09":
                                        num2 = 256;
                                        break;
                                    default:
                                        switch (str8) {
                                            case 1567:
                                                if (!str8.equals("10")) {
                                                    num2 = null;
                                                } else {
                                                    num2 = 512;
                                                }
                                                break;
                                            case 1568:
                                                if (!str8.equals("11")) {
                                                    num2 = null;
                                                } else {
                                                    num2 = 1024;
                                                }
                                                break;
                                            case 1569:
                                                if (!str8.equals("12")) {
                                                    num2 = null;
                                                } else {
                                                    num2 = 2048;
                                                }
                                                break;
                                            case 1570:
                                                if (!str8.equals("13")) {
                                                    num2 = null;
                                                } else {
                                                    num2 = 4096;
                                                }
                                                break;
                                            default:
                                                num2 = null;
                                                break;
                                        }
                                }
                            } else {
                                num2 = null;
                            }
                            if (num2 != null) {
                                return new Pair(num, num2);
                            }
                            zzdo.zzf("CodecSpecificDataUtil", "Unknown Dolby Vision level string: ".concat(String.valueOf(str8)));
                        }
                    } else {
                        zzdo.zzf("CodecSpecificDataUtil", "Ignoring malformed Dolby Vision codec string: ".concat(String.valueOf(str7)));
                    }
                }
            }
        }
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:107:0x0198  */
    /* JADX WARN: Code duplicated, block: B:25:0x0063  */
    public static Pair zzb(String str, String[] strArr, zzk zzkVar) {
        int i;
        Integer num;
        if (strArr.length < 4) {
            zzdo.zzf("CodecSpecificDataUtil", "Ignoring malformed HEVC codec string: ".concat(String.valueOf(str)));
            return null;
        }
        Matcher matcher = zzd.matcher(strArr[1]);
        if (!matcher.matches()) {
            zzdo.zzf("CodecSpecificDataUtil", "Ignoring malformed HEVC codec string: ".concat(String.valueOf(str)));
            return null;
        }
        String strGroup = matcher.group(1);
        if ("1".equals(strGroup)) {
            i = 1;
        } else if (CommonGetHeaderBiddingToken.HB_TOKEN_VERSION.equals(strGroup)) {
            i = (zzkVar == null || zzkVar.zzd != 6) ? 2 : 4096;
        } else {
            if (!"6".equals(strGroup)) {
                zzdo.zzf("CodecSpecificDataUtil", "Unknown HEVC profile string: ".concat(String.valueOf(strGroup)));
                return null;
            }
            i = 6;
        }
        String str2 = strArr[3];
        if (str2 != null) {
            switch (str2) {
                case "L30":
                    num = 1;
                    break;
                case "L60":
                    num = 4;
                    break;
                case "L63":
                    num = 16;
                    break;
                case "L90":
                    num = 64;
                    break;
                case "L93":
                    num = 256;
                    break;
                case "L120":
                    num = 1024;
                    break;
                case "L123":
                    num = 4096;
                    break;
                case "L150":
                    num = 16384;
                    break;
                case "L153":
                    num = 65536;
                    break;
                case "L156":
                    num = 262144;
                    break;
                case "L180":
                    num = 1048576;
                    break;
                case "L183":
                    num = 4194304;
                    break;
                case "L186":
                    num = 16777216;
                    break;
                case "H30":
                    num = 2;
                    break;
                case "H60":
                    num = 8;
                    break;
                case "H63":
                    num = 32;
                    break;
                case "H90":
                    num = 128;
                    break;
                case "H93":
                    num = 512;
                    break;
                case "H120":
                    num = 2048;
                    break;
                case "H123":
                    num = 8192;
                    break;
                case "H150":
                    num = 32768;
                    break;
                case "H153":
                    num = 131072;
                    break;
                case "H156":
                    num = 524288;
                    break;
                case "H180":
                    num = 2097152;
                    break;
                case "H183":
                    num = 8388608;
                    break;
                case "H186":
                    num = 33554432;
                    break;
                default:
                    num = null;
                    break;
            }
        } else {
            num = null;
        }
        if (num != null) {
            return new Pair(Integer.valueOf(i), num);
        }
        zzdo.zzf("CodecSpecificDataUtil", "Unknown HEVC level string: ".concat(String.valueOf(str2)));
        return null;
    }

    public static String zzc(int i, int i2, int i3) {
        return String.format("avc1.%02X%02X%02X", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3));
    }

    public static String zzd(int i, boolean z, int i2, int i3, int[] iArr, int i4) {
        Object[] objArr = new Object[5];
        objArr[0] = zzc[i];
        objArr[1] = Integer.valueOf(i2);
        objArr[2] = Integer.valueOf(i3);
        objArr[3] = Character.valueOf(true != z ? 'L' : 'H');
        objArr[4] = Integer.valueOf(i4);
        StringBuilder sb = new StringBuilder(String.format(Locale.US, "hvc1.%s%d.%X.%c%d", objArr));
        int i5 = 6;
        while (i5 > 0) {
            int i6 = i5 - 1;
            if (iArr[i6] != 0) {
                break;
            }
            i5 = i6;
        }
        for (int i7 = 0; i7 < i5; i7++) {
            sb.append(String.format(".%02X", Integer.valueOf(iArr[i7])));
        }
        return sb.toString();
    }

    public static byte[] zze(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2 + 4];
        System.arraycopy(zzb, 0, bArr2, 0, 4);
        System.arraycopy(bArr, i, bArr2, 4, i2);
        return bArr2;
    }
}
