.class public final Lcom/google/android/gms/internal/ads/zzik;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"


# instance fields
.field final zza:Landroid/content/Context;

.field zzb:Lcom/google/android/gms/internal/ads/zzcx;

.field zzc:Lcom/google/android/gms/internal/ads/zzfvf;

.field zzd:Lcom/google/android/gms/internal/ads/zzfvf;

.field zze:Lcom/google/android/gms/internal/ads/zzfvf;

.field zzf:Lcom/google/android/gms/internal/ads/zzfvf;

.field zzg:Lcom/google/android/gms/internal/ads/zzfvf;

.field zzh:Lcom/google/android/gms/internal/ads/zzfuc;

.field zzi:Landroid/os/Looper;

.field zzj:I

.field zzk:Lcom/google/android/gms/internal/ads/zze;

.field zzl:I

.field zzm:Z

.field zzn:Lcom/google/android/gms/internal/ads/zzlp;

.field zzo:J

.field zzp:J

.field zzq:Z

.field zzr:Z

.field zzs:Ljava/lang/String;

.field zzt:Lcom/google/android/gms/internal/ads/zzhv;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzced;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 5
    new-instance v2, Lcom/google/android/gms/internal/ads/zzid;

    move-object/from16 v3, p2

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzid;-><init>(Lcom/google/android/gms/internal/ads/zzced;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzie;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zzie;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/zzif;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzif;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/google/android/gms/internal/ads/zzig;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzig;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzih;

    invoke-direct {v6, v1}, Lcom/google/android/gms/internal/ads/zzih;-><init>(Landroid/content/Context;)V

    new-instance v7, Lcom/google/android/gms/internal/ads/zzii;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzii;-><init>()V

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v8, v1

    check-cast v8, Landroid/content/Context;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzik;->zza:Landroid/content/Context;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzik;->zzc:Lcom/google/android/gms/internal/ads/zzfvf;

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzik;->zzd:Lcom/google/android/gms/internal/ads/zzfvf;

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzik;->zze:Lcom/google/android/gms/internal/ads/zzfvf;

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzik;->zzf:Lcom/google/android/gms/internal/ads/zzfvf;

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzik;->zzg:Lcom/google/android/gms/internal/ads/zzfvf;

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzik;->zzh:Lcom/google/android/gms/internal/ads/zzfuc;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzei;->zzz()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzik;->zzi:Landroid/os/Looper;

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zze;->zza:Lcom/google/android/gms/internal/ads/zze;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzik;->zzk:Lcom/google/android/gms/internal/ads/zze;

    const/4 v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzik;->zzl:I

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzik;->zzm:Z

    .line 4
    sget-object v2, Lcom/google/android/gms/internal/ads/zzlp;->zzb:Lcom/google/android/gms/internal/ads/zzlp;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzik;->zzn:Lcom/google/android/gms/internal/ads/zzlp;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhv;

    const v4, 0x3f7851ec    # 0.97f

    const v5, 0x3f83d70a    # 1.03f

    const-wide/16 v6, 0x3e8

    const v8, 0x33d6bf95    # 1.0E-7f

    const-wide/16 v9, 0x14

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/ads/zzei;->zzs(J)J

    move-result-wide v9

    const-wide/16 v14, 0x1f4

    invoke-static {v14, v15}, Lcom/google/android/gms/internal/ads/zzei;->zzs(J)J

    move-result-wide v11

    const v13, 0x3f7fbe77    # 0.999f

    const/16 v16, 0x0

    move-object v3, v2

    move-object/from16 v14, v16

    invoke-direct/range {v3 .. v14}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(FFJFJJFLcom/google/android/gms/internal/ads/zzhu;)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzik;->zzt:Lcom/google/android/gms/internal/ads/zzhv;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzcx;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzik;->zzb:Lcom/google/android/gms/internal/ads/zzcx;

    const-wide/16 v2, 0x1f4

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzik;->zzo:J

    const-wide/16 v2, 0x7d0

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzik;->zzp:J

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzik;->zzq:Z

    const-string v1, ""

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzik;->zzs:Ljava/lang/String;

    const/16 v1, -0x3e8

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzik;->zzj:I

    return-void
.end method

.method static synthetic zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzuf;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zztt;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzach;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzach;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zztt;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzacs;)V

    return-object v0
.end method
