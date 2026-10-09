.class public final Lcom/google/android/gms/internal/ads/zzcqu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzher;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcqr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcqr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqu;->zza:Lcom/google/android/gms/internal/ads/zzcqr;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzcqr;)Lcom/google/android/gms/internal/ads/zzcyl;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcqr;->zza()Lcom/google/android/gms/internal/ads/zzcyl;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcyl;

    return-object p0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzcyl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqu;->zza:Lcom/google/android/gms/internal/ads/zzcqr;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcqu;->zzc(Lcom/google/android/gms/internal/ads/zzcqr;)Lcom/google/android/gms/internal/ads/zzcyl;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqu;->zza:Lcom/google/android/gms/internal/ads/zzcqr;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcqu;->zzc(Lcom/google/android/gms/internal/ads/zzcqr;)Lcom/google/android/gms/internal/ads/zzcyl;

    move-result-object v0

    return-object v0
.end method
