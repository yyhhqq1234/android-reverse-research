package com.google.android.gms.internal.ads;

import androidx.core.view.ViewCompat;
import com.unity3d.services.UnityAdsConstants;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzais {
    /* JADX WARN: Code duplicated, block: B:131:0x0261 A[Catch: all -> 0x01f3, TryCatch #0 {all -> 0x01f3, blocks: (B:9:0x0030, B:11:0x003b, B:13:0x0047, B:16:0x0053, B:19:0x0060, B:22:0x006f, B:25:0x007c, B:28:0x0089, B:30:0x0093, B:38:0x00ae, B:39:0x00bf, B:40:0x00d2, B:43:0x00de, B:46:0x00eb, B:49:0x00f8, B:52:0x0105, B:55:0x0112, B:58:0x011f, B:61:0x012c, B:64:0x0139, B:67:0x0146, B:70:0x0156, B:74:0x016a, B:76:0x0170, B:78:0x0185, B:79:0x018c, B:81:0x0193, B:86:0x019e, B:91:0x01aa, B:131:0x0261, B:92:0x01bf, B:94:0x01c6, B:96:0x01d0, B:97:0x01e4, B:112:0x0213, B:115:0x0220, B:118:0x022c, B:121:0x0238, B:124:0x0244, B:127:0x0250, B:130:0x025a, B:132:0x0275, B:133:0x027c), top: B:138:0x0022 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:131:0x0261, please report this as an issue */
    public static zzax zza(zzdy zzdyVar) {
        String str;
        zzax zzaftVar;
        int iZzd = zzdyVar.zzd() + zzdyVar.zzg();
        int iZzg = zzdyVar.zzg();
        int i = (iZzg >> 24) & 255;
        zzax zzaxVarZze = null;
        try {
            if (i == 169 || i == 253) {
                int i2 = iZzg & ViewCompat.MEASURED_SIZE_MASK;
                if (i2 == 6516084) {
                    int iZzg2 = zzdyVar.zzg();
                    if (zzdyVar.zzg() == 1684108385) {
                        zzdyVar.zzM(8);
                        String strZzA = zzdyVar.zzA(iZzg2 - 16);
                        zzaxVarZze = new zzagb("und", strZzA, strZzA);
                    } else {
                        zzdo.zzf("MetadataUtil", "Failed to parse comment attribute: ".concat(zzeq.zze(iZzg)));
                    }
                } else if (i2 == 7233901 || i2 == 7631467) {
                    zzaxVarZze = zze(iZzg, "TIT2", zzdyVar);
                } else if (i2 == 6516589 || i2 == 7828084) {
                    zzaxVarZze = zze(iZzg, "TCOM", zzdyVar);
                } else if (i2 == 6578553) {
                    zzaxVarZze = zze(iZzg, "TDRC", zzdyVar);
                } else if (i2 == 4280916) {
                    zzaxVarZze = zze(iZzg, "TPE1", zzdyVar);
                } else if (i2 == 7630703) {
                    zzaxVarZze = zze(iZzg, "TSSE", zzdyVar);
                } else if (i2 == 6384738) {
                    zzaxVarZze = zze(iZzg, "TALB", zzdyVar);
                } else if (i2 == 7108978) {
                    zzaxVarZze = zze(iZzg, "USLT", zzdyVar);
                } else if (i2 == 6776174) {
                    zzaxVarZze = zze(iZzg, "TCON", zzdyVar);
                } else if (i2 == 6779504) {
                    zzaxVarZze = zze(iZzg, "TIT1", zzdyVar);
                } else {
                    zzdo.zzb("MetadataUtil", "Skipped unknown metadata entry: " + zzeq.zze(iZzg));
                }
            } else if (iZzg == 1735291493) {
                String strZza = zzagi.zza(zzb(zzdyVar) - 1);
                if (strZza != null) {
                    zzaftVar = new zzagq("TCON", null, zzfxn.zzo(strZza));
                    zzaxVarZze = zzaftVar;
                } else {
                    zzdo.zzf("MetadataUtil", "Failed to parse standard genre code");
                }
            } else if (iZzg == 1684632427) {
                zzaxVarZze = zzd(1684632427, "TPOS", zzdyVar);
            } else if (iZzg == 1953655662) {
                zzaxVarZze = zzd(1953655662, "TRCK", zzdyVar);
            } else if (iZzg == 1953329263) {
                zzaxVarZze = zzc(1953329263, "TBPM", zzdyVar, true, false);
            } else if (iZzg == 1668311404) {
                zzaxVarZze = zzc(1668311404, "TCMP", zzdyVar, true, true);
            } else if (iZzg == 1668249202) {
                int iZzg3 = zzdyVar.zzg();
                if (zzdyVar.zzg() == 1684108385) {
                    int iZzg4 = zzdyVar.zzg();
                    int i3 = zzaik.zza;
                    int i4 = iZzg4 & ViewCompat.MEASURED_SIZE_MASK;
                    if (i4 == 13) {
                        str = "image/jpeg";
                    } else if (i4 == 14) {
                        str = "image/png";
                        i4 = 14;
                    } else {
                        str = null;
                    }
                    if (str == null) {
                        zzdo.zzf("MetadataUtil", "Unrecognized cover art flags: " + i4);
                    } else {
                        zzdyVar.zzM(4);
                        int i5 = iZzg3 - 16;
                        byte[] bArr = new byte[i5];
                        zzdyVar.zzH(bArr, 0, i5);
                        zzaftVar = new zzaft(str, null, 3, bArr);
                        zzaxVarZze = zzaftVar;
                    }
                } else {
                    zzdo.zzf("MetadataUtil", "Failed to parse cover art attribute");
                }
            } else if (iZzg == 1631670868) {
                zzaxVarZze = zze(1631670868, "TPE2", zzdyVar);
            } else if (iZzg == 1936682605) {
                zzaxVarZze = zze(1936682605, "TSOT", zzdyVar);
            } else if (iZzg == 1936679276) {
                zzaxVarZze = zze(1936679276, "TSOA", zzdyVar);
            } else if (iZzg == 1936679282) {
                zzaxVarZze = zze(1936679282, "TSOP", zzdyVar);
            } else if (iZzg == 1936679265) {
                zzaxVarZze = zze(1936679265, "TSO2", zzdyVar);
            } else if (iZzg == 1936679791) {
                zzaxVarZze = zze(1936679791, "TSOC", zzdyVar);
            } else if (iZzg == 1920233063) {
                zzaxVarZze = zzc(1920233063, "ITUNESADVISORY", zzdyVar, false, false);
            } else if (iZzg == 1885823344) {
                zzaxVarZze = zzc(1885823344, "ITUNESGAPLESS", zzdyVar, false, true);
            } else if (iZzg == 1936683886) {
                zzaxVarZze = zze(1936683886, "TVSHOWSORT", zzdyVar);
            } else if (iZzg == 1953919848) {
                zzaxVarZze = zze(1953919848, "TVSHOW", zzdyVar);
            } else if (iZzg == 757935405) {
                String strZzA2 = null;
                String strZzA3 = null;
                int i6 = -1;
                int i7 = -1;
                while (zzdyVar.zzd() < iZzd) {
                    int iZzd2 = zzdyVar.zzd();
                    int iZzg5 = zzdyVar.zzg();
                    int iZzg6 = zzdyVar.zzg();
                    zzdyVar.zzM(4);
                    if (iZzg6 == 1835360622) {
                        strZzA2 = zzdyVar.zzA(iZzg5 - 12);
                    } else {
                        int i8 = iZzg5 - 12;
                        if (iZzg6 == 1851878757) {
                            strZzA3 = zzdyVar.zzA(i8);
                        } else {
                            if (iZzg6 == 1684108385) {
                                i7 = iZzg5;
                            }
                            if (iZzg6 == 1684108385) {
                                i6 = iZzd2;
                            }
                            zzdyVar.zzM(i8);
                        }
                    }
                }
                if (strZzA2 != null && strZzA3 != null && i6 != -1) {
                    zzdyVar.zzL(i6);
                    zzdyVar.zzM(16);
                    zzaxVarZze = new zzagk(strZzA2, strZzA3, zzdyVar.zzA(i7 - 16));
                }
            } else {
                zzdo.zzb("MetadataUtil", "Skipped unknown metadata entry: " + zzeq.zze(iZzg));
            }
            zzdyVar.zzL(iZzd);
            return zzaxVarZze;
        } catch (Throwable th) {
            zzdyVar.zzL(iZzd);
            throw th;
        }
    }

    private static int zzb(zzdy zzdyVar) {
        int iZzg = zzdyVar.zzg();
        if (zzdyVar.zzg() == 1684108385) {
            zzdyVar.zzM(8);
            int i = iZzg - 16;
            if (i == 1) {
                return zzdyVar.zzm();
            }
            if (i == 2) {
                return zzdyVar.zzq();
            }
            if (i == 3) {
                return zzdyVar.zzo();
            }
            if (i == 4 && (zzdyVar.zzf() & 128) == 0) {
                return zzdyVar.zzp();
            }
        }
        zzdo.zzf("MetadataUtil", "Failed to parse data atom to int");
        return -1;
    }

    private static zzagh zzc(int i, String str, zzdy zzdyVar, boolean z, boolean z2) {
        int iZzb = zzb(zzdyVar);
        if (z2) {
            iZzb = Math.min(1, iZzb);
        }
        if (iZzb >= 0) {
            return z ? new zzagq(str, null, zzfxn.zzo(Integer.toString(iZzb))) : new zzagb("und", str, Integer.toString(iZzb));
        }
        zzdo.zzf("MetadataUtil", "Failed to parse uint8 attribute: ".concat(zzeq.zze(i)));
        return null;
    }

    private static zzagq zzd(int i, String str, zzdy zzdyVar) {
        int iZzg = zzdyVar.zzg();
        if (zzdyVar.zzg() == 1684108385 && iZzg >= 22) {
            zzdyVar.zzM(10);
            int iZzq = zzdyVar.zzq();
            if (iZzq > 0) {
                StringBuilder sb = new StringBuilder();
                sb.append(iZzq);
                String string = sb.toString();
                int iZzq2 = zzdyVar.zzq();
                if (iZzq2 > 0) {
                    string = string + UnityAdsConstants.DefaultUrls.AD_ASSET_PATH + iZzq2;
                }
                return new zzagq(str, null, zzfxn.zzo(string));
            }
        }
        zzdo.zzf("MetadataUtil", "Failed to parse index/count attribute: ".concat(zzeq.zze(i)));
        return null;
    }

    private static zzagq zze(int i, String str, zzdy zzdyVar) {
        int iZzg = zzdyVar.zzg();
        if (zzdyVar.zzg() == 1684108385) {
            zzdyVar.zzM(8);
            return new zzagq(str, null, zzfxn.zzo(zzdyVar.zzA(iZzg - 16)));
        }
        zzdo.zzf("MetadataUtil", "Failed to parse text attribute: ".concat(zzeq.zze(i)));
        return null;
    }
}
