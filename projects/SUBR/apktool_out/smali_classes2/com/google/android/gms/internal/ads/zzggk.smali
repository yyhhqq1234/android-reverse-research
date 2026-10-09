.class public final synthetic Lcom/google/android/gms/internal/ads/zzggk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzglz;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzgek;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzgdx;
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzggq;

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzggg;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzggg;-><init>(Lcom/google/android/gms/internal/ads/zzggh;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzggg;->zzc(Lcom/google/android/gms/internal/ads/zzggq;)Lcom/google/android/gms/internal/ads/zzggg;

    .line 2
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzggg;->zza(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzggg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzggq;->zzb()I

    move-result p1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgvp;->zzc(I)Lcom/google/android/gms/internal/ads/zzgvp;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzggg;->zzb(Lcom/google/android/gms/internal/ads/zzgvp;)Lcom/google/android/gms/internal/ads/zzggg;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzggg;->zzd()Lcom/google/android/gms/internal/ads/zzggi;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgdx;

    return-object p1
.end method
