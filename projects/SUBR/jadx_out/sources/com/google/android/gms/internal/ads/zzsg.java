package com.google.android.gms.internal.ads;

import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.util.Pair;
import com.unity3d.services.core.device.MimeTypes;
import java.util.Objects;
import org.json.y8;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzsg {
    public final String zza;
    public final String zzb;
    public final String zzc;
    public final MediaCodecInfo.CodecCapabilities zzd;
    public final boolean zze;
    public final boolean zzf;
    public final boolean zzg;
    public final boolean zzh;
    private final boolean zzi;

    public static zzsg zzc(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        return new zzsg(str, str2, str3, codecCapabilities, z, z2, z3, codecCapabilities != null && codecCapabilities.isFeatureSupported("adaptive-playback") && (zzei.zza > 22 || !(("ODROID-XU3".equals(zzei.zzd) || "Nexus 10".equals(zzei.zzd)) && ("OMX.Exynos.AVC.Decoder".equals(str) || "OMX.Exynos.AVC.Decoder.secure".equals(str)))), codecCapabilities != null && codecCapabilities.isFeatureSupported("tunneled-playback"), z5 || (codecCapabilities != null && codecCapabilities.isFeatureSupported("secure-playback")), zzei.zza >= 35 && codecCapabilities != null && codecCapabilities.isFeatureSupported("detached-surface"));
    }

    private static Point zzi(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2) {
        int widthAlignment = videoCapabilities.getWidthAlignment();
        int heightAlignment = videoCapabilities.getHeightAlignment();
        int i3 = zzei.zza;
        return new Point((((i + widthAlignment) - 1) / widthAlignment) * widthAlignment, (((i2 + heightAlignment) - 1) / heightAlignment) * heightAlignment);
    }

    private final void zzj(String str) {
        zzdo.zzb("MediaCodecInfo", "NoSupport [" + str + "] [" + this.zza + ", " + this.zzb + "] [" + zzei.zze + y8.i.e);
    }

    private static boolean zzk(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2, double d) {
        Point pointZzi = zzi(videoCapabilities, i, i2);
        int i3 = pointZzi.x;
        int i4 = pointZzi.y;
        return (d == -1.0d || d < 1.0d) ? videoCapabilities.isSizeSupported(i3, i4) : videoCapabilities.areSizeAndRateSupported(i3, i4, Math.floor(d));
    }

    /* JADX WARN: Code duplicated, block: B:39:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:42:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:43:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:45:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:46:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:48:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:49:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:51:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:52:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:54:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:55:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:57:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:58:0x00df  */
    /* JADX WARN: Code duplicated, block: B:60:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:61:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:64:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:66:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:67:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:69:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:70:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:74:0x010e  */
    private final boolean zzl(zzab zzabVar, boolean z) {
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArrZzh;
        int i;
        MediaCodecInfo.CodecCapabilities codecCapabilities;
        int iIntValue;
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        int i2 = zzta.zza;
        Pair pairZza = zzcy.zza(zzabVar);
        String str = zzabVar.zzo;
        if (str != null && str.equals("video/mv-hevc") && this.zzc.equals(MimeTypes.VIDEO_H265)) {
            String strZzg = zzfk.zzg(zzabVar.zzr);
            if (strZzg == null) {
                pairZza = null;
            } else {
                String strTrim = strZzg.trim();
                int i3 = zzei.zza;
                pairZza = zzcy.zzb(strZzg, strTrim.split("\\.", -1), zzabVar.zzC);
            }
        }
        if (pairZza != null) {
            int iIntValue2 = ((Integer) pairZza.first).intValue();
            int iIntValue3 = ((Integer) pairZza.second).intValue();
            int i4 = 8;
            if ("video/dolby-vision".equals(zzabVar.zzo)) {
                if (MimeTypes.VIDEO_H264.equals(this.zzb)) {
                    iIntValue3 = 0;
                    iIntValue2 = 8;
                } else if (MimeTypes.VIDEO_H265.equals(this.zzb)) {
                    iIntValue3 = 0;
                    iIntValue2 = 2;
                }
            }
            if (this.zzi) {
                codecProfileLevelArrZzh = zzh();
                if (zzei.zza <= 23 && "video/x-vnd.on2.vp9".equals(this.zzb) && codecProfileLevelArrZzh.length == 0) {
                    codecCapabilities = this.zzd;
                    if (codecCapabilities != null || (videoCapabilities = codecCapabilities.getVideoCapabilities()) == null) {
                        iIntValue = 0;
                    } else {
                        iIntValue = ((Integer) videoCapabilities.getBitrateRange().getUpper()).intValue();
                    }
                    if (iIntValue >= 180000000) {
                        i4 = 1024;
                    } else if (iIntValue >= 120000000) {
                        i4 = 512;
                    } else if (iIntValue >= 60000000) {
                        i4 = 256;
                    } else if (iIntValue >= 30000000) {
                        i4 = 128;
                    } else if (iIntValue >= 18000000) {
                        i4 = 64;
                    } else if (iIntValue >= 12000000) {
                        i4 = 32;
                    } else if (iIntValue >= 7200000) {
                        i4 = 16;
                    } else if (iIntValue < 3600000) {
                        if (iIntValue >= 1800000) {
                            i4 = 4;
                        } else if (iIntValue >= 800000) {
                            i4 = 2;
                        } else {
                            i4 = 1;
                        }
                    }
                    MediaCodecInfo.CodecProfileLevel codecProfileLevel = new MediaCodecInfo.CodecProfileLevel();
                    codecProfileLevel.profile = 1;
                    codecProfileLevel.level = i4;
                    codecProfileLevelArrZzh = new MediaCodecInfo.CodecProfileLevel[]{codecProfileLevel};
                }
                for (MediaCodecInfo.CodecProfileLevel codecProfileLevel2 : codecProfileLevelArrZzh) {
                    if (codecProfileLevel2.profile == iIntValue2 || ((codecProfileLevel2.level < iIntValue3 && z) || (MimeTypes.VIDEO_H265.equals(this.zzb) && iIntValue2 == 2 && ("sailfish".equals(zzei.zzb) || "marlin".equals(zzei.zzb))))) {
                    }
                }
                zzj("codec.profileLevel, " + zzabVar.zzk + ", " + this.zzc);
                return false;
            }
            if (iIntValue2 == 42) {
                iIntValue2 = 42;
                codecProfileLevelArrZzh = zzh();
                if (zzei.zza <= 23) {
                    codecCapabilities = this.zzd;
                    if (codecCapabilities != null) {
                        iIntValue = 0;
                    } else {
                        iIntValue = 0;
                    }
                    if (iIntValue >= 180000000) {
                        i4 = 1024;
                    } else if (iIntValue >= 120000000) {
                        i4 = 512;
                    } else if (iIntValue >= 60000000) {
                        i4 = 256;
                    } else if (iIntValue >= 30000000) {
                        i4 = 128;
                    } else if (iIntValue >= 18000000) {
                        i4 = 64;
                    } else if (iIntValue >= 12000000) {
                        i4 = 32;
                    } else if (iIntValue >= 7200000) {
                        i4 = 16;
                    } else if (iIntValue < 3600000) {
                        if (iIntValue >= 1800000) {
                            i4 = 4;
                        } else if (iIntValue >= 800000) {
                            i4 = 2;
                        } else {
                            i4 = 1;
                        }
                    }
                    MediaCodecInfo.CodecProfileLevel codecProfileLevel3 = new MediaCodecInfo.CodecProfileLevel();
                    codecProfileLevel3.profile = 1;
                    codecProfileLevel3.level = i4;
                    codecProfileLevelArrZzh = new MediaCodecInfo.CodecProfileLevel[]{codecProfileLevel3};
                }
                while (i < r5) {
                    if (codecProfileLevel2.profile == iIntValue2) {
                    }
                }
                zzj("codec.profileLevel, " + zzabVar.zzk + ", " + this.zzc);
                return false;
            }
        }
        return true;
    }

    private final boolean zzm(zzab zzabVar) {
        return this.zzb.equals(zzabVar.zzo) || this.zzb.equals(zzta.zzb(zzabVar));
    }

    public final String toString() {
        return this.zza;
    }

    public final Point zza(int i, int i2) {
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.zzd;
        if (codecCapabilities == null || (videoCapabilities = codecCapabilities.getVideoCapabilities()) == null) {
            return null;
        }
        return zzi(videoCapabilities, i, i2);
    }

    public final zzht zzb(zzab zzabVar, zzab zzabVar2) {
        int i = true != Objects.equals(zzabVar.zzo, zzabVar2.zzo) ? 8 : 0;
        if (this.zzi) {
            if (zzabVar.zzy != zzabVar2.zzy) {
                i |= 1024;
            }
            if (!this.zze && (zzabVar.zzv != zzabVar2.zzv || zzabVar.zzw != zzabVar2.zzw)) {
                i |= 512;
            }
            if ((!zzk.zzg(zzabVar.zzC) || !zzk.zzg(zzabVar2.zzC)) && !Objects.equals(zzabVar.zzC, zzabVar2.zzC)) {
                i |= 2048;
            }
            String str = this.zza;
            if (zzei.zzd.startsWith("SM-T230") && "OMX.MARVELL.VIDEO.HW.CODA7542DECODER".equals(str) && !zzabVar.zzd(zzabVar2)) {
                i |= 2;
            }
            if (i == 0) {
                return new zzht(this.zza, zzabVar, zzabVar2, true != zzabVar.zzd(zzabVar2) ? 2 : 3, 0);
            }
        } else {
            if (zzabVar.zzD != zzabVar2.zzD) {
                i |= 4096;
            }
            if (zzabVar.zzE != zzabVar2.zzE) {
                i |= 8192;
            }
            if (zzabVar.zzF != zzabVar2.zzF) {
                i |= 16384;
            }
            if (i == 0 && "audio/mp4a-latm".equals(this.zzb)) {
                int i2 = zzta.zza;
                Pair pairZza = zzcy.zza(zzabVar);
                Pair pairZza2 = zzcy.zza(zzabVar2);
                if (pairZza != null && pairZza2 != null) {
                    int iIntValue = ((Integer) pairZza.first).intValue();
                    int iIntValue2 = ((Integer) pairZza2.first).intValue();
                    if (iIntValue == 42 && iIntValue2 == 42) {
                        return new zzht(this.zza, zzabVar, zzabVar2, 3, 0);
                    }
                }
            }
            if (!zzabVar.zzd(zzabVar2)) {
                i |= 32;
            }
            if ("audio/opus".equals(this.zzb)) {
                i |= 2;
            }
            if (i == 0) {
                return new zzht(this.zza, zzabVar, zzabVar2, 1, 0);
            }
        }
        return new zzht(this.zza, zzabVar, zzabVar2, 0, i);
    }

    public final boolean zzd(zzab zzabVar) {
        return zzm(zzabVar) && zzl(zzabVar, false);
    }

    public final boolean zze(zzab zzabVar) throws zzsu {
        int i;
        int i2;
        if (!zzm(zzabVar) || !zzl(zzabVar, true)) {
            return false;
        }
        if (this.zzi) {
            int i3 = zzabVar.zzv;
            if (i3 <= 0 || (i2 = zzabVar.zzw) <= 0) {
                return true;
            }
            return zzg(i3, i2, zzabVar.zzx);
        }
        int i4 = zzabVar.zzE;
        if (i4 != -1) {
            MediaCodecInfo.CodecCapabilities codecCapabilities = this.zzd;
            if (codecCapabilities == null) {
                zzj("sampleRate.caps");
                return false;
            }
            MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
            if (audioCapabilities == null) {
                zzj("sampleRate.aCaps");
                return false;
            }
            if (!audioCapabilities.isSampleRateSupported(i4)) {
                zzj("sampleRate.support, " + i4);
                return false;
            }
        }
        int i5 = zzabVar.zzD;
        if (i5 == -1) {
            return true;
        }
        MediaCodecInfo.CodecCapabilities codecCapabilities2 = this.zzd;
        if (codecCapabilities2 == null) {
            zzj("channelCount.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities2 = codecCapabilities2.getAudioCapabilities();
        if (audioCapabilities2 == null) {
            zzj("channelCount.aCaps");
            return false;
        }
        String str = this.zza;
        String str2 = this.zzb;
        int maxInputChannelCount = audioCapabilities2.getMaxInputChannelCount();
        if (maxInputChannelCount <= 1 && ((zzei.zza < 26 || maxInputChannelCount <= 0) && !"audio/mpeg".equals(str2) && !"audio/3gpp".equals(str2) && !"audio/amr-wb".equals(str2) && !"audio/mp4a-latm".equals(str2) && !"audio/vorbis".equals(str2) && !"audio/opus".equals(str2) && !"audio/raw".equals(str2) && !"audio/flac".equals(str2) && !"audio/g711-alaw".equals(str2) && !"audio/g711-mlaw".equals(str2) && !"audio/gsm".equals(str2))) {
            if ("audio/ac3".equals(str2)) {
                i = 6;
            } else {
                i = "audio/eac3".equals(str2) ? 16 : 30;
            }
            zzdo.zzf("MediaCodecInfo", "AssumedMaxChannelAdjustment: " + str + ", [" + maxInputChannelCount + " to " + i + y8.i.e);
            maxInputChannelCount = i;
        }
        if (maxInputChannelCount >= i5) {
            return true;
        }
        zzj("channelCount.support, " + i5);
        return false;
    }

    public final boolean zzf(zzab zzabVar) {
        if (this.zzi) {
            return this.zze;
        }
        int i = zzta.zza;
        Pair pairZza = zzcy.zza(zzabVar);
        return pairZza != null && ((Integer) pairZza.first).intValue() == 42;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0052  */
    public final boolean zzg(int i, int i2, double d) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.zzd;
        if (codecCapabilities == null) {
            zzj("sizeAndRate.caps");
            return false;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            zzj("sizeAndRate.vCaps");
            return false;
        }
        if (zzei.zza >= 29) {
            int iZza = zzsi.zza(videoCapabilities, i, i2, d);
            if (iZza != 2) {
                if (iZza == 1) {
                    zzj("sizeAndRate.cover, " + i + "x" + i2 + "@" + d);
                    return false;
                }
                if (!zzk(videoCapabilities, i, i2, d)) {
                    if (i < i2) {
                    }
                    zzj("sizeAndRate.support, " + i + "x" + i2 + "@" + d);
                    return false;
                }
            }
        } else if (!zzk(videoCapabilities, i, i2, d)) {
            if (i < i2 || (("OMX.MTK.VIDEO.DECODER.HEVC".equals(this.zza) && "mcv5a".equals(zzei.zzb)) || !zzk(videoCapabilities, i2, i, d))) {
                zzj("sizeAndRate.support, " + i + "x" + i2 + "@" + d);
                return false;
            }
            zzdo.zzb("MediaCodecInfo", "AssumedSupport [" + ("sizeAndRate.rotated, " + i + "x" + i2 + "@" + d) + "] [" + this.zza + ", " + this.zzb + "] [" + zzei.zze + y8.i.e);
        }
        return true;
    }

    public final MediaCodecInfo.CodecProfileLevel[] zzh() {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.zzd;
        return (codecCapabilities == null || codecCapabilities.profileLevels == null) ? new MediaCodecInfo.CodecProfileLevel[0] : this.zzd.profileLevels;
    }

    zzsg(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7) {
        str.getClass();
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = codecCapabilities;
        this.zzg = z;
        this.zze = z4;
        this.zzf = z6;
        this.zzh = z7;
        this.zzi = zzbb.zzi(str2);
    }
}
