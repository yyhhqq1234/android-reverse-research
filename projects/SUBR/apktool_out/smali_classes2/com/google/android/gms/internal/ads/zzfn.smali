.class final Lcom/google/android/gms/internal/ads/zzfn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdy;

.field private zzb:J

.field private zzc:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfn;->zzb:J

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdy;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfn;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzfn;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfn;->zzb:J

    return-wide v0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzfn;)Lcom/google/android/gms/internal/ads/zzdy;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfn;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfn;

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfn;->zzb:J

    .line 2
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzfn;->zzb:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfn;->zzc:J

    .line 3
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzfn;->zzc:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public final zzc(JJLcom/google/android/gms/internal/ads/zzdy;)V
    .locals 4

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcw;->zzf(Z)V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzfn;->zzb:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzfn;->zzc:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfn;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzdy;->zzb()I

    move-result p2

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdy;->zzI(I)V

    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzdy;->zzN()[B

    move-result-object p1

    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzdy;->zzd()I

    move-result p2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfn;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzdy;->zzN()[B

    move-result-object p3

    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzdy;->zzb()I

    move-result p4

    .line 3
    invoke-static {p1, p2, p3, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
