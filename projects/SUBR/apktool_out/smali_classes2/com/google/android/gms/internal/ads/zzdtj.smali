.class public final Lcom/google/android/gms/internal/ads/zzdtj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdsx;


# instance fields
.field private final zza:J

.field private final zzb:Lcom/google/android/gms/internal/ads/zzekv;


# direct methods
.method constructor <init>(JLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzdtc;Lcom/google/android/gms/internal/ads/zzcgx;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzdtj;->zza:J

    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzcgx;->zzv()Lcom/google/android/gms/internal/ads/zzezt;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/zzezt;->zzc(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzezt;

    new-instance p2, Lcom/google/android/gms/ads/internal/client/zzs;

    invoke-direct {p2}, Lcom/google/android/gms/ads/internal/client/zzs;-><init>()V

    .line 2
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzezt;->zza(Lcom/google/android/gms/ads/internal/client/zzs;)Lcom/google/android/gms/internal/ads/zzezt;

    .line 3
    invoke-interface {p1, p6}, Lcom/google/android/gms/internal/ads/zzezt;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzezt;

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzezt;->zzd()Lcom/google/android/gms/internal/ads/zzezu;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzezu;->zza()Lcom/google/android/gms/internal/ads/zzekv;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdtj;->zzb:Lcom/google/android/gms/internal/ads/zzekv;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdti;

    .line 6
    invoke-direct {p2, p0, p4}, Lcom/google/android/gms/internal/ads/zzdti;-><init>(Lcom/google/android/gms/internal/ads/zzdtj;Lcom/google/android/gms/internal/ads/zzdtc;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzekv;->zzD(Lcom/google/android/gms/ads/internal/client/zzbl;)V

    return-void
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzdtj;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdtj;->zza:J

    return-wide v0
.end method


# virtual methods
.method public final zza()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtj;->zzb:Lcom/google/android/gms/internal/ads/zzekv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzekv;->zzx()V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/ads/internal/client/zzm;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtj;->zzb:Lcom/google/android/gms/internal/ads/zzekv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzekv;->zzab(Lcom/google/android/gms/ads/internal/client/zzm;)Z

    return-void
.end method

.method public final zzc()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtj;->zzb:Lcom/google/android/gms/internal/ads/zzekv;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzekv;->zzW(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void
.end method
