.class public final Lcom/google/android/gms/internal/ads/zzqa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzoi;

.field private zzc:Z

.field private final zzd:Lcom/google/android/gms/internal/ads/zzpy;

.field private final zze:Lcom/google/android/gms/internal/ads/zzpz;

.field private zzf:Lcom/google/android/gms/internal/ads/zzqc;

.field private zzg:Lcom/google/android/gms/internal/ads/zzps;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqa;->zza:Landroid/content/Context;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzoi;->zza:Lcom/google/android/gms/internal/ads/zzoi;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqa;->zzb:Lcom/google/android/gms/internal/ads/zzoi;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzpy;->zza:Lcom/google/android/gms/internal/ads/zzpy;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqa;->zzd:Lcom/google/android/gms/internal/ads/zzpy;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzpz;->zza:Lcom/google/android/gms/internal/ads/zzpz;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqa;->zze:Lcom/google/android/gms/internal/ads/zzpz;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqa;->zza:Landroid/content/Context;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzoi;->zza:Lcom/google/android/gms/internal/ads/zzoi;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqa;->zzb:Lcom/google/android/gms/internal/ads/zzoi;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzpy;->zza:Lcom/google/android/gms/internal/ads/zzpy;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqa;->zzd:Lcom/google/android/gms/internal/ads/zzpy;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzpz;->zza:Lcom/google/android/gms/internal/ads/zzpz;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqa;->zze:Lcom/google/android/gms/internal/ads/zzpz;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzqa;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzqa;->zza:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzqa;)Lcom/google/android/gms/internal/ads/zzoi;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzqa;->zzb:Lcom/google/android/gms/internal/ads/zzoi;

    return-object p0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzqa;)Lcom/google/android/gms/internal/ads/zzpz;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzqa;->zze:Lcom/google/android/gms/internal/ads/zzpz;

    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzqa;)Lcom/google/android/gms/internal/ads/zzqc;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzqa;->zzf:Lcom/google/android/gms/internal/ads/zzqc;

    return-object p0
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/internal/ads/zzqa;)Lcom/google/android/gms/internal/ads/zzps;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzqa;->zzg:Lcom/google/android/gms/internal/ads/zzps;

    return-object p0
.end method


# virtual methods
.method public final zzd()Lcom/google/android/gms/internal/ads/zzqm;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqa;->zzc:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcw;->zzf(Z)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzqa;->zzc:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqa;->zzf:Lcom/google/android/gms/internal/ads/zzqc;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzqc;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzch;

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzqc;-><init>([Lcom/google/android/gms/internal/ads/zzch;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqa;->zzf:Lcom/google/android/gms/internal/ads/zzqc;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqa;->zzg:Lcom/google/android/gms/internal/ads/zzps;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqa;->zza:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzps;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzps;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzqa;->zzg:Lcom/google/android/gms/internal/ads/zzps;

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzqm;

    const/4 v1, 0x0

    .line 3
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzqm;-><init>(Lcom/google/android/gms/internal/ads/zzqa;Lcom/google/android/gms/internal/ads/zzql;)V

    return-object v0
.end method
