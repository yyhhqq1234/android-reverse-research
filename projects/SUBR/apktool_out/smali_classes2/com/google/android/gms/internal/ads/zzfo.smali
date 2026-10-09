.class public final Lcom/google/android/gms/internal/ads/zzfo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfm;

.field private final zzb:Ljava/util/concurrent/atomic/AtomicLong;

.field private final zzc:Ljava/util/ArrayDeque;

.field private final zzd:Ljava/util/PriorityQueue;

.field private zze:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfm;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfo;->zzb:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfo;->zza:Lcom/google/android/gms/internal/ads/zzfm;

    new-instance p1, Ljava/util/ArrayDeque;

    .line 2
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfo;->zzc:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/util/PriorityQueue;

    .line 3
    invoke-direct {p1}, Ljava/util/PriorityQueue;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfo;->zzd:Ljava/util/PriorityQueue;

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfo;->zze:I

    return-void
.end method

.method private final zze(I)V
    .locals 5

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfo;->zzd:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfo;->zzd:Ljava/util/PriorityQueue;

    .line 2
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfn;

    sget v1, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfo;->zza:Lcom/google/android/gms/internal/ads/zzfm;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfn;->zza(Lcom/google/android/gms/internal/ads/zzfn;)J

    move-result-wide v2

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfn;->zzb(Lcom/google/android/gms/internal/ads/zzfn;)Lcom/google/android/gms/internal/ads/zzdy;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfm;->zza(JLcom/google/android/gms/internal/ads/zzdy;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfo;->zzc:Ljava/util/ArrayDeque;

    .line 4
    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfo;->zze:I

    return v0
.end method

.method public final zzb(JLcom/google/android/gms/internal/ads/zzdy;)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfo;->zze:I

    if-eqz v0, :cond_3

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfo;->zzd:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfo;->zze:I

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfo;->zzd:Ljava/util/PriorityQueue;

    .line 2
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfn;

    sget v2, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfn;->zza(Lcom/google/android/gms/internal/ads/zzfn;)J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfo;->zzc:Ljava/util/ArrayDeque;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfn;-><init>()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfo;->zzc:Ljava/util/ArrayDeque;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfn;

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfo;->zzb:Ljava/util/concurrent/atomic/AtomicLong;

    .line 5
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v5

    move-object v2, v0

    move-wide v3, p1

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzfn;->zzc(JJLcom/google/android/gms/internal/ads/zzdy;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfo;->zzd:Ljava/util/PriorityQueue;

    .line 6
    invoke-virtual {p1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzfo;->zze:I

    if-eq p1, v1, :cond_2

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfo;->zze(I)V

    :cond_2
    return-void

    .line 2
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfo;->zza:Lcom/google/android/gms/internal/ads/zzfm;

    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfm;->zza(JLcom/google/android/gms/internal/ads/zzdy;)V

    return-void
.end method

.method public final zzc()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfo;->zze(I)V

    return-void
.end method

.method public final zzd(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcw;->zzf(Z)V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfo;->zze:I

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfo;->zze(I)V

    return-void
.end method
