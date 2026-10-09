.class final Lcom/google/android/gms/internal/ads/zzboj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbke;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbok;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzbnm;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcab;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbok;Lcom/google/android/gms/internal/ads/zzbnm;Lcom/google/android/gms/internal/ads/zzcab;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzboj;->zza:Lcom/google/android/gms/internal/ads/zzbok;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzboj;->zzb:Lcom/google/android/gms/internal/ads/zzbnm;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzboj;->zzc:Lcom/google/android/gms/internal/ads/zzcab;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzboj;->zzc:Lcom/google/android/gms/internal/ads/zzcab;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbnv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbnv;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcab;->zzd(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboj;->zzc:Lcom/google/android/gms/internal/ads/zzcab;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbnv;

    .line 2
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzbnv;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcab;->zzd(Ljava/lang/Throwable;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboj;->zzb:Lcom/google/android/gms/internal/ads/zzbnm;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbnm;->zzb()V

    .line 4
    throw p1

    .line 1
    :catch_0
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzboj;->zzb:Lcom/google/android/gms/internal/ads/zzbnm;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbnm;->zzb()V

    return-void
.end method

.method public final zzb(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboj;->zzc:Lcom/google/android/gms/internal/ads/zzcab;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzboj;->zza:Lcom/google/android/gms/internal/ads/zzbok;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbok;->zzc(Lcom/google/android/gms/internal/ads/zzbok;)Lcom/google/android/gms/internal/ads/zzbny;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzbny;->zza(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcab;->zzc(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboj;->zzc:Lcom/google/android/gms/internal/ads/zzcab;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcab;->zzd(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboj;->zzb:Lcom/google/android/gms/internal/ads/zzbnm;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbnm;->zzb()V

    .line 4
    throw p1

    .line 1
    :catch_1
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzboj;->zzb:Lcom/google/android/gms/internal/ads/zzbnm;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbnm;->zzb()V

    return-void
.end method
