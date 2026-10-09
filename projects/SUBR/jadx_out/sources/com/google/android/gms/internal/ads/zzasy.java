package com.google.android.gms.internal.ads;

import com.google.android.gms.drive.DriveFile;
import com.google.common.primitives.Ints;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzasy extends zzgxr implements zzgzd {
    private static final zzasy zza;
    private static volatile zzgzk zzb;
    private long zzA;
    private long zzB;
    private long zzC;
    private long zzD;
    private long zzE;
    private long zzI;
    private long zzJ;
    private long zzK;
    private long zzM;
    private zzata zzP;
    private zzast zzaG;
    private long zzaM;
    private zzasl zzaP;
    private zzasn zzaQ;
    private int zzaT;
    private long zzaU;
    private boolean zzaX;
    private long zzaZ;
    private zzasv zzah;
    private zzasx zzaj;
    private int zzau;
    private int zzav;
    private int zzaw;
    private int zzax;
    private zzatl zzay;
    private zzatj zzba;
    private int zzc;
    private int zzd;
    private int zze;
    private long zzh;
    private long zzi;
    private long zzj;
    private long zzk;
    private long zzl;
    private long zzm;
    private long zzn;
    private long zzo;
    private long zzp;
    private long zzu;
    private long zzw;
    private long zzx;
    private long zzy;
    private long zzz;
    private String zzf = "";
    private String zzg = "";
    private String zzv = "";
    private String zzF = "";
    private String zzG = "D";
    private String zzH = "";
    private String zzL = "";
    private long zzN = -1;
    private long zzO = -1;
    private long zzQ = -1;
    private long zzR = -1;
    private long zzS = -1;
    private long zzT = -1;
    private long zzU = -1;
    private long zzV = -1;
    private String zzW = "D";
    private String zzX = "D";
    private long zzY = -1;
    private int zzZ = 1000;
    private int zzaa = 1000;
    private long zzab = -1;
    private long zzac = -1;
    private long zzad = -1;
    private long zzae = -1;
    private long zzaf = -1;
    private int zzag = 1000;
    private zzgyd zzai = zzbK();
    private long zzak = -1;
    private long zzal = -1;
    private long zzam = -1;
    private long zzan = -1;
    private long zzao = -1;
    private long zzap = -1;
    private long zzaq = -1;
    private long zzar = -1;
    private String zzas = "D";
    private long zzat = -1;
    private long zzaz = -1;
    private int zzaA = 1000;
    private int zzaB = 1000;
    private String zzaC = "D";
    private zzgyd zzaD = zzbK();
    private int zzaE = 1000;
    private zzgyd zzaF = zzbK();
    private String zzaH = "";
    private long zzaI = -1;
    private long zzaJ = -1;
    private long zzaK = -1;
    private long zzaL = -1;
    private long zzaN = -1;
    private String zzaO = "";
    private long zzaR = -1;
    private long zzaS = -1;
    private String zzaV = "";
    private int zzaW = 2;
    private String zzaY = "";
    private long zzbb = -1;
    private String zzbc = "";

    static {
        zzasy zzasyVar = new zzasy();
        zza = zzasyVar;
        zzgxr.zzbZ(zzasy.class, zzasyVar);
    }

    private zzasy() {
    }

    static /* synthetic */ void zzA(zzasy zzasyVar, String str) {
        str.getClass();
        zzasyVar.zze |= 8388608;
        zzasyVar.zzaV = str;
    }

    static /* synthetic */ void zzB(zzasy zzasyVar, long j) {
        zzasyVar.zze |= 134217728;
        zzasyVar.zzaZ = j;
    }

    static /* synthetic */ void zzC(zzasy zzasyVar, long j) {
        zzasyVar.zze |= 8192;
        zzasyVar.zzaL = j;
    }

    static /* synthetic */ void zzD(zzasy zzasyVar, long j) {
        zzasyVar.zze |= 4096;
        zzasyVar.zzaK = j;
    }

    static /* synthetic */ void zzE(zzasy zzasyVar, String str) {
        str.getClass();
        zzasyVar.zzd |= 256;
        zzasyVar.zzX = str;
    }

    static /* synthetic */ void zzF(zzasy zzasyVar, String str) {
        str.getClass();
        zzasyVar.zzc |= 4194304;
        zzasyVar.zzF = str;
    }

    static /* synthetic */ void zzG(zzasy zzasyVar, long j) {
        zzasyVar.zzc |= 1048576;
        zzasyVar.zzD = j;
    }

    static /* synthetic */ void zzH(zzasy zzasyVar, long j) {
        zzasyVar.zzc |= 1024;
        zzasyVar.zzp = j;
    }

    static /* synthetic */ void zzI(zzasy zzasyVar, long j) {
        zzasyVar.zzc |= 2048;
        zzasyVar.zzu = j;
    }

    static /* synthetic */ void zzJ(zzasy zzasyVar, String str) {
        str.getClass();
        zzasyVar.zzc |= 1;
        zzasyVar.zzf = str;
    }

    static /* synthetic */ void zzK(zzasy zzasyVar, long j) {
        zzasyVar.zzd |= 4194304;
        zzasyVar.zzam = j;
    }

    static /* synthetic */ void zzL(zzasy zzasyVar, long j) {
        zzasyVar.zzc |= 524288;
        zzasyVar.zzC = j;
    }

    static /* synthetic */ void zzM(zzasy zzasyVar, long j) {
        zzasyVar.zzd |= 8388608;
        zzasyVar.zzan = j;
    }

    static /* synthetic */ void zzN(zzasy zzasyVar, long j) {
        zzasyVar.zzd |= 64;
        zzasyVar.zzV = j;
    }

    static /* synthetic */ void zzO(zzasy zzasyVar, long j) {
        zzasyVar.zzd |= 16;
        zzasyVar.zzT = j;
    }

    static /* synthetic */ void zzP(zzasy zzasyVar, long j) {
        zzasyVar.zzc |= Integer.MIN_VALUE;
        zzasyVar.zzO = j;
    }

    static /* synthetic */ void zzQ(zzasy zzasyVar, long j) {
        zzasyVar.zzd |= 8;
        zzasyVar.zzS = j;
    }

    static /* synthetic */ void zzR(zzasy zzasyVar, long j) {
        zzasyVar.zzd |= 4;
        zzasyVar.zzR = j;
    }

    static /* synthetic */ void zzS(zzasy zzasyVar, long j) {
        zzasyVar.zzc |= Ints.MAX_POWER_OF_TWO;
        zzasyVar.zzN = j;
    }

    static /* synthetic */ void zzT(zzasy zzasyVar, long j) {
        zzasyVar.zzc |= 32768;
        zzasyVar.zzy = j;
    }

    static /* synthetic */ void zzU(zzasy zzasyVar, long j) {
        zzasyVar.zzd |= 2;
        zzasyVar.zzQ = j;
    }

    static /* synthetic */ void zzV(zzasy zzasyVar, long j) {
        zzasyVar.zzc |= 8192;
        zzasyVar.zzw = j;
    }

    static /* synthetic */ void zzW(zzasy zzasyVar, long j) {
        zzasyVar.zzc |= 16384;
        zzasyVar.zzx = j;
    }

    static /* synthetic */ void zzX(zzasy zzasyVar, long j) {
        zzasyVar.zzd |= 16384;
        zzasyVar.zzad = j;
    }

    static /* synthetic */ void zzY(zzasy zzasyVar, long j) {
        zzasyVar.zze |= 1024;
        zzasyVar.zzaI = j;
    }

    static /* synthetic */ void zzZ(zzasy zzasyVar, zzasv zzasvVar) {
        zzasvVar.getClass();
        zzasyVar.zzah = zzasvVar;
        zzasyVar.zzd |= 262144;
    }

    public static zzasc zza() {
        return (zzasc) zza.zzaZ();
    }

    static /* synthetic */ void zzaa(zzasy zzasyVar, long j) {
        zzasyVar.zzc |= 67108864;
        zzasyVar.zzJ = j;
    }

    static /* synthetic */ void zzab(zzasy zzasyVar, long j) {
        zzasyVar.zzc |= 65536;
        zzasyVar.zzz = j;
    }

    static /* synthetic */ void zzac(zzasy zzasyVar, long j) {
        zzasyVar.zzc |= 2097152;
        zzasyVar.zzE = j;
    }

    static /* synthetic */ void zzad(zzasy zzasyVar, long j) {
        zzasyVar.zzc |= 134217728;
        zzasyVar.zzK = j;
    }

    static /* synthetic */ void zzae(zzasy zzasyVar, long j) {
        zzasyVar.zzc |= 33554432;
        zzasyVar.zzI = j;
    }

    static /* synthetic */ void zzaf(zzasy zzasyVar, long j) {
        zzasyVar.zzc |= DriveFile.MODE_WRITE_ONLY;
        zzasyVar.zzM = j;
    }

    static /* synthetic */ void zzag(zzasy zzasyVar, zzasx zzasxVar) {
        zzasxVar.getClass();
        zzasyVar.zzaj = zzasxVar;
        zzasyVar.zzd |= 524288;
    }

    static /* synthetic */ void zzah(zzasy zzasyVar, String str) {
        str.getClass();
        zzasyVar.zzc |= DriveFile.MODE_READ_ONLY;
        zzasyVar.zzL = str;
    }

    static /* synthetic */ void zzam(zzasy zzasyVar, int i) {
        zzasyVar.zzaa = i - 1;
        zzasyVar.zzd |= 2048;
    }

    static /* synthetic */ void zzan(zzasy zzasyVar, int i) {
        zzasyVar.zzaW = 5;
        zzasyVar.zze |= 16777216;
    }

    static /* synthetic */ void zzao(zzasy zzasyVar, int i) {
        zzasyVar.zzag = i - 1;
        zzasyVar.zzd |= 131072;
    }

    static /* synthetic */ void zzap(zzasy zzasyVar, int i) {
        zzasyVar.zzaB = i - 1;
        zzasyVar.zze |= 32;
    }

    static /* synthetic */ void zzaq(zzasy zzasyVar, int i) {
        zzasyVar.zzaT = i - 1;
        zzasyVar.zze |= 2097152;
    }

    static /* synthetic */ void zzar(zzasy zzasyVar, int i) {
        zzasyVar.zzaA = i - 1;
        zzasyVar.zze |= 16;
    }

    static /* synthetic */ void zzas(zzasy zzasyVar, int i) {
        zzasyVar.zzZ = i - 1;
        zzasyVar.zzd |= 1024;
    }

    public static zzasy zzc() {
        return zza;
    }

    public static zzasy zzd(byte[] bArr, zzgxb zzgxbVar) throws zzgyg {
        return (zzasy) zzgxr.zzbx(zza, bArr, zzgxbVar);
    }

    static /* synthetic */ void zzi(zzasy zzasyVar, zzasv zzasvVar) {
        zzasvVar.getClass();
        zzgyd zzgydVar = zzasyVar.zzai;
        if (!zzgydVar.zzc()) {
            zzasyVar.zzai = zzgxr.zzbL(zzgydVar);
        }
        zzasyVar.zzai.add(zzasvVar);
    }

    static /* synthetic */ void zzk(zzasy zzasyVar, long j) {
        zzasyVar.zzd |= 67108864;
        zzasyVar.zzaq = j;
    }

    static /* synthetic */ void zzl(zzasy zzasyVar, String str) {
        str.getClass();
        zzasyVar.zzd |= DriveFile.MODE_READ_ONLY;
        zzasyVar.zzas = str;
    }

    static /* synthetic */ void zzm(zzasy zzasyVar, long j) {
        zzasyVar.zzd |= 134217728;
        zzasyVar.zzar = j;
    }

    static /* synthetic */ void zzn(zzasy zzasyVar, long j) {
        zzasyVar.zze |= 2048;
        zzasyVar.zzaJ = j;
    }

    static /* synthetic */ void zzo(zzasy zzasyVar, String str) {
        str.getClass();
        zzasyVar.zze |= 65536;
        zzasyVar.zzaO = str;
    }

    static /* synthetic */ void zzp(zzasy zzasyVar, String str) {
        str.getClass();
        zzasyVar.zzc |= 2;
        zzasyVar.zzg = str;
    }

    static /* synthetic */ void zzq(zzasy zzasyVar, String str) {
        str.getClass();
        zzasyVar.zzd |= 128;
        zzasyVar.zzW = str;
    }

    static /* synthetic */ void zzr(zzasy zzasyVar, long j) {
        zzasyVar.zzc |= 4;
        zzasyVar.zzh = j;
    }

    static /* synthetic */ void zzs(zzasy zzasyVar, long j) {
        zzasyVar.zzd |= 2097152;
        zzasyVar.zzal = j;
    }

    static /* synthetic */ void zzt(zzasy zzasyVar, long j) {
        zzasyVar.zzc |= 32;
        zzasyVar.zzk = j;
    }

    static /* synthetic */ void zzu(zzasy zzasyVar, long j) {
        zzasyVar.zzc |= 16;
        zzasyVar.zzj = j;
    }

    static /* synthetic */ void zzv(zzasy zzasyVar, String str) {
        str.getClass();
        zzasyVar.zzc |= 16777216;
        zzasyVar.zzH = str;
    }

    static /* synthetic */ void zzw(zzasy zzasyVar, long j) {
        zzasyVar.zzd |= 32;
        zzasyVar.zzU = j;
    }

    static /* synthetic */ void zzx(zzasy zzasyVar, long j) {
        zzasyVar.zzd |= 4096;
        zzasyVar.zzab = j;
    }

    static /* synthetic */ void zzy(zzasy zzasyVar, long j) {
        zzasyVar.zzd |= 8192;
        zzasyVar.zzac = j;
    }

    static /* synthetic */ void zzz(zzasy zzasyVar, boolean z) {
        zzasyVar.zze |= 33554432;
        zzasyVar.zzaX = z;
    }

    public final boolean zzai() {
        return this.zzaX;
    }

    public final boolean zzaj() {
        return (this.zzc & 4194304) != 0;
    }

    public final boolean zzak() {
        return (this.zze & DriveFile.MODE_READ_ONLY) != 0;
    }

    public final int zzal() {
        int iZza = zzash.zza(this.zzaW);
        if (iZza == 0) {
            return 3;
        }
        return iZza;
    }

    @Override // com.google.android.gms.internal.ads.zzgxr
    protected final Object zzdc(zzgxq zzgxqVar, Object obj, Object obj2) {
        int iOrdinal = zzgxqVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            zzgxx zzgxxVar = zzate.zza;
            return zzbQ(zza, "\u0001b\u0000\u0003\u0001Įb\u0000\u0003\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဂ\u0005\u0007ဂ\u0006\bဂ\u0007\tဂ\b\nဂ\t\u000bဂ\n\fဂ\u000b\rဈ\f\u000eဂ\r\u000fဂ\u000e\u0010ဂ\u000f\u0011ဂ\u0010\u0012ဂ\u0011\u0013ဂ\u0012\u0014ဂ\u0013\u0015ဂV\u0016ဂ\u0014\u0017ဂ\u0015\u0018ဈW\u0019ဂ[\u001a᠌X\u001bဈ\u0016\u001cဇY\u001dဈ\u0018\u001eဈZ\u001fဂ\u0019 ဂ\u001a!ဂ\u001b\"ဈ\u001c#ဂ\u001d$ဂ\u001e%ဂ\u001f&ဉ 'ဂ!(ဂ\")ဂ#*ဂ$+\u001b,ဂ%-ဂ&.ဈ'/ဈ(0᠌*1᠌+2ဉ23ဂ,4ဂ-5ဂ.6ဂ/7ဂ08᠌19ဉ3:ဂ4;ဂ5<ဂ6=ဂ7>ဂ:?ဂ;@ဂ=A᠌>B᠌?Cဈ<D᠌AEဉBFဂCGဂ8Hဂ9I᠌DJဂ)Kဈ\u0017L᠌EMဈFN\u001bO᠌GP\u001bQဉHRဈISဂJTဂKUဂLVဂMWဂNXဂOYဈPZဉQ[ဉR\\ဂS]ဂT^᠌U_᠌@Éဉ\\ĭဂ]Įဈ^", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", "zzp", "zzu", "zzv", "zzw", "zzx", "zzy", "zzz", "zzA", "zzB", "zzC", "zzaU", "zzD", "zzE", "zzaV", "zzaZ", "zzaW", zzasg.zza, "zzF", "zzaX", "zzH", "zzaY", "zzI", "zzJ", "zzK", "zzL", "zzM", "zzN", "zzO", "zzP", "zzQ", "zzR", "zzS", "zzT", "zzai", zzasv.class, "zzU", "zzV", "zzW", "zzX", "zzZ", zzgxxVar, "zzaa", zzgxxVar, "zzah", "zzab", "zzac", "zzad", "zzae", "zzaf", "zzag", zzgxxVar, "zzaj", "zzak", "zzal", "zzam", "zzan", "zzaq", "zzar", "zzat", "zzau", zzatd.zza, "zzav", zzath.zza, "zzas", "zzax", zzasd.zza, "zzay", "zzaz", "zzao", "zzap", "zzaA", zzgxxVar, "zzY", "zzG", "zzaB", zzgxxVar, "zzaC", "zzaD", zzasr.class, "zzaE", zzgxxVar, "zzaF", zzasf.class, "zzaG", "zzaH", "zzaI", "zzaJ", "zzaK", "zzaL", "zzaM", "zzaN", "zzaO", "zzaP", "zzaQ", "zzaR", "zzaS", "zzaT", zzaso.zza, "zzaw", zzasi.zza, "zzba", "zzbb", "zzbc"});
        }
        if (iOrdinal == 3) {
            return new zzasy();
        }
        zzato zzatoVar = null;
        if (iOrdinal == 4) {
            return new zzasc(zzatoVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        zzgzk zzgxmVar = zzb;
        if (zzgxmVar == null) {
            synchronized (zzasy.class) {
                zzgxmVar = zzb;
                if (zzgxmVar == null) {
                    zzgxmVar = new zzgxm(zza);
                    zzb = zzgxmVar;
                }
            }
        }
        return zzgxmVar;
    }

    public final zzatj zzf() {
        zzatj zzatjVar = this.zzba;
        return zzatjVar == null ? zzatj.zzc() : zzatjVar;
    }

    public final String zzg() {
        return this.zzaV;
    }

    public final String zzh() {
        return this.zzF;
    }
}
