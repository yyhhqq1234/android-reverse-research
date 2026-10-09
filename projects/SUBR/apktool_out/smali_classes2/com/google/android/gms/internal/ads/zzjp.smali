.class final Lcom/google/android/gms/internal/ads/zzjp;
.super Lcom/google/android/gms/internal/ads/zzg;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzim;


# static fields
.field public static final synthetic zzd:I


# instance fields
.field private zzA:Z

.field private zzB:Lcom/google/android/gms/internal/ads/zzlp;

.field private zzC:Lcom/google/android/gms/internal/ads/zzil;

.field private zzD:Lcom/google/android/gms/internal/ads/zzbg;

.field private zzE:Lcom/google/android/gms/internal/ads/zzav;

.field private zzF:Ljava/lang/Object;

.field private zzG:Landroid/view/Surface;

.field private zzH:I

.field private zzI:Lcom/google/android/gms/internal/ads/zzdz;

.field private zzJ:I

.field private zzK:Lcom/google/android/gms/internal/ads/zze;

.field private zzL:F

.field private zzM:Z

.field private zzN:Z

.field private zzO:Z

.field private zzP:I

.field private zzQ:Lcom/google/android/gms/internal/ads/zzav;

.field private zzR:Lcom/google/android/gms/internal/ads/zzlb;

.field private zzS:I

.field private zzT:J

.field private final zzU:Lcom/google/android/gms/internal/ads/zzix;

.field private zzV:Lcom/google/android/gms/internal/ads/zzwb;

.field final zzb:Lcom/google/android/gms/internal/ads/zzyc;

.field final zzc:Lcom/google/android/gms/internal/ads/zzbg;

.field private final zze:Lcom/google/android/gms/internal/ads/zzda;

.field private final zzf:Landroid/content/Context;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzbk;

