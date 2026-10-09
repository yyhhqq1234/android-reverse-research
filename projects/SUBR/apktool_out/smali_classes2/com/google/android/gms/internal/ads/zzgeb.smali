.class public final Lcom/google/android/gms/internal/ads/zzgeb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"


# instance fields
.field private zza:Z

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgdz;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgdx;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final zzd:Lcom/google/android/gms/internal/ads/zzgek;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private zze:Lcom/google/android/gms/internal/ads/zzgec;

.field private zzf:Lcom/google/android/gms/internal/ads/zzged;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgek;Lcom/google/android/gms/internal/ads/zzgef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p2, Lcom/google/android/gms/internal/ads/zzgdz;->zza:Lcom/google/android/gms/internal/ads/zzgdz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgeb;->zzb:Lcom/google/android/gms/internal/ads/zzgdz;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgeb;->zze:Lcom/google/android/gms/internal/ads/zzgec;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgeb;->zzf:Lcom/google/android/gms/internal/ads/zzged;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgeb;->zzc:Lcom/google/android/gms/internal/ads/zzgdx;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgeb;->zzd:Lcom/google/android/gms/internal/ads/zzgek;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzgeb;)Lcom/google/android/gms/internal/ads/zzgdx;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgeb;->zzc:Lcom/google/android/gms/internal/ads/zzgdx;

    const/4 p0, 0x0

    return-object p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzgeb;)Lcom/google/android/gms/internal/ads/zzgdz;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgeb;->zzb:Lcom/google/android/gms/internal/ads/zzgdz;

    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzgeb;)Lcom/google/android/gms/internal/ads/zzgec;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgeb;->zze:Lcom/google/android/gms/internal/ads/zzgec;

    return-object p0
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/internal/ads/zzgeb;)Lcom/google/android/gms/internal/ads/zzged;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgeb;->zzf:Lcom/google/android/gms/internal/ads/zzged;

    return-object p0
.end method

.method static bridge synthetic zzg(Lcom/google/android/gms/internal/ads/zzgeb;)Lcom/google/android/gms/internal/ads/zzgek;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgeb;->zzd:Lcom/google/android/gms/internal/ads/zzgek;

    return-object p0
.end method

.method static bridge synthetic zzh(Lcom/google/android/gms/internal/ads/zzgeb;Lcom/google/android/gms/internal/ads/zzged;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgeb;->zzf:Lcom/google/android/gms/internal/ads/zzged;

    return-void
.end method

.method static bridge synthetic zzi(Lcom/google/android/gms/internal/ads/zzgeb;Z)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzgeb;->zza:Z

    return-void
.end method

.method static bridge synthetic zzj(Lcom/google/android/gms/internal/ads/zzgeb;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzgeb;->zza:Z

    return p0
.end method


# virtual methods
.method public final zzc()Lcom/google/android/gms/internal/ads/zzgeb;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgeb;->zzf:Lcom/google/android/gms/internal/ads/zzged;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzged;->zzc(Lcom/google/android/gms/internal/ads/zzged;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgeb;->zza:Z

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzgeb;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgec;->zzb()Lcom/google/android/gms/internal/ads/zzgec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgeb;->zze:Lcom/google/android/gms/internal/ads/zzgec;

    return-object p0
.end method
