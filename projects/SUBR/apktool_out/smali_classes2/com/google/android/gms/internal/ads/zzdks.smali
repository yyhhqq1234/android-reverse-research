.class public final synthetic Lcom/google/android/gms/internal/ads/zzdks;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfuc;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdkt;

.field public final synthetic zzb:D

.field public final synthetic zzc:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdkt;DZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdks;->zza:Lcom/google/android/gms/internal/ads/zzdkt;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzdks;->zzb:D

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzdks;->zzc:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdks;->zza:Lcom/google/android/gms/internal/ads/zzdkt;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzdks;->zzb:D

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzdks;->zzc:Z

    check-cast p1, Lcom/google/android/gms/internal/ads/zzapi;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzdkt;->zza(DZLcom/google/android/gms/internal/ads/zzapi;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
