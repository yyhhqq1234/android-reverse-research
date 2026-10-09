.class public final synthetic Lcom/google/android/gms/internal/ads/zzjd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdk;


# instance fields
.field public final synthetic zza:I

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbi;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbi;


# direct methods
.method public synthetic constructor <init>(ILcom/google/android/gms/internal/ads/zzbi;Lcom/google/android/gms/internal/ads/zzbi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzjd;->zza:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzb:Lcom/google/android/gms/internal/ads/zzbi;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzc:Lcom/google/android/gms/internal/ads/zzbi;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbh;

    sget v0, Lcom/google/android/gms/internal/ads/zzjp;->zzd:I

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzc:Lcom/google/android/gms/internal/ads/zzbi;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzjd;->zza:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzb:Lcom/google/android/gms/internal/ads/zzbi;

    invoke-interface {p1, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzbh;->zzm(Lcom/google/android/gms/internal/ads/zzbi;Lcom/google/android/gms/internal/ads/zzbi;I)V

    return-void
.end method
