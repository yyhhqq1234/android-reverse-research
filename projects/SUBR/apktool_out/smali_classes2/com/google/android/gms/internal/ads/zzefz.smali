.class final Lcom/google/android/gms/internal/ads/zzefz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgcd;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfbo;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzega;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzega;Lcom/google/android/gms/internal/ads/zzfbo;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzefz;->zza:Lcom/google/android/gms/internal/ads/zzfbo;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzefz;->zzb:Lcom/google/android/gms/internal/ads/zzega;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefz;->zzb:Lcom/google/android/gms/internal/ads/zzega;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzefz;->zzb:Lcom/google/android/gms/internal/ads/zzega;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzega;->zza(Lcom/google/android/gms/internal/ads/zzega;)Lcom/google/android/gms/internal/ads/zzegb;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzefz;->zza:Lcom/google/android/gms/internal/ads/zzfbo;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzegb;->zzb(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzfbo;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzefz;->zzb:Lcom/google/android/gms/internal/ads/zzega;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzega;->zza(Lcom/google/android/gms/internal/ads/zzega;)Lcom/google/android/gms/internal/ads/zzegb;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzegb;->zza()Lcom/google/android/gms/internal/ads/zzfbo;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzefz;->zza:Lcom/google/android/gms/internal/ads/zzfbo;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzfbo;->zzav:Z

    if-eqz v1, :cond_0

    :goto_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzefz;->zzb:Lcom/google/android/gms/internal/ads/zzega;

    .line 3
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzega;->zzc(Lcom/google/android/gms/internal/ads/zzega;Lcom/google/android/gms/internal/ads/zzfbo;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzefz;->zzb:Lcom/google/android/gms/internal/ads/zzega;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzega;->zza(Lcom/google/android/gms/internal/ads/zzega;)Lcom/google/android/gms/internal/ads/zzegb;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzegb;->zza()Lcom/google/android/gms/internal/ads/zzfbo;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzefz;->zzb:Lcom/google/android/gms/internal/ads/zzega;

    .line 5
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzega;->zzc(Lcom/google/android/gms/internal/ads/zzega;Lcom/google/android/gms/internal/ads/zzfbo;)V

    .line 6
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefz;->zzb:Lcom/google/android/gms/internal/ads/zzega;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzegr;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzefz;->zzb:Lcom/google/android/gms/internal/ads/zzega;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzega;->zza(Lcom/google/android/gms/internal/ads/zzega;)Lcom/google/android/gms/internal/ads/zzegb;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzefz;->zza:Lcom/google/android/gms/internal/ads/zzfbo;

    .line 2
    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzegb;->zzc(Lcom/google/android/gms/internal/ads/zzegr;Lcom/google/android/gms/internal/ads/zzfbo;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzefz;->zzb:Lcom/google/android/gms/internal/ads/zzega;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzega;->zza(Lcom/google/android/gms/internal/ads/zzega;)Lcom/google/android/gms/internal/ads/zzegb;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzegb;->zza()Lcom/google/android/gms/internal/ads/zzfbo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzefz;->zzb:Lcom/google/android/gms/internal/ads/zzega;

    .line 4
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzega;->zzc(Lcom/google/android/gms/internal/ads/zzega;Lcom/google/android/gms/internal/ads/zzfbo;)V

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
