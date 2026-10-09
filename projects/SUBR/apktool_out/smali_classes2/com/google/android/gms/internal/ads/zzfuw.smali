.class final Lcom/google/android/gms/internal/ads/zzfuw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfvb;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfua;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfua;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfuw;->zza:Lcom/google/android/gms/internal/ads/zzfua;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzfvc;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfuw;->zza:Lcom/google/android/gms/internal/ads/zzfua;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzfua;->zza(Ljava/lang/CharSequence;)Lcom/google/android/gms/internal/ads/zzftz;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfuv;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzfuv;-><init>(Lcom/google/android/gms/internal/ads/zzfuw;Lcom/google/android/gms/internal/ads/zzfvc;Ljava/lang/CharSequence;Lcom/google/android/gms/internal/ads/zzftz;)V

    return-object v1
.end method
