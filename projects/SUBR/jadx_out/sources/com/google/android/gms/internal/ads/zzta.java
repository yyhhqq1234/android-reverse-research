package com.google.android.gms.internal.ads;

import android.media.MediaCodecInfo;
import android.util.Pair;
import com.unity3d.services.core.device.MimeTypes;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzta {
    public static final /* synthetic */ int zza = 0;
    private static final HashMap zzb = new HashMap();

    public static zzsg zza() throws zzsu {
        List listZzd = zzd("audio/raw", false, false);
        if (listZzd.isEmpty()) {
            return null;
        }
        return (zzsg) listZzd.get(0);
    }

    public static String zzb(zzab zzabVar) {
        Pair pairZza;
        if ("audio/eac3-joc".equals(zzabVar.zzo)) {
            return "audio/eac3";
        }
        if ("video/dolby-vision".equals(zzabVar.zzo) && (pairZza = zzcy.zza(zzabVar)) != null) {
            int iIntValue = ((Integer) pairZza.first).intValue();
            if (iIntValue == 16 || iIntValue == 256) {
                return MimeTypes.VIDEO_H265;
            }
            if (iIntValue == 512) {
                return MimeTypes.VIDEO_H264;
            }
            if (iIntValue == 1024) {
                return MimeTypes.VIDEO_AV1;
            }
        }
        if ("video/mv-hevc".equals(zzabVar.zzo)) {
            return MimeTypes.VIDEO_H265;
        }
        return null;
    }

    public static List zzc(zzsp zzspVar, zzab zzabVar, boolean z, boolean z2) throws zzsu {
        String strZzb = zzb(zzabVar);
        return strZzb == null ? zzfxn.zzn() : zzspVar.zza(strZzb, z, z2);
    }

    public static synchronized List zzd(String str, boolean z, boolean z2) throws zzsu {
        zzst zzstVar = new zzst(str, z, z2);
        HashMap map = zzb;
        List list = (List) map.get(zzstVar);
        if (list != null) {
            return list;
        }
        ArrayList arrayListZzg = zzg(zzstVar, new zzsx(z, z2));
        if (z && arrayListZzg.isEmpty() && zzei.zza <= 23) {
            arrayListZzg = zzg(zzstVar, new zzsw(null));
            if (!arrayListZzg.isEmpty()) {
                zzdo.zzf("MediaCodecUtil", "MediaCodecList API didn't list secure decoder for: " + str + ". Assuming: " + ((zzsg) arrayListZzg.get(0)).zza);
            }
        }
        if ("audio/raw".equals(str)) {
            if (zzei.zza < 26 && zzei.zzb.equals("R9") && arrayListZzg.size() == 1 && ((zzsg) arrayListZzg.get(0)).zza.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                arrayListZzg.add(zzsg.zzc("OMX.google.raw.decoder", "audio/raw", "audio/raw", null, false, true, false, false, false));
            }
            zzh(arrayListZzg, new zzsy() { // from class: com.google.android.gms.internal.ads.zzsr
                @Override // com.google.android.gms.internal.ads.zzsy
                public final int zza(Object obj) {
                    int i = zzta.zza;
                    String str2 = ((zzsg) obj).zza;
                    if (str2.startsWith("OMX.google") || str2.startsWith("c2.android")) {
                        return 1;
                    }
                    return (zzei.zza >= 26 || !str2.equals("OMX.MTK.AUDIO.DECODER.RAW")) ? 0 : -1;
                }
            });
        }
        if (zzei.zza < 32 && arrayListZzg.size() > 1 && "OMX.qti.audio.decoder.flac".equals(((zzsg) arrayListZzg.get(0)).zza)) {
            arrayListZzg.add((zzsg) arrayListZzg.remove(0));
        }
        zzfxn zzfxnVarZzl = zzfxn.zzl(arrayListZzg);
        map.put(zzstVar, zzfxnVarZzl);
        return zzfxnVarZzl;
    }

    @RequiresNonNull({"#2.sampleMimeType"})
    public static List zze(zzsp zzspVar, zzab zzabVar, boolean z, boolean z2) throws zzsu {
        List listZza = zzspVar.zza(zzabVar.zzo, z, z2);
        List listZzc = zzc(zzspVar, zzabVar, z, z2);
        zzfxk zzfxkVar = new zzfxk();
        zzfxkVar.zzh(listZza);
        zzfxkVar.zzh(listZzc);
        return zzfxkVar.zzi();
    }

    public static List zzf(List list, final zzab zzabVar) {
        ArrayList arrayList = new ArrayList(list);
        zzh(arrayList, new zzsy() { // from class: com.google.android.gms.internal.ads.zzss
            @Override // com.google.android.gms.internal.ads.zzsy
            public final int zza(Object obj) {
                int i = zzta.zza;
                return ((zzsg) obj).zzd(zzabVar) ? 1 : 0;
            }
        });
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0194  */
    /* JADX WARN: Code duplicated, block: B:102:0x0196  */
    /* JADX WARN: Code duplicated, block: B:105:0x01a1 A[Catch: Exception -> 0x0231, TryCatch #5 {Exception -> 0x0231, blocks: (B:84:0x0157, B:90:0x016e, B:96:0x0182, B:98:0x0188, B:103:0x0197, B:105:0x01a1, B:115:0x01cb, B:106:0x01a6, B:108:0x01b6, B:110:0x01be, B:99:0x018e), top: B:164:0x0157 }] */
    /* JADX WARN: Code duplicated, block: B:106:0x01a6 A[Catch: Exception -> 0x0231, TryCatch #5 {Exception -> 0x0231, blocks: (B:84:0x0157, B:90:0x016e, B:96:0x0182, B:98:0x0188, B:103:0x0197, B:105:0x01a1, B:115:0x01cb, B:106:0x01a6, B:108:0x01b6, B:110:0x01be, B:99:0x018e), top: B:164:0x0157 }] */
    /* JADX WARN: Code duplicated, block: B:108:0x01b6 A[Catch: Exception -> 0x0231, TryCatch #5 {Exception -> 0x0231, blocks: (B:84:0x0157, B:90:0x016e, B:96:0x0182, B:98:0x0188, B:103:0x0197, B:105:0x01a1, B:115:0x01cb, B:106:0x01a6, B:108:0x01b6, B:110:0x01be, B:99:0x018e), top: B:164:0x0157 }] */
    /* JADX WARN: Code duplicated, block: B:113:0x01c8  */
    /* JADX WARN: Code duplicated, block: B:115:0x01cb A[Catch: Exception -> 0x0231, TRY_LEAVE, TryCatch #5 {Exception -> 0x0231, blocks: (B:84:0x0157, B:90:0x016e, B:96:0x0182, B:98:0x0188, B:103:0x0197, B:105:0x01a1, B:115:0x01cb, B:106:0x01a6, B:108:0x01b6, B:110:0x01be, B:99:0x018e), top: B:164:0x0157 }] */
    /* JADX WARN: Code duplicated, block: B:117:0x01cf A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:120:0x01d5  */
    /* JADX WARN: Code duplicated, block: B:126:0x01fd  */
    /* JADX WARN: Code duplicated, block: B:128:0x0206 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:144:0x0240 A[Catch: Exception -> 0x028e, TRY_ENTER, TryCatch #1 {Exception -> 0x028e, blocks: (B:3:0x0008, B:5:0x001c, B:7:0x0026, B:10:0x0033, B:14:0x0041, B:16:0x0047, B:18:0x004d, B:20:0x0055, B:22:0x005d, B:24:0x0067, B:26:0x0071, B:28:0x007b, B:30:0x0085, B:32:0x008f, B:34:0x0099, B:36:0x00a3, B:38:0x00ad, B:40:0x00b7, B:42:0x00bd, B:44:0x00c5, B:46:0x00cd, B:48:0x00d5, B:141:0x0238, B:144:0x0240, B:146:0x0246, B:147:0x0260, B:148:0x0281, B:51:0x00df, B:52:0x00e2, B:54:0x00ea, B:57:0x00f5, B:59:0x00fd, B:62:0x0108, B:64:0x0110, B:68:0x011d, B:70:0x0125, B:73:0x0130, B:75:0x0138, B:78:0x0143, B:80:0x014b), top: B:156:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:160:0x01d1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:168:0x0260 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:172:0x0282 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:67:0x011b A[EDGE_INSN: B:67:0x011b->B:83:0x0155 BREAK  A[LOOP:1: B:47:0x00d3->B:51:0x00df]] */
    /* JADX WARN: Code duplicated, block: B:92:0x017c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:93:0x017e  */
    /* JADX WARN: Code duplicated, block: B:94:0x017f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:95:0x0181  */
    /* JADX WARN: Code duplicated, block: B:98:0x0188 A[Catch: Exception -> 0x0231, TryCatch #5 {Exception -> 0x0231, blocks: (B:84:0x0157, B:90:0x016e, B:96:0x0182, B:98:0x0188, B:103:0x0197, B:105:0x01a1, B:115:0x01cb, B:106:0x01a6, B:108:0x01b6, B:110:0x01be, B:99:0x018e), top: B:164:0x0157 }] */
    /* JADX WARN: Code duplicated, block: B:99:0x018e A[Catch: Exception -> 0x0231, TryCatch #5 {Exception -> 0x0231, blocks: (B:84:0x0157, B:90:0x016e, B:96:0x0182, B:98:0x0188, B:103:0x0197, B:105:0x01a1, B:115:0x01cb, B:106:0x01a6, B:108:0x01b6, B:110:0x01be, B:99:0x018e), top: B:164:0x0157 }] */
    /* JADX WARN: Code duplicated, block: B:9:0x002c  */
    private static ArrayList zzg(zzst zzstVar, zzsv zzsvVar) throws zzsu {
        String str;
        String str2;
        int i;
        int i2;
        String str3;
        boolean zZzd;
        boolean zZzc;
        boolean zIsHardwareAccelerated;
        boolean zZzi;
        String strZza;
        boolean zIsVendor;
        zzst zzstVar2 = zzstVar;
        try {
            ArrayList arrayList = new ArrayList();
            String str4 = zzstVar2.zza;
            boolean zZze = zzsvVar.zze();
            int i3 = 0;
            for (int iZza = zzsvVar.zza(); i3 < iZza; iZza = i2) {
                MediaCodecInfo mediaCodecInfoZzb = zzsvVar.zzb(i3);
                if (zzei.zza < 29 || !mediaCodecInfoZzb.isAlias()) {
                    String name = mediaCodecInfoZzb.getName();
                    if (mediaCodecInfoZzb.isEncoder() || ((!zZze && name.endsWith(".secure")) || ((zzei.zza < 24 && (("OMX.SEC.aac.dec".equals(name) || "OMX.Exynos.AAC.Decoder".equals(name)) && "samsung".equals(zzei.zzc) && (zzei.zzb.startsWith("zeroflte") || zzei.zzb.startsWith("zerolte") || zzei.zzb.startsWith("zenlte") || "SC-05G".equals(zzei.zzb) || "marinelteatt".equals(zzei.zzb) || "404SC".equals(zzei.zzb) || "SC-04G".equals(zzei.zzb) || "SCV31".equals(zzei.zzb)))) || (zzei.zza <= 23 && "audio/eac3-joc".equals(str4) && "OMX.MTK.AUDIO.DECODER.DSPAC3".equals(name))))) {
                        i = i3;
                        i2 = iZza;
                        str3 = str4;
                    } else {
                        String[] supportedTypes = mediaCodecInfoZzb.getSupportedTypes();
                        int length = supportedTypes.length;
                        int i4 = 0;
                        while (true) {
                            if (i4 >= length) {
                                if (!str4.equals("video/dolby-vision")) {
                                    if (!str4.equals("video/mv-hevc")) {
                                        if (!str4.equals("audio/alac") || !"OMX.lge.alac.decoder".equals(name)) {
                                            if (!str4.equals("audio/flac") || !"OMX.lge.flac.decoder".equals(name)) {
                                                if (!str4.equals("audio/ac3") || !"OMX.lge.ac3.decoder".equals(name)) {
                                                    str = null;
                                                    break;
                                                }
                                                str = "audio/lg-ac3";
                                                break;
                                            }
                                            str = "audio/x-lg-flac";
                                            break;
                                        }
                                        str = "audio/x-lg-alac";
                                        break;
                                    }
                                    if (!"c2.qti.mvhevc.decoder".equals(name)) {
                                        str = null;
                                        break;
                                    }
                                    str = "video/x-mvhevc";
                                    break;
                                }
                                if (!"OMX.MS.HEVCDV.Decoder".equals(name)) {
                                    if (!"OMX.RTK.video.decoder".equals(name) && !"OMX.realtek.video.decoder.tunneled".equals(name)) {
                                        str = null;
                                        break;
                                    }
                                    str = "video/dv_hevc";
                                    break;
                                }
                                str = "video/hevcdv";
                                break;
                            }
                            str = supportedTypes[i4];
                            if (str.equalsIgnoreCase(str4)) {
                                break;
                            }
                            i4++;
                        }
                        if (str != null) {
                            try {
                                MediaCodecInfo.CodecCapabilities capabilitiesForType = mediaCodecInfoZzb.getCapabilitiesForType(str);
                                boolean zZzd2 = zzsvVar.zzd("tunneled-playback", str, capabilitiesForType);
                                boolean zZzc2 = zzsvVar.zzc("tunneled-playback", str, capabilitiesForType);
                                if (zzstVar2.zzc) {
                                    if (zZzd2) {
                                        zZzd = zzsvVar.zzd("secure-playback", str, capabilitiesForType);
                                        zZzc = zzsvVar.zzc("secure-playback", str, capabilitiesForType);
                                        if (zzstVar2.zzb) {
                                            if (zZzd) {
                                                zZzd = true;
                                                if (zzei.zza >= 29) {
                                                    zIsHardwareAccelerated = mediaCodecInfoZzb.isHardwareAccelerated();
                                                } else if (zzi(mediaCodecInfoZzb, str4)) {
                                                    zIsHardwareAccelerated = false;
                                                } else {
                                                    zIsHardwareAccelerated = true;
                                                }
                                                zZzi = zzi(mediaCodecInfoZzb, str4);
                                                if (zzei.zza >= 29) {
                                                    zIsVendor = mediaCodecInfoZzb.isVendor();
                                                } else {
                                                    strZza = zzftt.zza(mediaCodecInfoZzb.getName());
                                                    if (strZza.startsWith("omx.google.")) {
                                                        zIsVendor = false;
                                                    } else {
                                                        zIsVendor = false;
                                                    }
                                                }
                                                if (!zZze) {
                                                    if (!zZze) {
                                                        i = i3;
                                                        i2 = iZza;
                                                        str3 = str4;
                                                        if (!zZze) {
                                                            continue;
                                                        }
                                                    } else if (zzstVar2.zzb) {
                                                        i = i3;
                                                        i2 = iZza;
                                                        str3 = str4;
                                                        if (!zZze) {
                                                            continue;
                                                        }
                                                    } else {
                                                        i = i3;
                                                        i2 = iZza;
                                                        str3 = str4;
                                                        arrayList.add(zzsg.zzc(name, str4, str, capabilitiesForType, zIsHardwareAccelerated, zZzi, zIsVendor, false, false));
                                                    }
                                                } else if (!zZze) {
                                                    i = i3;
                                                    i2 = iZza;
                                                    str3 = str4;
                                                    if (!zZze) {
                                                        continue;
                                                    }
                                                } else if (zzstVar2.zzb) {
                                                    i = i3;
                                                    i2 = iZza;
                                                    str3 = str4;
                                                    arrayList.add(zzsg.zzc(name, str4, str, capabilitiesForType, zIsHardwareAccelerated, zZzi, zIsVendor, false, false));
                                                } else {
                                                    i = i3;
                                                    i2 = iZza;
                                                    str3 = str4;
                                                    if (!zZze) {
                                                        continue;
                                                    }
                                                }
                                            }
                                        } else if (!zZzc) {
                                            if (zzei.zza >= 29) {
                                                zIsHardwareAccelerated = mediaCodecInfoZzb.isHardwareAccelerated();
                                            } else if (zzi(mediaCodecInfoZzb, str4)) {
                                                zIsHardwareAccelerated = true;
                                            } else {
                                                zIsHardwareAccelerated = false;
                                            }
                                            zZzi = zzi(mediaCodecInfoZzb, str4);
                                            if (zzei.zza >= 29) {
                                                zIsVendor = mediaCodecInfoZzb.isVendor();
                                            } else {
                                                strZza = zzftt.zza(mediaCodecInfoZzb.getName());
                                                if (strZza.startsWith("omx.google.")) {
                                                    zIsVendor = false;
                                                } else {
                                                    zIsVendor = false;
                                                }
                                            }
                                            if (!zZze) {
                                                if (!zZze) {
                                                    i = i3;
                                                    i2 = iZza;
                                                    str3 = str4;
                                                    if (!zZze) {
                                                        continue;
                                                    }
                                                } else if (zzstVar2.zzb) {
                                                    i = i3;
                                                    i2 = iZza;
                                                    str3 = str4;
                                                    arrayList.add(zzsg.zzc(name, str4, str, capabilitiesForType, zIsHardwareAccelerated, zZzi, zIsVendor, false, false));
                                                } else {
                                                    i = i3;
                                                    i2 = iZza;
                                                    str3 = str4;
                                                    if (!zZze) {
                                                        continue;
                                                    }
                                                }
                                            } else if (!zZze) {
                                                i = i3;
                                                i2 = iZza;
                                                str3 = str4;
                                                if (!zZze) {
                                                    continue;
                                                }
                                            } else if (zzstVar2.zzb) {
                                                i = i3;
                                                i2 = iZza;
                                                str3 = str4;
                                                arrayList.add(zzsg.zzc(name, str4, str, capabilitiesForType, zIsHardwareAccelerated, zZzi, zIsVendor, false, false));
                                            } else {
                                                i = i3;
                                                i2 = iZza;
                                                str3 = str4;
                                                if (!zZze) {
                                                    continue;
                                                }
                                            }
                                        }
                                    }
                                } else if (!zZzc2) {
                                    zZzd = zzsvVar.zzd("secure-playback", str, capabilitiesForType);
                                    zZzc = zzsvVar.zzc("secure-playback", str, capabilitiesForType);
                                    if (zzstVar2.zzb) {
                                        if (!zZzc) {
                                            if (zzei.zza >= 29) {
                                                zIsHardwareAccelerated = mediaCodecInfoZzb.isHardwareAccelerated();
                                            } else if (zzi(mediaCodecInfoZzb, str4)) {
                                                zIsHardwareAccelerated = true;
                                            } else {
                                                zIsHardwareAccelerated = false;
                                            }
                                            zZzi = zzi(mediaCodecInfoZzb, str4);
                                            if (zzei.zza >= 29) {
                                                zIsVendor = mediaCodecInfoZzb.isVendor();
                                            } else {
                                                strZza = zzftt.zza(mediaCodecInfoZzb.getName());
                                                if (strZza.startsWith("omx.google.") || strZza.startsWith("c2.android.") || strZza.startsWith("c2.google.")) {
                                                    zIsVendor = false;
                                                } else {
                                                    zIsVendor = true;
                                                }
                                            }
                                            if (!zZze && zzstVar2.zzb == zZzd) {
                                                i = i3;
                                                i2 = iZza;
                                                str3 = str4;
                                                arrayList.add(zzsg.zzc(name, str4, str, capabilitiesForType, zIsHardwareAccelerated, zZzi, zIsVendor, false, false));
                                            } else if (!zZze) {
                                                try {
                                                    if (zzstVar2.zzb) {
                                                        i = i3;
                                                        i2 = iZza;
                                                        str3 = str4;
                                                        try {
                                                            arrayList.add(zzsg.zzc(name, str4, str, capabilitiesForType, zIsHardwareAccelerated, zZzi, zIsVendor, false, false));
                                                        } catch (Exception e) {
                                                            e = e;
                                                            str2 = name;
                                                            if (zzei.zza <= 23) {
                                                            }
                                                            zzdo.zzc("MediaCodecUtil", "Failed to query codec " + str2 + " (" + str + ")");
                                                            throw e;
                                                        }
                                                    } else {
                                                        i = i3;
                                                        i2 = iZza;
                                                        str3 = str4;
                                                        if (!zZze && zZzd) {
                                                            StringBuilder sb = new StringBuilder();
                                                            try {
                                                                sb.append(name);
                                                                sb.append(".secure");
                                                                str2 = name;
                                                                try {
                                                                    arrayList.add(zzsg.zzc(sb.toString(), str3, str, capabilitiesForType, zIsHardwareAccelerated, zZzi, zIsVendor, false, true));
                                                                    break;
                                                                } catch (Exception e2) {
                                                                    e = e2;
                                                                    if (zzei.zza <= 23 || arrayList.isEmpty()) {
                                                                        zzdo.zzc("MediaCodecUtil", "Failed to query codec " + str2 + " (" + str + ")");
                                                                        throw e;
                                                                    }
                                                                    zzdo.zzc("MediaCodecUtil", "Skipping codec " + str2 + " (failed to query capabilities)");
                                                                    i3 = i + 1;
                                                                    zzstVar2 = zzstVar;
                                                                    str4 = str3;
                                                                }
                                                            } catch (Exception e3) {
                                                                e = e3;
                                                                str2 = name;
                                                            }
                                                        }
                                                    }
                                                } catch (Exception e4) {
                                                    e = e4;
                                                    i = i3;
                                                    i2 = iZza;
                                                    str3 = str4;
                                                    str2 = name;
                                                    if (zzei.zza <= 23) {
                                                    }
                                                    zzdo.zzc("MediaCodecUtil", "Failed to query codec " + str2 + " (" + str + ")");
                                                    throw e;
                                                }
                                            } else {
                                                i = i3;
                                                i2 = iZza;
                                                str3 = str4;
                                                if (!zZze) {
                                                    continue;
                                                }
                                            }
                                        }
                                    } else if (zZzd) {
                                        zZzd = true;
                                        if (zzei.zza >= 29) {
                                            zIsHardwareAccelerated = mediaCodecInfoZzb.isHardwareAccelerated();
                                        } else if (zzi(mediaCodecInfoZzb, str4)) {
                                            zIsHardwareAccelerated = true;
                                        } else {
                                            zIsHardwareAccelerated = false;
                                        }
                                        zZzi = zzi(mediaCodecInfoZzb, str4);
                                        if (zzei.zza >= 29) {
                                            zIsVendor = mediaCodecInfoZzb.isVendor();
                                        } else {
                                            strZza = zzftt.zza(mediaCodecInfoZzb.getName());
                                            if (strZza.startsWith("omx.google.")) {
                                                zIsVendor = false;
                                            } else {
                                                zIsVendor = false;
                                            }
                                        }
                                        if (!zZze) {
                                            if (!zZze) {
                                                i = i3;
                                                i2 = iZza;
                                                str3 = str4;
                                                if (!zZze) {
                                                    continue;
                                                }
                                            } else if (zzstVar2.zzb) {
                                                i = i3;
                                                i2 = iZza;
                                                str3 = str4;
                                                arrayList.add(zzsg.zzc(name, str4, str, capabilitiesForType, zIsHardwareAccelerated, zZzi, zIsVendor, false, false));
                                            } else {
                                                i = i3;
                                                i2 = iZza;
                                                str3 = str4;
                                                if (!zZze) {
                                                    continue;
                                                }
                                            }
                                        } else if (!zZze) {
                                            i = i3;
                                            i2 = iZza;
                                            str3 = str4;
                                            if (!zZze) {
                                                continue;
                                            }
                                        } else if (zzstVar2.zzb) {
                                            i = i3;
                                            i2 = iZza;
                                            str3 = str4;
                                            arrayList.add(zzsg.zzc(name, str4, str, capabilitiesForType, zIsHardwareAccelerated, zZzi, zIsVendor, false, false));
                                        } else {
                                            i = i3;
                                            i2 = iZza;
                                            str3 = str4;
                                            if (!zZze) {
                                                continue;
                                            }
                                        }
                                    }
                                }
                                i = i3;
                                i2 = iZza;
                                str3 = str4;
                            } catch (Exception e5) {
                                e = e5;
                                str2 = name;
                                i = i3;
                                i2 = iZza;
                                str3 = str4;
                            }
                        } else {
                            i = i3;
                            i2 = iZza;
                            str3 = str4;
                        }
                    }
                } else {
                    i = i3;
                    i2 = iZza;
                    str3 = str4;
                }
                i3 = i + 1;
                zzstVar2 = zzstVar;
                str4 = str3;
            }
            return arrayList;
        } catch (Exception e6) {
            throw new zzsu(e6, null);
        }
    }

    private static void zzh(List list, final zzsy zzsyVar) {
        Collections.sort(list, new Comparator() { // from class: com.google.android.gms.internal.ads.zzsq
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int i = zzta.zza;
                zzsy zzsyVar2 = zzsyVar;
                return zzsyVar2.zza(obj2) - zzsyVar2.zza(obj);
            }
        });
    }

    private static boolean zzi(MediaCodecInfo mediaCodecInfo, String str) {
        if (zzei.zza >= 29) {
            return mediaCodecInfo.isSoftwareOnly();
        }
        if (zzbb.zzg(str)) {
            return true;
        }
        String strZza = zzftt.zza(mediaCodecInfo.getName());
        if (strZza.startsWith("arc.")) {
            return false;
        }
        if (strZza.startsWith("omx.google.") || strZza.startsWith("omx.ffmpeg.")) {
            return true;
        }
        if ((strZza.startsWith("omx.sec.") && strZza.contains(".sw.")) || strZza.equals("omx.qcom.video.decoder.hevcswvdec") || strZza.startsWith("c2.android.") || strZza.startsWith("c2.google.")) {
            return true;
        }
        return (strZza.startsWith("omx.") || strZza.startsWith("c2.")) ? false : true;
    }
}
