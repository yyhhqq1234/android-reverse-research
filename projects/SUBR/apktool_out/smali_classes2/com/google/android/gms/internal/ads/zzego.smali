.class final Lcom/google/android/gms/internal/ads/zzego;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgcd;


# instance fields
.field final synthetic zza:J

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfbr;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfbo;

.field final synthetic zzd:Ljava/lang/String;

.field final synthetic zze:Lcom/google/android/gms/internal/ads/zzfiv;

.field final synthetic zzf:Lcom/google/android/gms/internal/ads/zzfca;

.field final synthetic zzg:Lcom/google/android/gms/internal/ads/zzegq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzegq;JLcom/google/android/gms/internal/ads/zzfbr;Lcom/google/android/gms/internal/ads/zzfbo;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfiv;Lcom/google/android/gms/internal/ads/zzfca;)V
    .locals 0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzego;->zza:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzego;->zzb:Lcom/google/android/gms/internal/ads/zzfbr;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzego;->zzc:Lcom/google/android/gms/internal/ads/zzfbo;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzego;->zzd:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzego;->zze:Lcom/google/android/gms/internal/ads/zzfiv;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzego;->zzf:Lcom/google/android/gms/internal/ads/zzfca;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzego;->zzg:Lcom/google/android/gms/internal/ads/zzegq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzego;->zzg:Lcom/google/android/gms/internal/ads/zzegq;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzegq;->zze(Lcom/google/android/gms/internal/ads/zzegq;)Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzego;->zza:J

    sub-long/2addr v2, v4

    .line 2
    instance-of v4, v0, Ljava/util/concurrent/TimeoutException;

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    :goto_0
    move-object v13, v6

    goto :goto_2

    .line 23
    :cond_0
    instance-of v4, v0, Lcom/google/android/gms/internal/ads/zzefy;

    if-eqz v4, :cond_1

    move-object v13, v6

    const/4 v4, 0x3

    goto :goto_2

    .line 3
    :cond_1
    instance-of v4, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v4, :cond_2

    const/4 v4, 0x4

    goto :goto_0

    :cond_2
    instance-of v4, v0, Lcom/google/android/gms/internal/ads/zzfcq;

    if-eqz v4, :cond_3

    const/4 v4, 0x5

    goto :goto_0

    :cond_3
    instance-of v4, v0, Lcom/google/android/gms/internal/ads/zzdvy;

    const/4 v7, 0x6

    if-eqz v4, :cond_6

    .line 4
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfdk;->zza(Ljava/lang/Throwable;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v4

    .line 5
    iget v4, v4, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    if-ne v4, v5, :cond_4

    const/4 v7, 0x1

    .line 6
    :cond_4
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbcl;->zzbK:Lcom/google/android/gms/internal/ads/zzbcc;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbe;->zzc()Lcom/google/android/gms/internal/ads/zzbcj;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/ads/zzbcj;->zza(Lcom/google/android/gms/internal/ads/zzbcc;)Ljava/lang/Object;

    move-result-object v4

    .line 6
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    instance-of v4, v0, Lcom/google/android/gms/internal/ads/zzeda;

    if-eqz v4, :cond_5

    .line 8
    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/ads/zzeda;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzeda;->zzb()Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v4

    if-eqz v4, :cond_5

    iget v4, v4, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    .line 9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v13, v4

    goto :goto_1

    :cond_5
    move-object v13, v6

    :goto_1
    move v4, v7

    goto :goto_2

    :cond_6
    move-object v13, v6

    const/4 v4, 0x6

    .line 2
    :goto_2
    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzego;->zzg:Lcom/google/android/gms/internal/ads/zzegq;

    monitor-enter v14

    :try_start_0
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzego;->zzg:Lcom/google/android/gms/internal/ads/zzegq;

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzegq;->zzn(Lcom/google/android/gms/internal/ads/zzegq;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzegq;->zzc(Lcom/google/android/gms/internal/ads/zzegq;)Lcom/google/android/gms/internal/ads/zzegs;

    move-result-object v7

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzego;->zzb:Lcom/google/android/gms/internal/ads/zzfbr;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzego;->zzc:Lcom/google/android/gms/internal/ads/zzfbo;

    instance-of v10, v0, Lcom/google/android/gms/internal/ads/zzeda;

    if-eqz v10, :cond_7

    .line 10
    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/internal/ads/zzeda;

    :cond_7
    move-object v10, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move v9, v4

    move-wide v11, v2

    .line 11
    invoke-virtual/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzegs;->zza(Lcom/google/android/gms/internal/ads/zzfbr;Lcom/google/android/gms/internal/ads/zzfbo;ILcom/google/android/gms/internal/ads/zzeda;J)V

    .line 12
    :cond_8
    sget-object v6, Lcom/google/android/gms/internal/ads/zzbcl;->zzij:Lcom/google/android/gms/internal/ads/zzbcc;

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbe;->zzc()Lcom/google/android/gms/internal/ads/zzbcj;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzbcj;->zza(Lcom/google/android/gms/internal/ads/zzbcc;)Ljava/lang/Object;

    move-result-object v6

    .line 12
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzego;->zzg:Lcom/google/android/gms/internal/ads/zzegq;

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzegq;->zzd(Lcom/google/android/gms/internal/ads/zzegq;)Lcom/google/android/gms/internal/ads/zzfja;

    move-result-object v6

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzego;->zze:Lcom/google/android/gms/internal/ads/zzfiv;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzego;->zzf:Lcom/google/android/gms/internal/ads/zzfca;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzego;->zzc:Lcom/google/android/gms/internal/ads/zzfbo;

    .line 14
    iget-object v10, v9, Lcom/google/android/gms/internal/ads/zzfbo;->zzn:Ljava/util/List;

    .line 15
    invoke-virtual {v7, v8, v9, v10}, Lcom/google/android/gms/internal/ads/zzfiv;->zzc(Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzfbo;Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzego;->zzc:Lcom/google/android/gms/internal/ads/zzfbo;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzfbo;->zzax:Lcom/google/android/gms/ads/internal/util/client/zzv;

    .line 14
    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzfja;->zze(Ljava/util/List;Lcom/google/android/gms/ads/internal/util/client/zzv;)V

    :cond_9
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzego;->zzg:Lcom/google/android/gms/internal/ads/zzegq;

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzegq;->zzo(Lcom/google/android/gms/internal/ads/zzegq;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 24
    monitor-exit v14

    return-void

    :cond_a
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzegq;->zzh(Lcom/google/android/gms/internal/ads/zzegq;)Ljava/util/LinkedHashMap;

    move-result-object v15

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzego;->zzc:Lcom/google/android/gms/internal/ads/zzfbo;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzegp;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzego;->zzd:Ljava/lang/String;

    .line 16
    iget-object v8, v12, Lcom/google/android/gms/internal/ads/zzfbo;->zzaf:Ljava/lang/String;

    move-object v6, v10

    move v9, v4

    move-object v4, v10

    move-wide v10, v2

    move-object v5, v12

    move-object v12, v13

    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzegp;-><init>(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Integer;)V

    invoke-virtual {v15, v5, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfdk;->zza(Ljava/lang/Throwable;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v0

    .line 18
    iget v4, v0, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_b

    if-nez v4, :cond_c

    :cond_b
    iget-object v4, v0, Lcom/google/android/gms/ads/internal/client/zze;->zzd:Lcom/google/android/gms/ads/internal/client/zze;

    if-eqz v4, :cond_c

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/client/zze;->zzc:Ljava/lang/String;

    const-string v5, "com.google.android.gms.ads"

    .line 19
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    new-instance v4, Lcom/google/android/gms/internal/ads/zzeda;

    .line 20
    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zze;->zzd:Lcom/google/android/gms/ads/internal/client/zze;

    const/16 v5, 0xd

    invoke-direct {v4, v5, v0}, Lcom/google/android/gms/internal/ads/zzeda;-><init>(ILcom/google/android/gms/ads/internal/client/zze;)V

    .line 21
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfdk;->zza(Ljava/lang/Throwable;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v0

    :cond_c
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzego;->zzg:Lcom/google/android/gms/internal/ads/zzegq;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzegq;->zzb(Lcom/google/android/gms/internal/ads/zzegq;)Lcom/google/android/gms/internal/ads/zzedb;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzego;->zzc:Lcom/google/android/gms/internal/ads/zzfbo;

    .line 22
    invoke-virtual {v4, v5, v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzedb;->zzf(Lcom/google/android/gms/internal/ads/zzfbo;JLcom/google/android/gms/ads/internal/client/zze;)V

    .line 23
    monitor-exit v14

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 12

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzego;->zzg:Lcom/google/android/gms/internal/ads/zzegq;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzegq;->zze(Lcom/google/android/gms/internal/ads/zzegq;)Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzego;->zza:J

    sub-long/2addr v0, v2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzego;->zzg:Lcom/google/android/gms/internal/ads/zzegq;

    monitor-enter p1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzego;->zzg:Lcom/google/android/gms/internal/ads/zzegq;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzegq;->zzn(Lcom/google/android/gms/internal/ads/zzegq;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzegq;->zzc(Lcom/google/android/gms/internal/ads/zzegq;)Lcom/google/android/gms/internal/ads/zzegs;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzego;->zzb:Lcom/google/android/gms/internal/ads/zzfbr;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzego;->zzc:Lcom/google/android/gms/internal/ads/zzfbo;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v9, v0

    .line 2
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzegs;->zza(Lcom/google/android/gms/internal/ads/zzfbr;Lcom/google/android/gms/internal/ads/zzfbo;ILcom/google/android/gms/internal/ads/zzeda;J)V

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzego;->zzg:Lcom/google/android/gms/internal/ads/zzegq;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzegq;->zzo(Lcom/google/android/gms/internal/ads/zzegq;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    monitor-exit p1

    return-void

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzego;->zzc:Lcom/google/android/gms/internal/ads/zzfbo;

    .line 3
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzegq;->zzp(Lcom/google/android/gms/internal/ads/zzegq;Lcom/google/android/gms/internal/ads/zzfbo;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzego;->zzg:Lcom/google/android/gms/internal/ads/zzegq;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzegq;->zzh(Lcom/google/android/gms/internal/ads/zzegq;)Ljava/util/LinkedHashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzego;->zzc:Lcom/google/android/gms/internal/ads/zzfbo;

    .line 4
    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzegp;

    iput-wide v0, v2, Lcom/google/android/gms/internal/ads/zzegp;->zzd:J

    goto :goto_0

    .line 7
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzego;->zzg:Lcom/google/android/gms/internal/ads/zzegq;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzegq;->zzh(Lcom/google/android/gms/internal/ads/zzegq;)Ljava/util/LinkedHashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzego;->zzc:Lcom/google/android/gms/internal/ads/zzfbo;

    new-instance v11, Lcom/google/android/gms/internal/ads/zzegp;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzego;->zzd:Ljava/lang/String;

    .line 5
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzfbo;->zzaf:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v4, v11

    move-wide v8, v0

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzegp;-><init>(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Integer;)V

    invoke-virtual {v2, v3, v11}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzego;->zzg:Lcom/google/android/gms/internal/ads/zzegq;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzegq;->zzb(Lcom/google/android/gms/internal/ads/zzegq;)Lcom/google/android/gms/internal/ads/zzedb;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzego;->zzc:Lcom/google/android/gms/internal/ads/zzfbo;

    const/4 v4, 0x0

    .line 6
    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/google/android/gms/internal/ads/zzedb;->zzg(Lcom/google/android/gms/internal/ads/zzfbo;JLcom/google/android/gms/ads/internal/client/zze;)V

    .line 7
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
