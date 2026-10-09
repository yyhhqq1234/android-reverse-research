.class public final Lcom/google/android/gms/internal/ads/zzcis;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzcha;

.field private zzb:Lcom/google/android/gms/internal/ads/zzcjn;

.field private zzc:Lcom/google/android/gms/internal/ads/zzfgr;

.field private zzd:Lcom/google/android/gms/internal/ads/zzcka;

.field private zze:Lcom/google/android/gms/internal/ads/zzfdl;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcjm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzcgx;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcis;->zza:Lcom/google/android/gms/internal/ads/zzcha;

    const-class v1, Lcom/google/android/gms/internal/ads/zzcha;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhez;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcis;->zzb:Lcom/google/android/gms/internal/ads/zzcjn;

    const-class v1, Lcom/google/android/gms/internal/ads/zzcjn;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhez;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcis;->zzc:Lcom/google/android/gms/internal/ads/zzfgr;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfgr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfgr;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcis;->zzc:Lcom/google/android/gms/internal/ads/zzfgr;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcis;->zzd:Lcom/google/android/gms/internal/ads/zzcka;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcka;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcka;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcis;->zzd:Lcom/google/android/gms/internal/ads/zzcka;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcis;->zze:Lcom/google/android/gms/internal/ads/zzfdl;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfdl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfdl;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcis;->zze:Lcom/google/android/gms/internal/ads/zzfdl;

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcih;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcis;->zza:Lcom/google/android/gms/internal/ads/zzcha;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcis;->zzb:Lcom/google/android/gms/internal/ads/zzcjn;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcis;->zzc:Lcom/google/android/gms/internal/ads/zzfgr;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcis;->zzd:Lcom/google/android/gms/internal/ads/zzcka;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcis;->zze:Lcom/google/android/gms/internal/ads/zzfdl;

    const/4 v7, 0x0

    move-object v1, v0

    .line 3
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzcih;-><init>(Lcom/google/android/gms/internal/ads/zzcha;Lcom/google/android/gms/internal/ads/zzcjn;Lcom/google/android/gms/internal/ads/zzfgr;Lcom/google/android/gms/internal/ads/zzcka;Lcom/google/android/gms/internal/ads/zzfdl;Lcom/google/android/gms/internal/ads/zzcjm;)V

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzcha;)Lcom/google/android/gms/internal/ads/zzcis;
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcha;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcis;->zza:Lcom/google/android/gms/internal/ads/zzcha;

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzcjn;)Lcom/google/android/gms/internal/ads/zzcis;
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcjn;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcis;->zzb:Lcom/google/android/gms/internal/ads/zzcjn;

    return-object p0
.end method
