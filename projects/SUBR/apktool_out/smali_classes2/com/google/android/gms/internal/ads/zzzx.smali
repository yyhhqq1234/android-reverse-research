.class final Lcom/google/android/gms/internal/ads/zzzx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzaah;

.field private zzb:Lcom/google/android/gms/internal/ads/zzab;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzaah;Lcom/google/android/gms/internal/ads/zzaag;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzx;->zza:Lcom/google/android/gms/internal/ads/zzaah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzcd;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzz;-><init>()V

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzcd;->zzb:I

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzz;->zzaf(I)Lcom/google/android/gms/internal/ads/zzz;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzcd;->zzc:I

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzz;->zzK(I)Lcom/google/android/gms/internal/ads/zzz;

    const-string v1, "video/raw"

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzz;->zzaa(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzz;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzz;->zzag()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzzx;->zzb:Lcom/google/android/gms/internal/ads/zzab;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzx;->zza:Lcom/google/android/gms/internal/ads/zzaah;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaah;->zzj(Lcom/google/android/gms/internal/ads/zzaah;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaac;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzzx;->zza:Lcom/google/android/gms/internal/ads/zzaah;

    .line 7
    invoke-interface {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzaac;->zzA(Lcom/google/android/gms/internal/ads/zzaah;Lcom/google/android/gms/internal/ads/zzcd;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzb(JJZ)V
    .locals 7

    if-eqz p5, :cond_0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzx;->zza:Lcom/google/android/gms/internal/ads/zzaah;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaah;->zza(Lcom/google/android/gms/internal/ads/zzaah;)Landroid/util/Pair;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaah;->zzj(Lcom/google/android/gms/internal/ads/zzaah;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzaac;

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzzx;->zza:Lcom/google/android/gms/internal/ads/zzaah;

    .line 2
    invoke-interface {p2, p5}, Lcom/google/android/gms/internal/ads/zzaac;->zzy(Lcom/google/android/gms/internal/ads/zzaah;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzx;->zza:Lcom/google/android/gms/internal/ads/zzaah;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaah;->zze(Lcom/google/android/gms/internal/ads/zzaah;)Lcom/google/android/gms/internal/ads/zzaai;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzx;->zzb:Lcom/google/android/gms/internal/ads/zzab;

    if-nez p1, :cond_1

    new-instance p1, Lcom/google/android/gms/internal/ads/zzz;

    .line 3
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzz;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzz;->zzag()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object p1

    :cond_1
    move-object v5, p1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzx;->zza:Lcom/google/android/gms/internal/ads/zzaah;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaah;->zze(Lcom/google/android/gms/internal/ads/zzaah;)Lcom/google/android/gms/internal/ads/zzaai;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaah;->zzd(Lcom/google/android/gms/internal/ads/zzaah;)Lcom/google/android/gms/internal/ads/zzcx;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcx;->zzc()J

    move-result-wide v3

    const/4 v6, 0x0

    move-wide v1, p3

    .line 5
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzaai;->zza(JJLcom/google/android/gms/internal/ads/zzab;Landroid/media/MediaFormat;)V

    :cond_2
    const/4 p1, 0x0

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcw;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/ads/zzbm;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbm;->zza()V

    throw p1
.end method
