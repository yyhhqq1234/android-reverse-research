.class public final Lcom/google/android/gms/internal/ads/zzcow;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzher;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcot;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcot;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcow;->zza:Lcom/google/android/gms/internal/ads/zzcot;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzcot;)Lcom/google/android/gms/internal/ads/zzfbp;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcot;->zze()Lcom/google/android/gms/internal/ads/zzfbp;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhez;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfbp;

    return-object p0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfbp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcow;->zza:Lcom/google/android/gms/internal/ads/zzcot;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcow;->zzc(Lcom/google/android/gms/internal/ads/zzcot;)Lcom/google/android/gms/internal/ads/zzfbp;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcow;->zza:Lcom/google/android/gms/internal/ads/zzcot;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcow;->zzc(Lcom/google/android/gms/internal/ads/zzcot;)Lcom/google/android/gms/internal/ads/zzfbp;

    move-result-object v0

    return-object v0
.end method
