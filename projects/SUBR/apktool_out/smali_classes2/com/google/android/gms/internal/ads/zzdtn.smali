.class public final Lcom/google/android/gms/internal/ads/zzdtn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdsx;


# instance fields
.field private final zza:J

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdtc;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfbf;


# direct methods
.method constructor <init>(JLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzdtc;Lcom/google/android/gms/internal/ads/zzcgx;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzdtn;->zza:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdtn;->zzb:Lcom/google/android/gms/internal/ads/zzdtc;

    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzcgx;->zzw()Lcom/google/android/gms/internal/ads/zzfbh;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/zzfbh;->zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzfbh;

    .line 2
    invoke-interface {p1, p6}, Lcom/google/android/gms/internal/ads/zzfbh;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfbh;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzfbh;->zzc()Lcom/google/android/gms/internal/ads/zzfbi;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzfbi;->zza()Lcom/google/android/gms/internal/ads/zzfbf;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdtn;->zzc:Lcom/google/android/gms/internal/ads/zzfbf;

    return-void
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzdtn;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdtn;->zza:J

    return-wide v0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzdtn;)Lcom/google/android/gms/internal/ads/zzdtc;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdtn;->zzb:Lcom/google/android/gms/internal/ads/zzdtc;

    return-object p0
.end method


# virtual methods
.method public final zza()V
    .locals 0

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/ads/internal/client/zzm;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtn;->zzc:Lcom/google/android/gms/internal/ads/zzfbf;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdtl;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdtl;-><init>(Lcom/google/android/gms/internal/ads/zzdtn;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzfbf;->zzf(Lcom/google/android/gms/ads/internal/client/zzm;Lcom/google/android/gms/internal/ads/zzbww;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzc()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtn;->zzc:Lcom/google/android/gms/internal/ads/zzfbf;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdtm;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdtm;-><init>(Lcom/google/android/gms/internal/ads/zzdtn;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfbf;->zzk(Lcom/google/android/gms/internal/ads/zzbws;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtn;->zzc:Lcom/google/android/gms/internal/ads/zzfbf;

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfbf;->zzm(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
