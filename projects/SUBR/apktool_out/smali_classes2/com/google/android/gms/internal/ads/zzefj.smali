.class public final Lcom/google/android/gms/internal/ads/zzefj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzecy;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdpm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdpm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzefj;->zza:Lcom/google/android/gms/internal/ads/zzdpm;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzecz;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfcq;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefj;->zza:Lcom/google/android/gms/internal/ads/zzdpm;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdpm;->zzc(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzfdh;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzees;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzees;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzecz;

    invoke-direct {v1, p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzecz;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcxd;Ljava/lang/String;)V

    return-object v1
.end method
