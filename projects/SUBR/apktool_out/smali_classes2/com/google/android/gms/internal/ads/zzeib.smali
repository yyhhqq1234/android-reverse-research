.class public final Lcom/google/android/gms/internal/ads/zzeib;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzecy;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzejf;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdpm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzejf;Lcom/google/android/gms/internal/ads/zzdpm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeib;->zza:Lcom/google/android/gms/internal/ads/zzejf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeib;->zzb:Lcom/google/android/gms/internal/ads/zzdpm;

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
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbcl;->zzbM:Lcom/google/android/gms/internal/ads/zzbcc;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbe;->zzc()Lcom/google/android/gms/internal/ads/zzbcj;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzbcj;->zza(Lcom/google/android/gms/internal/ads/zzbcc;)Ljava/lang/Object;

    move-result-object p2

    .line 1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzeib;->zzb:Lcom/google/android/gms/internal/ads/zzdpm;

    .line 3
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzdpm;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbrd;

    move-result-object p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v1, "Coundn\'t create RTB adapter: "

    .line 4
    invoke-static {v1, p2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p2, v0

    goto :goto_0

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzeib;->zza:Lcom/google/android/gms/internal/ads/zzejf;

    .line 5
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbrd;

    move-result-object p2

    :goto_0
    if-nez p2, :cond_1

    return-object v0

    .line 3
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzees;

    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzees;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzecz;

    invoke-direct {v1, p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzecz;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcxd;Ljava/lang/String;)V

    return-object v1
.end method