.field private final zzh:[Lcom/google/android/gms/internal/ads/zzlj;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzyb;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzdh;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzkc;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzdn;

.field private final zzm:Ljava/util/concurrent/CopyOnWriteArraySet;

.field private final zzn:Lcom/google/android/gms/internal/ads/zzbo;

.field private final zzo:Ljava/util/List;

.field private final zzp:Z

.field private final zzq:Lcom/google/android/gms/internal/ads/zzlt;

.field private final zzr:Landroid/os/Looper;

.field private final zzs:Lcom/google/android/gms/internal/ads/zzyj;

.field private final zzt:Lcom/google/android/gms/internal/ads/zzcx;

.field private final zzu:Lcom/google/android/gms/internal/ads/zzjl;

.field private final zzv:Lcom/google/android/gms/internal/ads/zzjm;

.field private final zzw:Lcom/google/android/gms/internal/ads/zzhq;

.field private final zzx:J

.field private zzy:I

.field private zzz:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "media3.exoplayer"

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzas;->zzb(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzik;Lcom/google/android/gms/internal/ads/zzbk;)V
    .locals 42

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "ExoPlayerImpl"

    const-string v4, "Init "

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzg;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/ads/zzda;

    sget-object v6, Lcom/google/android/gms/internal/ads/zzcx;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    invoke-direct {v5, v6}, Lcom/google/android/gms/internal/ads/zzda;-><init>(Lcom/google/android/gms/internal/ads/zzcx;)V

    iput-object v5, v1, Lcom/google/android/gms/internal/ads/zzjp;->zze:Lcom/google/android/gms/internal/ads/zzda;

    .line 2
    :try_start_0
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/internal/ads/zzei;->zze:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " [AndroidXMedia3/1.5.0-beta01] ["

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzdo;->zze(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzik;->zza:Landroid/content/Context;

    .line 4
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzjp;->zzf:Landroid/content/Context;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzik;->zzh:Lcom/google/android/gms/internal/ads/zzfuc;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzik;->zzb:Lcom/google/android/gms/internal/ads/zzcx;

    .line 5
    invoke-interface {v6, v7}, Lcom/google/android/gms/internal/ads/zzfuc;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzlt;

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzjp;->zzq:Lcom/google/android/gms/internal/ads/zzlt;

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzik;->zzj:I

    iput v7, v1, Lcom/google/android/gms/internal/ads/zzjp;->zzP:I

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzik;->zzk:Lcom/google/android/gms/internal/ads/zze;

    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzjp;->zzK:Lcom/google/android/gms/internal/ads/zze;

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzik;->zzl:I

    iput v7, v1, Lcom/google/android/gms/internal/ads/zzjp;->zzH:I

    const/4 v15, 0x0

    iput-boolean v15, v1, Lcom/google/android/gms/internal/ads/zzjp;->zzM:Z

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzik;->zzp:J

    iput-wide v7, v1, Lcom/google/android/gms/internal/ads/zzjp;->zzx:J

    .line 6
    new-instance v8, Lcom/google/android/gms/internal/ads/zzjl;

    const/4 v7, 0x0

    invoke-direct {v8, v1, v7}, Lcom/google/android/gms/internal/ads/zzjl;-><init>(Lcom/google/android/gms/internal/ads/zzjp;Lcom/google/android/gms/internal/ads/zzjo;)V

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzjp;->zzu:Lcom/google/android/gms/internal/ads/zzjl;

    new-instance v14, Lcom/google/android/gms/internal/ads/zzjm;

    invoke-direct {v14, v7}, Lcom/google/android/gms/internal/ads/zzjm;-><init>(Lcom/google/android/gms/internal/ads/zzjo;)V

    iput-object v14, v1, Lcom/google/android/gms/internal/ads/zzjp;->zzv:Lcom/google/android/gms/internal/ads/zzjm;

    new-instance v13, Landroid/os/Handler;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzik;->zzi:Landroid/os/Looper;

    .line 7
    invoke-direct {v13, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzik;->zzc:Lcom/google/android/gms/internal/ads/zzfvf;

    check-cast v9, Lcom/google/android/gms/internal/ads/zzid;

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzid;->zza:Lcom/google/android/gms/internal/ads/zzced;

    .line 8
    move-object v10, v9

    check-cast v10, Lcom/google/android/gms/internal/ads/zzced;

    move-object v10, v13

    move-object v11, v8

    move-object v12, v8

    move-object/from16 v28, v13

    move-object v13, v8

    move-object/from16 v29, v14

    move-object v14, v8

    .line 9
    invoke-virtual/range {v9 .. v14}, Lcom/google/android/gms/internal/ads/zzced;->zza(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzabc;Lcom/google/android/gms/internal/ads/zzpf;Lcom/google/android/gms/internal/ads/zzwm;Lcom/google/android/gms/internal/ads/zzte;)[Lcom/google/android/gms/internal/ads/zzlj;

    move-result-object v9

    iput-object v9, v1, Lcom/google/android/gms/internal/ads/zzjp;->zzh:[Lcom/google/android/gms/internal/ads/zzlj;

    .line 10
    array-length v10, v9

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzik;->zze:Lcom/google/android/gms/internal/ads/zzfvf;

    .line 11
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzfvf;->zza()Ljava/lang/Object;

    move-result-object v10

    move-object v14, v10

    check-cast v14, Lcom/google/android/gms/internal/ads/zzyb;

    iput-object v14, v1, Lcom/google/android/gms/internal/ads/zzjp;->zzi:Lcom/google/android/gms/internal/ads/zzyb;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzik;->zzd:Lcom/google/android/gms/internal/ads/zzfvf;

    check-cast v10, Lcom/google/android/gms/internal/ads/zzie;

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzie;->zza:Landroid/content/Context;

    .line 12
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzik;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzuf;

    move-result-object v10

    .line 13
    check-cast v10, Lcom/google/android/gms/internal/ads/zzuf;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzik;->zzg:Lcom/google/android/gms/internal/ads/zzfvf;

    check-cast v10, Lcom/google/android/gms/internal/ads/zzih;

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzih;->zza:Landroid/content/Context;

    .line 14
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzyn;->zzh(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzyn;

    move-result-object v10

    .line 15
    move-object v13, v10

    check-cast v13, Lcom/google/android/gms/internal/ads/zzyj;

    iput-object v13, v1, Lcom/google/android/gms/internal/ads/zzjp;->zzs:Lcom/google/android/gms/internal/ads/zzyj;

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzik;->zzm:Z

    iput-boolean v10, v1, Lcom/google/android/gms/internal/ads/zzjp;->zzp:Z

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzik;->zzn:Lcom/google/android/gms/internal/ads/zzlp;

    iput-object v10, v1, Lcom/google/android/gms/internal/ads/zzjp;->zzB:Lcom/google/android/gms/internal/ads/zzlp;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzik;->zzi:Landroid/os/Looper;

    iput-object v12, v1, Lcom/google/android/gms/internal/ads/zzjp;->zzr:Landroid/os/Looper;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzik;->zzb:Lcom/google/android/gms/internal/ads/zzcx;

    iput-object v11, v1, Lcom/google/android/gms/internal/ads/zzjp;->zzt:Lcom/google/android/gms/internal/ads/zzcx;

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzjp;->zzg:Lcom/google/android/gms/internal/ads/zzbk;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzdn;

    new-instance v7, Lcom/google/android/gms/internal/ads/zziw;

    invoke-direct {v7, v1}, Lcom/google/android/gms/internal/ads/zziw;-><init>(Lcom/google/android/gms/internal/ads/zzjp;)V

    .line 16
    invoke-direct {v10, v12, v11, v7}, Lcom/google/android/gms/internal/ads/zzdn;-><init>(Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzcx;Lcom/google/android/gms/internal/ads/zzdl;)V

    iput-object v10, v1, Lcom/google/android/gms/internal/ads/zzjp;->zzl:Lcom/google/android/gms/internal/ads/zzdn;

    .line 17
    new-instance v7, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v7}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzjp;->zzm:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v15, Ljava/util/ArrayList;

    .line 18
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iput-object v15, v1, Lcom/google/android/gms/internal/ads/zzjp;->zzo:Ljava/util/List;

    new-instance v15, Lcom/google/android/gms/internal/ads/zzwb;

    move-object/from16 v18, v7

    const/4 v7, 0x0

    .line 19
    invoke-direct {v15, v7}, Lcom/google/android/gms/internal/ads/zzwb;-><init>(I)V

    iput-object v15, v1, Lcom/google/android/gms/internal/ads/zzjp;->zzV:Lcom/google/android/gms/internal/ads/zzwb;

    sget-object v7, Lcom/google/android/gms/internal/ads/zzil;->zza:Lcom/google/android/gms/internal/ads/zzil;

    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzjp;->zzC:Lcom/google/android/gms/internal/ads/zzil;

    new-instance v15, Lcom/google/android/gms/internal/ads/zzyc;

    .line 20
    array-length v7, v9

    const/4 v7, 0x2

    move-object/from16 v19, v8

    new-array v8, v7, [Lcom/google/android/gms/internal/ads/zzln;

    move-object/from16 v20, v10

    new-array v10, v7, [Lcom/google/android/gms/internal/ads/zzxv;

    sget-object v7, Lcom/google/android/gms/internal/ads/zzby;->zza:Lcom/google/android/gms/internal/ads/zzby;

    move-object/from16 v30, v5

    const/4 v5, 0x0

    invoke-direct {v15, v8, v10, v7, v5}, Lcom/google/android/gms/internal/ads/zzyc;-><init>([Lcom/google/android/gms/internal/ads/zzln;[Lcom/google/android/gms/internal/ads/zzxv;Lcom/google/android/gms/internal/ads/zzby;Ljava/lang/Object;)V

    iput-object v15, v1, Lcom/google/android/gms/internal/ads/zzjp;->zzb:Lcom/google/android/gms/internal/ads/zzyc;

    .line 21
    new-instance v5, Lcom/google/android/gms/internal/ads/zzbo;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzbo;-><init>()V

    iput-object v5, v1, Lcom/google/android/gms/internal/ads/zzjp;->zzn:Lcom/google/android/gms/internal/ads/zzbo;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzbf;

    .line 22
    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzbf;-><init>()V

    const/16 v7, 0x14

    new-array v8, v7, [I

    const/4 v10, 0x1

    const/16 v17, 0x0

    aput v10, v8, v17

    const/16 v21, 0x2

    aput v21, v8, v10

    const/4 v10, 0x3

    aput v10, v8, v21

    const/16 v23, 0xd

    aput v23, v8, v10

    const/16 v24, 0xe

    const/4 v7, 0x4

    aput v24, v8, v7

    const/16 v26, 0xf

    const/4 v7, 0x5

    aput v26, v8, v7

    move-object/from16 v31, v13

    const/4 v13, 0x6

    const/16 v10, 0x10

    aput v10, v8, v13

    const/16 v32, 0x11

    const/4 v13, 0x7

    aput v32, v8, v13

    const/16 v33, 0x12

    const/16 v13, 0x8

    aput v33, v8, v13

    const/16 v34, 0x13

    const/16 v13, 0x9

    aput v34, v8, v13

    const/16 v35, 0x1f

    const/16 v13, 0xa

    aput v35, v8, v13

    const/16 v35, 0xb

    const/16 v25, 0x14

    aput v25, v8, v35

    const/16 v25, 0xc

    const/16 v35, 0x1e

    aput v35, v8, v25

    const/16 v25, 0x15

    aput v25, v8, v23

    const/16 v23, 0x23

    aput v23, v8, v24

    const/16 v23, 0x16

    aput v23, v8, v26

    const/16 v23, 0x18

    aput v23, v8, v10

    const/16 v23, 0x1b

    aput v23, v8, v32

    const/16 v23, 0x1c

    aput v23, v8, v33

    const/16 v23, 0x20

    aput v23, v8, v34

    .line 23
    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/ads/zzbf;->zzc([I)Lcom/google/android/gms/internal/ads/zzbf;

    .line 24
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzyb;->zzn()Z

    const/16 v8, 0x1d

    const/4 v10, 0x1

    .line 25
    invoke-virtual {v5, v8, v10}, Lcom/google/android/gms/internal/ads/zzbf;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbf;

    const/16 v8, 0x17

    const/4 v13, 0x0

    .line 26
    invoke-virtual {v5, v8, v13}, Lcom/google/android/gms/internal/ads/zzbf;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbf;

    const/16 v8, 0x19

    .line 27
    invoke-virtual {v5, v8, v13}, Lcom/google/android/gms/internal/ads/zzbf;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbf;

    const/16 v8, 0x21

    .line 28
    invoke-virtual {v5, v8, v13}, Lcom/google/android/gms/internal/ads/zzbf;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbf;

    const/16 v8, 0x1a

    .line 29
    invoke-virtual {v5, v8, v13}, Lcom/google/android/gms/internal/ads/zzbf;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbf;

    const/16 v8, 0x22

    .line 30
    invoke-virtual {v5, v8, v13}, Lcom/google/android/gms/internal/ads/zzbf;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbf;

    .line 31
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbf;->zze()Lcom/google/android/gms/internal/ads/zzbg;

    move-result-object v5

    iput-object v5, v1, Lcom/google/android/gms/internal/ads/zzjp;->zzc:Lcom/google/android/gms/internal/ads/zzbg;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzbf;

    .line 32
    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzbf;-><init>()V

    .line 33
    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/zzbf;->zzb(Lcom/google/android/gms/internal/ads/zzbg;)Lcom/google/android/gms/internal/ads/zzbf;

    const/4 v5, 0x4

    .line 34
    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/zzbf;->zza(I)Lcom/google/android/gms/internal/ads/zzbf;

    const/16 v5, 0xa

    .line 35
    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/zzbf;->zza(I)Lcom/google/android/gms/internal/ads/zzbf;

    .line 36
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzbf;->zze()Lcom/google/android/gms/internal/ads/zzbg;

    move-result-object v8

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzjp;->zzD:Lcom/google/android/gms/internal/ads/zzbg;

    const/4 v8, 0x0

    .line 37
    invoke-interface {v11, v12, v8}, Lcom/google/android/gms/internal/ads/zzcx;->zzd(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/gms/internal/ads/zzdh;

    move-result-object v8

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzjp;->zzj:Lcom/google/android/gms/internal/ads/zzdh;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzix;

    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/zzix;-><init>(Lcom/google/android/gms/internal/ads/zzjp;)V

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzjp;->zzU:Lcom/google/android/gms/internal/ads/zzix;

    .line 38
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzlb;->zzg(Lcom/google/android/gms/internal/ads/zzyc;)Lcom/google/android/gms/internal/ads/zzlb;

    move-result-object v5

    iput-object v5, v1, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    .line 39
    invoke-interface {v6, v2, v12}, Lcom/google/android/gms/internal/ads/zzlt;->zzS(Lcom/google/android/gms/internal/ads/zzbk;Landroid/os/Looper;)V

    sget v2, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    const/16 v5, 0x1f

    if-ge v2, v5, :cond_0

    .line 40
    new-instance v2, Lcom/google/android/gms/internal/ads/zzog;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzik;->zzs:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzog;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object/from16 v25, v2

    goto :goto_1

    .line 50
    :cond_0
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzik;->zzq:Z

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzik;->zzs:Ljava/lang/String;

    .line 41
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzoc;->zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzoc;

    move-result-object v7

    if-nez v7, :cond_1

    const-string v2, "MediaMetricsService unavailable."

    .line 42
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzdo;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v2, Lcom/google/android/gms/internal/ads/zzog;

    sget-object v3, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    invoke-direct {v2, v3, v5}, Lcom/google/android/gms/internal/ads/zzog;-><init>(Landroid/media/metrics/LogSessionId;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 44
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzjp;->zzy(Lcom/google/android/gms/internal/ads/zzlw;)V

    .line 45
    :cond_2
    new-instance v2, Lcom/google/android/gms/internal/ads/zzog;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzoc;->zza()Landroid/media/metrics/LogSessionId;

    move-result-object v3

    invoke-direct {v2, v3, v5}, Lcom/google/android/gms/internal/ads/zzog;-><init>(Landroid/media/metrics/LogSessionId;Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :goto_1
    new-instance v2, Lcom/google/android/gms/internal/ads/zzkc;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzik;->zzf:Lcom/google/android/gms/internal/ads/zzfvf;

    .line 47
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzfvf;->zza()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzkg;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzjp;->zzB:Lcom/google/android/gms/internal/ads/zzlp;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzik;->zzt:Lcom/google/android/gms/internal/ads/zzhv;

    move-object/from16 v17, v14

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzik;->zzo:J

    const/16 v26, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-wide/from16 v36, v13

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzjp;->zzC:Lcom/google/android/gms/internal/ads/zzil;

    move-object/from16 v13, v18

    move-object/from16 v18, v7

    move-object v7, v2

    move-object/from16 v27, v8

    move-object/from16 v38, v19

    move-object v8, v9

    move-object/from16 v9, v17

    move-object/from16 v39, v20

    move-object v10, v15

    move-object/from16 v23, v11

    move-object v11, v3

    move-object v3, v12

    move-object/from16 v12, v31

    move-object v0, v13

    move-object/from16 v15, v31

    move-wide/from16 v19, v36

    const/16 v16, 0x0

    move/from16 v13, v26

    move-object/from16 v31, v14

    move-object/from16 v40, v17

    move/from16 v14, v32

    move-object/from16 v41, v15

    move-object v15, v6

    move-object/from16 v16, v5

    move-object/from16 v17, v18

    move-wide/from16 v18, v19

    move/from16 v20, v33

    move/from16 v21, v34

    move-object/from16 v22, v3

    move-object/from16 v24, v27

    move-object/from16 v26, v35

    move-object/from16 v27, v31

    invoke-direct/range {v7 .. v27}, Lcom/google/android/gms/internal/ads/zzkc;-><init>([Lcom/google/android/gms/internal/ads/zzlj;Lcom/google/android/gms/internal/ads/zzyb;Lcom/google/android/gms/internal/ads/zzyc;Lcom/google/android/gms/internal/ads/zzkg;Lcom/google/android/gms/internal/ads/zzyj;IZLcom/google/android/gms/internal/ads/zzlt;Lcom/google/android/gms/internal/ads/zzlp;Lcom/google/android/gms/internal/ads/zzhv;JZZLandroid/os/Looper;Lcom/google/android/gms/internal/ads/zzcx;Lcom/google/android/gms/internal/ads/zzix;Lcom/google/android/gms/internal/ads/zzog;Lcom/google/android/gms/internal/ads/zzlc;Lcom/google/android/gms/internal/ads/zzil;)V

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzjp;->zzk:Lcom/google/android/gms/internal/ads/zzkc;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzjp;->zzL:F

    .line 48
    sget-object v2, Lcom/google/android/gms/internal/ads/zzav;->zza:Lcom/google/android/gms/internal/ads/zzav;

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzjp;->zzE:Lcom/google/android/gms/internal/ads/zzav;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzav;->zza:Lcom/google/android/gms/internal/ads/zzav;

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzjp;->zzQ:Lcom/google/android/gms/internal/ads/zzav;

    const/4 v2, -0x1

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzjp;->zzS:I

    const-string v5, "audio"

    .line 49
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    if-nez v4, :cond_3

    const/4 v4, -0x1

    goto :goto_2

    .line 50
    :cond_3
    invoke-virtual {v4}, Landroid/media/AudioManager;->generateAudioSessionId()I

    move-result v4

    .line 49
    :goto_2
    iput v4, v1, Lcom/google/android/gms/internal/ads/zzjp;->zzJ:I

    .line 51
    sget v4, Lcom/google/android/gms/internal/ads/zzcp;->zza:I

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzjp;->zzN:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    :try_start_1
    move-object v5, v6

    check-cast v5, Lcom/google/android/gms/internal/ads/zzbh;

    move-object/from16 v7, v39

    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/zzdn;->zzb(Ljava/lang/Object;)V

    new-instance v5, Landroid/os/Handler;

    .line 53
    invoke-direct {v5, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object/from16 v10, v41

    invoke-interface {v10, v5, v6}, Lcom/google/android/gms/internal/ads/zzyj;->zzf(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzyi;)V

    move-object/from16 v3, v38

    .line 54
    invoke-virtual {v0, v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhl;

    move-object/from16 v5, p1

    iget-object v6, v5, Lcom/google/android/gms/internal/ads/zzik;->zza:Landroid/content/Context;

    move-object/from16 v7, v28

    .line 55
    invoke-direct {v0, v6, v7, v3}, Lcom/google/android/gms/internal/ads/zzhl;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzhk;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhq;

    iget-object v6, v5, Lcom/google/android/gms/internal/ads/zzik;->zza:Landroid/content/Context;

    .line 56
    invoke-direct {v0, v6, v7, v3}, Lcom/google/android/gms/internal/ads/zzhq;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzhp;)V

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzjp;->zzw:Lcom/google/android/gms/internal/ads/zzhq;

    .line 57
    iget-object v0, v5, Lcom/google/android/gms/internal/ads/zzik;->zza:Landroid/content/Context;

    .line 58
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    iget-object v0, v5, Lcom/google/android/gms/internal/ads/zzik;->zza:Landroid/content/Context;

    .line 59
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzo;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzo;-><init>(I)V

    .line 60
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzo;->zza()Lcom/google/android/gms/internal/ads/zzq;

    .line 61
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcd;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    .line 62
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdz;->zza:Lcom/google/android/gms/internal/ads/zzdz;

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzjp;->zzI:Lcom/google/android/gms/internal/ads/zzdz;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzjp;->zzK:Lcom/google/android/gms/internal/ads/zze;

    move-object/from16 v10, v40

    .line 63
    invoke-virtual {v10, v0}, Lcom/google/android/gms/internal/ads/zzyb;->zzk(Lcom/google/android/gms/internal/ads/zze;)V

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzjp;->zzJ:I

    .line 64
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v5, 0xa

    invoke-direct {v1, v4, v5, v0}, Lcom/google/android/gms/internal/ads/zzjp;->zzaa(IILjava/lang/Object;)V

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzjp;->zzJ:I

    .line 65
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v6, 0x2

    invoke-direct {v1, v6, v5, v0}, Lcom/google/android/gms/internal/ads/zzjp;->zzaa(IILjava/lang/Object;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzjp;->zzK:Lcom/google/android/gms/internal/ads/zze;

    const/4 v5, 0x3

    .line 66
    invoke-direct {v1, v4, v5, v0}, Lcom/google/android/gms/internal/ads/zzjp;->zzaa(IILjava/lang/Object;)V

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzjp;->zzH:I

    .line 67
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v5, 0x4

    invoke-direct {v1, v6, v5, v0}, Lcom/google/android/gms/internal/ads/zzjp;->zzaa(IILjava/lang/Object;)V

    .line 68
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x5

    .line 69
    invoke-direct {v1, v6, v3, v0}, Lcom/google/android/gms/internal/ads/zzjp;->zzaa(IILjava/lang/Object;)V

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzjp;->zzM:Z

    .line 70
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v3, 0x9

    invoke-direct {v1, v4, v3, v0}, Lcom/google/android/gms/internal/ads/zzjp;->zzaa(IILjava/lang/Object;)V

    move-object/from16 v0, v29

    const/4 v3, 0x7

    .line 71
    invoke-direct {v1, v6, v3, v0}, Lcom/google/android/gms/internal/ads/zzjp;->zzaa(IILjava/lang/Object;)V

    const/16 v3, 0x8

    const/4 v4, 0x6

    .line 72
    invoke-direct {v1, v4, v3, v0}, Lcom/google/android/gms/internal/ads/zzjp;->zzaa(IILjava/lang/Object;)V

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzjp;->zzP:I

    .line 73
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0x10

    .line 74
    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzjp;->zzaa(IILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/gms/internal/ads/zzda;->zze()Z

    return-void

    :catchall_0
    move-exception v0

    .line 76
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzjp;->zze:Lcom/google/android/gms/internal/ads/zzda;

    .line 75
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzda;->zze()Z

    .line 77
    throw v0
.end method

.method static bridge synthetic zzC(I)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzS(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic zzD(Lcom/google/android/gms/internal/ads/zzjp;)Lcom/google/android/gms/internal/ads/zzdn;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzl:Lcom/google/android/gms/internal/ads/zzdn;

    return-object p0
.end method

.method static bridge synthetic zzF(Lcom/google/android/gms/internal/ads/zzjp;)Lcom/google/android/gms/internal/ads/zzlt;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzq:Lcom/google/android/gms/internal/ads/zzlt;

    return-object p0
.end method

.method static bridge synthetic zzG(Lcom/google/android/gms/internal/ads/zzjp;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzF:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic zzH(Lcom/google/android/gms/internal/ads/zzjp;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzM:Z

    return-void
.end method

.method static bridge synthetic zzI(Lcom/google/android/gms/internal/ads/zzjp;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzjp;->zzZ(II)V

    return-void
.end method

.method static bridge synthetic zzJ(Lcom/google/android/gms/internal/ads/zzjp;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzab()V

    return-void
.end method

.method static bridge synthetic zzK(Lcom/google/android/gms/internal/ads/zzjp;Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzjp;->zzac(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzG:Landroid/view/Surface;

    return-void
.end method

.method static bridge synthetic zzL(Lcom/google/android/gms/internal/ads/zzjp;Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzjp;->zzac(Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic zzM(Lcom/google/android/gms/internal/ads/zzjp;ZII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzjp;->zzae(ZII)V

    return-void
.end method

.method static bridge synthetic zzQ(Lcom/google/android/gms/internal/ads/zzjp;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzM:Z

    return p0
.end method

.method private final zzR(Lcom/google/android/gms/internal/ads/zzlb;)I
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzlb;->zza:Lcom/google/android/gms/internal/ads/zzbq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbq;->zzo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzS:I

    return p1

    .line 2
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzlb;->zza:Lcom/google/android/gms/internal/ads/zzbq;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzlb;->zzb:Lcom/google/android/gms/internal/ads/zzug;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzug;->zza:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzn:Lcom/google/android/gms/internal/ads/zzbo;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbq;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbo;)Lcom/google/android/gms/internal/ads/zzbo;

    move-result-object p1

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbo;->zzc:I

    return p1
.end method

.method private static zzS(I)I
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private final zzT(Lcom/google/android/gms/internal/ads/zzlb;)J
    .locals 7

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzlb;->zzb:Lcom/google/android/gms/internal/ads/zzug;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzug;->zzb()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzlb;->zza:Lcom/google/android/gms/internal/ads/zzbq;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzlb;->zzb:Lcom/google/android/gms/internal/ads/zzug;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzug;->zza:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzn:Lcom/google/android/gms/internal/ads/zzbo;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbq;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbo;)Lcom/google/android/gms/internal/ads/zzbo;

    .line 3
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzlb;->zzc:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v2

    if-nez v6, :cond_0

    .line 6
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzlb;->zza:Lcom/google/android/gms/internal/ads/zzbq;

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzjp;->zzR(Lcom/google/android/gms/internal/ads/zzlb;)I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzjp;->zza:Lcom/google/android/gms/internal/ads/zzbp;

    .line 8
    invoke-virtual {v0, p1, v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzbq;->zze(ILcom/google/android/gms/internal/ads/zzbp;J)Lcom/google/android/gms/internal/ads/zzbp;

    move-result-object p1

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzbp;->zzl:J

    .line 9
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzei;->zzv(J)J

    move-result-wide v0

    goto :goto_0

    .line 4
    :cond_0
    sget v0, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    .line 5
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzlb;->zzc:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzei;->zzv(J)J

    move-result-wide v0

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzei;->zzv(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    :goto_0
    return-wide v0

    .line 10
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzjp;->zzU(Lcom/google/android/gms/internal/ads/zzlb;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzei;->zzv(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private final zzU(Lcom/google/android/gms/internal/ads/zzlb;)J
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzlb;->zza:Lcom/google/android/gms/internal/ads/zzbq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbq;->zzo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzT:J

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzei;->zzs(J)J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzlb;->zzp:Z

    .line 4
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzlb;->zzs:J

    .line 5
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzlb;->zzb:Lcom/google/android/gms/internal/ads/zzug;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzug;->zzb()Z

    move-result v2

    if-eqz v2, :cond_1

    return-wide v0

    .line 6
    :cond_1
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzlb;->zza:Lcom/google/android/gms/internal/ads/zzbq;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzlb;->zzb:Lcom/google/android/gms/internal/ads/zzug;

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzjp;->zzW(Lcom/google/android/gms/internal/ads/zzbq;Lcom/google/android/gms/internal/ads/zzug;J)J

    return-wide v0
.end method

.method private static zzV(Lcom/google/android/gms/internal/ads/zzlb;)J
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbp;-><init>()V

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbo;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzbo;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzlb;->zza:Lcom/google/android/gms/internal/ads/zzbq;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzlb;->zzb:Lcom/google/android/gms/internal/ads/zzug;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzug;->zza:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzbq;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbo;)Lcom/google/android/gms/internal/ads/zzbo;

    .line 4
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzlb;->zzc:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 5
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzlb;->zza:Lcom/google/android/gms/internal/ads/zzbq;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzbo;->zzc:I

    const-wide/16 v2, 0x0

    .line 6
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzbq;->zze(ILcom/google/android/gms/internal/ads/zzbp;J)Lcom/google/android/gms/internal/ads/zzbp;

    move-result-object p0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbp;->zzl:J

    :cond_0
    return-wide v2
.end method

.method private final zzW(Lcom/google/android/gms/internal/ads/zzbq;Lcom/google/android/gms/internal/ads/zzug;J)J
    .locals 1

    .line 1
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzug;->zza:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzn:Lcom/google/android/gms/internal/ads/zzbo;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzbq;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbo;)Lcom/google/android/gms/internal/ads/zzbo;

    return-wide p3
.end method

.method private final zzX(Lcom/google/android/gms/internal/ads/zzbq;IJ)Landroid/util/Pair;
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbq;->zzo()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzS:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p3, p1

    if-nez v0, :cond_0

    move-wide p3, v1

    :cond_0
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzT:J

    const/4 p1, 0x0

    return-object p1

    :cond_1
    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbq;->zzc()I

    move-result v0

    if-lt p2, v0, :cond_3

    :cond_2
    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbq;->zzg(Z)I

    move-result p2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzjp;->zza:Lcom/google/android/gms/internal/ads/zzbp;

    .line 4
    invoke-virtual {p1, p2, p3, v1, v2}, Lcom/google/android/gms/internal/ads/zzbq;->zze(ILcom/google/android/gms/internal/ads/zzbp;J)Lcom/google/android/gms/internal/ads/zzbp;

    move-result-object p3

    iget-wide p3, p3, Lcom/google/android/gms/internal/ads/zzbp;->zzl:J

    .line 5
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzei;->zzv(J)J

    move-result-wide p3

    :cond_3
    move v3, p2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzjp;->zza:Lcom/google/android/gms/internal/ads/zzbp;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzn:Lcom/google/android/gms/internal/ads/zzbo;

    .line 6
    invoke-static {p3, p4}, Lcom/google/android/gms/internal/ads/zzei;->zzs(J)J

    move-result-wide v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzbq;->zzl(Lcom/google/android/gms/internal/ads/zzbp;Lcom/google/android/gms/internal/ads/zzbo;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private final zzY(Lcom/google/android/gms/internal/ads/zzlb;Lcom/google/android/gms/internal/ads/zzbq;Landroid/util/Pair;)Lcom/google/android/gms/internal/ads/zzlb;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 1
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzbq;->zzo()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzcw;->zzd(Z)V

    move-object/from16 v3, p1

    .line 2
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzlb;->zza:Lcom/google/android/gms/internal/ads/zzbq;

    .line 3
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzjp;->zzT(Lcom/google/android/gms/internal/ads/zzlb;)J

    move-result-wide v7

    .line 4
    invoke-virtual/range {p1 .. p2}, Lcom/google/android/gms/internal/ads/zzlb;->zzf(Lcom/google/android/gms/internal/ads/zzbq;)Lcom/google/android/gms/internal/ads/zzlb;

    move-result-object v9

    .line 5
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzbq;->zzo()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzlb;->zzh()Lcom/google/android/gms/internal/ads/zzug;

    move-result-object v1

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzjp;->zzT:J

    .line 6
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzei;->zzs(J)J

    move-result-wide v15

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzjp;->zzb:Lcom/google/android/gms/internal/ads/zzyc;

    const-wide/16 v17, 0x0

    .line 7
    sget-object v19, Lcom/google/android/gms/internal/ads/zzwj;->zza:Lcom/google/android/gms/internal/ads/zzwj;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfxn;->zzn()Lcom/google/android/gms/internal/ads/zzfxn;

    move-result-object v21

    move-object v10, v1

    move-wide v11, v15

    move-wide v13, v15

    move-object/from16 v20, v2

    .line 9
    invoke-virtual/range {v9 .. v21}, Lcom/google/android/gms/internal/ads/zzlb;->zzb(Lcom/google/android/gms/internal/ads/zzug;JJJJLcom/google/android/gms/internal/ads/zzwj;Lcom/google/android/gms/internal/ads/zzyc;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzlb;

    move-result-object v2

    .line 10
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzlb;->zza(Lcom/google/android/gms/internal/ads/zzug;)Lcom/google/android/gms/internal/ads/zzlb;

    move-result-object v1

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzlb;->zzs:J

    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/zzlb;->zzq:J

    return-object v1

    :cond_2
    iget-object v3, v9, Lcom/google/android/gms/internal/ads/zzlb;->zzb:Lcom/google/android/gms/internal/ads/zzug;

    .line 11
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzug;->zza:Ljava/lang/Object;

    .line 12
    sget v10, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    move-object v10, v2

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    xor-int/2addr v10, v5

    if-eqz v10, :cond_3

    new-instance v11, Lcom/google/android/gms/internal/ads/zzug;

    .line 13
    iget-object v12, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-wide/16 v13, -0x1

    .line 14
    invoke-direct {v11, v12, v13, v14}, Lcom/google/android/gms/internal/ads/zzug;-><init>(Ljava/lang/Object;J)V

    goto :goto_2

    .line 37
    :cond_3
    iget-object v11, v9, Lcom/google/android/gms/internal/ads/zzlb;->zzb:Lcom/google/android/gms/internal/ads/zzug;

    :goto_2
    move-object v15, v11

    .line 15
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzei;->zzs(J)J

    move-result-wide v7

    .line 16
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzbq;->zzo()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzjp;->zzn:Lcom/google/android/gms/internal/ads/zzbo;

    .line 17
    invoke-virtual {v6, v3, v2}, Lcom/google/android/gms/internal/ads/zzbq;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbo;)Lcom/google/android/gms/internal/ads/zzbo;

    :cond_4
    if-nez v10, :cond_a

    cmp-long v2, v13, v7

    if-gez v2, :cond_5

    goto/16 :goto_4

    :cond_5
    if-nez v2, :cond_8

    .line 22
    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzlb;->zzk:Lcom/google/android/gms/internal/ads/zzug;

    .line 23
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzug;->zza:Ljava/lang/Object;

    .line 24
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbq;->zza(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzjp;->zzn:Lcom/google/android/gms/internal/ads/zzbo;

    .line 25
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbq;->zzd(ILcom/google/android/gms/internal/ads/zzbo;Z)Lcom/google/android/gms/internal/ads/zzbo;

    move-result-object v2

    .line 26
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzbo;->zzc:I

    iget-object v3, v15, Lcom/google/android/gms/internal/ads/zzug;->zza:Ljava/lang/Object;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzjp;->zzn:Lcom/google/android/gms/internal/ads/zzbo;

    .line 27
    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzbq;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbo;)Lcom/google/android/gms/internal/ads/zzbo;

    move-result-object v3

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzbo;->zzc:I

    if-eq v2, v3, :cond_e

    .line 28
    :cond_6
    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzug;->zza:Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzjp;->zzn:Lcom/google/android/gms/internal/ads/zzbo;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbq;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbo;)Lcom/google/android/gms/internal/ads/zzbo;

    .line 29
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzug;->zzb()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzjp;->zzn:Lcom/google/android/gms/internal/ads/zzbo;

    .line 30
    iget v2, v15, Lcom/google/android/gms/internal/ads/zzug;->zzb:I

    iget v3, v15, Lcom/google/android/gms/internal/ads/zzug;->zzc:I

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbo;->zzf(II)J

    move-result-wide v1

    goto :goto_3

    .line 33
    :cond_7
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzjp;->zzn:Lcom/google/android/gms/internal/ads/zzbo;

    .line 31
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzbo;->zzd:J

    .line 30
    :goto_3
    iget-wide v11, v9, Lcom/google/android/gms/internal/ads/zzlb;->zzs:J

    iget-wide v13, v9, Lcom/google/android/gms/internal/ads/zzlb;->zzs:J

    iget-wide v3, v9, Lcom/google/android/gms/internal/ads/zzlb;->zzd:J

    iget-wide v5, v9, Lcom/google/android/gms/internal/ads/zzlb;->zzs:J

    sub-long v17, v1, v5

    iget-object v5, v9, Lcom/google/android/gms/internal/ads/zzlb;->zzh:Lcom/google/android/gms/internal/ads/zzwj;

    iget-object v6, v9, Lcom/google/android/gms/internal/ads/zzlb;->zzi:Lcom/google/android/gms/internal/ads/zzyc;

    iget-object v7, v9, Lcom/google/android/gms/internal/ads/zzlb;->zzj:Ljava/util/List;

    move-object v10, v15

    move-object v8, v15

    move-wide v15, v3

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    .line 32
    invoke-virtual/range {v9 .. v21}, Lcom/google/android/gms/internal/ads/zzlb;->zzb(Lcom/google/android/gms/internal/ads/zzug;JJJJLcom/google/android/gms/internal/ads/zzwj;Lcom/google/android/gms/internal/ads/zzyc;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzlb;

    move-result-object v3

    .line 33
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzlb;->zza(Lcom/google/android/gms/internal/ads/zzug;)Lcom/google/android/gms/internal/ads/zzlb;

    move-result-object v9

    iput-wide v1, v9, Lcom/google/android/gms/internal/ads/zzlb;->zzq:J

    goto/16 :goto_8

    :cond_8
    move-object v1, v15

    .line 34
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzug;->zzb()Z

    move-result v2

    xor-int/2addr v2, v5

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcw;->zzf(Z)V

    iget-wide v2, v9, Lcom/google/android/gms/internal/ads/zzlb;->zzr:J

    sub-long v4, v13, v7

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    .line 35
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v17

    iget-wide v2, v9, Lcom/google/android/gms/internal/ads/zzlb;->zzq:J

    iget-object v4, v9, Lcom/google/android/gms/internal/ads/zzlb;->zzk:Lcom/google/android/gms/internal/ads/zzug;

    iget-object v5, v9, Lcom/google/android/gms/internal/ads/zzlb;->zzb:Lcom/google/android/gms/internal/ads/zzug;

    .line 36
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzug;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    add-long v2, v13, v17

    :cond_9
    iget-object v4, v9, Lcom/google/android/gms/internal/ads/zzlb;->zzh:Lcom/google/android/gms/internal/ads/zzwj;

    iget-object v5, v9, Lcom/google/android/gms/internal/ads/zzlb;->zzi:Lcom/google/android/gms/internal/ads/zzyc;

    iget-object v6, v9, Lcom/google/android/gms/internal/ads/zzlb;->zzj:Ljava/util/List;

    move-object v10, v1

    move-wide v11, v13

    move-wide v7, v13

    move-wide v15, v7

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    .line 37
    invoke-virtual/range {v9 .. v21}, Lcom/google/android/gms/internal/ads/zzlb;->zzb(Lcom/google/android/gms/internal/ads/zzug;JJJJLcom/google/android/gms/internal/ads/zzwj;Lcom/google/android/gms/internal/ads/zzyc;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzlb;

    move-result-object v9

    iput-wide v2, v9, Lcom/google/android/gms/internal/ads/zzlb;->zzq:J

    goto :goto_8

    :cond_a
    :goto_4
    move-wide v7, v13

    move-object v1, v15

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzug;->zzb()Z

    move-result v2

    xor-int/2addr v2, v5

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcw;->zzf(Z)V

    if-eqz v10, :cond_b

    .line 19
    sget-object v2, Lcom/google/android/gms/internal/ads/zzwj;->zza:Lcom/google/android/gms/internal/ads/zzwj;

    goto :goto_5

    .line 22
    :cond_b
    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzlb;->zzh:Lcom/google/android/gms/internal/ads/zzwj;

    :goto_5
    move-object/from16 v19, v2

    if-eqz v10, :cond_c

    .line 19
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzjp;->zzb:Lcom/google/android/gms/internal/ads/zzyc;

    goto :goto_6

    .line 22
    :cond_c
    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzlb;->zzi:Lcom/google/android/gms/internal/ads/zzyc;

    :goto_6
    move-object/from16 v20, v2

    if-eqz v10, :cond_d

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfxn;->zzn()Lcom/google/android/gms/internal/ads/zzfxn;

    move-result-object v2

    goto :goto_7

    .line 22
    :cond_d
    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzlb;->zzj:Ljava/util/List;

    :goto_7
    move-object/from16 v21, v2

    const-wide/16 v17, 0x0

    move-object v10, v1

    move-wide v11, v7

    move-wide v13, v7

    move-wide v15, v7

    .line 21
    invoke-virtual/range {v9 .. v21}, Lcom/google/android/gms/internal/ads/zzlb;->zzb(Lcom/google/android/gms/internal/ads/zzug;JJJJLcom/google/android/gms/internal/ads/zzwj;Lcom/google/android/gms/internal/ads/zzyc;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzlb;

    move-result-object v2

    .line 22
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzlb;->zza(Lcom/google/android/gms/internal/ads/zzug;)Lcom/google/android/gms/internal/ads/zzlb;

    move-result-object v9

    iput-wide v7, v9, Lcom/google/android/gms/internal/ads/zzlb;->zzq:J

    :cond_e
    :goto_8
    return-object v9
.end method

.method private final zzZ(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzI:Lcom/google/android/gms/internal/ads/zzdz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdz;->zzb()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzI:Lcom/google/android/gms/internal/ads/zzdz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdz;->zza()I

    move-result v0

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdz;

    .line 2
    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdz;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzI:Lcom/google/android/gms/internal/ads/zzdz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzl:Lcom/google/android/gms/internal/ads/zzdn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzit;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzit;-><init>(II)V

    const/16 v2, 0x18

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzdn;->zzd(ILcom/google/android/gms/internal/ads/zzdk;)V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdn;->zzc()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdz;

    .line 5
    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdz;-><init>(II)V

    const/4 p1, 0x2

    const/16 p2, 0xe

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzjp;->zzaa(IILjava/lang/Object;)V

    return-void
.end method

.method private final zzaa(IILjava/lang/Object;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzh:[Lcom/google/android/gms/internal/ads/zzlj;

    array-length v1, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_3

    aget-object v6, v0, v2

    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    .line 2
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzlj;->zzb()I

    move-result v4

    if-ne v4, p1, :cond_2

    :cond_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    .line 3
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzjp;->zzR(Lcom/google/android/gms/internal/ads/zzlb;)I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzk:Lcom/google/android/gms/internal/ads/zzkc;

    new-instance v11, Lcom/google/android/gms/internal/ads/zzlf;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    .line 4
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzlb;->zza:Lcom/google/android/gms/internal/ads/zzbq;

    if-ne v4, v3, :cond_1

    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    move v8, v4

    :goto_1
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzt:Lcom/google/android/gms/internal/ads/zzcx;

    .line 5
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzkc;->zzc()Landroid/os/Looper;

    move-result-object v10

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzlf;-><init>(Lcom/google/android/gms/internal/ads/zzld;Lcom/google/android/gms/internal/ads/zzle;Lcom/google/android/gms/internal/ads/zzbq;ILcom/google/android/gms/internal/ads/zzcx;Landroid/os/Looper;)V

    .line 6
    invoke-virtual {v11, p2}, Lcom/google/android/gms/internal/ads/zzlf;->zzf(I)Lcom/google/android/gms/internal/ads/zzlf;

    invoke-virtual {v11, p3}, Lcom/google/android/gms/internal/ads/zzlf;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzlf;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzlf;->zzd()Lcom/google/android/gms/internal/ads/zzlf;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private final zzab()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzw:Lcom/google/android/gms/internal/ads/zzhq;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzL:F

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhq;->zza()F

    move-result v0

    mul-float v1, v1, v0

    .line 2
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzjp;->zzaa(IILjava/lang/Object;)V

    return-void
.end method

.method private final zzac(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzF:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzx:J

    goto :goto_0

    :cond_1
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzk:Lcom/google/android/gms/internal/ads/zzkc;

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzkc;->zzq(Ljava/lang/Object;J)Z

    move-result v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzF:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzG:Landroid/view/Surface;

    if-ne v1, v2, :cond_2

    .line 2
    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzG:Landroid/view/Surface;

    :cond_2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzF:Ljava/lang/Object;

    if-nez v0, :cond_3

    new-instance p1, Lcom/google/android/gms/internal/ads/zzkd;

    const/4 v0, 0x3

    .line 3
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzkd;-><init>(I)V

    const/16 v0, 0x3eb

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzib;->zzd(Ljava/lang/RuntimeException;I)Lcom/google/android/gms/internal/ads/zzib;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzjp;->zzad(Lcom/google/android/gms/internal/ads/zzib;)V

    :cond_3
    return-void
.end method

.method private final zzad(Lcom/google/android/gms/internal/ads/zzib;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzb:Lcom/google/android/gms/internal/ads/zzug;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzlb;->zza(Lcom/google/android/gms/internal/ads/zzug;)Lcom/google/android/gms/internal/ads/zzlb;

    move-result-object v0

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzs:J

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzq:J

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzr:J

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzlb;->zze(I)Lcom/google/android/gms/internal/ads/zzlb;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzlb;->zzd(Lcom/google/android/gms/internal/ads/zzib;)Lcom/google/android/gms/internal/ads/zzlb;

    move-result-object v0

    :cond_0
    move-object v3, v0

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzy:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzy:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzk:Lcom/google/android/gms/internal/ads/zzkc;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzkc;->zzo()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object v2, p0

    .line 6
    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/ads/zzjp;->zzaf(Lcom/google/android/gms/internal/ads/zzlb;IZIJIZ)V

    return-void
.end method

.method private final zzae(ZII)V
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p2, :cond_1

    const/4 v1, 0x1

    .line 1
    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    iget-boolean v2, p2, Lcom/google/android/gms/internal/ads/zzlb;->zzl:Z

    if-ne v2, p1, :cond_2

    iget v2, p2, Lcom/google/android/gms/internal/ads/zzlb;->zzn:I

    if-ne v2, v1, :cond_2

    iget v2, p2, Lcom/google/android/gms/internal/ads/zzlb;->zzm:I

    if-ne v2, p3, :cond_2

    return-void

    :cond_2
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzy:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzy:I

    .line 2
    iget-boolean v0, p2, Lcom/google/android/gms/internal/ads/zzlb;->zzp:Z

    .line 3
    invoke-virtual {p2, p1, p3, v1}, Lcom/google/android/gms/internal/ads/zzlb;->zzc(ZII)Lcom/google/android/gms/internal/ads/zzlb;

    move-result-object v3

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzk:Lcom/google/android/gms/internal/ads/zzkc;

    .line 4
    invoke-virtual {p2, p1, p3, v1}, Lcom/google/android/gms/internal/ads/zzkc;->zzn(ZII)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object v2, p0

    .line 5
    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/ads/zzjp;->zzaf(Lcom/google/android/gms/internal/ads/zzlb;IZIJIZ)V

    return-void
.end method

.method private final zzaf(Lcom/google/android/gms/internal/ads/zzlb;IZIJIZ)V
    .locals 43

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    .line 1
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzlb;->zza:Lcom/google/android/gms/internal/ads/zzbq;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzlb;->zza:Lcom/google/android/gms/internal/ads/zzbq;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzbq;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    .line 6
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    xor-int/2addr v4, v5

    .line 2
    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzlb;->zza:Lcom/google/android/gms/internal/ads/zzbq;

    .line 3
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzlb;->zza:Lcom/google/android/gms/internal/ads/zzbq;

    .line 4
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzbq;->zzo()Z

    move-result v9

    const/4 v11, 0x3

    const/4 v12, -0x1

    .line 21
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-wide/16 v14, 0x0

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    if-eqz v9, :cond_0

    .line 4
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzbq;->zzo()Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v6, Landroid/util/Pair;

    .line 21
    invoke-direct {v6, v12, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzbq;->zzo()Z

    move-result v9

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzbq;->zzo()Z

    move-result v10

    if-eq v9, v10, :cond_1

    new-instance v7, Landroid/util/Pair;

    .line 6
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v6, v7

    :goto_0
    move/from16 v7, p3

    goto/16 :goto_4

    .line 7
    :cond_1
    iget-object v9, v3, Lcom/google/android/gms/internal/ads/zzlb;->zzb:Lcom/google/android/gms/internal/ads/zzug;

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzug;->zza:Ljava/lang/Object;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzjp;->zzn:Lcom/google/android/gms/internal/ads/zzbo;

    .line 8
    invoke-virtual {v7, v9, v10}, Lcom/google/android/gms/internal/ads/zzbq;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbo;)Lcom/google/android/gms/internal/ads/zzbo;

    move-result-object v9

    iget v9, v9, Lcom/google/android/gms/internal/ads/zzbo;->zzc:I

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzjp;->zza:Lcom/google/android/gms/internal/ads/zzbp;

    .line 9
    invoke-virtual {v7, v9, v10, v14, v15}, Lcom/google/android/gms/internal/ads/zzbq;->zze(ILcom/google/android/gms/internal/ads/zzbp;J)Lcom/google/android/gms/internal/ads/zzbp;

    move-result-object v7

    .line 10
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzbp;->zzb:Ljava/lang/Object;

    .line 11
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzlb;->zzb:Lcom/google/android/gms/internal/ads/zzug;

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzug;->zza:Ljava/lang/Object;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzjp;->zzn:Lcom/google/android/gms/internal/ads/zzbo;

    .line 12
    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/internal/ads/zzbq;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbo;)Lcom/google/android/gms/internal/ads/zzbo;

    move-result-object v9

    iget v9, v9, Lcom/google/android/gms/internal/ads/zzbo;->zzc:I

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzjp;->zza:Lcom/google/android/gms/internal/ads/zzbp;

    .line 13
    invoke-virtual {v8, v9, v10, v14, v15}, Lcom/google/android/gms/internal/ads/zzbq;->zze(ILcom/google/android/gms/internal/ads/zzbp;J)Lcom/google/android/gms/internal/ads/zzbp;

    move-result-object v8

    .line 14
    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzbp;->zzb:Ljava/lang/Object;

    .line 15
    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    if-eqz p3, :cond_3

    if-nez v2, :cond_2

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x1

    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-eqz v7, :cond_4

    if-ne v2, v5, :cond_4

    move v7, v8

    const/4 v8, 0x2

    goto :goto_2

    :cond_4
    if-eqz v4, :cond_5

    const/4 v8, 0x3

    :goto_2
    new-instance v9, Landroid/util/Pair;

    .line 17
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v9, v6, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v6, v9

    goto :goto_4

    .line 19
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 16
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_6
    if-eqz p3, :cond_9

    if-nez v2, :cond_8

    .line 18
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzlb;->zzb:Lcom/google/android/gms/internal/ads/zzug;

    iget-wide v7, v2, Lcom/google/android/gms/internal/ads/zzug;->zzd:J

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzlb;->zzb:Lcom/google/android/gms/internal/ads/zzug;

    iget-wide v9, v2, Lcom/google/android/gms/internal/ads/zzug;->zzd:J

    cmp-long v2, v7, v9

    if-gez v2, :cond_7

    new-instance v2, Landroid/util/Pair;

    const/4 v7, 0x0

    .line 20
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v2, v6, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v6, v2

    const/4 v2, 0x0

    const/4 v7, 0x1

    goto :goto_4

    :cond_7
    const/4 v2, 0x1

    const/4 v6, 0x0

    goto :goto_3

    :cond_8
    move v6, v2

    const/4 v2, 0x1

    goto :goto_3

    :cond_9
    move v6, v2

    const/4 v2, 0x0

    :goto_3
    new-instance v7, Landroid/util/Pair;

    .line 19
    invoke-direct {v7, v12, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v42, v7

    move v7, v2

    move v2, v6

    move-object/from16 v6, v42

    .line 22
    :goto_4
    iget-object v8, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 23
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v8, :cond_b

    .line 24
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzlb;->zza:Lcom/google/android/gms/internal/ads/zzbq;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzbq;->zzo()Z

    move-result v10

    if-nez v10, :cond_a

    .line 25
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzlb;->zza:Lcom/google/android/gms/internal/ads/zzbq;

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzlb;->zzb:Lcom/google/android/gms/internal/ads/zzug;

    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzug;->zza:Ljava/lang/Object;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzjp;->zzn:Lcom/google/android/gms/internal/ads/zzbo;

    .line 26
    invoke-virtual {v10, v12, v13}, Lcom/google/android/gms/internal/ads/zzbq;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbo;)Lcom/google/android/gms/internal/ads/zzbo;

    move-result-object v10

    iget v10, v10, Lcom/google/android/gms/internal/ads/zzbo;->zzc:I

    .line 27
    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzlb;->zza:Lcom/google/android/gms/internal/ads/zzbq;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzjp;->zza:Lcom/google/android/gms/internal/ads/zzbp;

    .line 28
    invoke-virtual {v12, v10, v13, v14, v15}, Lcom/google/android/gms/internal/ads/zzbq;->zze(ILcom/google/android/gms/internal/ads/zzbp;J)Lcom/google/android/gms/internal/ads/zzbp;

    move-result-object v10

    .line 27
    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzbp;->zzd:Lcom/google/android/gms/internal/ads/zzar;

    goto :goto_5

    :cond_a
    const/4 v10, 0x0

    .line 29
    :goto_5
    sget-object v12, Lcom/google/android/gms/internal/ads/zzav;->zza:Lcom/google/android/gms/internal/ads/zzav;

    iput-object v12, v0, Lcom/google/android/gms/internal/ads/zzjp;->zzQ:Lcom/google/android/gms/internal/ads/zzav;

    goto :goto_6

    :cond_b
    const/4 v10, 0x0

    :goto_6
    if-nez v8, :cond_c

    .line 30
    iget-object v12, v3, Lcom/google/android/gms/internal/ads/zzlb;->zzj:Ljava/util/List;

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzlb;->zzj:Ljava/util/List;

    .line 31
    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_f

    :cond_c
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzjp;->zzQ:Lcom/google/android/gms/internal/ads/zzav;

    .line 32
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzav;->zza()Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v12

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzlb;->zzj:Ljava/util/List;

    const/4 v9, 0x0

    .line 33
    :goto_7
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_e

    .line 34
    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/ads/zzay;

    const/4 v5, 0x0

    .line 35
    :goto_8
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzay;->zza()I

    move-result v14

    if-ge v5, v14, :cond_d

    .line 36
    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/ads/zzay;->zzb(I)Lcom/google/android/gms/internal/ads/zzax;

    move-result-object v14

    .line 37
    invoke-interface {v14, v12}, Lcom/google/android/gms/internal/ads/zzax;->zza(Lcom/google/android/gms/internal/ads/zzat;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_d
    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x1

    const-wide/16 v14, 0x0

    goto :goto_7

    .line 38
    :cond_e
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzat;->zzu()Lcom/google/android/gms/internal/ads/zzav;

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzjp;->zzQ:Lcom/google/android/gms/internal/ads/zzav;

    .line 39
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzn()Lcom/google/android/gms/internal/ads/zzbq;

    move-result-object v5

    .line 40
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbq;->zzo()Z

    move-result v9

    if-eqz v9, :cond_10

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzjp;->zzQ:Lcom/google/android/gms/internal/ads/zzav;

    goto :goto_9

    .line 41
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzd()I

    move-result v9

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzjp;->zza:Lcom/google/android/gms/internal/ads/zzbp;

    const-wide/16 v12, 0x0

    .line 42
    invoke-virtual {v5, v9, v11, v12, v13}, Lcom/google/android/gms/internal/ads/zzbq;->zze(ILcom/google/android/gms/internal/ads/zzbp;J)Lcom/google/android/gms/internal/ads/zzbp;

    move-result-object v5

    .line 41
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzbp;->zzd:Lcom/google/android/gms/internal/ads/zzar;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzjp;->zzQ:Lcom/google/android/gms/internal/ads/zzav;

    .line 43
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzav;->zza()Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v9

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzar;->zzd:Lcom/google/android/gms/internal/ads/zzav;

    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Lcom/google/android/gms/internal/ads/zzav;)Lcom/google/android/gms/internal/ads/zzat;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzat;->zzu()Lcom/google/android/gms/internal/ads/zzav;

    move-result-object v5

    .line 40
    :goto_9
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzjp;->zzE:Lcom/google/android/gms/internal/ads/zzav;

    .line 44
    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/ads/zzav;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v11, 0x1

    xor-int/2addr v9, v11

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzjp;->zzE:Lcom/google/android/gms/internal/ads/zzav;

    .line 45
    iget-boolean v5, v3, Lcom/google/android/gms/internal/ads/zzlb;->zzl:Z

    iget-boolean v11, v1, Lcom/google/android/gms/internal/ads/zzlb;->zzl:Z

    if-eq v5, v11, :cond_11

    const/4 v5, 0x1

    goto :goto_a

    :cond_11
    const/4 v5, 0x0

    .line 46
    :goto_a
    iget v11, v3, Lcom/google/android/gms/internal/ads/zzlb;->zze:I

    iget v12, v1, Lcom/google/android/gms/internal/ads/zzlb;->zze:I

    if-eq v11, v12, :cond_12

    const/4 v11, 0x1

    goto :goto_b

    :cond_12
    const/4 v11, 0x0

    :goto_b
    if-nez v11, :cond_13

    if-eqz v5, :cond_14

    .line 47
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzag()V

    .line 48
    :cond_14
    iget-boolean v12, v3, Lcom/google/android/gms/internal/ads/zzlb;->zzg:Z

    iget-boolean v13, v1, Lcom/google/android/gms/internal/ads/zzlb;->zzg:Z

    if-eq v12, v13, :cond_15

    const/4 v12, 0x1

    goto :goto_c

    :cond_15
    const/4 v12, 0x0

    :goto_c
    if-eqz v4, :cond_16

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzjp;->zzl:Lcom/google/android/gms/internal/ads/zzdn;

    new-instance v13, Lcom/google/android/gms/internal/ads/zzin;

    move/from16 v14, p2

    invoke-direct {v13, v1, v14}, Lcom/google/android/gms/internal/ads/zzin;-><init>(Lcom/google/android/gms/internal/ads/zzlb;I)V

    const/4 v14, 0x0

    .line 49
    invoke-virtual {v4, v14, v13}, Lcom/google/android/gms/internal/ads/zzdn;->zzd(ILcom/google/android/gms/internal/ads/zzdk;)V

    :cond_16
    if-eqz v7, :cond_1e

    .line 50
    new-instance v7, Lcom/google/android/gms/internal/ads/zzbo;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzbo;-><init>()V

    .line 51
    iget-object v13, v3, Lcom/google/android/gms/internal/ads/zzlb;->zza:Lcom/google/android/gms/internal/ads/zzbq;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzbq;->zzo()Z

    move-result v13

    if-nez v13, :cond_17

    .line 52
    iget-object v13, v3, Lcom/google/android/gms/internal/ads/zzlb;->zzb:Lcom/google/android/gms/internal/ads/zzug;

    iget-object v13, v13, Lcom/google/android/gms/internal/ads/zzug;->zza:Ljava/lang/Object;

    .line 53
    iget-object v14, v3, Lcom/google/android/gms/internal/ads/zzlb;->zza:Lcom/google/android/gms/internal/ads/zzbq;

    invoke-virtual {v14, v13, v7}, Lcom/google/android/gms/internal/ads/zzbq;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbo;)Lcom/google/android/gms/internal/ads/zzbo;

    iget v14, v7, Lcom/google/android/gms/internal/ads/zzbo;->zzc:I

    .line 54
    iget-object v15, v3, Lcom/google/android/gms/internal/ads/zzlb;->zza:Lcom/google/android/gms/internal/ads/zzbq;

    invoke-virtual {v15, v13}, Lcom/google/android/gms/internal/ads/zzbq;->zza(Ljava/lang/Object;)I

    move-result v15

    .line 55
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzlb;->zza:Lcom/google/android/gms/internal/ads/zzbq;

    move-object/from16 p4, v13

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzjp;->zza:Lcom/google/android/gms/internal/ads/zzbp;

    move/from16 v18, v11

    move/from16 v19, v12

    const-wide/16 v11, 0x0

    .line 56
    invoke-virtual {v4, v14, v13, v11, v12}, Lcom/google/android/gms/internal/ads/zzbq;->zze(ILcom/google/android/gms/internal/ads/zzbp;J)Lcom/google/android/gms/internal/ads/zzbp;

    move-result-object v4

    .line 55
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzbp;->zzb:Ljava/lang/Object;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzjp;->zza:Lcom/google/android/gms/internal/ads/zzbp;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzbp;->zzd:Lcom/google/android/gms/internal/ads/zzar;

    move-object/from16 v24, p4

    move-object/from16 v21, v4

    move-object/from16 v23, v11

    move/from16 v22, v14

    move/from16 v25, v15

    goto :goto_d

    :cond_17
    move/from16 v18, v11

    move/from16 v19, v12

    move/from16 v22, p7

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, -0x1

    :goto_d
    if-nez v2, :cond_1a

    .line 57
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzlb;->zzb:Lcom/google/android/gms/internal/ads/zzug;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzug;->zzb()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 58
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzlb;->zzb:Lcom/google/android/gms/internal/ads/zzug;

    iget v11, v4, Lcom/google/android/gms/internal/ads/zzug;->zzb:I

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzug;->zzc:I

    .line 59
    invoke-virtual {v7, v11, v4}, Lcom/google/android/gms/internal/ads/zzbo;->zzf(II)J

    move-result-wide v11

    .line 60
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzjp;->zzV(Lcom/google/android/gms/internal/ads/zzlb;)J

    move-result-wide v13

    goto :goto_f

    .line 61
    :cond_18
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzlb;->zzb:Lcom/google/android/gms/internal/ads/zzug;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzug;->zze:I

    const/4 v11, -0x1

    if-eq v4, v11, :cond_19

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    .line 62
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzjp;->zzV(Lcom/google/android/gms/internal/ads/zzlb;)J

    move-result-wide v11

    goto :goto_e

    :cond_19
    iget-wide v11, v7, Lcom/google/android/gms/internal/ads/zzbo;->zzd:J

    goto :goto_e

    .line 63
    :cond_1a
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzlb;->zzb:Lcom/google/android/gms/internal/ads/zzug;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzug;->zzb()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 64
    iget-wide v11, v3, Lcom/google/android/gms/internal/ads/zzlb;->zzs:J

    .line 65
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzjp;->zzV(Lcom/google/android/gms/internal/ads/zzlb;)J

    move-result-wide v13

    goto :goto_f

    .line 66
    :cond_1b
    iget-wide v11, v3, Lcom/google/android/gms/internal/ads/zzlb;->zzs:J

    :goto_e
    move-wide v13, v11

    .line 67
    :goto_f
    new-instance v4, Lcom/google/android/gms/internal/ads/zzbi;

    .line 68
    sget v7, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    .line 69
    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzlb;->zzb:Lcom/google/android/gms/internal/ads/zzug;

    iget v15, v7, Lcom/google/android/gms/internal/ads/zzug;->zzb:I

    iget v7, v7, Lcom/google/android/gms/internal/ads/zzug;->zzc:I

    invoke-static {v11, v12}, Lcom/google/android/gms/internal/ads/zzei;->zzv(J)J

    move-result-wide v26

    invoke-static {v13, v14}, Lcom/google/android/gms/internal/ads/zzei;->zzv(J)J

    move-result-wide v28

    move-object/from16 v20, v4

    move/from16 v30, v15

    move/from16 v31, v7

    invoke-direct/range {v20 .. v31}, Lcom/google/android/gms/internal/ads/zzbi;-><init>(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzar;Ljava/lang/Object;IJJII)V

    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzd()I

    move-result v7

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    .line 71
    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzlb;->zza:Lcom/google/android/gms/internal/ads/zzbq;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzbq;->zzo()Z

    move-result v11

    if-nez v11, :cond_1c

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    .line 72
    iget-object v12, v11, Lcom/google/android/gms/internal/ads/zzlb;->zzb:Lcom/google/android/gms/internal/ads/zzug;

    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzug;->zza:Ljava/lang/Object;

    .line 73
    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzlb;->zza:Lcom/google/android/gms/internal/ads/zzbq;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzjp;->zzn:Lcom/google/android/gms/internal/ads/zzbo;

    invoke-virtual {v11, v12, v13}, Lcom/google/android/gms/internal/ads/zzbq;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbo;)Lcom/google/android/gms/internal/ads/zzbo;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    .line 74
    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzlb;->zza:Lcom/google/android/gms/internal/ads/zzbq;

    invoke-virtual {v11, v12}, Lcom/google/android/gms/internal/ads/zzbq;->zza(Ljava/lang/Object;)I

    move-result v11

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    .line 75
    iget-object v13, v13, Lcom/google/android/gms/internal/ads/zzlb;->zza:Lcom/google/android/gms/internal/ads/zzbq;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzjp;->zza:Lcom/google/android/gms/internal/ads/zzbp;

    move/from16 p3, v11

    move-object v15, v12

    const-wide/16 v11, 0x0

    .line 76
    invoke-virtual {v13, v7, v14, v11, v12}, Lcom/google/android/gms/internal/ads/zzbq;->zze(ILcom/google/android/gms/internal/ads/zzbp;J)Lcom/google/android/gms/internal/ads/zzbp;

    move-result-object v13

    .line 75
    iget-object v11, v13, Lcom/google/android/gms/internal/ads/zzbp;->zzb:Ljava/lang/Object;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzjp;->zza:Lcom/google/android/gms/internal/ads/zzbp;

    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzbp;->zzd:Lcom/google/android/gms/internal/ads/zzar;

    move/from16 v35, p3

    move-object/from16 v31, v11

    move-object/from16 v33, v12

    move-object/from16 v34, v15

    goto :goto_10

    :cond_1c
    const/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, -0x1

    :goto_10
    invoke-static/range {p5 .. p6}, Lcom/google/android/gms/internal/ads/zzei;->zzv(J)J

    move-result-wide v36

    new-instance v11, Lcom/google/android/gms/internal/ads/zzbi;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    .line 77
    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzlb;->zzb:Lcom/google/android/gms/internal/ads/zzug;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzug;->zzb()Z

    move-result v12

    if-eqz v12, :cond_1d

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    .line 78
    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzjp;->zzV(Lcom/google/android/gms/internal/ads/zzlb;)J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/ads/zzei;->zzv(J)J

    move-result-wide v12

    move-wide/from16 v38, v12

    goto :goto_11

    :cond_1d
    move-wide/from16 v38, v36

    :goto_11
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    .line 79
    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzlb;->zzb:Lcom/google/android/gms/internal/ads/zzug;

    iget v13, v12, Lcom/google/android/gms/internal/ads/zzug;->zzb:I

    iget v12, v12, Lcom/google/android/gms/internal/ads/zzug;->zzc:I

    move-object/from16 v30, v11

    move/from16 v32, v7

    move/from16 v40, v13

    move/from16 v41, v12

    invoke-direct/range {v30 .. v41}, Lcom/google/android/gms/internal/ads/zzbi;-><init>(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzar;Ljava/lang/Object;IJJII)V

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzjp;->zzl:Lcom/google/android/gms/internal/ads/zzdn;

    new-instance v12, Lcom/google/android/gms/internal/ads/zzjd;

    invoke-direct {v12, v2, v4, v11}, Lcom/google/android/gms/internal/ads/zzjd;-><init>(ILcom/google/android/gms/internal/ads/zzbi;Lcom/google/android/gms/internal/ads/zzbi;)V

    const/16 v2, 0xb

    .line 80
    invoke-virtual {v7, v2, v12}, Lcom/google/android/gms/internal/ads/zzdn;->zzd(ILcom/google/android/gms/internal/ads/zzdk;)V

    goto :goto_12

    :cond_1e
    move/from16 v18, v11

    move/from16 v19, v12

    :goto_12
    if-eqz v8, :cond_1f

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzjp;->zzl:Lcom/google/android/gms/internal/ads/zzdn;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzje;

    invoke-direct {v4, v10, v6}, Lcom/google/android/gms/internal/ads/zzje;-><init>(Lcom/google/android/gms/internal/ads/zzar;I)V

    const/4 v6, 0x1

    .line 81
    invoke-virtual {v2, v6, v4}, Lcom/google/android/gms/internal/ads/zzdn;->zzd(ILcom/google/android/gms/internal/ads/zzdk;)V

    goto :goto_13

    :cond_1f
    const/4 v6, 0x1

    .line 82
    :goto_13
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzlb;->zzf:Lcom/google/android/gms/internal/ads/zzib;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzlb;->zzf:Lcom/google/android/gms/internal/ads/zzib;

    const/16 v7, 0xa

    if-eq v2, v4, :cond_20

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzjp;->zzl:Lcom/google/android/gms/internal/ads/zzdn;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzjf;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzjf;-><init>(Lcom/google/android/gms/internal/ads/zzlb;)V

    .line 83
    invoke-virtual {v2, v7, v4}, Lcom/google/android/gms/internal/ads/zzdn;->zzd(ILcom/google/android/gms/internal/ads/zzdk;)V

    .line 84
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzlb;->zzf:Lcom/google/android/gms/internal/ads/zzib;

    if-eqz v2, :cond_20

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzjp;->zzl:Lcom/google/android/gms/internal/ads/zzdn;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzjg;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzjg;-><init>(Lcom/google/android/gms/internal/ads/zzlb;)V

    .line 85
    invoke-virtual {v2, v7, v4}, Lcom/google/android/gms/internal/ads/zzdn;->zzd(ILcom/google/android/gms/internal/ads/zzdk;)V

    .line 86
    :cond_20
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzlb;->zzi:Lcom/google/android/gms/internal/ads/zzyc;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzlb;->zzi:Lcom/google/android/gms/internal/ads/zzyc;

    if-eq v2, v4, :cond_21

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzjp;->zzi:Lcom/google/android/gms/internal/ads/zzyb;

    .line 87
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzyc;->zze:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzyb;->zzp(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzjp;->zzl:Lcom/google/android/gms/internal/ads/zzdn;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzjh;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzjh;-><init>(Lcom/google/android/gms/internal/ads/zzlb;)V

    const/4 v8, 0x2

    .line 88
    invoke-virtual {v2, v8, v4}, Lcom/google/android/gms/internal/ads/zzdn;->zzd(ILcom/google/android/gms/internal/ads/zzdk;)V

    :cond_21
    if-eqz v9, :cond_22

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzjp;->zzE:Lcom/google/android/gms/internal/ads/zzav;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzjp;->zzl:Lcom/google/android/gms/internal/ads/zzdn;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzio;

    invoke-direct {v8, v2}, Lcom/google/android/gms/internal/ads/zzio;-><init>(Lcom/google/android/gms/internal/ads/zzav;)V

    const/16 v2, 0xe

    .line 89
    invoke-virtual {v4, v2, v8}, Lcom/google/android/gms/internal/ads/zzdn;->zzd(ILcom/google/android/gms/internal/ads/zzdk;)V

    :cond_22
    if-eqz v19, :cond_23

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzjp;->zzl:Lcom/google/android/gms/internal/ads/zzdn;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzip;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzip;-><init>(Lcom/google/android/gms/internal/ads/zzlb;)V

    const/4 v8, 0x3

    .line 90
    invoke-virtual {v2, v8, v4}, Lcom/google/android/gms/internal/ads/zzdn;->zzd(ILcom/google/android/gms/internal/ads/zzdk;)V

    :cond_23
    if-nez v18, :cond_24

    if-eqz v5, :cond_25

    :cond_24
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzjp;->zzl:Lcom/google/android/gms/internal/ads/zzdn;

    new-instance v4, Lcom/google/android/gms/internal/ads/zziq;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zziq;-><init>(Lcom/google/android/gms/internal/ads/zzlb;)V

    const/4 v8, -0x1

    .line 91
    invoke-virtual {v2, v8, v4}, Lcom/google/android/gms/internal/ads/zzdn;->zzd(ILcom/google/android/gms/internal/ads/zzdk;)V

    :cond_25
    const/4 v2, 0x4

    if-eqz v18, :cond_26

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzjp;->zzl:Lcom/google/android/gms/internal/ads/zzdn;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzir;

    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/zzir;-><init>(Lcom/google/android/gms/internal/ads/zzlb;)V

    .line 92
    invoke-virtual {v4, v2, v8}, Lcom/google/android/gms/internal/ads/zzdn;->zzd(ILcom/google/android/gms/internal/ads/zzdk;)V

    :cond_26
    const/4 v4, 0x5

    if-nez v5, :cond_27

    .line 93
    iget v5, v3, Lcom/google/android/gms/internal/ads/zzlb;->zzm:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzlb;->zzm:I

    if-eq v5, v8, :cond_28

    :cond_27
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzjp;->zzl:Lcom/google/android/gms/internal/ads/zzdn;

    new-instance v8, Lcom/google/android/gms/internal/ads/zziv;

    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/zziv;-><init>(Lcom/google/android/gms/internal/ads/zzlb;)V

    .line 94
    invoke-virtual {v5, v4, v8}, Lcom/google/android/gms/internal/ads/zzdn;->zzd(ILcom/google/android/gms/internal/ads/zzdk;)V

    .line 95
    :cond_28
    iget v5, v3, Lcom/google/android/gms/internal/ads/zzlb;->zzn:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzlb;->zzn:I

    const/4 v9, 0x6

    if-eq v5, v8, :cond_29

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzjp;->zzl:Lcom/google/android/gms/internal/ads/zzdn;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzja;

    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/zzja;-><init>(Lcom/google/android/gms/internal/ads/zzlb;)V

    .line 96
    invoke-virtual {v5, v9, v8}, Lcom/google/android/gms/internal/ads/zzdn;->zzd(ILcom/google/android/gms/internal/ads/zzdk;)V

    .line 97
    :cond_29
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzlb;->zzi()Z

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzlb;->zzi()Z

    move-result v8

    const/4 v10, 0x7

    if-eq v5, v8, :cond_2a

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzjp;->zzl:Lcom/google/android/gms/internal/ads/zzdn;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzjb;

    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/zzjb;-><init>(Lcom/google/android/gms/internal/ads/zzlb;)V

    .line 98
    invoke-virtual {v5, v10, v8}, Lcom/google/android/gms/internal/ads/zzdn;->zzd(ILcom/google/android/gms/internal/ads/zzdk;)V

    .line 99
    :cond_2a
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzlb;->zzo:Lcom/google/android/gms/internal/ads/zzbe;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzlb;->zzo:Lcom/google/android/gms/internal/ads/zzbe;

    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/ads/zzbe;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/16 v8, 0xc

    if-nez v5, :cond_2b

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzjp;->zzl:Lcom/google/android/gms/internal/ads/zzdn;

    new-instance v11, Lcom/google/android/gms/internal/ads/zzjc;

    invoke-direct {v11, v1}, Lcom/google/android/gms/internal/ads/zzjc;-><init>(Lcom/google/android/gms/internal/ads/zzlb;)V

    .line 100
    invoke-virtual {v5, v8, v11}, Lcom/google/android/gms/internal/ads/zzdn;->zzd(ILcom/google/android/gms/internal/ads/zzdk;)V

    :cond_2b
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzjp;->zzD:Lcom/google/android/gms/internal/ads/zzbg;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzjp;->zzg:Lcom/google/android/gms/internal/ads/zzbk;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzjp;->zzc:Lcom/google/android/gms/internal/ads/zzbg;

    .line 101
    sget v13, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    .line 102
    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzbk;->zzw()Z

    move-result v13

    move-object v14, v11

    check-cast v14, Lcom/google/android/gms/internal/ads/zzg;

    .line 103
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzg;->zzn()Lcom/google/android/gms/internal/ads/zzbq;

    move-result-object v15

    .line 104
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzbq;->zzo()Z

    move-result v17

    if-nez v17, :cond_2c

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzg;->zzd()I

    move-result v6

    iget-object v8, v14, Lcom/google/android/gms/internal/ads/zzg;->zza:Lcom/google/android/gms/internal/ads/zzbp;

    const-wide/16 v9, 0x0

    .line 105
    invoke-virtual {v15, v6, v8, v9, v10}, Lcom/google/android/gms/internal/ads/zzbq;->zze(ILcom/google/android/gms/internal/ads/zzbp;J)Lcom/google/android/gms/internal/ads/zzbp;

    move-result-object v6

    .line 104
    iget-boolean v6, v6, Lcom/google/android/gms/internal/ads/zzbp;->zzh:Z

    if-eqz v6, :cond_2c

    const/4 v6, 0x1

    goto :goto_14

    :cond_2c
    const/4 v6, 0x0

    .line 106
    :goto_14
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzg;->zzn()Lcom/google/android/gms/internal/ads/zzbq;

    move-result-object v8

    .line 107
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzbq;->zzo()Z

    move-result v9

    if-eqz v9, :cond_2e

    const/4 v9, -0x1

    const/4 v10, 0x0

    :cond_2d
    const/16 v16, 0x0

    goto :goto_15

    .line 108
    :cond_2e
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzg;->zzd()I

    move-result v9

    .line 109
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzg;->zzh()I

    .line 108
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzg;->zzv()Z

    const/4 v10, 0x0

    .line 110
    invoke-virtual {v8, v9, v10, v10}, Lcom/google/android/gms/internal/ads/zzbq;->zzk(IIZ)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2d

    const/16 v16, 0x1

    .line 111
    :goto_15
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzg;->zzn()Lcom/google/android/gms/internal/ads/zzbq;

    move-result-object v8

    .line 112
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzbq;->zzo()Z

    move-result v15

    if-eqz v15, :cond_30

    :cond_2f
    const/4 v8, 0x0

    goto :goto_16

    .line 113
    :cond_30
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzg;->zzd()I

    move-result v15

    .line 114
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzg;->zzh()I

    .line 113
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzg;->zzv()Z

    .line 115
    invoke-virtual {v8, v15, v10, v10}, Lcom/google/android/gms/internal/ads/zzbq;->zzj(IIZ)I

    move-result v8

    if-eq v8, v9, :cond_2f

    const/4 v8, 0x1

    .line 116
    :goto_16
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzg;->zzn()Lcom/google/android/gms/internal/ads/zzbq;

    move-result-object v9

    .line 117
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzbq;->zzo()Z

    move-result v15

    if-nez v15, :cond_31

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzg;->zzd()I

    move-result v15

    iget-object v10, v14, Lcom/google/android/gms/internal/ads/zzg;->zza:Lcom/google/android/gms/internal/ads/zzbp;

    move/from16 p7, v8

    const-wide/16 v7, 0x0

    .line 118
    invoke-virtual {v9, v15, v10, v7, v8}, Lcom/google/android/gms/internal/ads/zzbq;->zze(ILcom/google/android/gms/internal/ads/zzbp;J)Lcom/google/android/gms/internal/ads/zzbp;

    move-result-object v9

    .line 117
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzbp;->zzb()Z

    move-result v9

    if-eqz v9, :cond_32

    const/4 v9, 0x1

    goto :goto_17

    :cond_31
    move/from16 p7, v8

    const-wide/16 v7, 0x0

    :cond_32
    const/4 v9, 0x0

    .line 119
    :goto_17
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzg;->zzn()Lcom/google/android/gms/internal/ads/zzbq;

    move-result-object v10

    .line 120
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzbq;->zzo()Z

    move-result v15

    if-nez v15, :cond_33

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzg;->zzd()I

    move-result v15

    iget-object v14, v14, Lcom/google/android/gms/internal/ads/zzg;->zza:Lcom/google/android/gms/internal/ads/zzbp;

    .line 121
    invoke-virtual {v10, v15, v14, v7, v8}, Lcom/google/android/gms/internal/ads/zzbq;->zze(ILcom/google/android/gms/internal/ads/zzbp;J)Lcom/google/android/gms/internal/ads/zzbp;

    move-result-object v7

    .line 120
    iget-boolean v7, v7, Lcom/google/android/gms/internal/ads/zzbp;->zzi:Z

    if-eqz v7, :cond_33

    const/4 v7, 0x1

    goto :goto_18

    :cond_33
    const/4 v7, 0x0

    .line 122
    :goto_18
    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzbk;->zzn()Lcom/google/android/gms/internal/ads/zzbq;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzbq;->zzo()Z

    move-result v8

    new-instance v10, Lcom/google/android/gms/internal/ads/zzbf;

    .line 123
    invoke-direct {v10}, Lcom/google/android/gms/internal/ads/zzbf;-><init>()V

    .line 124
    invoke-virtual {v10, v12}, Lcom/google/android/gms/internal/ads/zzbf;->zzb(Lcom/google/android/gms/internal/ads/zzbg;)Lcom/google/android/gms/internal/ads/zzbf;

    xor-int/lit8 v11, v13, 0x1

    .line 125
    invoke-virtual {v10, v2, v11}, Lcom/google/android/gms/internal/ads/zzbf;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbf;

    if-eqz v6, :cond_34

    if-nez v13, :cond_34

    const/4 v2, 0x1

    goto :goto_19

    :cond_34
    const/4 v2, 0x0

    .line 126
    :goto_19
    invoke-virtual {v10, v4, v2}, Lcom/google/android/gms/internal/ads/zzbf;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbf;

    if-eqz v16, :cond_35

    if-nez v13, :cond_35

    const/4 v2, 0x1

    goto :goto_1a

    :cond_35
    const/4 v2, 0x0

    :goto_1a
    const/4 v4, 0x6

    .line 127
    invoke-virtual {v10, v4, v2}, Lcom/google/android/gms/internal/ads/zzbf;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbf;

    if-nez v8, :cond_37

    if-nez v16, :cond_36

    if-eqz v9, :cond_36

    if-eqz v6, :cond_37

    :cond_36
    if-nez v13, :cond_37

    const/4 v2, 0x1

    goto :goto_1b

    :cond_37
    const/4 v2, 0x0

    :goto_1b
    const/4 v4, 0x7

    .line 128
    invoke-virtual {v10, v4, v2}, Lcom/google/android/gms/internal/ads/zzbf;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbf;

    if-eqz p7, :cond_38

    if-nez v13, :cond_38

    const/4 v2, 0x1

    goto :goto_1c

    :cond_38
    const/4 v2, 0x0

    :goto_1c
    const/16 v4, 0x8

    .line 129
    invoke-virtual {v10, v4, v2}, Lcom/google/android/gms/internal/ads/zzbf;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbf;

    if-nez v8, :cond_3a

    if-nez p7, :cond_39

    if-eqz v9, :cond_3a

    if-eqz v7, :cond_3a

    :cond_39
    if-nez v13, :cond_3a

    const/4 v7, 0x1

    goto :goto_1d

    :cond_3a
    const/4 v7, 0x0

    :goto_1d
    const/16 v2, 0x9

    .line 130
    invoke-virtual {v10, v2, v7}, Lcom/google/android/gms/internal/ads/zzbf;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbf;

    const/16 v2, 0xa

    .line 131
    invoke-virtual {v10, v2, v11}, Lcom/google/android/gms/internal/ads/zzbf;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbf;

    if-eqz v6, :cond_3b

    if-nez v13, :cond_3b

    const/16 v2, 0xb

    const/4 v7, 0x1

    goto :goto_1e

    :cond_3b
    const/16 v2, 0xb

    const/4 v7, 0x0

    .line 132
    :goto_1e
    invoke-virtual {v10, v2, v7}, Lcom/google/android/gms/internal/ads/zzbf;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbf;

    if-eqz v6, :cond_3c

    if-nez v13, :cond_3c

    const/4 v2, 0x1

    goto :goto_1f

    :cond_3c
    const/4 v2, 0x0

    :goto_1f
    const/16 v4, 0xc

    .line 133
    invoke-virtual {v10, v4, v2}, Lcom/google/android/gms/internal/ads/zzbf;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbf;

    .line 134
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzbf;->zze()Lcom/google/android/gms/internal/ads/zzbg;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzjp;->zzD:Lcom/google/android/gms/internal/ads/zzbg;

    .line 135
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzbg;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3d

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzjp;->zzl:Lcom/google/android/gms/internal/ads/zzdn;

    new-instance v4, Lcom/google/android/gms/internal/ads/zziz;

    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/ads/zziz;-><init>(Lcom/google/android/gms/internal/ads/zzjp;)V

    const/16 v5, 0xd

    .line 136
    invoke-virtual {v2, v5, v4}, Lcom/google/android/gms/internal/ads/zzdn;->zzd(ILcom/google/android/gms/internal/ads/zzdk;)V

    :cond_3d
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzjp;->zzl:Lcom/google/android/gms/internal/ads/zzdn;

    .line 137
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdn;->zzc()V

    .line 138
    iget-boolean v2, v3, Lcom/google/android/gms/internal/ads/zzlb;->zzp:Z

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzlb;->zzp:Z

    return-void
.end method

.method private final zzag()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzf()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzah()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    .line 3
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzp:Z

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzu()Z

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzu()Z

    return-void
.end method

.method private final zzah()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zze:Lcom/google/android/gms/internal/ads/zzda;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzda;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzr:Landroid/os/Looper;

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v1, v0, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzr:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 4
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Player is accessed on the wrong thread.\nCurrent thread: \'%s\'\nExpected thread: \'%s\'\nSee https://developer.android.com/guide/topics/media/issues/player-accessed-on-wrong-thread"

    .line 5
    invoke-static {v1, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzN:Z

    if-nez v1, :cond_1

    .line 6
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzO:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    :goto_0
    const-string v3, "ExoPlayerImpl"

    invoke-static {v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzdo;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzO:Z

    return-void

    .line 5
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 6
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return-void
.end method


# virtual methods
.method public final zzA(Lcom/google/android/gms/internal/ads/zzlw;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzah()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzq:Lcom/google/android/gms/internal/ads/zzlt;

    .line 2
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzlw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzlt;->zzR(Lcom/google/android/gms/internal/ads/zzlw;)V

    return-void
.end method

.method public final zzB(Lcom/google/android/gms/internal/ads/zzui;)V
    .locals 16

    move-object/from16 v9, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzah()V

    .line 2
    invoke-static/range {p1 .. p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzah()V

    .line 4
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzah()V

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    .line 5
    invoke-direct {v9, v1}, Lcom/google/android/gms/internal/ads/zzjp;->zzR(Lcom/google/android/gms/internal/ads/zzlb;)I

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzk()J

    iget v1, v9, Lcom/google/android/gms/internal/ads/zzjp;->zzy:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v9, Lcom/google/android/gms/internal/ads/zzjp;->zzy:I

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzjp;->zzo:Ljava/util/List;

    .line 7
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzjp;->zzo:Ljava/util/List;

    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v4, v1, -0x1

    :goto_0
    if-ltz v4, :cond_0

    iget-object v5, v9, Lcom/google/android/gms/internal/ads/zzjp;->zzo:Ljava/util/List;

    .line 9
    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_0
    iget-object v4, v9, Lcom/google/android/gms/internal/ads/zzjp;->zzV:Lcom/google/android/gms/internal/ads/zzwb;

    .line 10
    invoke-virtual {v4, v3, v1}, Lcom/google/android/gms/internal/ads/zzwb;->zzh(II)Lcom/google/android/gms/internal/ads/zzwb;

    move-result-object v1

    iput-object v1, v9, Lcom/google/android/gms/internal/ads/zzjp;->zzV:Lcom/google/android/gms/internal/ads/zzwb;

    :cond_1
    new-instance v11, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 12
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    new-instance v4, Lcom/google/android/gms/internal/ads/zzky;

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzui;

    iget-boolean v6, v9, Lcom/google/android/gms/internal/ads/zzjp;->zzp:Z

    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzky;-><init>(Lcom/google/android/gms/internal/ads/zzui;Z)V

    .line 14
    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, v9, Lcom/google/android/gms/internal/ads/zzjp;->zzo:Ljava/util/List;

    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zzky;->zzb:Ljava/lang/Object;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzky;->zza:Lcom/google/android/gms/internal/ads/zzub;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzjn;

    invoke-direct {v7, v6, v4}, Lcom/google/android/gms/internal/ads/zzjn;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzub;)V

    .line 15
    invoke-interface {v5, v1, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzjp;->zzV:Lcom/google/android/gms/internal/ads/zzwb;

    .line 16
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    .line 17
    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/internal/ads/zzwb;->zzg(II)Lcom/google/android/gms/internal/ads/zzwb;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gms/internal/ads/zzjp;->zzV:Lcom/google/android/gms/internal/ads/zzwb;

    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzjp;->zzo:Ljava/util/List;

    .line 18
    new-instance v1, Lcom/google/android/gms/internal/ads/zzlh;

    iget-object v4, v9, Lcom/google/android/gms/internal/ads/zzjp;->zzV:Lcom/google/android/gms/internal/ads/zzwb;

    invoke-direct {v1, v0, v4}, Lcom/google/android/gms/internal/ads/zzlh;-><init>(Ljava/util/Collection;Lcom/google/android/gms/internal/ads/zzwb;)V

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbq;->zzo()Z

    move-result v0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, -0x1

    if-nez v0, :cond_4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbq;->zzc()I

    move-result v0

    if-ltz v0, :cond_3

    goto :goto_2

    .line 31
    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzac;

    .line 32
    invoke-direct {v0, v1, v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzac;-><init>(Lcom/google/android/gms/internal/ads/zzbq;IJ)V

    throw v0

    .line 20
    :cond_4
    :goto_2
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzbq;->zzg(Z)I

    move-result v12

    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    .line 21
    invoke-direct {v9, v1, v12, v4, v5}, Lcom/google/android/gms/internal/ads/zzjp;->zzX(Lcom/google/android/gms/internal/ads/zzbq;IJ)Landroid/util/Pair;

    move-result-object v7

    .line 22
    invoke-direct {v9, v0, v1, v7}, Lcom/google/android/gms/internal/ads/zzjp;->zzY(Lcom/google/android/gms/internal/ads/zzlb;Lcom/google/android/gms/internal/ads/zzbq;Landroid/util/Pair;)Lcom/google/android/gms/internal/ads/zzlb;

    move-result-object v0

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzlb;->zze:I

    if-eq v12, v6, :cond_6

    if-eq v7, v2, :cond_6

    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbq;->zzo()Z

    move-result v6

    const/4 v7, 0x4

    if-nez v6, :cond_6

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbq;->zzc()I

    move-result v1

    if-lt v12, v1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v7, 0x2

    .line 24
    :cond_6
    :goto_3
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzlb;->zze(I)Lcom/google/android/gms/internal/ads/zzlb;

    move-result-object v1

    iget-object v10, v9, Lcom/google/android/gms/internal/ads/zzjp;->zzk:Lcom/google/android/gms/internal/ads/zzkc;

    .line 25
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzei;->zzs(J)J

    move-result-wide v13

    iget-object v15, v9, Lcom/google/android/gms/internal/ads/zzjp;->zzV:Lcom/google/android/gms/internal/ads/zzwb;

    .line 26
    invoke-virtual/range {v10 .. v15}, Lcom/google/android/gms/internal/ads/zzkc;->zzr(Ljava/util/List;IJLcom/google/android/gms/internal/ads/zzwb;)V

    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    .line 27
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzb:Lcom/google/android/gms/internal/ads/zzug;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzug;->zza:Ljava/lang/Object;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzlb;->zzb:Lcom/google/android/gms/internal/ads/zzug;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzug;->zza:Ljava/lang/Object;

    .line 28
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzlb;->zza:Lcom/google/android/gms/internal/ads/zzbq;

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbq;->zzo()Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v3, 0x1

    :cond_7
    const/4 v2, 0x0

    const/4 v4, 0x4

    .line 30
    invoke-direct {v9, v1}, Lcom/google/android/gms/internal/ads/zzjp;->zzU(Lcom/google/android/gms/internal/ads/zzlb;)J

    move-result-wide v5

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    .line 31
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzjp;->zzaf(Lcom/google/android/gms/internal/ads/zzlb;IZIJIZ)V

    return-void
.end method

.method public final zzE()Lcom/google/android/gms/internal/ads/zzib;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzah()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzf:Lcom/google/android/gms/internal/ads/zzib;

    return-object v0
.end method

.method final synthetic zzN(Lcom/google/android/gms/internal/ads/zzjz;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zziy;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zziy;-><init>(Lcom/google/android/gms/internal/ads/zzjp;Lcom/google/android/gms/internal/ads/zzjz;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzj:Lcom/google/android/gms/internal/ads/zzdh;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzdh;->zzh(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final synthetic zzO(Lcom/google/android/gms/internal/ads/zzjz;)V
    .locals 11

    .line 1
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzy:I

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzjz;->zzb:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzy:I

    .line 2
    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzjz;->zzc:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 3
    iget v2, p1, Lcom/google/android/gms/internal/ads/zzjz;->zzd:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzz:I

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzA:Z

    :cond_0
    if-nez v1, :cond_a

    .line 4
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzjz;->zza:Lcom/google/android/gms/internal/ads/zzlb;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzlb;->zza:Lcom/google/android/gms/internal/ads/zzbq;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    .line 5
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzlb;->zza:Lcom/google/android/gms/internal/ads/zzbq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbq;->zzo()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbq;->zzo()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzS:I

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzT:J

    .line 6
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbq;->zzo()Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_3

    .line 7
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzlh;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzlh;->zzw()Ljava/util/List;

    move-result-object v2

    .line 8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzo:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v5, v6, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzcw;->zzf(Z)V

    const/4 v5, 0x0

    .line 9
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzo:Ljava/util/List;

    .line 10
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzjn;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzbq;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzjn;->zzc(Lcom/google/android/gms/internal/ads/zzbq;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzA:Z

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_8

    .line 11
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzjz;->zza:Lcom/google/android/gms/internal/ads/zzlb;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzlb;->zzb:Lcom/google/android/gms/internal/ads/zzug;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzlb;->zzb:Lcom/google/android/gms/internal/ads/zzug;

    .line 12
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzug;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzjz;->zza:Lcom/google/android/gms/internal/ads/zzlb;

    iget-wide v7, v2, Lcom/google/android/gms/internal/ads/zzlb;->zzd:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    iget-wide v9, v2, Lcom/google/android/gms/internal/ads/zzlb;->zzs:J

    cmp-long v2, v7, v9

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :cond_5
    :goto_2
    if-eqz v3, :cond_9

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbq;->zzo()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzjz;->zza:Lcom/google/android/gms/internal/ads/zzlb;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzlb;->zzb:Lcom/google/android/gms/internal/ads/zzug;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzug;->zzb()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    .line 15
    :cond_6
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzjz;->zza:Lcom/google/android/gms/internal/ads/zzlb;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzlb;->zzb:Lcom/google/android/gms/internal/ads/zzug;

    iget-wide v6, v2, Lcom/google/android/gms/internal/ads/zzlb;->zzd:J

    invoke-direct {p0, v1, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzjp;->zzW(Lcom/google/android/gms/internal/ads/zzbq;Lcom/google/android/gms/internal/ads/zzug;J)J

    goto :goto_4

    .line 14
    :cond_7
    :goto_3
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzjz;->zza:Lcom/google/android/gms/internal/ads/zzlb;

    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/zzlb;->zzd:J

    :goto_4
    move-wide v5, v6

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    :cond_9
    :goto_5
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzA:Z

    .line 16
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzjz;->zza:Lcom/google/android/gms/internal/ads/zzlb;

    const/4 v2, 0x1

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzz:I

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzjp;->zzaf(Lcom/google/android/gms/internal/ads/zzlb;IZIJIZ)V

    :cond_a
    return-void
.end method

.method final synthetic zzP(Lcom/google/android/gms/internal/ads/zzbh;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzD:Lcom/google/android/gms/internal/ads/zzbg;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Lcom/google/android/gms/internal/ads/zzbg;)V

    return-void
.end method

.method public final zza(IJIZ)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzah()V

    const/4 p4, -0x1

    if-ne p1, p4, :cond_0

    goto :goto_1

    :cond_0
    const/4 p4, 0x1

    if-ltz p1, :cond_1

    const/4 p5, 0x1

    goto :goto_0

    :cond_1
    const/4 p5, 0x0

    .line 2
    :goto_0
    invoke-static {p5}, Lcom/google/android/gms/internal/ads/zzcw;->zzd(Z)V

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    .line 3
    iget-object p5, p5, Lcom/google/android/gms/internal/ads/zzlb;->zza:Lcom/google/android/gms/internal/ads/zzbq;

    .line 4
    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzbq;->zzo()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzbq;->zzc()I

    move-result v0

    if-ge p1, v0, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    return-void

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzq:Lcom/google/android/gms/internal/ads/zzlt;

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzlt;->zzu()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzy:I

    add-int/2addr v0, p4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzy:I

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzw()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "ExoPlayerImpl"

    const-string p2, "seekTo ignored because an ad is playing"

    .line 7
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzdo;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzjz;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzjz;-><init>(Lcom/google/android/gms/internal/ads/zzlb;)V

    .line 8
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/ads/zzjz;->zza(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzU:Lcom/google/android/gms/internal/ads/zzix;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzix;->zza:Lcom/google/android/gms/internal/ads/zzjp;

    .line 9
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzjp;->zzN(Lcom/google/android/gms/internal/ads/zzjz;)V

    return-void

    :cond_4
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    .line 10
    iget v0, p4, Lcom/google/android/gms/internal/ads/zzlb;->zze:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 11
    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzbq;->zzo()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    const/4 v0, 0x2

    .line 12
    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/ads/zzlb;->zze(I)Lcom/google/android/gms/internal/ads/zzlb;

    move-result-object p4

    .line 13
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzd()I

    move-result v7

    .line 14
    invoke-direct {p0, p5, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzjp;->zzX(Lcom/google/android/gms/internal/ads/zzbq;IJ)Landroid/util/Pair;

    move-result-object v0

    .line 15
    invoke-direct {p0, p4, p5, v0}, Lcom/google/android/gms/internal/ads/zzjp;->zzY(Lcom/google/android/gms/internal/ads/zzlb;Lcom/google/android/gms/internal/ads/zzbq;Landroid/util/Pair;)Lcom/google/android/gms/internal/ads/zzlb;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzk:Lcom/google/android/gms/internal/ads/zzkc;

    .line 16
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/zzei;->zzs(J)J

    move-result-wide p2

    invoke-virtual {p4, p5, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzkc;->zzl(Lcom/google/android/gms/internal/ads/zzbq;IJ)V

    .line 17
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzjp;->zzU(Lcom/google/android/gms/internal/ads/zzlb;)J

    move-result-wide v5

    const/4 v8, 0x0

    move-object v0, p0

    .line 18
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzjp;->zzaf(Lcom/google/android/gms/internal/ads/zzlb;IZIJIZ)V

    return-void
.end method

.method public final zzb()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzah()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzb:Lcom/google/android/gms/internal/ads/zzug;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzug;->zzb:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final zzc()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzah()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzb:Lcom/google/android/gms/internal/ads/zzug;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzug;->zzc:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final zzd()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzah()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzjp;->zzR(Lcom/google/android/gms/internal/ads/zzlb;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public final zze()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzah()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzlb;->zza:Lcom/google/android/gms/internal/ads/zzbq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbq;->zzo()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlb;->zza:Lcom/google/android/gms/internal/ads/zzbq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzb:Lcom/google/android/gms/internal/ads/zzug;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzug;->zza:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbq;->zza(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final zzf()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzah()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    .line 2
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzlb;->zze:I

    return v0
.end method

.method public final zzg()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzah()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    .line 2
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzn:I

    return v0
.end method

.method public final zzh()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzah()V

    const/4 v0, 0x0

    return v0
.end method

.method public final zzi()J
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzah()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzw()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    .line 17
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzk:Lcom/google/android/gms/internal/ads/zzug;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzb:Lcom/google/android/gms/internal/ads/zzug;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzug;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    .line 18
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzq:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzei;->zzv(J)J

    move-result-wide v0

    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzl()J

    move-result-wide v0

    goto :goto_1

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzah()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzlb;->zza:Lcom/google/android/gms/internal/ads/zzbq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbq;->zzo()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzT:J

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    .line 5
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzk:Lcom/google/android/gms/internal/ads/zzug;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzug;->zzd:J

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzb:Lcom/google/android/gms/internal/ads/zzug;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/zzug;->zzd:J

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v3

    if-eqz v7, :cond_3

    .line 6
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzlb;->zza:Lcom/google/android/gms/internal/ads/zzbq;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzd()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzjp;->zza:Lcom/google/android/gms/internal/ads/zzbp;

    .line 7
    invoke-virtual {v0, v1, v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzbq;->zze(ILcom/google/android/gms/internal/ads/zzbp;J)Lcom/google/android/gms/internal/ads/zzbp;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzbp;->zzm:J

    .line 8
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzei;->zzv(J)J

    move-result-wide v0

    goto :goto_1

    .line 9
    :cond_3
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzq:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    .line 10
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzlb;->zzk:Lcom/google/android/gms/internal/ads/zzug;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzug;->zzb()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    .line 11
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlb;->zza:Lcom/google/android/gms/internal/ads/zzbq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzk:Lcom/google/android/gms/internal/ads/zzug;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzug;->zza:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzn:Lcom/google/android/gms/internal/ads/zzbo;

    .line 12
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbq;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbo;)Lcom/google/android/gms/internal/ads/zzbo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    .line 13
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzlb;->zzk:Lcom/google/android/gms/internal/ads/zzug;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzug;->zzb:I

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbo;->zzg(I)J

    goto :goto_0

    :cond_4
    move-wide v5, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    .line 15
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlb;->zza:Lcom/google/android/gms/internal/ads/zzbq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzk:Lcom/google/android/gms/internal/ads/zzug;

    .line 16
    invoke-direct {p0, v1, v0, v5, v6}, Lcom/google/android/gms/internal/ads/zzjp;->zzW(Lcom/google/android/gms/internal/ads/zzbq;Lcom/google/android/gms/internal/ads/zzug;J)J

    .line 15
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzei;->zzv(J)J

    move-result-wide v0

    :goto_1
    return-wide v0
.end method

.method public final zzj()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzah()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzjp;->zzT(Lcom/google/android/gms/internal/ads/zzlb;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzk()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzah()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzjp;->zzU(Lcom/google/android/gms/internal/ads/zzlb;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzei;->zzv(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzl()J
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzah()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzw()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzg;->zzn()Lcom/google/android/gms/internal/ads/zzbq;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbq;->zzo()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzg;->zzd()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzg;->zza:Lcom/google/android/gms/internal/ads/zzbp;

    const-wide/16 v3, 0x0

    .line 6
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbq;->zze(ILcom/google/android/gms/internal/ads/zzbp;J)Lcom/google/android/gms/internal/ads/zzbp;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzbp;->zzm:J

    .line 7
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzei;->zzv(J)J

    move-result-wide v0

    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    .line 8
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzb:Lcom/google/android/gms/internal/ads/zzug;

    .line 9
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzlb;->zza:Lcom/google/android/gms/internal/ads/zzbq;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzug;->zza:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzn:Lcom/google/android/gms/internal/ads/zzbo;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzbq;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbo;)Lcom/google/android/gms/internal/ads/zzbo;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzn:Lcom/google/android/gms/internal/ads/zzbo;

    .line 10
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzug;->zzb:I

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzug;->zzc:I

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbo;->zzf(II)J

    move-result-wide v0

    .line 11
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzei;->zzv(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzm()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzah()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    .line 2
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzr:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzei;->zzv(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzn()Lcom/google/android/gms/internal/ads/zzbq;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzah()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzlb;->zza:Lcom/google/android/gms/internal/ads/zzbq;

    return-object v0
.end method

.method public final zzo()Lcom/google/android/gms/internal/ads/zzby;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzah()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzi:Lcom/google/android/gms/internal/ads/zzyc;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzyc;->zzd:Lcom/google/android/gms/internal/ads/zzby;

    return-object v0
.end method

.method public final zzp()V
    .locals 12

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzah()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzw:Lcom/google/android/gms/internal/ads/zzhq;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzu()Z

    move-result v1

    const/4 v2, 0x2

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhq;->zzb(ZI)I

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzjp;->zzS(I)I

    move-result v3

    .line 4
    invoke-direct {p0, v1, v0, v3}, Lcom/google/android/gms/internal/ads/zzjp;->zzae(ZII)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    .line 5
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzlb;->zze:I

    if-eq v3, v0, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    .line 6
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzlb;->zzd(Lcom/google/android/gms/internal/ads/zzib;)Lcom/google/android/gms/internal/ads/zzlb;

    move-result-object v1

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzlb;->zza:Lcom/google/android/gms/internal/ads/zzbq;

    .line 7
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbq;->zzo()Z

    move-result v3

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    .line 8
    :goto_0
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzlb;->zze(I)Lcom/google/android/gms/internal/ads/zzlb;

    move-result-object v4

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzy:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzy:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzk:Lcom/google/android/gms/internal/ads/zzkc;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzkc;->zzk()V

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x5

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object v3, p0

    .line 10
    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/internal/ads/zzjp;->zzaf(Lcom/google/android/gms/internal/ads/zzlb;IZIJIZ)V

    return-void
.end method

.method public final zzq(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzah()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzf()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzw:Lcom/google/android/gms/internal/ads/zzhq;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzhq;->zzb(ZI)I

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzjp;->zzS(I)I

    move-result v1

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzjp;->zzae(ZII)V

    return-void
.end method

.method public final zzr(Landroid/view/Surface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzah()V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzjp;->zzac(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 3
    :goto_0
    invoke-direct {p0, p1, p1}, Lcom/google/android/gms/internal/ads/zzjp;->zzZ(II)V

    return-void
.end method

.method public final zzs(F)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzah()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzL:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzL:F

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzab()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzl:Lcom/google/android/gms/internal/ads/zzdn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzis;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzis;-><init>(F)V

    const/16 p1, 0x16

    .line 4
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdn;->zzd(ILcom/google/android/gms/internal/ads/zzdk;)V

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdn;->zzc()V

    return-void
.end method

.method public final zzt()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzah()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzw:Lcom/google/android/gms/internal/ads/zzhq;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzu()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhq;->zzb(ZI)I

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzjp;->zzad(Lcom/google/android/gms/internal/ads/zzib;)V

    .line 4
    sget v0, Lcom/google/android/gms/internal/ads/zzcp;->zza:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfxn;->zzn()Lcom/google/android/gms/internal/ads/zzfxn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzlb;->zzs:J

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfxn;->zzl(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzfxn;

    return-void
.end method

.method public final zzu()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzah()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    .line 2
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzl:Z

    return v0
.end method

.method public final zzv()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzah()V

    const/4 v0, 0x0

    return v0
.end method

.method public final zzw()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzah()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzb:Lcom/google/android/gms/internal/ads/zzug;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzug;->zzb()Z

    move-result v0

    return v0
.end method

.method public final zzx()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzah()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzh:[Lcom/google/android/gms/internal/ads/zzlj;

    .line 2
    array-length v0, v0

    const/4 v0, 0x2

    return v0
.end method

.method public final zzy(Lcom/google/android/gms/internal/ads/zzlw;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzq:Lcom/google/android/gms/internal/ads/zzlt;

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzlw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzlt;->zzt(Lcom/google/android/gms/internal/ads/zzlw;)V

    return-void
.end method

.method public final zzz()V
    .locals 5

    .line 1
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzei;->zze:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzas;->zza()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Release "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " [AndroidXMedia3/1.5.0-beta01] ["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] ["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExoPlayerImpl"

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzdo;->zze(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjp;->zzah()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzw:Lcom/google/android/gms/internal/ads/zzhq;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhq;->zzd()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzk:Lcom/google/android/gms/internal/ads/zzkc;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzkc;->zzp()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzl:Lcom/google/android/gms/internal/ads/zzdn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zziu;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zziu;-><init>()V

    const/16 v2, 0xa

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzdn;->zzd(ILcom/google/android/gms/internal/ads/zzdk;)V

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdn;->zzc()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzl:Lcom/google/android/gms/internal/ads/zzdn;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdn;->zze()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzj:Lcom/google/android/gms/internal/ads/zzdh;

    const/4 v1, 0x0

    .line 10
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdh;->zze(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzs:Lcom/google/android/gms/internal/ads/zzyj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzq:Lcom/google/android/gms/internal/ads/zzlt;

    .line 11
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzyj;->zzg(Lcom/google/android/gms/internal/ads/zzyi;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    .line 12
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzp:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    const/4 v2, 0x1

    .line 13
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzlb;->zze(I)Lcom/google/android/gms/internal/ads/zzlb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    .line 14
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzb:Lcom/google/android/gms/internal/ads/zzug;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzlb;->zza(Lcom/google/android/gms/internal/ads/zzug;)Lcom/google/android/gms/internal/ads/zzlb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    .line 15
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzs:J

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzq:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzR:Lcom/google/android/gms/internal/ads/zzlb;

    const-wide/16 v2, 0x0

    .line 16
    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzr:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzq:Lcom/google/android/gms/internal/ads/zzlt;

    .line 17
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzlt;->zzQ()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzi:Lcom/google/android/gms/internal/ads/zzyb;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyb;->zzj()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzG:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzG:Landroid/view/Surface;

    .line 20
    :cond_1
    sget v0, Lcom/google/android/gms/internal/ads/zzcp;->zza:I

    return-void
.end method
