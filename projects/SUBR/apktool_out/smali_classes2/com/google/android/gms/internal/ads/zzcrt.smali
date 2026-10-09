.class public final Lcom/google/android/gms/internal/ads/zzcrt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzher;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcrp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcrp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcrt;->zza:Lcom/google/android/gms/internal/ads/zzcrp;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzcrp;)Lcom/google/android/gms/internal/ads/zzfca;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcrp;->zzc()Lcom/google/android/gms/internal/ads/zzfca;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhez;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfca;

    return-object p0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfca;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrt;->zza:Lcom/google/android/gms/internal/ads/zzcrp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcrt;->zzc(Lcom/google/android/gms/internal/ads/zzcrp;)Lcom/google/android/gms/internal/ads/zzfca;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrt;->zza:Lcom/google/android/gms/internal/ads/zzcrp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcrt;->zzc(Lcom/google/android/gms/internal/ads/zzcrp;)Lcom/google/android/gms/internal/ads/zzfca;

    move-result-object v0

    return-object v0
.end method
