package com.google.android.gms.internal.ads;

import android.util.Pair;
import androidx.work.impl.Scheduler;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.nearby.connection.ConnectionsStatusCodes;
import com.unity3d.services.core.device.MimeTypes;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzahk {
    public byte[] zzN;
    public zzadu zzT;
    public boolean zzU;
    public zzadt zzW;
    public int zzX;
    private int zzY;
    public String zza;
    public String zzb;
    public int zzc;
    public int zzd;
    public int zze;
    public int zzf;
    public boolean zzg;
    public byte[] zzh;
    public zzads zzi;
    public byte[] zzj;
    public zzu zzk;
    public int zzl = -1;
    public int zzm = -1;
    public int zzn = -1;
    public int zzo = -1;
    public int zzp = -1;
    public int zzq = 0;
    public int zzr = -1;
    public float zzs = 0.0f;
    public float zzt = 0.0f;
    public float zzu = 0.0f;
    public byte[] zzv = null;
    public int zzw = -1;
    public boolean zzx = false;
    public int zzy = -1;
    public int zzz = -1;
    public int zzA = -1;
    public int zzB = 1000;
    public int zzC = Scheduler.MAX_GREEDY_SCHEDULER_LIMIT;
    public float zzD = -1.0f;
    public float zzE = -1.0f;
    public float zzF = -1.0f;
    public float zzG = -1.0f;
    public float zzH = -1.0f;
    public float zzI = -1.0f;
    public float zzJ = -1.0f;
    public float zzK = -1.0f;
    public float zzL = -1.0f;
    public float zzM = -1.0f;
    public int zzO = 1;
    public int zzP = -1;
    public int zzQ = ConnectionsStatusCodes.STATUS_NETWORK_NOT_CONNECTED;
    public long zzR = 0;
    public long zzS = 0;
    public boolean zzV = true;
    private String zzZ = "eng";

    protected zzahk() {
    }

    private static Pair zzf(zzdy zzdyVar) throws zzbc {
        try {
            zzdyVar.zzM(16);
            long jZzs = zzdyVar.zzs();
            if (jZzs == 1482049860) {
                return new Pair("video/divx", null);
            }
            if (jZzs == 859189832) {
                return new Pair("video/3gpp", null);
            }
            if (jZzs != 826496599) {
                zzdo.zzf("MatroskaExtractor", "Unknown FourCC. Setting mimeType to video/x-unknown");
                return new Pair("video/x-unknown", null);
            }
            int iZzd = zzdyVar.zzd() + 20;
            byte[] bArrZzN = zzdyVar.zzN();
            while (true) {
                int length = bArrZzN.length;
                if (iZzd >= length - 4) {
                    throw zzbc.zza("Failed to find FourCC VC1 initialization data", null);
                }
                int i = iZzd + 1;
                if (bArrZzN[iZzd] == 0 && bArrZzN[i] == 0 && bArrZzN[iZzd + 2] == 1 && bArrZzN[iZzd + 3] == 15) {
                    return new Pair("video/wvc1", Collections.singletonList(Arrays.copyOfRange(bArrZzN, iZzd, length)));
                }
                iZzd = i;
            }
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw zzbc.zza("Error parsing FourCC private data", null);
        }
    }

    private static List zzg(byte[] bArr) throws zzbc {
        int i;
        int i2;
        try {
            if (bArr[0] != 2) {
                throw zzbc.zza("Error parsing vorbis codec private", null);
            }
            int i3 = 1;
            int i4 = 0;
            while (true) {
                int i5 = bArr[i3];
                i3++;
                i = i5 & 255;
                if (i != 255) {
                    break;
                }
                i4 += 255;
            }
            int i6 = i4 + i;
            int i7 = 0;
            while (true) {
                int i8 = bArr[i3];
                i3++;
                i2 = i8 & 255;
                if (i2 != 255) {
                    break;
                }
                i7 += 255;
            }
            int i9 = i7 + i2;
            if (bArr[i3] != 1) {
                throw zzbc.zza("Error parsing vorbis codec private", null);
            }
            byte[] bArr2 = new byte[i6];
            System.arraycopy(bArr, i3, bArr2, 0, i6);
            int i10 = i3 + i6;
            if (bArr[i10] != 3) {
                throw zzbc.zza("Error parsing vorbis codec private", null);
            }
            int i11 = i10 + i9;
            if (bArr[i11] != 5) {
                throw zzbc.zza("Error parsing vorbis codec private", null);
            }
            int length = bArr.length - i11;
            byte[] bArr3 = new byte[length];
            System.arraycopy(bArr, i11, bArr3, 0, length);
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(bArr2);
            arrayList.add(bArr3);
            return arrayList;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw zzbc.zza("Error parsing vorbis codec private", null);
        }
    }

    private static boolean zzh(zzdy zzdyVar) throws zzbc {
        try {
            int iZzk = zzdyVar.zzk();
            if (iZzk == 1) {
                return true;
            }
            if (iZzk == 65534) {
                zzdyVar.zzL(24);
                if (zzdyVar.zzt() == zzahm.zze.getMostSignificantBits() && zzdyVar.zzt() == zzahm.zze.getLeastSignificantBits()) {
                    return true;
                }
            }
            return false;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw zzbc.zza("Error parsing MS/ACM codec private", null);
        }
    }

    @EnsuresNonNull({"codecPrivate"})
    private final byte[] zzi(String str) throws zzbc {
        byte[] bArr = this.zzj;
        if (bArr != null) {
            return bArr;
        }
        throw zzbc.zza("Missing CodecPrivate for codec ".concat(String.valueOf(str)), null);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:104:0x0195  */
    /* JADX WARN: Code duplicated, block: B:132:0x0253 A[PHI: r10
  0x0253: PHI (r10v8 int) = (r10v2 int), (r10v3 int), (r10v4 int), (r10v5 int), (r10v6 int), (r10v0 int) binds: [B:136:0x026f, B:130:0x023a, B:127:0x021c, B:125:0x0217, B:123:0x0212, B:116:0x01ed] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:174:0x03ad  */
    /* JADX WARN: Code duplicated, block: B:179:0x03c6  */
    /* JADX WARN: Code duplicated, block: B:180:0x03c8  */
    /* JADX WARN: Code duplicated, block: B:183:0x03d5  */
    /* JADX WARN: Code duplicated, block: B:184:0x03e4  */
    /* JADX WARN: Code duplicated, block: B:186:0x03ea  */
    /* JADX WARN: Code duplicated, block: B:188:0x03ee  */
    /* JADX WARN: Code duplicated, block: B:190:0x03f2  */
    /* JADX WARN: Code duplicated, block: B:193:0x03fa  */
    /* JADX WARN: Code duplicated, block: B:197:0x0404  */
    /* JADX WARN: Code duplicated, block: B:200:0x0414  */
    /* JADX WARN: Code duplicated, block: B:203:0x041a  */
    /* JADX WARN: Code duplicated, block: B:205:0x0420  */
    /* JADX WARN: Code duplicated, block: B:225:0x04db  */
    /* JADX WARN: Code duplicated, block: B:227:0x0502  */
    /* JADX WARN: Code duplicated, block: B:230:0x0507  */
    /* JADX WARN: Code duplicated, block: B:235:0x0527  */
    /* JADX WARN: Code duplicated, block: B:254:0x0573  */
    /* JADX WARN: Code duplicated, block: B:256:0x0593  */
    /* JADX WARN: Code duplicated, block: B:258:0x0599  */
    /* JADX WARN: Code duplicated, block: B:274:0x05cd  */
    @EnsuresNonNull({"this.output"})
    @RequiresNonNull({"codecId"})
    public final void zze(zzacq zzacqVar, int i) throws zzbc {
        byte b;
        List listSingletonList;
        List listZzg;
        String str;
        String str2;
        int i2;
        String str3;
        int i3;
        zzz zzzVar;
        int i4;
        float f;
        zzk zzkVarZzg;
        byte[] bArr;
        int i5;
        int i6;
        int i7;
        zzacj zzacjVarZza;
        String str4 = this.zzb;
        int i8 = 1;
        int iZzn = 4;
        int i9 = 0;
        int iIntValue = -1;
        switch (str4) {
            case "V_MPEG4/ISO/AP":
                b = 6;
                break;
            case "V_MPEG4/ISO/SP":
                b = 4;
                break;
            case "A_MS/ACM":
                b = 23;
                break;
            case "A_TRUEHD":
                b = 18;
                break;
            case "A_VORBIS":
                b = 11;
                break;
            case "A_MPEG/L2":
                b = 14;
                break;
            case "A_MPEG/L3":
                b = 15;
                break;
            case "V_MS/VFW/FOURCC":
                b = 9;
                break;
            case "S_DVBSUB":
                b = 32;
                break;
            case "V_MPEG4/ISO/ASP":
                b = 5;
                break;
            case "V_MPEG4/ISO/AVC":
                b = 7;
                break;
            case "S_VOBSUB":
                b = 30;
                break;
            case "A_DTS/LOSSLESS":
                b = 21;
                break;
            case "A_AAC":
                b = 13;
                break;
            case "A_AC3":
                b = 16;
                break;
            case "A_DTS":
                b = 19;
                break;
            case "V_AV1":
                b = 2;
                break;
            case "V_VP8":
                b = 0;
                break;
            case "V_VP9":
                b = 1;
                break;
            case "S_HDMV/PGS":
                b = 31;
                break;
            case "V_THEORA":
                b = 10;
                break;
            case "A_DTS/EXPRESS":
                b = 20;
                break;
            case "A_PCM/FLOAT/IEEE":
                b = 26;
                break;
            case "A_PCM/INT/BIG":
                b = 25;
                break;
            case "A_PCM/INT/LIT":
                b = 24;
                break;
            case "S_TEXT/ASS":
                b = 28;
                break;
            case "V_MPEGH/ISO/HEVC":
                b = 8;
                break;
            case "S_TEXT/WEBVTT":
                b = 29;
                break;
            case "S_TEXT/UTF8":
                b = 27;
                break;
            case "V_MPEG2":
                b = 3;
                break;
            case "A_EAC3":
                b = 17;
                break;
            case "A_FLAC":
                b = 22;
                break;
            case "A_OPUS":
                b = 12;
                break;
            default:
                b = -1;
                break;
        }
        String str5 = "audio/raw";
        switch (b) {
            case 0:
                str5 = "video/x-vnd.on2.vp8";
                i2 = -1;
                listZzg = null;
                str2 = null;
                iZzn = -1;
                if (this.zzN != null && (zzacjVarZza = zzacj.zza(new zzdy(this.zzN))) != null) {
                    str2 = zzacjVarZza.zza;
                    str5 = "video/dolby-vision";
                }
                str3 = str5;
                boolean z = this.zzV;
                if (true != this.zzU) {
                    i3 = 0;
                } else {
                    i3 = 2;
                }
                int i10 = (z ? 1 : 0) | i3;
                zzzVar = new zzz();
                if (zzbb.zzg(str3)) {
                    zzzVar.zzz(this.zzO);
                    zzzVar.zzab(this.zzQ);
                    zzzVar.zzU(iZzn);
                } else if (zzbb.zzi(str3)) {
                    if (this.zzq == 0) {
                        i6 = this.zzo;
                        if (i6 == -1) {
                            i6 = this.zzl;
                        }
                        this.zzo = i6;
                        i7 = this.zzp;
                        if (i7 == -1) {
                            i7 = this.zzm;
                        }
                        this.zzp = i7;
                    }
                    i4 = this.zzo;
                    if (i4 != -1 || (i5 = this.zzp) == -1) {
                        f = -1.0f;
                    } else {
                        f = (this.zzm * i4) / (this.zzl * i5);
                    }
                    if (this.zzx) {
                        if (this.zzD != -1.0f || this.zzE == -1.0f || this.zzF == -1.0f || this.zzG == -1.0f || this.zzH == -1.0f || this.zzI == -1.0f || this.zzJ == -1.0f || this.zzK == -1.0f || this.zzL == -1.0f || this.zzM == -1.0f) {
                            bArr = null;
                        } else {
                            bArr = new byte[25];
                            ByteBuffer byteBufferOrder = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
                            byteBufferOrder.put((byte) 0);
                            byteBufferOrder.putShort((short) ((this.zzD * 50000.0f) + 0.5f));
                            byteBufferOrder.putShort((short) ((this.zzE * 50000.0f) + 0.5f));
                            byteBufferOrder.putShort((short) ((this.zzF * 50000.0f) + 0.5f));
                            byteBufferOrder.putShort((short) ((this.zzG * 50000.0f) + 0.5f));
                            byteBufferOrder.putShort((short) ((this.zzH * 50000.0f) + 0.5f));
                            byteBufferOrder.putShort((short) ((this.zzI * 50000.0f) + 0.5f));
                            byteBufferOrder.putShort((short) ((this.zzJ * 50000.0f) + 0.5f));
                            byteBufferOrder.putShort((short) ((this.zzK * 50000.0f) + 0.5f));
                            byteBufferOrder.putShort((short) (this.zzL + 0.5f));
                            byteBufferOrder.putShort((short) (this.zzM + 0.5f));
                            byteBufferOrder.putShort((short) this.zzB);
                            byteBufferOrder.putShort((short) this.zzC);
                        }
                        zzi zziVar = new zzi();
                        zziVar.zzc(this.zzy);
                        zziVar.zzb(this.zzA);
                        zziVar.zzd(this.zzz);
                        zziVar.zze(bArr);
                        zziVar.zzf(this.zzn);
                        zziVar.zza(this.zzn);
                        zzkVarZzg = zziVar.zzg();
                    } else {
                        zzkVarZzg = null;
                    }
                    if (this.zza != null && zzahm.zzf.containsKey(this.zza)) {
                        iIntValue = ((Integer) zzahm.zzf.get(this.zza)).intValue();
                    }
                    if (this.zzr == 0 || Float.compare(this.zzs, 0.0f) != 0 || Float.compare(this.zzt, 0.0f) != 0) {
                        i9 = iIntValue;
                    } else if (Float.compare(this.zzu, 0.0f) != 0) {
                        if (Float.compare(this.zzu, 90.0f) == 0) {
                            i9 = 90;
                        } else if (Float.compare(this.zzu, -180.0f) == 0 || Float.compare(this.zzu, 180.0f) == 0) {
                            i9 = 180;
                        } else if (Float.compare(this.zzu, -90.0f) == 0) {
                            i9 = 270;
                        } else {
                            i9 = iIntValue;
                        }
                    }
                    zzzVar.zzaf(this.zzl);
                    zzzVar.zzK(this.zzm);
                    zzzVar.zzW(f);
                    zzzVar.zzZ(i9);
                    zzzVar.zzX(this.zzv);
                    zzzVar.zzad(this.zzw);
                    zzzVar.zzB(zzkVarZzg);
                    i8 = 2;
                } else {
                    if ("application/x-subrip".equals(str3) && !"text/x-ssa".equals(str3) && !"text/vtt".equals(str3) && !"application/vobsub".equals(str3) && !"application/pgs".equals(str3) && !"application/dvbsubs".equals(str3)) {
                        throw zzbc.zza("Unexpected MIME type.", null);
                    }
                    i8 = 3;
                }
                if (this.zza != null && !zzahm.zzf.containsKey(this.zza)) {
                    zzzVar.zzO(this.zza);
                }
                zzzVar.zzL(i);
                zzzVar.zzaa(str3);
                zzzVar.zzR(i2);
                zzzVar.zzQ(this.zzZ);
                zzzVar.zzac(i10);
                zzzVar.zzN(listZzg);
                zzzVar.zzA(str2);
                zzzVar.zzF(this.zzk);
                zzab zzabVarZzag = zzzVar.zzag();
                zzadt zzadtVarZzw = zzacqVar.zzw(this.zzc, i8);
                this.zzW = zzadtVarZzw;
                zzadtVarZzw.zzm(zzabVarZzag);
                return;
            case 1:
                str5 = "video/x-vnd.on2.vp9";
                i2 = -1;
                listZzg = null;
                str2 = null;
                iZzn = -1;
                if (this.zzN != null) {
                    str2 = zzacjVarZza.zza;
                    str5 = "video/dolby-vision";
                }
                str3 = str5;
                boolean z2 = this.zzV;
                if (true != this.zzU) {
                    i3 = 0;
                } else {
                    i3 = 2;
                }
                int i11 = (z2 ? 1 : 0) | i3;
                zzzVar = new zzz();
                if (zzbb.zzg(str3)) {
                    if (zzbb.zzi(str3)) {
                        if (this.zzq == 0) {
                            i6 = this.zzo;
                            if (i6 == -1) {
                                i6 = this.zzl;
                            }
                            this.zzo = i6;
                            i7 = this.zzp;
                            if (i7 == -1) {
                                i7 = this.zzm;
                            }
                            this.zzp = i7;
                        }
                        i4 = this.zzo;
                        if (i4 != -1) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.zzx) {
                            if (this.zzD != -1.0f) {
                                bArr = null;
                            } else {
                                bArr = null;
                            }
                            zzi zziVar2 = new zzi();
                            zziVar2.zzc(this.zzy);
                            zziVar2.zzb(this.zzA);
                            zziVar2.zzd(this.zzz);
                            zziVar2.zze(bArr);
                            zziVar2.zzf(this.zzn);
                            zziVar2.zza(this.zzn);
                            zzkVarZzg = zziVar2.zzg();
                        } else {
                            zzkVarZzg = null;
                        }
                        if (this.zza != null) {
                            iIntValue = ((Integer) zzahm.zzf.get(this.zza)).intValue();
                        }
                        if (this.zzr == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        zzzVar.zzaf(this.zzl);
                        zzzVar.zzK(this.zzm);
                        zzzVar.zzW(f);
                        zzzVar.zzZ(i9);
                        zzzVar.zzX(this.zzv);
                        zzzVar.zzad(this.zzw);
                        zzzVar.zzB(zzkVarZzg);
                        i8 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i8 = 3;
                    }
                    break;
                } else {
                    zzzVar.zzz(this.zzO);
                    zzzVar.zzab(this.zzQ);
                    zzzVar.zzU(iZzn);
                }
                if (this.zza != null) {
                    zzzVar.zzO(this.zza);
                }
                zzzVar.zzL(i);
                zzzVar.zzaa(str3);
                zzzVar.zzR(i2);
                zzzVar.zzQ(this.zzZ);
                zzzVar.zzac(i11);
                zzzVar.zzN(listZzg);
                zzzVar.zzA(str2);
                zzzVar.zzF(this.zzk);
                zzab zzabVarZzag2 = zzzVar.zzag();
                zzadt zzadtVarZzw2 = zzacqVar.zzw(this.zzc, i8);
                this.zzW = zzadtVarZzw2;
                zzadtVarZzw2.zzm(zzabVarZzag2);
                return;
            case 2:
                str5 = MimeTypes.VIDEO_AV1;
                i2 = -1;
                listZzg = null;
                str2 = null;
                iZzn = -1;
                if (this.zzN != null) {
                    str2 = zzacjVarZza.zza;
                    str5 = "video/dolby-vision";
                }
                str3 = str5;
                boolean z3 = this.zzV;
                if (true != this.zzU) {
                    i3 = 0;
                } else {
                    i3 = 2;
                }
                int i12 = (z3 ? 1 : 0) | i3;
                zzzVar = new zzz();
                if (zzbb.zzg(str3)) {
                    if (zzbb.zzi(str3)) {
                        if (this.zzq == 0) {
                            i6 = this.zzo;
                            if (i6 == -1) {
                                i6 = this.zzl;
                            }
                            this.zzo = i6;
                            i7 = this.zzp;
                            if (i7 == -1) {
                                i7 = this.zzm;
                            }
                            this.zzp = i7;
                        }
                        i4 = this.zzo;
                        if (i4 != -1) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.zzx) {
                            if (this.zzD != -1.0f) {
                                bArr = null;
                            } else {
                                bArr = null;
                            }
                            zzi zziVar3 = new zzi();
                            zziVar3.zzc(this.zzy);
                            zziVar3.zzb(this.zzA);
                            zziVar3.zzd(this.zzz);
                            zziVar3.zze(bArr);
                            zziVar3.zzf(this.zzn);
                            zziVar3.zza(this.zzn);
                            zzkVarZzg = zziVar3.zzg();
                        } else {
                            zzkVarZzg = null;
                        }
                        if (this.zza != null) {
                            iIntValue = ((Integer) zzahm.zzf.get(this.zza)).intValue();
                        }
                        if (this.zzr == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        zzzVar.zzaf(this.zzl);
                        zzzVar.zzK(this.zzm);
                        zzzVar.zzW(f);
                        zzzVar.zzZ(i9);
                        zzzVar.zzX(this.zzv);
                        zzzVar.zzad(this.zzw);
                        zzzVar.zzB(zzkVarZzg);
                        i8 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i8 = 3;
                    }
                    break;
                } else {
                    zzzVar.zzz(this.zzO);
                    zzzVar.zzab(this.zzQ);
                    zzzVar.zzU(iZzn);
                }
                if (this.zza != null) {
                    zzzVar.zzO(this.zza);
                }
                zzzVar.zzL(i);
                zzzVar.zzaa(str3);
                zzzVar.zzR(i2);
                zzzVar.zzQ(this.zzZ);
                zzzVar.zzac(i12);
                zzzVar.zzN(listZzg);
                zzzVar.zzA(str2);
                zzzVar.zzF(this.zzk);
                zzab zzabVarZzag3 = zzzVar.zzag();
                zzadt zzadtVarZzw3 = zzacqVar.zzw(this.zzc, i8);
                this.zzW = zzadtVarZzw3;
                zzadtVarZzw3.zzm(zzabVarZzag3);
                return;
            case 3:
                str5 = "video/mpeg2";
                i2 = -1;
                listZzg = null;
                str2 = null;
                iZzn = -1;
                if (this.zzN != null) {
                    str2 = zzacjVarZza.zza;
                    str5 = "video/dolby-vision";
                }
                str3 = str5;
                boolean z4 = this.zzV;
                if (true != this.zzU) {
                    i3 = 0;
                } else {
                    i3 = 2;
                }
                int i13 = (z4 ? 1 : 0) | i3;
                zzzVar = new zzz();
                if (zzbb.zzg(str3)) {
                    if (zzbb.zzi(str3)) {
                        if (this.zzq == 0) {
                            i6 = this.zzo;
                            if (i6 == -1) {
                                i6 = this.zzl;
                            }
                            this.zzo = i6;
                            i7 = this.zzp;
                            if (i7 == -1) {
                                i7 = this.zzm;
                            }
                            this.zzp = i7;
                        }
                        i4 = this.zzo;
                        if (i4 != -1) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.zzx) {
                            if (this.zzD != -1.0f) {
                                bArr = null;
                            } else {
                                bArr = null;
                            }
                            zzi zziVar4 = new zzi();
                            zziVar4.zzc(this.zzy);
                            zziVar4.zzb(this.zzA);
                            zziVar4.zzd(this.zzz);
                            zziVar4.zze(bArr);
                            zziVar4.zzf(this.zzn);
                            zziVar4.zza(this.zzn);
                            zzkVarZzg = zziVar4.zzg();
                        } else {
                            zzkVarZzg = null;
                        }
                        if (this.zza != null) {
                            iIntValue = ((Integer) zzahm.zzf.get(this.zza)).intValue();
                        }
                        if (this.zzr == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        zzzVar.zzaf(this.zzl);
                        zzzVar.zzK(this.zzm);
                        zzzVar.zzW(f);
                        zzzVar.zzZ(i9);
                        zzzVar.zzX(this.zzv);
                        zzzVar.zzad(this.zzw);
                        zzzVar.zzB(zzkVarZzg);
                        i8 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i8 = 3;
                    }
                    break;
                } else {
                    zzzVar.zzz(this.zzO);
                    zzzVar.zzab(this.zzQ);
                    zzzVar.zzU(iZzn);
                }
                if (this.zza != null) {
                    zzzVar.zzO(this.zza);
                }
                zzzVar.zzL(i);
                zzzVar.zzaa(str3);
                zzzVar.zzR(i2);
                zzzVar.zzQ(this.zzZ);
                zzzVar.zzac(i13);
                zzzVar.zzN(listZzg);
                zzzVar.zzA(str2);
                zzzVar.zzF(this.zzk);
                zzab zzabVarZzag4 = zzzVar.zzag();
                zzadt zzadtVarZzw4 = zzacqVar.zzw(this.zzc, i8);
                this.zzW = zzadtVarZzw4;
                zzadtVarZzw4.zzm(zzabVarZzag4);
                return;
            case 4:
            case 5:
            case 6:
                byte[] bArr2 = this.zzj;
                listSingletonList = bArr2 == null ? null : Collections.singletonList(bArr2);
                str5 = "video/mp4v-es";
                listZzg = listSingletonList;
                i2 = -1;
                str2 = null;
                iZzn = -1;
                if (this.zzN != null) {
                    str2 = zzacjVarZza.zza;
                    str5 = "video/dolby-vision";
                }
                str3 = str5;
                boolean z5 = this.zzV;
                if (true != this.zzU) {
                    i3 = 0;
                } else {
                    i3 = 2;
                }
                int i14 = (z5 ? 1 : 0) | i3;
                zzzVar = new zzz();
                if (zzbb.zzg(str3)) {
                    if (zzbb.zzi(str3)) {
                        if (this.zzq == 0) {
                            i6 = this.zzo;
                            if (i6 == -1) {
                                i6 = this.zzl;
                            }
                            this.zzo = i6;
                            i7 = this.zzp;
                            if (i7 == -1) {
                                i7 = this.zzm;
                            }
                            this.zzp = i7;
                        }
                        i4 = this.zzo;
                        if (i4 != -1) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.zzx) {
                            if (this.zzD != -1.0f) {
                                bArr = null;
                            } else {
                                bArr = null;
                            }
                            zzi zziVar5 = new zzi();
                            zziVar5.zzc(this.zzy);
                            zziVar5.zzb(this.zzA);
                            zziVar5.zzd(this.zzz);
                            zziVar5.zze(bArr);
                            zziVar5.zzf(this.zzn);
                            zziVar5.zza(this.zzn);
                            zzkVarZzg = zziVar5.zzg();
                        } else {
                            zzkVarZzg = null;
                        }
                        if (this.zza != null) {
                            iIntValue = ((Integer) zzahm.zzf.get(this.zza)).intValue();
                        }
                        if (this.zzr == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        zzzVar.zzaf(this.zzl);
                        zzzVar.zzK(this.zzm);
                        zzzVar.zzW(f);
                        zzzVar.zzZ(i9);
                        zzzVar.zzX(this.zzv);
                        zzzVar.zzad(this.zzw);
                        zzzVar.zzB(zzkVarZzg);
                        i8 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i8 = 3;
                    }
                    break;
                } else {
                    zzzVar.zzz(this.zzO);
                    zzzVar.zzab(this.zzQ);
                    zzzVar.zzU(iZzn);
                }
                if (this.zza != null) {
                    zzzVar.zzO(this.zza);
                }
                zzzVar.zzL(i);
                zzzVar.zzaa(str3);
                zzzVar.zzR(i2);
                zzzVar.zzQ(this.zzZ);
                zzzVar.zzac(i14);
                zzzVar.zzN(listZzg);
                zzzVar.zzA(str2);
                zzzVar.zzF(this.zzk);
                zzab zzabVarZzag5 = zzzVar.zzag();
                zzadt zzadtVarZzw5 = zzacqVar.zzw(this.zzc, i8);
                this.zzW = zzadtVarZzw5;
                zzadtVarZzw5.zzm(zzabVarZzag5);
                return;
            case 7:
                zzabr zzabrVarZza = zzabr.zza(new zzdy(zzi(this.zzb)));
                listZzg = zzabrVarZza.zza;
                this.zzX = zzabrVarZza.zzb;
                str = zzabrVarZza.zzl;
                str5 = MimeTypes.VIDEO_H264;
                str2 = str;
                i2 = -1;
                iZzn = -1;
                if (this.zzN != null) {
                    str2 = zzacjVarZza.zza;
                    str5 = "video/dolby-vision";
                }
                str3 = str5;
                boolean z6 = this.zzV;
                if (true != this.zzU) {
                    i3 = 0;
                } else {
                    i3 = 2;
                }
                int i15 = (z6 ? 1 : 0) | i3;
                zzzVar = new zzz();
                if (zzbb.zzg(str3)) {
                    if (zzbb.zzi(str3)) {
                        if (this.zzq == 0) {
                            i6 = this.zzo;
                            if (i6 == -1) {
                                i6 = this.zzl;
                            }
                            this.zzo = i6;
                            i7 = this.zzp;
                            if (i7 == -1) {
                                i7 = this.zzm;
                            }
                            this.zzp = i7;
                        }
                        i4 = this.zzo;
                        if (i4 != -1) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.zzx) {
                            if (this.zzD != -1.0f) {
                                bArr = null;
                            } else {
                                bArr = null;
                            }
                            zzi zziVar6 = new zzi();
                            zziVar6.zzc(this.zzy);
                            zziVar6.zzb(this.zzA);
                            zziVar6.zzd(this.zzz);
                            zziVar6.zze(bArr);
                            zziVar6.zzf(this.zzn);
                            zziVar6.zza(this.zzn);
                            zzkVarZzg = zziVar6.zzg();
                        } else {
                            zzkVarZzg = null;
                        }
                        if (this.zza != null) {
                            iIntValue = ((Integer) zzahm.zzf.get(this.zza)).intValue();
                        }
                        if (this.zzr == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        zzzVar.zzaf(this.zzl);
                        zzzVar.zzK(this.zzm);
                        zzzVar.zzW(f);
                        zzzVar.zzZ(i9);
                        zzzVar.zzX(this.zzv);
                        zzzVar.zzad(this.zzw);
                        zzzVar.zzB(zzkVarZzg);
                        i8 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i8 = 3;
                    }
                    break;
                } else {
                    zzzVar.zzz(this.zzO);
                    zzzVar.zzab(this.zzQ);
                    zzzVar.zzU(iZzn);
                }
                if (this.zza != null) {
                    zzzVar.zzO(this.zza);
                }
                zzzVar.zzL(i);
                zzzVar.zzaa(str3);
                zzzVar.zzR(i2);
                zzzVar.zzQ(this.zzZ);
                zzzVar.zzac(i15);
                zzzVar.zzN(listZzg);
                zzzVar.zzA(str2);
                zzzVar.zzF(this.zzk);
                zzab zzabVarZzag6 = zzzVar.zzag();
                zzadt zzadtVarZzw6 = zzacqVar.zzw(this.zzc, i8);
                this.zzW = zzadtVarZzw6;
                zzadtVarZzw6.zzm(zzabVarZzag6);
                return;
            case 8:
                zzadc zzadcVarZza = zzadc.zza(new zzdy(zzi(this.zzb)));
                listZzg = zzadcVarZza.zza;
                this.zzX = zzadcVarZza.zzb;
                str = zzadcVarZza.zzk;
                str5 = MimeTypes.VIDEO_H265;
                str2 = str;
                i2 = -1;
                iZzn = -1;
                if (this.zzN != null) {
                    str2 = zzacjVarZza.zza;
                    str5 = "video/dolby-vision";
                }
                str3 = str5;
                boolean z7 = this.zzV;
                if (true != this.zzU) {
                    i3 = 0;
                } else {
                    i3 = 2;
                }
                int i16 = (z7 ? 1 : 0) | i3;
                zzzVar = new zzz();
                if (zzbb.zzg(str3)) {
                    if (zzbb.zzi(str3)) {
                        if (this.zzq == 0) {
                            i6 = this.zzo;
                            if (i6 == -1) {
                                i6 = this.zzl;
                            }
                            this.zzo = i6;
                            i7 = this.zzp;
                            if (i7 == -1) {
                                i7 = this.zzm;
                            }
                            this.zzp = i7;
                        }
                        i4 = this.zzo;
                        if (i4 != -1) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.zzx) {
                            if (this.zzD != -1.0f) {
                                bArr = null;
                            } else {
                                bArr = null;
                            }
                            zzi zziVar7 = new zzi();
                            zziVar7.zzc(this.zzy);
                            zziVar7.zzb(this.zzA);
                            zziVar7.zzd(this.zzz);
                            zziVar7.zze(bArr);
                            zziVar7.zzf(this.zzn);
                            zziVar7.zza(this.zzn);
                            zzkVarZzg = zziVar7.zzg();
                        } else {
                            zzkVarZzg = null;
                        }
                        if (this.zza != null) {
                            iIntValue = ((Integer) zzahm.zzf.get(this.zza)).intValue();
                        }
                        if (this.zzr == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        zzzVar.zzaf(this.zzl);
                        zzzVar.zzK(this.zzm);
                        zzzVar.zzW(f);
                        zzzVar.zzZ(i9);
                        zzzVar.zzX(this.zzv);
                        zzzVar.zzad(this.zzw);
                        zzzVar.zzB(zzkVarZzg);
                        i8 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i8 = 3;
                    }
                    break;
                } else {
                    zzzVar.zzz(this.zzO);
                    zzzVar.zzab(this.zzQ);
                    zzzVar.zzU(iZzn);
                }
                if (this.zza != null) {
                    zzzVar.zzO(this.zza);
                }
                zzzVar.zzL(i);
                zzzVar.zzaa(str3);
                zzzVar.zzR(i2);
                zzzVar.zzQ(this.zzZ);
                zzzVar.zzac(i16);
                zzzVar.zzN(listZzg);
                zzzVar.zzA(str2);
                zzzVar.zzF(this.zzk);
                zzab zzabVarZzag7 = zzzVar.zzag();
                zzadt zzadtVarZzw7 = zzacqVar.zzw(this.zzc, i8);
                this.zzW = zzadtVarZzw7;
                zzadtVarZzw7.zzm(zzabVarZzag7);
                return;
            case 9:
                Pair pairZzf = zzf(new zzdy(zzi(this.zzb)));
                str5 = (String) pairZzf.first;
                listSingletonList = (List) pairZzf.second;
                listZzg = listSingletonList;
                i2 = -1;
                str2 = null;
                iZzn = -1;
                if (this.zzN != null) {
                    str2 = zzacjVarZza.zza;
                    str5 = "video/dolby-vision";
                }
                str3 = str5;
                boolean z8 = this.zzV;
                if (true != this.zzU) {
                    i3 = 0;
                } else {
                    i3 = 2;
                }
                int i17 = (z8 ? 1 : 0) | i3;
                zzzVar = new zzz();
                if (zzbb.zzg(str3)) {
                    if (zzbb.zzi(str3)) {
                        if (this.zzq == 0) {
                            i6 = this.zzo;
                            if (i6 == -1) {
                                i6 = this.zzl;
                            }
                            this.zzo = i6;
                            i7 = this.zzp;
                            if (i7 == -1) {
                                i7 = this.zzm;
                            }
                            this.zzp = i7;
                        }
                        i4 = this.zzo;
                        if (i4 != -1) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.zzx) {
                            if (this.zzD != -1.0f) {
                                bArr = null;
                            } else {
                                bArr = null;
                            }
                            zzi zziVar8 = new zzi();
                            zziVar8.zzc(this.zzy);
                            zziVar8.zzb(this.zzA);
                            zziVar8.zzd(this.zzz);
                            zziVar8.zze(bArr);
                            zziVar8.zzf(this.zzn);
                            zziVar8.zza(this.zzn);
                            zzkVarZzg = zziVar8.zzg();
                        } else {
                            zzkVarZzg = null;
                        }
                        if (this.zza != null) {
                            iIntValue = ((Integer) zzahm.zzf.get(this.zza)).intValue();
                        }
                        if (this.zzr == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        zzzVar.zzaf(this.zzl);
                        zzzVar.zzK(this.zzm);
                        zzzVar.zzW(f);
                        zzzVar.zzZ(i9);
                        zzzVar.zzX(this.zzv);
                        zzzVar.zzad(this.zzw);
                        zzzVar.zzB(zzkVarZzg);
                        i8 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i8 = 3;
                    }
                    break;
                } else {
                    zzzVar.zzz(this.zzO);
                    zzzVar.zzab(this.zzQ);
                    zzzVar.zzU(iZzn);
                }
                if (this.zza != null) {
                    zzzVar.zzO(this.zza);
                }
                zzzVar.zzL(i);
                zzzVar.zzaa(str3);
                zzzVar.zzR(i2);
                zzzVar.zzQ(this.zzZ);
                zzzVar.zzac(i17);
                zzzVar.zzN(listZzg);
                zzzVar.zzA(str2);
                zzzVar.zzF(this.zzk);
                zzab zzabVarZzag8 = zzzVar.zzag();
                zzadt zzadtVarZzw8 = zzacqVar.zzw(this.zzc, i8);
                this.zzW = zzadtVarZzw8;
                zzadtVarZzw8.zzm(zzabVarZzag8);
                return;
            case 10:
                str5 = "video/x-unknown";
                i2 = -1;
                listZzg = null;
                str2 = null;
                iZzn = -1;
                if (this.zzN != null) {
                    str2 = zzacjVarZza.zza;
                    str5 = "video/dolby-vision";
                }
                str3 = str5;
                boolean z9 = this.zzV;
                if (true != this.zzU) {
                    i3 = 0;
                } else {
                    i3 = 2;
                }
                int i18 = (z9 ? 1 : 0) | i3;
                zzzVar = new zzz();
                if (zzbb.zzg(str3)) {
                    if (zzbb.zzi(str3)) {
                        if (this.zzq == 0) {
                            i6 = this.zzo;
                            if (i6 == -1) {
                                i6 = this.zzl;
                            }
                            this.zzo = i6;
                            i7 = this.zzp;
                            if (i7 == -1) {
                                i7 = this.zzm;
                            }
                            this.zzp = i7;
                        }
                        i4 = this.zzo;
                        if (i4 != -1) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.zzx) {
                            if (this.zzD != -1.0f) {
                                bArr = null;
                            } else {
                                bArr = null;
                            }
                            zzi zziVar9 = new zzi();
                            zziVar9.zzc(this.zzy);
                            zziVar9.zzb(this.zzA);
                            zziVar9.zzd(this.zzz);
                            zziVar9.zze(bArr);
                            zziVar9.zzf(this.zzn);
                            zziVar9.zza(this.zzn);
                            zzkVarZzg = zziVar9.zzg();
                        } else {
                            zzkVarZzg = null;
                        }
                        if (this.zza != null) {
                            iIntValue = ((Integer) zzahm.zzf.get(this.zza)).intValue();
                        }
                        if (this.zzr == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        zzzVar.zzaf(this.zzl);
                        zzzVar.zzK(this.zzm);
                        zzzVar.zzW(f);
                        zzzVar.zzZ(i9);
                        zzzVar.zzX(this.zzv);
                        zzzVar.zzad(this.zzw);
                        zzzVar.zzB(zzkVarZzg);
                        i8 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i8 = 3;
                    }
                    break;
                } else {
                    zzzVar.zzz(this.zzO);
                    zzzVar.zzab(this.zzQ);
                    zzzVar.zzU(iZzn);
                }
                if (this.zza != null) {
                    zzzVar.zzO(this.zza);
                }
                zzzVar.zzL(i);
                zzzVar.zzaa(str3);
                zzzVar.zzR(i2);
                zzzVar.zzQ(this.zzZ);
                zzzVar.zzac(i18);
                zzzVar.zzN(listZzg);
                zzzVar.zzA(str2);
                zzzVar.zzF(this.zzk);
                zzab zzabVarZzag9 = zzzVar.zzag();
                zzadt zzadtVarZzw9 = zzacqVar.zzw(this.zzc, i8);
                this.zzW = zzadtVarZzw9;
                zzadtVarZzw9.zzm(zzabVarZzag9);
                return;
            case 11:
                str5 = "audio/vorbis";
                listZzg = zzg(zzi(str4));
                i2 = 8192;
                str2 = null;
                iZzn = -1;
                if (this.zzN != null) {
                    str2 = zzacjVarZza.zza;
                    str5 = "video/dolby-vision";
                }
                str3 = str5;
                boolean z10 = this.zzV;
                if (true != this.zzU) {
                    i3 = 0;
                } else {
                    i3 = 2;
                }
                int i19 = (z10 ? 1 : 0) | i3;
                zzzVar = new zzz();
                if (zzbb.zzg(str3)) {
                    if (zzbb.zzi(str3)) {
                        if (this.zzq == 0) {
                            i6 = this.zzo;
                            if (i6 == -1) {
                                i6 = this.zzl;
                            }
                            this.zzo = i6;
                            i7 = this.zzp;
                            if (i7 == -1) {
                                i7 = this.zzm;
                            }
                            this.zzp = i7;
                        }
                        i4 = this.zzo;
                        if (i4 != -1) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.zzx) {
                            if (this.zzD != -1.0f) {
                                bArr = null;
                            } else {
                                bArr = null;
                            }
                            zzi zziVar10 = new zzi();
                            zziVar10.zzc(this.zzy);
                            zziVar10.zzb(this.zzA);
                            zziVar10.zzd(this.zzz);
                            zziVar10.zze(bArr);
                            zziVar10.zzf(this.zzn);
                            zziVar10.zza(this.zzn);
                            zzkVarZzg = zziVar10.zzg();
                        } else {
                            zzkVarZzg = null;
                        }
                        if (this.zza != null) {
                            iIntValue = ((Integer) zzahm.zzf.get(this.zza)).intValue();
                        }
                        if (this.zzr == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        zzzVar.zzaf(this.zzl);
                        zzzVar.zzK(this.zzm);
                        zzzVar.zzW(f);
                        zzzVar.zzZ(i9);
                        zzzVar.zzX(this.zzv);
                        zzzVar.zzad(this.zzw);
                        zzzVar.zzB(zzkVarZzg);
                        i8 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i8 = 3;
                    }
                    break;
                } else {
                    zzzVar.zzz(this.zzO);
                    zzzVar.zzab(this.zzQ);
                    zzzVar.zzU(iZzn);
                }
                if (this.zza != null) {
                    zzzVar.zzO(this.zza);
                }
                zzzVar.zzL(i);
                zzzVar.zzaa(str3);
                zzzVar.zzR(i2);
                zzzVar.zzQ(this.zzZ);
                zzzVar.zzac(i19);
                zzzVar.zzN(listZzg);
                zzzVar.zzA(str2);
                zzzVar.zzF(this.zzk);
                zzab zzabVarZzag10 = zzzVar.zzag();
                zzadt zzadtVarZzw10 = zzacqVar.zzw(this.zzc, i8);
                this.zzW = zzadtVarZzw10;
                zzadtVarZzw10.zzm(zzabVarZzag10);
                return;
            case 12:
                ArrayList arrayList = new ArrayList(3);
                arrayList.add(zzi(this.zzb));
                arrayList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.zzR).array());
                arrayList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.zzS).array());
                str5 = "audio/opus";
                listZzg = arrayList;
                i2 = 5760;
                str2 = null;
                iZzn = -1;
                if (this.zzN != null) {
                    str2 = zzacjVarZza.zza;
                    str5 = "video/dolby-vision";
                }
                str3 = str5;
                boolean z11 = this.zzV;
                if (true != this.zzU) {
                    i3 = 0;
                } else {
                    i3 = 2;
                }
                int i110 = (z11 ? 1 : 0) | i3;
                zzzVar = new zzz();
                if (zzbb.zzg(str3)) {
                    if (zzbb.zzi(str3)) {
                        if (this.zzq == 0) {
                            i6 = this.zzo;
                            if (i6 == -1) {
                                i6 = this.zzl;
                            }
                            this.zzo = i6;
                            i7 = this.zzp;
                            if (i7 == -1) {
                                i7 = this.zzm;
                            }
                            this.zzp = i7;
                        }
                        i4 = this.zzo;
                        if (i4 != -1) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.zzx) {
                            if (this.zzD != -1.0f) {
                                bArr = null;
                            } else {
                                bArr = null;
                            }
                            zzi zziVar11 = new zzi();
                            zziVar11.zzc(this.zzy);
                            zziVar11.zzb(this.zzA);
                            zziVar11.zzd(this.zzz);
                            zziVar11.zze(bArr);
                            zziVar11.zzf(this.zzn);
                            zziVar11.zza(this.zzn);
                            zzkVarZzg = zziVar11.zzg();
                        } else {
                            zzkVarZzg = null;
                        }
                        if (this.zza != null) {
                            iIntValue = ((Integer) zzahm.zzf.get(this.zza)).intValue();
                        }
                        if (this.zzr == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        zzzVar.zzaf(this.zzl);
                        zzzVar.zzK(this.zzm);
                        zzzVar.zzW(f);
                        zzzVar.zzZ(i9);
                        zzzVar.zzX(this.zzv);
                        zzzVar.zzad(this.zzw);
                        zzzVar.zzB(zzkVarZzg);
                        i8 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i8 = 3;
                    }
                    break;
                } else {
                    zzzVar.zzz(this.zzO);
                    zzzVar.zzab(this.zzQ);
                    zzzVar.zzU(iZzn);
                }
                if (this.zza != null) {
                    zzzVar.zzO(this.zza);
                }
                zzzVar.zzL(i);
                zzzVar.zzaa(str3);
                zzzVar.zzR(i2);
                zzzVar.zzQ(this.zzZ);
                zzzVar.zzac(i110);
                zzzVar.zzN(listZzg);
                zzzVar.zzA(str2);
                zzzVar.zzF(this.zzk);
                zzab zzabVarZzag11 = zzzVar.zzag();
                zzadt zzadtVarZzw11 = zzacqVar.zzw(this.zzc, i8);
                this.zzW = zzadtVarZzw11;
                zzadtVarZzw11.zzm(zzabVarZzag11);
                return;
            case 13:
                List listSingletonList2 = Collections.singletonList(zzi(str4));
                zzabi zzabiVarZza = zzabk.zza(this.zzj);
                this.zzQ = zzabiVarZza.zza;
                this.zzO = zzabiVarZza.zzb;
                str5 = "audio/mp4a-latm";
                str2 = zzabiVarZza.zzc;
                iZzn = -1;
                listZzg = listSingletonList2;
                i2 = -1;
                if (this.zzN != null) {
                    str2 = zzacjVarZza.zza;
                    str5 = "video/dolby-vision";
                }
                str3 = str5;
                boolean z12 = this.zzV;
                if (true != this.zzU) {
                    i3 = 0;
                } else {
                    i3 = 2;
                }
                int i111 = (z12 ? 1 : 0) | i3;
                zzzVar = new zzz();
                if (zzbb.zzg(str3)) {
                    if (zzbb.zzi(str3)) {
                        if (this.zzq == 0) {
                            i6 = this.zzo;
                            if (i6 == -1) {
                                i6 = this.zzl;
                            }
                            this.zzo = i6;
                            i7 = this.zzp;
                            if (i7 == -1) {
                                i7 = this.zzm;
                            }
                            this.zzp = i7;
                        }
                        i4 = this.zzo;
                        if (i4 != -1) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.zzx) {
                            if (this.zzD != -1.0f) {
                                bArr = null;
                            } else {
                                bArr = null;
                            }
                            zzi zziVar12 = new zzi();
                            zziVar12.zzc(this.zzy);
                            zziVar12.zzb(this.zzA);
                            zziVar12.zzd(this.zzz);
                            zziVar12.zze(bArr);
                            zziVar12.zzf(this.zzn);
                            zziVar12.zza(this.zzn);
                            zzkVarZzg = zziVar12.zzg();
                        } else {
                            zzkVarZzg = null;
                        }
                        if (this.zza != null) {
                            iIntValue = ((Integer) zzahm.zzf.get(this.zza)).intValue();
                        }
                        if (this.zzr == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        zzzVar.zzaf(this.zzl);
                        zzzVar.zzK(this.zzm);
                        zzzVar.zzW(f);
                        zzzVar.zzZ(i9);
                        zzzVar.zzX(this.zzv);
                        zzzVar.zzad(this.zzw);
                        zzzVar.zzB(zzkVarZzg);
                        i8 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i8 = 3;
                    }
                    break;
                } else {
                    zzzVar.zzz(this.zzO);
                    zzzVar.zzab(this.zzQ);
                    zzzVar.zzU(iZzn);
                }
                if (this.zza != null) {
                    zzzVar.zzO(this.zza);
                }
                zzzVar.zzL(i);
                zzzVar.zzaa(str3);
                zzzVar.zzR(i2);
                zzzVar.zzQ(this.zzZ);
                zzzVar.zzac(i111);
                zzzVar.zzN(listZzg);
                zzzVar.zzA(str2);
                zzzVar.zzF(this.zzk);
                zzab zzabVarZzag12 = zzzVar.zzag();
                zzadt zzadtVarZzw12 = zzacqVar.zzw(this.zzc, i8);
                this.zzW = zzadtVarZzw12;
                zzadtVarZzw12.zzm(zzabVarZzag12);
                return;
            case 14:
                str5 = "audio/mpeg-L2";
                i2 = 4096;
                listZzg = null;
                str2 = null;
                iZzn = -1;
                if (this.zzN != null) {
                    str2 = zzacjVarZza.zza;
                    str5 = "video/dolby-vision";
                }
                str3 = str5;
                boolean z13 = this.zzV;
                if (true != this.zzU) {
                    i3 = 0;
                } else {
                    i3 = 2;
                }
                int i112 = (z13 ? 1 : 0) | i3;
                zzzVar = new zzz();
                if (zzbb.zzg(str3)) {
                    if (zzbb.zzi(str3)) {
                        if (this.zzq == 0) {
                            i6 = this.zzo;
                            if (i6 == -1) {
                                i6 = this.zzl;
                            }
                            this.zzo = i6;
                            i7 = this.zzp;
                            if (i7 == -1) {
                                i7 = this.zzm;
                            }
                            this.zzp = i7;
                        }
                        i4 = this.zzo;
                        if (i4 != -1) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.zzx) {
                            if (this.zzD != -1.0f) {
                                bArr = null;
                            } else {
                                bArr = null;
                            }
                            zzi zziVar13 = new zzi();
                            zziVar13.zzc(this.zzy);
                            zziVar13.zzb(this.zzA);
                            zziVar13.zzd(this.zzz);
                            zziVar13.zze(bArr);
                            zziVar13.zzf(this.zzn);
                            zziVar13.zza(this.zzn);
                            zzkVarZzg = zziVar13.zzg();
                        } else {
                            zzkVarZzg = null;
                        }
                        if (this.zza != null) {
                            iIntValue = ((Integer) zzahm.zzf.get(this.zza)).intValue();
                        }
                        if (this.zzr == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        zzzVar.zzaf(this.zzl);
                        zzzVar.zzK(this.zzm);
                        zzzVar.zzW(f);
                        zzzVar.zzZ(i9);
                        zzzVar.zzX(this.zzv);
                        zzzVar.zzad(this.zzw);
                        zzzVar.zzB(zzkVarZzg);
                        i8 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i8 = 3;
                    }
                    break;
                } else {
                    zzzVar.zzz(this.zzO);
                    zzzVar.zzab(this.zzQ);
                    zzzVar.zzU(iZzn);
                }
                if (this.zza != null) {
                    zzzVar.zzO(this.zza);
                }
                zzzVar.zzL(i);
                zzzVar.zzaa(str3);
                zzzVar.zzR(i2);
                zzzVar.zzQ(this.zzZ);
                zzzVar.zzac(i112);
                zzzVar.zzN(listZzg);
                zzzVar.zzA(str2);
                zzzVar.zzF(this.zzk);
                zzab zzabVarZzag13 = zzzVar.zzag();
                zzadt zzadtVarZzw13 = zzacqVar.zzw(this.zzc, i8);
                this.zzW = zzadtVarZzw13;
                zzadtVarZzw13.zzm(zzabVarZzag13);
                return;
            case 15:
                str5 = "audio/mpeg";
                i2 = 4096;
                listZzg = null;
                str2 = null;
                iZzn = -1;
                if (this.zzN != null) {
                    str2 = zzacjVarZza.zza;
                    str5 = "video/dolby-vision";
                }
                str3 = str5;
                boolean z14 = this.zzV;
                if (true != this.zzU) {
                    i3 = 0;
                } else {
                    i3 = 2;
                }
                int i113 = (z14 ? 1 : 0) | i3;
                zzzVar = new zzz();
                if (zzbb.zzg(str3)) {
                    if (zzbb.zzi(str3)) {
                        if (this.zzq == 0) {
                            i6 = this.zzo;
                            if (i6 == -1) {
                                i6 = this.zzl;
                            }
                            this.zzo = i6;
                            i7 = this.zzp;
                            if (i7 == -1) {
                                i7 = this.zzm;
                            }
                            this.zzp = i7;
                        }
                        i4 = this.zzo;
                        if (i4 != -1) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.zzx) {
                            if (this.zzD != -1.0f) {
                                bArr = null;
                            } else {
                                bArr = null;
                            }
                            zzi zziVar14 = new zzi();
                            zziVar14.zzc(this.zzy);
                            zziVar14.zzb(this.zzA);
                            zziVar14.zzd(this.zzz);
                            zziVar14.zze(bArr);
                            zziVar14.zzf(this.zzn);
                            zziVar14.zza(this.zzn);
                            zzkVarZzg = zziVar14.zzg();
                        } else {
                            zzkVarZzg = null;
                        }
                        if (this.zza != null) {
                            iIntValue = ((Integer) zzahm.zzf.get(this.zza)).intValue();
                        }
                        if (this.zzr == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        zzzVar.zzaf(this.zzl);
                        zzzVar.zzK(this.zzm);
                        zzzVar.zzW(f);
                        zzzVar.zzZ(i9);
                        zzzVar.zzX(this.zzv);
                        zzzVar.zzad(this.zzw);
                        zzzVar.zzB(zzkVarZzg);
                        i8 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i8 = 3;
                    }
                    break;
                } else {
                    zzzVar.zzz(this.zzO);
                    zzzVar.zzab(this.zzQ);
                    zzzVar.zzU(iZzn);
                }
                if (this.zza != null) {
                    zzzVar.zzO(this.zza);
                }
                zzzVar.zzL(i);
                zzzVar.zzaa(str3);
                zzzVar.zzR(i2);
                zzzVar.zzQ(this.zzZ);
                zzzVar.zzac(i113);
                zzzVar.zzN(listZzg);
                zzzVar.zzA(str2);
                zzzVar.zzF(this.zzk);
                zzab zzabVarZzag14 = zzzVar.zzag();
                zzadt zzadtVarZzw14 = zzacqVar.zzw(this.zzc, i8);
                this.zzW = zzadtVarZzw14;
                zzadtVarZzw14.zzm(zzabVarZzag14);
                return;
            case 16:
                str5 = "audio/ac3";
                i2 = -1;
                listZzg = null;
                str2 = null;
                iZzn = -1;
                if (this.zzN != null) {
                    str2 = zzacjVarZza.zza;
                    str5 = "video/dolby-vision";
                }
                str3 = str5;
                boolean z15 = this.zzV;
                if (true != this.zzU) {
                    i3 = 0;
                } else {
                    i3 = 2;
                }
                int i114 = (z15 ? 1 : 0) | i3;
                zzzVar = new zzz();
                if (zzbb.zzg(str3)) {
                    if (zzbb.zzi(str3)) {
                        if (this.zzq == 0) {
                            i6 = this.zzo;
                            if (i6 == -1) {
                                i6 = this.zzl;
                            }
                            this.zzo = i6;
                            i7 = this.zzp;
                            if (i7 == -1) {
                                i7 = this.zzm;
                            }
                            this.zzp = i7;
                        }
                        i4 = this.zzo;
                        if (i4 != -1) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.zzx) {
                            if (this.zzD != -1.0f) {
                                bArr = null;
                            } else {
                                bArr = null;
                            }
                            zzi zziVar15 = new zzi();
                            zziVar15.zzc(this.zzy);
                            zziVar15.zzb(this.zzA);
                            zziVar15.zzd(this.zzz);
                            zziVar15.zze(bArr);
                            zziVar15.zzf(this.zzn);
                            zziVar15.zza(this.zzn);
                            zzkVarZzg = zziVar15.zzg();
                        } else {
                            zzkVarZzg = null;
                        }
                        if (this.zza != null) {
                            iIntValue = ((Integer) zzahm.zzf.get(this.zza)).intValue();
                        }
                        if (this.zzr == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        zzzVar.zzaf(this.zzl);
                        zzzVar.zzK(this.zzm);
                        zzzVar.zzW(f);
                        zzzVar.zzZ(i9);
                        zzzVar.zzX(this.zzv);
                        zzzVar.zzad(this.zzw);
                        zzzVar.zzB(zzkVarZzg);
                        i8 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i8 = 3;
                    }
                    break;
                } else {
                    zzzVar.zzz(this.zzO);
                    zzzVar.zzab(this.zzQ);
                    zzzVar.zzU(iZzn);
                }
                if (this.zza != null) {
                    zzzVar.zzO(this.zza);
                }
                zzzVar.zzL(i);
                zzzVar.zzaa(str3);
                zzzVar.zzR(i2);
                zzzVar.zzQ(this.zzZ);
                zzzVar.zzac(i114);
                zzzVar.zzN(listZzg);
                zzzVar.zzA(str2);
                zzzVar.zzF(this.zzk);
                zzab zzabVarZzag15 = zzzVar.zzag();
                zzadt zzadtVarZzw15 = zzacqVar.zzw(this.zzc, i8);
                this.zzW = zzadtVarZzw15;
                zzadtVarZzw15.zzm(zzabVarZzag15);
                return;
            case 17:
                str5 = "audio/eac3";
                i2 = -1;
                listZzg = null;
                str2 = null;
                iZzn = -1;
                if (this.zzN != null) {
                    str2 = zzacjVarZza.zza;
                    str5 = "video/dolby-vision";
                }
                str3 = str5;
                boolean z16 = this.zzV;
                if (true != this.zzU) {
                    i3 = 0;
                } else {
                    i3 = 2;
                }
                int i115 = (z16 ? 1 : 0) | i3;
                zzzVar = new zzz();
                if (zzbb.zzg(str3)) {
                    if (zzbb.zzi(str3)) {
                        if (this.zzq == 0) {
                            i6 = this.zzo;
                            if (i6 == -1) {
                                i6 = this.zzl;
                            }
                            this.zzo = i6;
                            i7 = this.zzp;
                            if (i7 == -1) {
                                i7 = this.zzm;
                            }
                            this.zzp = i7;
                        }
                        i4 = this.zzo;
                        if (i4 != -1) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.zzx) {
                            if (this.zzD != -1.0f) {
                                bArr = null;
                            } else {
                                bArr = null;
                            }
                            zzi zziVar16 = new zzi();
                            zziVar16.zzc(this.zzy);
                            zziVar16.zzb(this.zzA);
                            zziVar16.zzd(this.zzz);
                            zziVar16.zze(bArr);
                            zziVar16.zzf(this.zzn);
                            zziVar16.zza(this.zzn);
                            zzkVarZzg = zziVar16.zzg();
                        } else {
                            zzkVarZzg = null;
                        }
                        if (this.zza != null) {
                            iIntValue = ((Integer) zzahm.zzf.get(this.zza)).intValue();
                        }
                        if (this.zzr == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        zzzVar.zzaf(this.zzl);
                        zzzVar.zzK(this.zzm);
                        zzzVar.zzW(f);
                        zzzVar.zzZ(i9);
                        zzzVar.zzX(this.zzv);
                        zzzVar.zzad(this.zzw);
                        zzzVar.zzB(zzkVarZzg);
                        i8 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i8 = 3;
                    }
                    break;
                } else {
                    zzzVar.zzz(this.zzO);
                    zzzVar.zzab(this.zzQ);
                    zzzVar.zzU(iZzn);
                }
                if (this.zza != null) {
                    zzzVar.zzO(this.zza);
                }
                zzzVar.zzL(i);
                zzzVar.zzaa(str3);
                zzzVar.zzR(i2);
                zzzVar.zzQ(this.zzZ);
                zzzVar.zzac(i115);
                zzzVar.zzN(listZzg);
                zzzVar.zzA(str2);
                zzzVar.zzF(this.zzk);
                zzab zzabVarZzag16 = zzzVar.zzag();
                zzadt zzadtVarZzw16 = zzacqVar.zzw(this.zzc, i8);
                this.zzW = zzadtVarZzw16;
                zzadtVarZzw16.zzm(zzabVarZzag16);
                return;
            case 18:
                this.zzT = new zzadu();
                str5 = "audio/true-hd";
                i2 = -1;
                listZzg = null;
                str2 = null;
                iZzn = -1;
                if (this.zzN != null) {
                    str2 = zzacjVarZza.zza;
                    str5 = "video/dolby-vision";
                }
                str3 = str5;
                boolean z17 = this.zzV;
                if (true != this.zzU) {
                    i3 = 0;
                } else {
                    i3 = 2;
                }
                int i116 = (z17 ? 1 : 0) | i3;
                zzzVar = new zzz();
                if (zzbb.zzg(str3)) {
                    if (zzbb.zzi(str3)) {
                        if (this.zzq == 0) {
                            i6 = this.zzo;
                            if (i6 == -1) {
                                i6 = this.zzl;
                            }
                            this.zzo = i6;
                            i7 = this.zzp;
                            if (i7 == -1) {
                                i7 = this.zzm;
                            }
                            this.zzp = i7;
                        }
                        i4 = this.zzo;
                        if (i4 != -1) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.zzx) {
                            if (this.zzD != -1.0f) {
                                bArr = null;
                            } else {
                                bArr = null;
                            }
                            zzi zziVar17 = new zzi();
                            zziVar17.zzc(this.zzy);
                            zziVar17.zzb(this.zzA);
                            zziVar17.zzd(this.zzz);
                            zziVar17.zze(bArr);
                            zziVar17.zzf(this.zzn);
                            zziVar17.zza(this.zzn);
                            zzkVarZzg = zziVar17.zzg();
                        } else {
                            zzkVarZzg = null;
                        }
                        if (this.zza != null) {
                            iIntValue = ((Integer) zzahm.zzf.get(this.zza)).intValue();
                        }
                        if (this.zzr == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        zzzVar.zzaf(this.zzl);
                        zzzVar.zzK(this.zzm);
                        zzzVar.zzW(f);
                        zzzVar.zzZ(i9);
                        zzzVar.zzX(this.zzv);
                        zzzVar.zzad(this.zzw);
                        zzzVar.zzB(zzkVarZzg);
                        i8 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i8 = 3;
                    }
                    break;
                } else {
                    zzzVar.zzz(this.zzO);
                    zzzVar.zzab(this.zzQ);
                    zzzVar.zzU(iZzn);
                }
                if (this.zza != null) {
                    zzzVar.zzO(this.zza);
                }
                zzzVar.zzL(i);
                zzzVar.zzaa(str3);
                zzzVar.zzR(i2);
                zzzVar.zzQ(this.zzZ);
                zzzVar.zzac(i116);
                zzzVar.zzN(listZzg);
                zzzVar.zzA(str2);
                zzzVar.zzF(this.zzk);
                zzab zzabVarZzag17 = zzzVar.zzag();
                zzadt zzadtVarZzw17 = zzacqVar.zzw(this.zzc, i8);
                this.zzW = zzadtVarZzw17;
                zzadtVarZzw17.zzm(zzabVarZzag17);
                return;
            case 19:
            case 20:
                str5 = "audio/vnd.dts";
                i2 = -1;
                listZzg = null;
                str2 = null;
                iZzn = -1;
                if (this.zzN != null) {
                    str2 = zzacjVarZza.zza;
                    str5 = "video/dolby-vision";
                }
                str3 = str5;
                boolean z18 = this.zzV;
                if (true != this.zzU) {
                    i3 = 0;
                } else {
                    i3 = 2;
                }
                int i117 = (z18 ? 1 : 0) | i3;
                zzzVar = new zzz();
                if (zzbb.zzg(str3)) {
                    if (zzbb.zzi(str3)) {
                        if (this.zzq == 0) {
                            i6 = this.zzo;
                            if (i6 == -1) {
                                i6 = this.zzl;
                            }
                            this.zzo = i6;
                            i7 = this.zzp;
                            if (i7 == -1) {
                                i7 = this.zzm;
                            }
                            this.zzp = i7;
                        }
                        i4 = this.zzo;
                        if (i4 != -1) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.zzx) {
                            if (this.zzD != -1.0f) {
                                bArr = null;
                            } else {
                                bArr = null;
                            }
                            zzi zziVar18 = new zzi();
                            zziVar18.zzc(this.zzy);
                            zziVar18.zzb(this.zzA);
                            zziVar18.zzd(this.zzz);
                            zziVar18.zze(bArr);
                            zziVar18.zzf(this.zzn);
                            zziVar18.zza(this.zzn);
                            zzkVarZzg = zziVar18.zzg();
                        } else {
                            zzkVarZzg = null;
                        }
                        if (this.zza != null) {
                            iIntValue = ((Integer) zzahm.zzf.get(this.zza)).intValue();
                        }
                        if (this.zzr == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        zzzVar.zzaf(this.zzl);
                        zzzVar.zzK(this.zzm);
                        zzzVar.zzW(f);
                        zzzVar.zzZ(i9);
                        zzzVar.zzX(this.zzv);
                        zzzVar.zzad(this.zzw);
                        zzzVar.zzB(zzkVarZzg);
                        i8 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i8 = 3;
                    }
                    break;
                } else {
                    zzzVar.zzz(this.zzO);
                    zzzVar.zzab(this.zzQ);
                    zzzVar.zzU(iZzn);
                }
                if (this.zza != null) {
                    zzzVar.zzO(this.zza);
                }
                zzzVar.zzL(i);
                zzzVar.zzaa(str3);
                zzzVar.zzR(i2);
                zzzVar.zzQ(this.zzZ);
                zzzVar.zzac(i117);
                zzzVar.zzN(listZzg);
                zzzVar.zzA(str2);
                zzzVar.zzF(this.zzk);
                zzab zzabVarZzag18 = zzzVar.zzag();
                zzadt zzadtVarZzw18 = zzacqVar.zzw(this.zzc, i8);
                this.zzW = zzadtVarZzw18;
                zzadtVarZzw18.zzm(zzabVarZzag18);
                return;
            case 21:
                str5 = "audio/vnd.dts.hd";
                i2 = -1;
                listZzg = null;
                str2 = null;
                iZzn = -1;
                if (this.zzN != null) {
                    str2 = zzacjVarZza.zza;
                    str5 = "video/dolby-vision";
                }
                str3 = str5;
                boolean z19 = this.zzV;
                if (true != this.zzU) {
                    i3 = 0;
                } else {
                    i3 = 2;
                }
                int i118 = (z19 ? 1 : 0) | i3;
                zzzVar = new zzz();
                if (zzbb.zzg(str3)) {
                    if (zzbb.zzi(str3)) {
                        if (this.zzq == 0) {
                            i6 = this.zzo;
                            if (i6 == -1) {
                                i6 = this.zzl;
                            }
                            this.zzo = i6;
                            i7 = this.zzp;
                            if (i7 == -1) {
                                i7 = this.zzm;
                            }
                            this.zzp = i7;
                        }
                        i4 = this.zzo;
                        if (i4 != -1) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.zzx) {
                            if (this.zzD != -1.0f) {
                                bArr = null;
                            } else {
                                bArr = null;
                            }
                            zzi zziVar19 = new zzi();
                            zziVar19.zzc(this.zzy);
                            zziVar19.zzb(this.zzA);
                            zziVar19.zzd(this.zzz);
                            zziVar19.zze(bArr);
                            zziVar19.zzf(this.zzn);
                            zziVar19.zza(this.zzn);
                            zzkVarZzg = zziVar19.zzg();
                        } else {
                            zzkVarZzg = null;
                        }
                        if (this.zza != null) {
                            iIntValue = ((Integer) zzahm.zzf.get(this.zza)).intValue();
                        }
                        if (this.zzr == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        zzzVar.zzaf(this.zzl);
                        zzzVar.zzK(this.zzm);
                        zzzVar.zzW(f);
                        zzzVar.zzZ(i9);
                        zzzVar.zzX(this.zzv);
                        zzzVar.zzad(this.zzw);
                        zzzVar.zzB(zzkVarZzg);
                        i8 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i8 = 3;
                    }
                    break;
                } else {
                    zzzVar.zzz(this.zzO);
                    zzzVar.zzab(this.zzQ);
                    zzzVar.zzU(iZzn);
                }
                if (this.zza != null) {
                    zzzVar.zzO(this.zza);
                }
                zzzVar.zzL(i);
                zzzVar.zzaa(str3);
                zzzVar.zzR(i2);
                zzzVar.zzQ(this.zzZ);
                zzzVar.zzac(i118);
                zzzVar.zzN(listZzg);
                zzzVar.zzA(str2);
                zzzVar.zzF(this.zzk);
                zzab zzabVarZzag19 = zzzVar.zzag();
                zzadt zzadtVarZzw19 = zzacqVar.zzw(this.zzc, i8);
                this.zzW = zzadtVarZzw19;
                zzadtVarZzw19.zzm(zzabVarZzag19);
                return;
            case 22:
                listSingletonList = Collections.singletonList(zzi(str4));
                str5 = "audio/flac";
                listZzg = listSingletonList;
                i2 = -1;
                str2 = null;
                iZzn = -1;
                if (this.zzN != null) {
                    str2 = zzacjVarZza.zza;
                    str5 = "video/dolby-vision";
                }
                str3 = str5;
                boolean z110 = this.zzV;
                if (true != this.zzU) {
                    i3 = 0;
                } else {
                    i3 = 2;
                }
                int i119 = (z110 ? 1 : 0) | i3;
                zzzVar = new zzz();
                if (zzbb.zzg(str3)) {
                    if (zzbb.zzi(str3)) {
                        if (this.zzq == 0) {
                            i6 = this.zzo;
                            if (i6 == -1) {
                                i6 = this.zzl;
                            }
                            this.zzo = i6;
                            i7 = this.zzp;
                            if (i7 == -1) {
                                i7 = this.zzm;
                            }
                            this.zzp = i7;
                        }
                        i4 = this.zzo;
                        if (i4 != -1) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.zzx) {
                            if (this.zzD != -1.0f) {
                                bArr = null;
                            } else {
                                bArr = null;
                            }
                            zzi zziVar110 = new zzi();
                            zziVar110.zzc(this.zzy);
                            zziVar110.zzb(this.zzA);
                            zziVar110.zzd(this.zzz);
                            zziVar110.zze(bArr);
                            zziVar110.zzf(this.zzn);
                            zziVar110.zza(this.zzn);
                            zzkVarZzg = zziVar110.zzg();
                        } else {
                            zzkVarZzg = null;
                        }
                        if (this.zza != null) {
                            iIntValue = ((Integer) zzahm.zzf.get(this.zza)).intValue();
                        }
                        if (this.zzr == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        zzzVar.zzaf(this.zzl);
                        zzzVar.zzK(this.zzm);
                        zzzVar.zzW(f);
                        zzzVar.zzZ(i9);
                        zzzVar.zzX(this.zzv);
                        zzzVar.zzad(this.zzw);
                        zzzVar.zzB(zzkVarZzg);
                        i8 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i8 = 3;
                    }
                    break;
                } else {
                    zzzVar.zzz(this.zzO);
                    zzzVar.zzab(this.zzQ);
                    zzzVar.zzU(iZzn);
                }
                if (this.zza != null) {
                    zzzVar.zzO(this.zza);
                }
                zzzVar.zzL(i);
                zzzVar.zzaa(str3);
                zzzVar.zzR(i2);
                zzzVar.zzQ(this.zzZ);
                zzzVar.zzac(i119);
                zzzVar.zzN(listZzg);
                zzzVar.zzA(str2);
                zzzVar.zzF(this.zzk);
                zzab zzabVarZzag110 = zzzVar.zzag();
                zzadt zzadtVarZzw110 = zzacqVar.zzw(this.zzc, i8);
                this.zzW = zzadtVarZzw110;
                zzadtVarZzw110.zzm(zzabVarZzag110);
                return;
            case 23:
                if (zzh(new zzdy(zzi(this.zzb)))) {
                    iZzn = zzei.zzn(this.zzP);
                    if (iZzn == 0) {
                        zzdo.zzf("MatroskaExtractor", "Unsupported PCM bit depth: " + this.zzP + ". Setting mimeType to audio/x-unknown");
                    } else {
                        i2 = -1;
                        listZzg = null;
                        str2 = null;
                    }
                    if (this.zzN != null) {
                        str2 = zzacjVarZza.zza;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z111 = this.zzV;
                    if (true != this.zzU) {
                        i3 = 0;
                    } else {
                        i3 = 2;
                    }
                    int i1110 = (z111 ? 1 : 0) | i3;
                    zzzVar = new zzz();
                    if (zzbb.zzg(str3)) {
                        if (zzbb.zzi(str3)) {
                            if (this.zzq == 0) {
                                i6 = this.zzo;
                                if (i6 == -1) {
                                    i6 = this.zzl;
                                }
                                this.zzo = i6;
                                i7 = this.zzp;
                                if (i7 == -1) {
                                    i7 = this.zzm;
                                }
                                this.zzp = i7;
                            }
                            i4 = this.zzo;
                            if (i4 != -1) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.zzx) {
                                if (this.zzD != -1.0f) {
                                    bArr = null;
                                } else {
                                    bArr = null;
                                }
                                zzi zziVar111 = new zzi();
                                zziVar111.zzc(this.zzy);
                                zziVar111.zzb(this.zzA);
                                zziVar111.zzd(this.zzz);
                                zziVar111.zze(bArr);
                                zziVar111.zzf(this.zzn);
                                zziVar111.zza(this.zzn);
                                zzkVarZzg = zziVar111.zzg();
                            } else {
                                zzkVarZzg = null;
                            }
                            if (this.zza != null) {
                                iIntValue = ((Integer) zzahm.zzf.get(this.zza)).intValue();
                            }
                            if (this.zzr == 0) {
                                i9 = iIntValue;
                            } else {
                                i9 = iIntValue;
                            }
                            zzzVar.zzaf(this.zzl);
                            zzzVar.zzK(this.zzm);
                            zzzVar.zzW(f);
                            zzzVar.zzZ(i9);
                            zzzVar.zzX(this.zzv);
                            zzzVar.zzad(this.zzw);
                            zzzVar.zzB(zzkVarZzg);
                            i8 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i8 = 3;
                        }
                        break;
                    } else {
                        zzzVar.zzz(this.zzO);
                        zzzVar.zzab(this.zzQ);
                        zzzVar.zzU(iZzn);
                    }
                    if (this.zza != null) {
                        zzzVar.zzO(this.zza);
                    }
                    zzzVar.zzL(i);
                    zzzVar.zzaa(str3);
                    zzzVar.zzR(i2);
                    zzzVar.zzQ(this.zzZ);
                    zzzVar.zzac(i1110);
                    zzzVar.zzN(listZzg);
                    zzzVar.zzA(str2);
                    zzzVar.zzF(this.zzk);
                    zzab zzabVarZzag111 = zzzVar.zzag();
                    zzadt zzadtVarZzw111 = zzacqVar.zzw(this.zzc, i8);
                    this.zzW = zzadtVarZzw111;
                    zzadtVarZzw111.zzm(zzabVarZzag111);
                    return;
                }
                zzdo.zzf("MatroskaExtractor", "Non-PCM MS/ACM is unsupported. Setting mimeType to audio/x-unknown");
                str5 = "audio/x-unknown";
                i2 = -1;
                listZzg = null;
                str2 = null;
                iZzn = -1;
                if (this.zzN != null) {
                    str2 = zzacjVarZza.zza;
                    str5 = "video/dolby-vision";
                }
                str3 = str5;
                boolean z112 = this.zzV;
                if (true != this.zzU) {
                    i3 = 0;
                } else {
                    i3 = 2;
                }
                int i1111 = (z112 ? 1 : 0) | i3;
                zzzVar = new zzz();
                if (zzbb.zzg(str3)) {
                    if (zzbb.zzi(str3)) {
                        if (this.zzq == 0) {
                            i6 = this.zzo;
                            if (i6 == -1) {
                                i6 = this.zzl;
                            }
                            this.zzo = i6;
                            i7 = this.zzp;
                            if (i7 == -1) {
                                i7 = this.zzm;
                            }
                            this.zzp = i7;
                        }
                        i4 = this.zzo;
                        if (i4 != -1) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.zzx) {
                            if (this.zzD != -1.0f) {
                                bArr = null;
                            } else {
                                bArr = null;
                            }
                            zzi zziVar112 = new zzi();
                            zziVar112.zzc(this.zzy);
                            zziVar112.zzb(this.zzA);
                            zziVar112.zzd(this.zzz);
                            zziVar112.zze(bArr);
                            zziVar112.zzf(this.zzn);
                            zziVar112.zza(this.zzn);
                            zzkVarZzg = zziVar112.zzg();
                        } else {
                            zzkVarZzg = null;
                        }
                        if (this.zza != null) {
                            iIntValue = ((Integer) zzahm.zzf.get(this.zza)).intValue();
                        }
                        if (this.zzr == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        zzzVar.zzaf(this.zzl);
                        zzzVar.zzK(this.zzm);
                        zzzVar.zzW(f);
                        zzzVar.zzZ(i9);
                        zzzVar.zzX(this.zzv);
                        zzzVar.zzad(this.zzw);
                        zzzVar.zzB(zzkVarZzg);
                        i8 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i8 = 3;
                    }
                    break;
                } else {
                    zzzVar.zzz(this.zzO);
                    zzzVar.zzab(this.zzQ);
                    zzzVar.zzU(iZzn);
                }
                if (this.zza != null) {
                    zzzVar.zzO(this.zza);
                }
                zzzVar.zzL(i);
                zzzVar.zzaa(str3);
                zzzVar.zzR(i2);
                zzzVar.zzQ(this.zzZ);
                zzzVar.zzac(i1111);
                zzzVar.zzN(listZzg);
                zzzVar.zzA(str2);
                zzzVar.zzF(this.zzk);
                zzab zzabVarZzag112 = zzzVar.zzag();
                zzadt zzadtVarZzw112 = zzacqVar.zzw(this.zzc, i8);
                this.zzW = zzadtVarZzw112;
                zzadtVarZzw112.zzm(zzabVarZzag112);
                return;
            case 24:
                iZzn = zzei.zzn(this.zzP);
                if (iZzn == 0) {
                    zzdo.zzf("MatroskaExtractor", "Unsupported little endian PCM bit depth: " + this.zzP + ". Setting mimeType to audio/x-unknown");
                    str5 = "audio/x-unknown";
                    i2 = -1;
                    listZzg = null;
                    str2 = null;
                    iZzn = -1;
                } else {
                    i2 = -1;
                    listZzg = null;
                    str2 = null;
                }
                if (this.zzN != null) {
                    str2 = zzacjVarZza.zza;
                    str5 = "video/dolby-vision";
                }
                str3 = str5;
                boolean z113 = this.zzV;
                if (true != this.zzU) {
                    i3 = 0;
                } else {
                    i3 = 2;
                }
                int i1112 = (z113 ? 1 : 0) | i3;
                zzzVar = new zzz();
                if (zzbb.zzg(str3)) {
                    if (zzbb.zzi(str3)) {
                        if (this.zzq == 0) {
                            i6 = this.zzo;
                            if (i6 == -1) {
                                i6 = this.zzl;
                            }
                            this.zzo = i6;
                            i7 = this.zzp;
                            if (i7 == -1) {
                                i7 = this.zzm;
                            }
                            this.zzp = i7;
                        }
                        i4 = this.zzo;
                        if (i4 != -1) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.zzx) {
                            if (this.zzD != -1.0f) {
                                bArr = null;
                            } else {
                                bArr = null;
                            }
                            zzi zziVar113 = new zzi();
                            zziVar113.zzc(this.zzy);
                            zziVar113.zzb(this.zzA);
                            zziVar113.zzd(this.zzz);
                            zziVar113.zze(bArr);
                            zziVar113.zzf(this.zzn);
                            zziVar113.zza(this.zzn);
                            zzkVarZzg = zziVar113.zzg();
                        } else {
                            zzkVarZzg = null;
                        }
                        if (this.zza != null) {
                            iIntValue = ((Integer) zzahm.zzf.get(this.zza)).intValue();
                        }
                        if (this.zzr == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        zzzVar.zzaf(this.zzl);
                        zzzVar.zzK(this.zzm);
                        zzzVar.zzW(f);
                        zzzVar.zzZ(i9);
                        zzzVar.zzX(this.zzv);
                        zzzVar.zzad(this.zzw);
                        zzzVar.zzB(zzkVarZzg);
                        i8 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i8 = 3;
                    }
                    break;
                } else {
                    zzzVar.zzz(this.zzO);
                    zzzVar.zzab(this.zzQ);
                    zzzVar.zzU(iZzn);
                }
                if (this.zza != null) {
                    zzzVar.zzO(this.zza);
                }
                zzzVar.zzL(i);
                zzzVar.zzaa(str3);
                zzzVar.zzR(i2);
                zzzVar.zzQ(this.zzZ);
                zzzVar.zzac(i1112);
                zzzVar.zzN(listZzg);
                zzzVar.zzA(str2);
                zzzVar.zzF(this.zzk);
                zzab zzabVarZzag113 = zzzVar.zzag();
                zzadt zzadtVarZzw113 = zzacqVar.zzw(this.zzc, i8);
                this.zzW = zzadtVarZzw113;
                zzadtVarZzw113.zzm(zzabVarZzag113);
                return;
            case 25:
                int i20 = this.zzP;
                if (i20 == 8) {
                    i2 = -1;
                    listZzg = null;
                    str2 = null;
                    iZzn = 3;
                } else {
                    if (i20 == 16) {
                        iZzn = DriveFile.MODE_READ_ONLY;
                    } else if (i20 == 24) {
                        iZzn = 1342177280;
                    } else if (i20 == 32) {
                        iZzn = 1610612736;
                    } else {
                        zzdo.zzf("MatroskaExtractor", "Unsupported big endian PCM bit depth: " + i20 + ". Setting mimeType to audio/x-unknown");
                        str5 = "audio/x-unknown";
                        i2 = -1;
                        listZzg = null;
                        str2 = null;
                        iZzn = -1;
                    }
                    i2 = -1;
                    listZzg = null;
                    str2 = null;
                }
                if (this.zzN != null) {
                    str2 = zzacjVarZza.zza;
                    str5 = "video/dolby-vision";
                }
                str3 = str5;
                boolean z114 = this.zzV;
                if (true != this.zzU) {
                    i3 = 0;
                } else {
                    i3 = 2;
                }
                int i1113 = (z114 ? 1 : 0) | i3;
                zzzVar = new zzz();
                if (zzbb.zzg(str3)) {
                    if (zzbb.zzi(str3)) {
                        if (this.zzq == 0) {
                            i6 = this.zzo;
                            if (i6 == -1) {
                                i6 = this.zzl;
                            }
                            this.zzo = i6;
                            i7 = this.zzp;
                            if (i7 == -1) {
                                i7 = this.zzm;
                            }
                            this.zzp = i7;
                        }
                        i4 = this.zzo;
                        if (i4 != -1) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.zzx) {
                            if (this.zzD != -1.0f) {
                                bArr = null;
                            } else {
                                bArr = null;
                            }
                            zzi zziVar114 = new zzi();
                            zziVar114.zzc(this.zzy);
                            zziVar114.zzb(this.zzA);
                            zziVar114.zzd(this.zzz);
                            zziVar114.zze(bArr);
                            zziVar114.zzf(this.zzn);
                            zziVar114.zza(this.zzn);
                            zzkVarZzg = zziVar114.zzg();
                        } else {
                            zzkVarZzg = null;
                        }
                        if (this.zza != null) {
                            iIntValue = ((Integer) zzahm.zzf.get(this.zza)).intValue();
                        }
                        if (this.zzr == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        zzzVar.zzaf(this.zzl);
                        zzzVar.zzK(this.zzm);
                        zzzVar.zzW(f);
                        zzzVar.zzZ(i9);
                        zzzVar.zzX(this.zzv);
                        zzzVar.zzad(this.zzw);
                        zzzVar.zzB(zzkVarZzg);
                        i8 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i8 = 3;
                    }
                    break;
                } else {
                    zzzVar.zzz(this.zzO);
                    zzzVar.zzab(this.zzQ);
                    zzzVar.zzU(iZzn);
                }
                if (this.zza != null) {
                    zzzVar.zzO(this.zza);
                }
                zzzVar.zzL(i);
                zzzVar.zzaa(str3);
                zzzVar.zzR(i2);
                zzzVar.zzQ(this.zzZ);
                zzzVar.zzac(i1113);
                zzzVar.zzN(listZzg);
                zzzVar.zzA(str2);
                zzzVar.zzF(this.zzk);
                zzab zzabVarZzag114 = zzzVar.zzag();
                zzadt zzadtVarZzw114 = zzacqVar.zzw(this.zzc, i8);
                this.zzW = zzadtVarZzw114;
                zzadtVarZzw114.zzm(zzabVarZzag114);
                return;
            case 26:
                int i21 = this.zzP;
                if (i21 == 32) {
                    i2 = -1;
                    listZzg = null;
                    str2 = null;
                } else {
                    zzdo.zzf("MatroskaExtractor", "Unsupported floating point PCM bit depth: " + i21 + ". Setting mimeType to audio/x-unknown");
                    str5 = "audio/x-unknown";
                    i2 = -1;
                    listZzg = null;
                    str2 = null;
                    iZzn = -1;
                }
                if (this.zzN != null) {
                    str2 = zzacjVarZza.zza;
                    str5 = "video/dolby-vision";
                }
                str3 = str5;
                boolean z115 = this.zzV;
                if (true != this.zzU) {
                    i3 = 0;
                } else {
                    i3 = 2;
                }
                int i1114 = (z115 ? 1 : 0) | i3;
                zzzVar = new zzz();
                if (zzbb.zzg(str3)) {
                    if (zzbb.zzi(str3)) {
                        if (this.zzq == 0) {
                            i6 = this.zzo;
                            if (i6 == -1) {
                                i6 = this.zzl;
                            }
                            this.zzo = i6;
                            i7 = this.zzp;
                            if (i7 == -1) {
                                i7 = this.zzm;
                            }
                            this.zzp = i7;
                        }
                        i4 = this.zzo;
                        if (i4 != -1) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.zzx) {
                            if (this.zzD != -1.0f) {
                                bArr = null;
                            } else {
                                bArr = null;
                            }
                            zzi zziVar115 = new zzi();
                            zziVar115.zzc(this.zzy);
                            zziVar115.zzb(this.zzA);
                            zziVar115.zzd(this.zzz);
                            zziVar115.zze(bArr);
                            zziVar115.zzf(this.zzn);
                            zziVar115.zza(this.zzn);
                            zzkVarZzg = zziVar115.zzg();
                        } else {
                            zzkVarZzg = null;
                        }
                        if (this.zza != null) {
                            iIntValue = ((Integer) zzahm.zzf.get(this.zza)).intValue();
                        }
                        if (this.zzr == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        zzzVar.zzaf(this.zzl);
                        zzzVar.zzK(this.zzm);
                        zzzVar.zzW(f);
                        zzzVar.zzZ(i9);
                        zzzVar.zzX(this.zzv);
                        zzzVar.zzad(this.zzw);
                        zzzVar.zzB(zzkVarZzg);
                        i8 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i8 = 3;
                    }
                    break;
                } else {
                    zzzVar.zzz(this.zzO);
                    zzzVar.zzab(this.zzQ);
                    zzzVar.zzU(iZzn);
                }
                if (this.zza != null) {
                    zzzVar.zzO(this.zza);
                }
                zzzVar.zzL(i);
                zzzVar.zzaa(str3);
                zzzVar.zzR(i2);
                zzzVar.zzQ(this.zzZ);
                zzzVar.zzac(i1114);
                zzzVar.zzN(listZzg);
                zzzVar.zzA(str2);
                zzzVar.zzF(this.zzk);
                zzab zzabVarZzag115 = zzzVar.zzag();
                zzadt zzadtVarZzw115 = zzacqVar.zzw(this.zzc, i8);
                this.zzW = zzadtVarZzw115;
                zzadtVarZzw115.zzm(zzabVarZzag115);
                return;
            case 27:
                str5 = "application/x-subrip";
                i2 = -1;
                listZzg = null;
                str2 = null;
                iZzn = -1;
                if (this.zzN != null) {
                    str2 = zzacjVarZza.zza;
                    str5 = "video/dolby-vision";
                }
                str3 = str5;
                boolean z116 = this.zzV;
                if (true != this.zzU) {
                    i3 = 0;
                } else {
                    i3 = 2;
                }
                int i1115 = (z116 ? 1 : 0) | i3;
                zzzVar = new zzz();
                if (zzbb.zzg(str3)) {
                    if (zzbb.zzi(str3)) {
                        if (this.zzq == 0) {
                            i6 = this.zzo;
                            if (i6 == -1) {
                                i6 = this.zzl;
                            }
                            this.zzo = i6;
                            i7 = this.zzp;
                            if (i7 == -1) {
                                i7 = this.zzm;
                            }
                            this.zzp = i7;
                        }
                        i4 = this.zzo;
                        if (i4 != -1) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.zzx) {
                            if (this.zzD != -1.0f) {
                                bArr = null;
                            } else {
                                bArr = null;
                            }
                            zzi zziVar116 = new zzi();
                            zziVar116.zzc(this.zzy);
                            zziVar116.zzb(this.zzA);
                            zziVar116.zzd(this.zzz);
                            zziVar116.zze(bArr);
                            zziVar116.zzf(this.zzn);
                            zziVar116.zza(this.zzn);
                            zzkVarZzg = zziVar116.zzg();
                        } else {
                            zzkVarZzg = null;
                        }
                        if (this.zza != null) {
                            iIntValue = ((Integer) zzahm.zzf.get(this.zza)).intValue();
                        }
                        if (this.zzr == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        zzzVar.zzaf(this.zzl);
                        zzzVar.zzK(this.zzm);
                        zzzVar.zzW(f);
                        zzzVar.zzZ(i9);
                        zzzVar.zzX(this.zzv);
                        zzzVar.zzad(this.zzw);
                        zzzVar.zzB(zzkVarZzg);
                        i8 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i8 = 3;
                    }
                    break;
                } else {
                    zzzVar.zzz(this.zzO);
                    zzzVar.zzab(this.zzQ);
                    zzzVar.zzU(iZzn);
                }
                if (this.zza != null) {
                    zzzVar.zzO(this.zza);
                }
                zzzVar.zzL(i);
                zzzVar.zzaa(str3);
                zzzVar.zzR(i2);
                zzzVar.zzQ(this.zzZ);
                zzzVar.zzac(i1115);
                zzzVar.zzN(listZzg);
                zzzVar.zzA(str2);
                zzzVar.zzF(this.zzk);
                zzab zzabVarZzag116 = zzzVar.zzag();
                zzadt zzadtVarZzw116 = zzacqVar.zzw(this.zzc, i8);
                this.zzW = zzadtVarZzw116;
                zzadtVarZzw116.zzm(zzabVarZzag116);
                return;
            case 28:
                listZzg = zzfxn.zzp(zzahm.zzb, zzi(this.zzb));
                str5 = "text/x-ssa";
                i2 = -1;
                str2 = null;
                iZzn = -1;
                if (this.zzN != null) {
                    str2 = zzacjVarZza.zza;
                    str5 = "video/dolby-vision";
                }
                str3 = str5;
                boolean z117 = this.zzV;
                if (true != this.zzU) {
                    i3 = 0;
                } else {
                    i3 = 2;
                }
                int i1116 = (z117 ? 1 : 0) | i3;
                zzzVar = new zzz();
                if (zzbb.zzg(str3)) {
                    if (zzbb.zzi(str3)) {
                        if (this.zzq == 0) {
                            i6 = this.zzo;
                            if (i6 == -1) {
                                i6 = this.zzl;
                            }
                            this.zzo = i6;
                            i7 = this.zzp;
                            if (i7 == -1) {
                                i7 = this.zzm;
                            }
                            this.zzp = i7;
                        }
                        i4 = this.zzo;
                        if (i4 != -1) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.zzx) {
                            if (this.zzD != -1.0f) {
                                bArr = null;
                            } else {
                                bArr = null;
                            }
                            zzi zziVar117 = new zzi();
                            zziVar117.zzc(this.zzy);
                            zziVar117.zzb(this.zzA);
                            zziVar117.zzd(this.zzz);
                            zziVar117.zze(bArr);
                            zziVar117.zzf(this.zzn);
                            zziVar117.zza(this.zzn);
                            zzkVarZzg = zziVar117.zzg();
                        } else {
                            zzkVarZzg = null;
                        }
                        if (this.zza != null) {
                            iIntValue = ((Integer) zzahm.zzf.get(this.zza)).intValue();
                        }
                        if (this.zzr == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        zzzVar.zzaf(this.zzl);
                        zzzVar.zzK(this.zzm);
                        zzzVar.zzW(f);
                        zzzVar.zzZ(i9);
                        zzzVar.zzX(this.zzv);
                        zzzVar.zzad(this.zzw);
                        zzzVar.zzB(zzkVarZzg);
                        i8 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i8 = 3;
                    }
                    break;
                } else {
                    zzzVar.zzz(this.zzO);
                    zzzVar.zzab(this.zzQ);
                    zzzVar.zzU(iZzn);
                }
                if (this.zza != null) {
                    zzzVar.zzO(this.zza);
                }
                zzzVar.zzL(i);
                zzzVar.zzaa(str3);
                zzzVar.zzR(i2);
                zzzVar.zzQ(this.zzZ);
                zzzVar.zzac(i1116);
                zzzVar.zzN(listZzg);
                zzzVar.zzA(str2);
                zzzVar.zzF(this.zzk);
                zzab zzabVarZzag117 = zzzVar.zzag();
                zzadt zzadtVarZzw117 = zzacqVar.zzw(this.zzc, i8);
                this.zzW = zzadtVarZzw117;
                zzadtVarZzw117.zzm(zzabVarZzag117);
                return;
            case 29:
                str5 = "text/vtt";
                i2 = -1;
                listZzg = null;
                str2 = null;
                iZzn = -1;
                if (this.zzN != null) {
                    str2 = zzacjVarZza.zza;
                    str5 = "video/dolby-vision";
                }
                str3 = str5;
                boolean z118 = this.zzV;
                if (true != this.zzU) {
                    i3 = 0;
                } else {
                    i3 = 2;
                }
                int i1117 = (z118 ? 1 : 0) | i3;
                zzzVar = new zzz();
                if (zzbb.zzg(str3)) {
                    if (zzbb.zzi(str3)) {
                        if (this.zzq == 0) {
                            i6 = this.zzo;
                            if (i6 == -1) {
                                i6 = this.zzl;
                            }
                            this.zzo = i6;
                            i7 = this.zzp;
                            if (i7 == -1) {
                                i7 = this.zzm;
                            }
                            this.zzp = i7;
                        }
                        i4 = this.zzo;
                        if (i4 != -1) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.zzx) {
                            if (this.zzD != -1.0f) {
                                bArr = null;
                            } else {
                                bArr = null;
                            }
                            zzi zziVar118 = new zzi();
                            zziVar118.zzc(this.zzy);
                            zziVar118.zzb(this.zzA);
                            zziVar118.zzd(this.zzz);
                            zziVar118.zze(bArr);
                            zziVar118.zzf(this.zzn);
                            zziVar118.zza(this.zzn);
                            zzkVarZzg = zziVar118.zzg();
                        } else {
                            zzkVarZzg = null;
                        }
                        if (this.zza != null) {
                            iIntValue = ((Integer) zzahm.zzf.get(this.zza)).intValue();
                        }
                        if (this.zzr == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        zzzVar.zzaf(this.zzl);
                        zzzVar.zzK(this.zzm);
                        zzzVar.zzW(f);
                        zzzVar.zzZ(i9);
                        zzzVar.zzX(this.zzv);
                        zzzVar.zzad(this.zzw);
                        zzzVar.zzB(zzkVarZzg);
                        i8 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i8 = 3;
                    }
                    break;
                } else {
                    zzzVar.zzz(this.zzO);
                    zzzVar.zzab(this.zzQ);
                    zzzVar.zzU(iZzn);
                }
                if (this.zza != null) {
                    zzzVar.zzO(this.zza);
                }
                zzzVar.zzL(i);
                zzzVar.zzaa(str3);
                zzzVar.zzR(i2);
                zzzVar.zzQ(this.zzZ);
                zzzVar.zzac(i1117);
                zzzVar.zzN(listZzg);
                zzzVar.zzA(str2);
                zzzVar.zzF(this.zzk);
                zzab zzabVarZzag118 = zzzVar.zzag();
                zzadt zzadtVarZzw118 = zzacqVar.zzw(this.zzc, i8);
                this.zzW = zzadtVarZzw118;
                zzadtVarZzw118.zzm(zzabVarZzag118);
                return;
            case 30:
                listSingletonList = zzfxn.zzo(zzi(str4));
                str5 = "application/vobsub";
                listZzg = listSingletonList;
                i2 = -1;
                str2 = null;
                iZzn = -1;
                if (this.zzN != null) {
                    str2 = zzacjVarZza.zza;
                    str5 = "video/dolby-vision";
                }
                str3 = str5;
                boolean z119 = this.zzV;
                if (true != this.zzU) {
                    i3 = 0;
                } else {
                    i3 = 2;
                }
                int i1118 = (z119 ? 1 : 0) | i3;
                zzzVar = new zzz();
                if (zzbb.zzg(str3)) {
                    if (zzbb.zzi(str3)) {
                        if (this.zzq == 0) {
                            i6 = this.zzo;
                            if (i6 == -1) {
                                i6 = this.zzl;
                            }
                            this.zzo = i6;
                            i7 = this.zzp;
                            if (i7 == -1) {
                                i7 = this.zzm;
                            }
                            this.zzp = i7;
                        }
                        i4 = this.zzo;
                        if (i4 != -1) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.zzx) {
                            if (this.zzD != -1.0f) {
                                bArr = null;
                            } else {
                                bArr = null;
                            }
                            zzi zziVar119 = new zzi();
                            zziVar119.zzc(this.zzy);
                            zziVar119.zzb(this.zzA);
                            zziVar119.zzd(this.zzz);
                            zziVar119.zze(bArr);
                            zziVar119.zzf(this.zzn);
                            zziVar119.zza(this.zzn);
                            zzkVarZzg = zziVar119.zzg();
                        } else {
                            zzkVarZzg = null;
                        }
                        if (this.zza != null) {
                            iIntValue = ((Integer) zzahm.zzf.get(this.zza)).intValue();
                        }
                        if (this.zzr == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        zzzVar.zzaf(this.zzl);
                        zzzVar.zzK(this.zzm);
                        zzzVar.zzW(f);
                        zzzVar.zzZ(i9);
                        zzzVar.zzX(this.zzv);
                        zzzVar.zzad(this.zzw);
                        zzzVar.zzB(zzkVarZzg);
                        i8 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i8 = 3;
                    }
                    break;
                } else {
                    zzzVar.zzz(this.zzO);
                    zzzVar.zzab(this.zzQ);
                    zzzVar.zzU(iZzn);
                }
                if (this.zza != null) {
                    zzzVar.zzO(this.zza);
                }
                zzzVar.zzL(i);
                zzzVar.zzaa(str3);
                zzzVar.zzR(i2);
                zzzVar.zzQ(this.zzZ);
                zzzVar.zzac(i1118);
                zzzVar.zzN(listZzg);
                zzzVar.zzA(str2);
                zzzVar.zzF(this.zzk);
                zzab zzabVarZzag119 = zzzVar.zzag();
                zzadt zzadtVarZzw119 = zzacqVar.zzw(this.zzc, i8);
                this.zzW = zzadtVarZzw119;
                zzadtVarZzw119.zzm(zzabVarZzag119);
                return;
            case 31:
                str5 = "application/pgs";
                i2 = -1;
                listZzg = null;
                str2 = null;
                iZzn = -1;
                if (this.zzN != null) {
                    str2 = zzacjVarZza.zza;
                    str5 = "video/dolby-vision";
                }
                str3 = str5;
                boolean z1110 = this.zzV;
                if (true != this.zzU) {
                    i3 = 0;
                } else {
                    i3 = 2;
                }
                int i1119 = (z1110 ? 1 : 0) | i3;
                zzzVar = new zzz();
                if (zzbb.zzg(str3)) {
                    if (zzbb.zzi(str3)) {
                        if (this.zzq == 0) {
                            i6 = this.zzo;
                            if (i6 == -1) {
                                i6 = this.zzl;
                            }
                            this.zzo = i6;
                            i7 = this.zzp;
                            if (i7 == -1) {
                                i7 = this.zzm;
                            }
                            this.zzp = i7;
                        }
                        i4 = this.zzo;
                        if (i4 != -1) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.zzx) {
                            if (this.zzD != -1.0f) {
                                bArr = null;
                            } else {
                                bArr = null;
                            }
                            zzi zziVar1110 = new zzi();
                            zziVar1110.zzc(this.zzy);
                            zziVar1110.zzb(this.zzA);
                            zziVar1110.zzd(this.zzz);
                            zziVar1110.zze(bArr);
                            zziVar1110.zzf(this.zzn);
                            zziVar1110.zza(this.zzn);
                            zzkVarZzg = zziVar1110.zzg();
                        } else {
                            zzkVarZzg = null;
                        }
                        if (this.zza != null) {
                            iIntValue = ((Integer) zzahm.zzf.get(this.zza)).intValue();
                        }
                        if (this.zzr == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        zzzVar.zzaf(this.zzl);
                        zzzVar.zzK(this.zzm);
                        zzzVar.zzW(f);
                        zzzVar.zzZ(i9);
                        zzzVar.zzX(this.zzv);
                        zzzVar.zzad(this.zzw);
                        zzzVar.zzB(zzkVarZzg);
                        i8 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i8 = 3;
                    }
                    break;
                } else {
                    zzzVar.zzz(this.zzO);
                    zzzVar.zzab(this.zzQ);
                    zzzVar.zzU(iZzn);
                }
                if (this.zza != null) {
                    zzzVar.zzO(this.zza);
                }
                zzzVar.zzL(i);
                zzzVar.zzaa(str3);
                zzzVar.zzR(i2);
                zzzVar.zzQ(this.zzZ);
                zzzVar.zzac(i1119);
                zzzVar.zzN(listZzg);
                zzzVar.zzA(str2);
                zzzVar.zzF(this.zzk);
                zzab zzabVarZzag1110 = zzzVar.zzag();
                zzadt zzadtVarZzw1110 = zzacqVar.zzw(this.zzc, i8);
                this.zzW = zzadtVarZzw1110;
                zzadtVarZzw1110.zzm(zzabVarZzag1110);
                return;
            case 32:
                byte[] bArr3 = new byte[4];
                System.arraycopy(zzi(str4), 0, bArr3, 0, 4);
                listSingletonList = zzfxn.zzo(bArr3);
                str5 = "application/dvbsubs";
                listZzg = listSingletonList;
                i2 = -1;
                str2 = null;
                iZzn = -1;
                if (this.zzN != null) {
                    str2 = zzacjVarZza.zza;
                    str5 = "video/dolby-vision";
                }
                str3 = str5;
                boolean z1111 = this.zzV;
                if (true != this.zzU) {
                    i3 = 0;
                } else {
                    i3 = 2;
                }
                int i11110 = (z1111 ? 1 : 0) | i3;
                zzzVar = new zzz();
                if (zzbb.zzg(str3)) {
                    if (zzbb.zzi(str3)) {
                        if (this.zzq == 0) {
                            i6 = this.zzo;
                            if (i6 == -1) {
                                i6 = this.zzl;
                            }
                            this.zzo = i6;
                            i7 = this.zzp;
                            if (i7 == -1) {
                                i7 = this.zzm;
                            }
                            this.zzp = i7;
                        }
                        i4 = this.zzo;
                        if (i4 != -1) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.zzx) {
                            if (this.zzD != -1.0f) {
                                bArr = null;
                            } else {
                                bArr = null;
                            }
                            zzi zziVar1111 = new zzi();
                            zziVar1111.zzc(this.zzy);
                            zziVar1111.zzb(this.zzA);
                            zziVar1111.zzd(this.zzz);
                            zziVar1111.zze(bArr);
                            zziVar1111.zzf(this.zzn);
                            zziVar1111.zza(this.zzn);
                            zzkVarZzg = zziVar1111.zzg();
                        } else {
                            zzkVarZzg = null;
                        }
                        if (this.zza != null) {
                            iIntValue = ((Integer) zzahm.zzf.get(this.zza)).intValue();
                        }
                        if (this.zzr == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        zzzVar.zzaf(this.zzl);
                        zzzVar.zzK(this.zzm);
                        zzzVar.zzW(f);
                        zzzVar.zzZ(i9);
                        zzzVar.zzX(this.zzv);
                        zzzVar.zzad(this.zzw);
                        zzzVar.zzB(zzkVarZzg);
                        i8 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3)) {
                        }
                        i8 = 3;
                    }
                    break;
                } else {
                    zzzVar.zzz(this.zzO);
                    zzzVar.zzab(this.zzQ);
                    zzzVar.zzU(iZzn);
                }
                if (this.zza != null) {
                    zzzVar.zzO(this.zza);
                }
                zzzVar.zzL(i);
                zzzVar.zzaa(str3);
                zzzVar.zzR(i2);
                zzzVar.zzQ(this.zzZ);
                zzzVar.zzac(i11110);
                zzzVar.zzN(listZzg);
                zzzVar.zzA(str2);
                zzzVar.zzF(this.zzk);
                zzab zzabVarZzag1111 = zzzVar.zzag();
                zzadt zzadtVarZzw1111 = zzacqVar.zzw(this.zzc, i8);
                this.zzW = zzadtVarZzw1111;
                zzadtVarZzw1111.zzm(zzabVarZzag1111);
                return;
            default:
                throw zzbc.zza("Unrecognized codec identifier.", null);
        }
    }
}
