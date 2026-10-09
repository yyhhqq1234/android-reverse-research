.class final Lcom/google/android/gms/internal/ads/zzfay;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgcd;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzelc;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfhh;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfgw;

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzfaz;

.field final synthetic zze:Lcom/google/android/gms/internal/ads/zzfbb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfbb;Lcom/google/android/gms/internal/ads/zzelc;Lcom/google/android/gms/internal/ads/zzfhh;Lcom/google/android/gms/internal/ads/zzfgw;Lcom/google/android/gms/internal/ads/zzfaz;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfay;->zza:Lcom/google/android/gms/internal/ads/zzelc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfay;->zzb:Lcom/google/android/gms/internal/ads/zzfhh;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfay;->zzc:Lcom/google/android/gms/internal/ads/zzfgw;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfay;->zzd:Lcom/google/android/gms/internal/ads/zzfaz;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfay;->zze:Lcom/google/android/gms/internal/ads/zzfbb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcl;->zzfG:Lcom/google/android/gms/internal/ads/zzbcc;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbe;->zzc()Lcom/google/android/gms/internal/ads/zzbcj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcj;->zza(Lcom/google/android/gms/internal/ads/zzbcc;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Rewarded ad failed to load"

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfay;->zze:Lcom/google/android/gms/internal/ads/zzfbb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfbb;->zze(Lcom/google/android/gms/internal/ads/zzfbb;)Lcom/google/android/gms/internal/ads/zzezf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzezf;->zzd()Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Lcom/google/android/gms/internal/ads/zzdof;

    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 5
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzfdk;->zzb(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzedb;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdof;->zzb()Lcom/google/android/gms/internal/ads/zzcsd;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzcsd;->zza(Ljava/lang/Throwable;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v1

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfay;->zze:Lcom/google/android/gms/internal/ads/zzfbb;

    monitor-enter v2

    if-eqz v0, :cond_2

    .line 7
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdof;->zza()Lcom/google/android/gms/internal/ads/zzcvv;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcvv;->zzdz(Lcom/google/android/gms/ads/internal/client/zze;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfay;->zze:Lcom/google/android/gms/internal/ads/zzfbb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfbb;->zzh(Lcom/google/android/gms/internal/ads/zzfbb;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfaw;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/internal/ads/zzfaw;-><init>(Lcom/google/android/gms/internal/ads/zzfay;Lcom/google/android/gms/ads/internal/client/zze;)V

    .line 8
    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 19
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfay;->zze:Lcom/google/android/gms/internal/ads/zzfbb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfbb;->zzf(Lcom/google/android/gms/internal/ads/zzfbb;)Lcom/google/android/gms/internal/ads/zzfar;

    move-result-object v0

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfar;->zzdz(Lcom/google/android/gms/ads/internal/client/zze;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfay;->zze:Lcom/google/android/gms/internal/ads/zzfbb;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfay;->zzd:Lcom/google/android/gms/internal/ads/zzfaz;

    .line 10
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzfbb;->zzd(Lcom/google/android/gms/internal/ads/zzfbb;Lcom/google/android/gms/internal/ads/zzezd;)Lcom/google/android/gms/internal/ads/zzdoe;

    move-result-object v0

    .line 11
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdoe;->zze()Lcom/google/android/gms/internal/ads/zzdof;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdof;->zzb()Lcom/google/android/gms/internal/ads/zzcsd;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcsd;->zzc()Lcom/google/android/gms/internal/ads/zzdba;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdba;->zzh()V

    .line 15
    :goto_1
    iget v0, v1, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    const-string v3, "RewardedAdLoader.onFailure"

    invoke-static {v0, p1, v3}, Lcom/google/android/gms/internal/ads/zzfdg;->zzb(ILjava/lang/Throwable;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfay;->zza:Lcom/google/android/gms/internal/ads/zzelc;

    .line 16
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzelc;->zza()V

    .line 17
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbee;->zzc:Lcom/google/android/gms/internal/ads/zzbdv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdv;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfay;->zzb:Lcom/google/android/gms/internal/ads/zzfhh;

    if-eqz v0, :cond_3

    .line 20
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfhh;->zzc(Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/internal/ads/zzfhh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfay;->zzc:Lcom/google/android/gms/internal/ads/zzfgw;

    .line 21
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzfgw;->zzh(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfgw;

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzfgw;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfgw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfhh;->zza(Lcom/google/android/gms/internal/ads/zzfgw;)Lcom/google/android/gms/internal/ads/zzfhh;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfhh;->zzh()V

    goto :goto_2

    .line 23
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfay;->zze:Lcom/google/android/gms/internal/ads/zzfbb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfbb;->zzg(Lcom/google/android/gms/internal/ads/zzfbb;)Lcom/google/android/gms/internal/ads/zzfhk;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfay;->zzc:Lcom/google/android/gms/internal/ads/zzfgw;

    .line 18
    invoke-interface {v4, v1}, Lcom/google/android/gms/internal/ads/zzfgw;->zza(Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/internal/ads/zzfgw;

    invoke-interface {v4, p1}, Lcom/google/android/gms/internal/ads/zzfgw;->zzh(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfgw;

    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/ads/zzfgw;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfgw;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzfgw;->zzm()Lcom/google/android/gms/internal/ads/zzfha;

    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfhk;->zzb(Lcom/google/android/gms/internal/ads/zzfha;)V

    .line 23
    :goto_2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfay;->zze:Lcom/google/android/gms/internal/ads/zzfbb;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdoa;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcqz;->zzo()Lcom/google/android/gms/internal/ads/zzczz;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfay;->zze:Lcom/google/android/gms/internal/ads/zzfbb;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfbb;->zzf(Lcom/google/android/gms/internal/ads/zzfbb;)Lcom/google/android/gms/internal/ads/zzfar;

    move-result-object v2

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzczz;->zzd(Lcom/google/android/gms/internal/ads/zzfar;)Lcom/google/android/gms/internal/ads/zzczz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfay;->zza:Lcom/google/android/gms/internal/ads/zzelc;

    .line 4
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzelc;->zzb(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfay;->zze:Lcom/google/android/gms/internal/ads/zzfbb;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfbb;->zzh(Lcom/google/android/gms/internal/ads/zzfbb;)Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfbb;->zzf(Lcom/google/android/gms/internal/ads/zzfbb;)Lcom/google/android/gms/internal/ads/zzfar;

    move-result-object v1

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfax;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zzfax;-><init>(Lcom/google/android/gms/internal/ads/zzfar;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfay;->zze:Lcom/google/android/gms/internal/ads/zzfbb;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfbb;->zzf(Lcom/google/android/gms/internal/ads/zzfbb;)Lcom/google/android/gms/internal/ads/zzfar;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfar;->onAdMetadataChanged()V

    .line 7
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbee;->zzc:Lcom/google/android/gms/internal/ads/zzbdv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbdv;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfay;->zzb:Lcom/google/android/gms/internal/ads/zzfhh;

    if-eqz v1, :cond_0

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcqz;->zzq()Lcom/google/android/gms/internal/ads/zzfca;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfca;->zzb:Lcom/google/android/gms/internal/ads/zzfbz;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzfhh;->zzg(Lcom/google/android/gms/internal/ads/zzfbz;)Lcom/google/android/gms/internal/ads/zzfhh;

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcqz;->zzm()Lcom/google/android/gms/internal/ads/zzcvm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcvm;->zzg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfhh;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfhh;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfay;->zzc:Lcom/google/android/gms/internal/ads/zzfgw;

    .line 15
    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/zzfgw;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfgw;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfhh;->zza(Lcom/google/android/gms/internal/ads/zzfgw;)Lcom/google/android/gms/internal/ads/zzfhh;

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfhh;->zzh()V

    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfay;->zze:Lcom/google/android/gms/internal/ads/zzfbb;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfbb;->zzg(Lcom/google/android/gms/internal/ads/zzfbb;)Lcom/google/android/gms/internal/ads/zzfhk;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfay;->zzc:Lcom/google/android/gms/internal/ads/zzfgw;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcqz;->zzq()Lcom/google/android/gms/internal/ads/zzfca;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzfca;->zzb:Lcom/google/android/gms/internal/ads/zzfbz;

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzfgw;->zzb(Lcom/google/android/gms/internal/ads/zzfbz;)Lcom/google/android/gms/internal/ads/zzfgw;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcqz;->zzm()Lcom/google/android/gms/internal/ads/zzcvm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcvm;->zzg()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/ads/zzfgw;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfgw;

    .line 10
    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzfgw;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfgw;

    .line 11
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzfgw;->zzm()Lcom/google/android/gms/internal/ads/zzfha;

    move-result-object p1

    .line 12
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfhk;->zzb(Lcom/google/android/gms/internal/ads/zzfha;)V

    .line 17
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
