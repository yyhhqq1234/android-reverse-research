.class final Lcom/google/android/gms/internal/ads/zzciy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdth;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzbko;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcih;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzciy;

.field private final zze:Lcom/google/android/gms/internal/ads/zzhfa;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzhfa;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzhfa;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzhfa;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcih;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbko;Lcom/google/android/gms/internal/ads/zzcjm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/google/android/gms/internal/ads/zzciy;->zzd:Lcom/google/android/gms/internal/ads/zzciy;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzciy;->zzc:Lcom/google/android/gms/internal/ads/zzcih;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzciy;->zza:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzciy;->zzb:Lcom/google/android/gms/internal/ads/zzbko;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhes;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzher;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzciy;->zze:Lcom/google/android/gms/internal/ads/zzhfa;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzhes;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzher;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzciy;->zzf:Lcom/google/android/gms/internal/ads/zzhfa;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzdtd;

    invoke-direct {p3, p2}, Lcom/google/android/gms/internal/ads/zzdtd;-><init>(Lcom/google/android/gms/internal/ads/zzhfj;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzciy;->zzg:Lcom/google/android/gms/internal/ads/zzhfa;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdtf;

    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzdtf;-><init>(Lcom/google/android/gms/internal/ads/zzhfj;Lcom/google/android/gms/internal/ads/zzhfj;)V

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzheq;->zzc(Lcom/google/android/gms/internal/ads/zzhfa;)Lcom/google/android/gms/internal/ads/zzhfa;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzciy;->zzh:Lcom/google/android/gms/internal/ads/zzhfa;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzciy;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzciy;->zza:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzciy;)Lcom/google/android/gms/internal/ads/zzdtc;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzciy;->zzb:Lcom/google/android/gms/internal/ads/zzbko;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdtd;->zzc(Lcom/google/android/gms/internal/ads/zzbko;)Lcom/google/android/gms/internal/ads/zzdtc;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zzb()Lcom/google/android/gms/internal/ads/zzdsy;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzciv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzciy;->zzc:Lcom/google/android/gms/internal/ads/zzcih;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzciy;->zzd:Lcom/google/android/gms/internal/ads/zzciy;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzciv;-><init>(Lcom/google/android/gms/internal/ads/zzcih;Lcom/google/android/gms/internal/ads/zzciy;Lcom/google/android/gms/internal/ads/zzcjm;)V

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzdte;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzciy;->zzh:Lcom/google/android/gms/internal/ads/zzhfa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfa;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdte;

    return-object v0
.end method
