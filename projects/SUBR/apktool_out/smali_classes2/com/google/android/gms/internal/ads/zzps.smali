.class public final Lcom/google/android/gms/internal/ads/zzps;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private zzb:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzps;->zza:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzps;->zza:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzab;Lcom/google/android/gms/internal/ads/zze;)Lcom/google/android/gms/internal/ads/zzor;
    .locals 6

    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_c

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzab;->zzE:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzps;->zza:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzps;->zzb:Ljava/lang/Boolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_4

    const-string v1, "audio"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_3

    const-string v1, "offloadVariableRateSupported"

    .line 5
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "offloadVariableRateSupported=1"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 7
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzps;->zzb:Ljava/lang/Boolean;

    goto :goto_1

    .line 8
    :cond_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzps;->zzb:Ljava/lang/Boolean;

    goto :goto_1

    .line 9
    :cond_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzps;->zzb:Ljava/lang/Boolean;

    .line 7
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzps;->zzb:Ljava/lang/Boolean;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 3
    :goto_2
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzab;->zzo:Ljava/lang/String;

    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzab;->zzk:Ljava/lang/String;

    .line 11
    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/zzbb;->zza(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_b

    sget v4, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzei;->zzh(I)I

    move-result v5

    if-ge v4, v5, :cond_5

    goto :goto_4

    .line 12
    :cond_5
    iget v4, p1, Lcom/google/android/gms/internal/ads/zzab;->zzD:I

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzei;->zzi(I)I

    move-result v4

    if-nez v4, :cond_6

    .line 13
    sget-object p1, Lcom/google/android/gms/internal/ads/zzor;->zza:Lcom/google/android/gms/internal/ads/zzor;

    return-object p1

    :cond_6
    :try_start_0
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzab;->zzE:I

    .line 14
    invoke-static {p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzei;->zzx(III)Landroid/media/AudioFormat;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    sget v1, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    const/16 v4, 0x1f

    if-lt v1, v4, :cond_9

    .line 16
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zze;->zza()Lcom/google/android/gms/internal/ads/zzc;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzc;->zza:Landroid/media/AudioAttributes;

    .line 17
    invoke-static {p1, p2}, Landroid/media/AudioManager;->getPlaybackOffloadSupport(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I

    move-result p1

    if-nez p1, :cond_7

    .line 18
    sget-object p1, Lcom/google/android/gms/internal/ads/zzor;->zza:Lcom/google/android/gms/internal/ads/zzor;

    goto :goto_3

    :cond_7
    new-instance p2, Lcom/google/android/gms/internal/ads/zzop;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzop;-><init>()V

    sget v1, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    const/16 v4, 0x20

    if-le v1, v4, :cond_8

    const/4 v1, 0x2

    if-ne p1, v1, :cond_8

    const/4 v3, 0x1

    .line 19
    :cond_8
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ads/zzop;->zza(Z)Lcom/google/android/gms/internal/ads/zzop;

    .line 20
    invoke-virtual {p2, v3}, Lcom/google/android/gms/internal/ads/zzop;->zzb(Z)Lcom/google/android/gms/internal/ads/zzop;

    .line 21
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzop;->zzc(Z)Lcom/google/android/gms/internal/ads/zzop;

    .line 22
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzop;->zzd()Lcom/google/android/gms/internal/ads/zzor;

    move-result-object p1

    goto :goto_3

    .line 23
    :cond_9
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zze;->zza()Lcom/google/android/gms/internal/ads/zzc;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzc;->zza:Landroid/media/AudioAttributes;

    .line 24
    invoke-static {p1, p2}, Landroid/media/AudioManager;->isOffloadedPlaybackSupported(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 25
    sget-object p1, Lcom/google/android/gms/internal/ads/zzor;->zza:Lcom/google/android/gms/internal/ads/zzor;

    goto :goto_3

    :cond_a
    new-instance p1, Lcom/google/android/gms/internal/ads/zzop;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzop;-><init>()V

    .line 26
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzop;->zza(Z)Lcom/google/android/gms/internal/ads/zzop;

    .line 27
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzop;->zzc(Z)Lcom/google/android/gms/internal/ads/zzop;

    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzop;->zzd()Lcom/google/android/gms/internal/ads/zzor;

    move-result-object p1

    :goto_3
    return-object p1

    .line 15
    :catch_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzor;->zza:Lcom/google/android/gms/internal/ads/zzor;

    return-object p1

    .line 12
    :cond_b
    :goto_4
    sget-object p1, Lcom/google/android/gms/internal/ads/zzor;->zza:Lcom/google/android/gms/internal/ads/zzor;

    return-object p1

    .line 2
    :cond_c
    :goto_5
    sget-object p1, Lcom/google/android/gms/internal/ads/zzor;->zza:Lcom/google/android/gms/internal/ads/zzor;

    return-object p1
.end method
