.class public final Lcom/google/android/gms/internal/ads/zzzw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzaal;

.field private zzc:Lcom/google/android/gms/internal/ads/zzca;

.field private zzd:Lcom/google/android/gms/internal/ads/zzbl;

.field private final zze:Ljava/util/List;

.field private zzf:Lcom/google/android/gms/internal/ads/zzcx;

.field private zzg:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaal;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzb:Lcom/google/android/gms/internal/ads/zzaal;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfxn;->zzn()Lcom/google/android/gms/internal/ads/zzfxn;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zze:Ljava/util/List;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzcx;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzf:Lcom/google/android/gms/internal/ads/zzcx;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzzw;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zza:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzzw;)Lcom/google/android/gms/internal/ads/zzbl;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzd:Lcom/google/android/gms/internal/ads/zzbl;

    return-object p0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzzw;)Lcom/google/android/gms/internal/ads/zzcx;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzf:Lcom/google/android/gms/internal/ads/zzcx;

    return-object p0
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/internal/ads/zzzw;)Lcom/google/android/gms/internal/ads/zzaal;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzb:Lcom/google/android/gms/internal/ads/zzaal;

    return-object p0
.end method

.method static bridge synthetic zzg(Lcom/google/android/gms/internal/ads/zzzw;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zze:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/internal/ads/zzcx;)Lcom/google/android/gms/internal/ads/zzzw;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzf:Lcom/google/android/gms/internal/ads/zzcx;

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzaah;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzg:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcw;->zzf(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzd:Lcom/google/android/gms/internal/ads/zzbl;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzc:Lcom/google/android/gms/internal/ads/zzca;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaae;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzaae;-><init>(Lcom/google/android/gms/internal/ads/zzaag;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzc:Lcom/google/android/gms/internal/ads/zzca;

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaaf;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzc:Lcom/google/android/gms/internal/ads/zzca;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzaaf;-><init>(Lcom/google/android/gms/internal/ads/zzca;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzd:Lcom/google/android/gms/internal/ads/zzbl;

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaah;

    .line 3
    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/internal/ads/zzaah;-><init>(Lcom/google/android/gms/internal/ads/zzzw;Lcom/google/android/gms/internal/ads/zzaag;)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zzg:Z

    return-object v0
.end method
