.class public final Lcom/google/android/gms/internal/ads/zzade;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadm;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdp;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdp;

.field private zzc:J


# direct methods
.method public constructor <init>([J[JJ)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcw;->zzd(Z)V

    if-lez v1, :cond_1

    .line 2
    aget-wide v3, p2, v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    add-int/2addr v1, v2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdp;

    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdp;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzade;->zza:Lcom/google/android/gms/internal/ads/zzdp;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdp;

    .line 6
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzdp;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzade;->zzb:Lcom/google/android/gms/internal/ads/zzdp;

    .line 7
    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/internal/ads/zzdp;->zzc(J)V

    .line 8
    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzdp;->zzc(J)V

    goto :goto_1

    .line 10
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdp;

    .line 3
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdp;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzade;->zza:Lcom/google/android/gms/internal/ads/zzdp;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdp;

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdp;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzade;->zzb:Lcom/google/android/gms/internal/ads/zzdp;

    .line 8
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzade;->zza:Lcom/google/android/gms/internal/ads/zzdp;

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdp;->zzd([J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzade;->zzb:Lcom/google/android/gms/internal/ads/zzdp;

    .line 10
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdp;->zzd([J)V

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzade;->zzc:J

    return-void
.end method


# virtual methods
.method public final zza()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzade;->zzc:J

    return-wide v0
.end method

.method public final zzg(J)Lcom/google/android/gms/internal/ads/zzadk;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzade;->zzb:Lcom/google/android/gms/internal/ads/zzdp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdp;->zza()I

    move-result v1

    if-nez v1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzadk;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzadn;->zza:Lcom/google/android/gms/internal/ads/zzadn;

    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzadk;-><init>(Lcom/google/android/gms/internal/ads/zzadn;Lcom/google/android/gms/internal/ads/zzadn;)V

    return-object p1

    :cond_0
    const/4 v1, 0x1

    .line 2
    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/android/gms/internal/ads/zzei;->zzb(Lcom/google/android/gms/internal/ads/zzdp;JZZ)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzade;->zzb:Lcom/google/android/gms/internal/ads/zzdp;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzadn;

    .line 3
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzdp;->zzb(I)J

    move-result-wide v4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzade;->zza:Lcom/google/android/gms/internal/ads/zzdp;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzdp;->zzb(I)J

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzadn;-><init>(JJ)V

    iget-wide v4, v3, Lcom/google/android/gms/internal/ads/zzadn;->zzb:J

    cmp-long v2, v4, p1

    if-eqz v2, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzade;->zzb:Lcom/google/android/gms/internal/ads/zzdp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdp;->zza()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ne v0, p2, :cond_1

    goto :goto_0

    :cond_1
    add-int/2addr v0, v1

    .line 4
    new-instance p2, Lcom/google/android/gms/internal/ads/zzadn;

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdp;->zzb(I)J

    move-result-wide v1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzade;->zza:Lcom/google/android/gms/internal/ads/zzdp;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdp;->zzb(I)J

    move-result-wide v4

    invoke-direct {p2, v1, v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzadn;-><init>(JJ)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzadk;

    .line 6
    invoke-direct {p1, v3, p2}, Lcom/google/android/gms/internal/ads/zzadk;-><init>(Lcom/google/android/gms/internal/ads/zzadn;Lcom/google/android/gms/internal/ads/zzadn;)V

    return-object p1

    .line 3
    :cond_2
    :goto_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzadk;

    .line 4
    invoke-direct {p1, v3, v3}, Lcom/google/android/gms/internal/ads/zzadk;-><init>(Lcom/google/android/gms/internal/ads/zzadn;Lcom/google/android/gms/internal/ads/zzadn;)V

    return-object p1
.end method

.method public final zzh()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzade;->zzb:Lcom/google/android/gms/internal/ads/zzdp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdp;->zza()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
