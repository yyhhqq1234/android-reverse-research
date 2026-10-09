.class final Lcom/google/android/gms/internal/ads/zzgzg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgzv;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgzc;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhah;

.field private final zzc:Z

.field private final zzd:Lcom/google/android/gms/internal/ads/zzgxc;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzhah;Lcom/google/android/gms/internal/ads/zzgxc;Lcom/google/android/gms/internal/ads/zzgzc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgzg;->zzb:Lcom/google/android/gms/internal/ads/zzhah;

    instance-of p1, p3, Lcom/google/android/gms/internal/ads/zzgxn;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzgzg;->zzc:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgzg;->zzd:Lcom/google/android/gms/internal/ads/zzgxc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgzg;->zza:Lcom/google/android/gms/internal/ads/zzgzc;

    return-void
.end method

.method static zzc(Lcom/google/android/gms/internal/ads/zzhah;Lcom/google/android/gms/internal/ads/zzgxc;Lcom/google/android/gms/internal/ads/zzgzc;)Lcom/google/android/gms/internal/ads/zzgzg;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgzg;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgzg;-><init>(Lcom/google/android/gms/internal/ads/zzhah;Lcom/google/android/gms/internal/ads/zzgxc;Lcom/google/android/gms/internal/ads/zzgzc;)V

    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .locals 2

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgxr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgxr;->zzt:Lcom/google/android/gms/internal/ads/zzhai;

    .line 2
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhai;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhai;->zzb()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzgzg;->zzc:Z

    if-eqz v1, :cond_0

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgxn;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgxn;->zza:Lcom/google/android/gms/internal/ads/zzgxg;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgxg;->zzd()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final zzb(Ljava/lang/Object;)I
    .locals 2

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgxr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgxr;->zzt:Lcom/google/android/gms/internal/ads/zzhai;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzgzg;->zzc:Z

    if-eqz v1, :cond_0

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgxn;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgxn;->zza:Lcom/google/android/gms/internal/ads/zzgxg;

    mul-int/lit8 v0, v0, 0x35

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgxg;->zza:Lcom/google/android/gms/internal/ads/zzhad;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhad;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final zze()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzg;->zza:Lcom/google/android/gms/internal/ads/zzgzc;

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzgxr;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgxr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxr;->zzbj()Lcom/google/android/gms/internal/ads/zzgxr;

    move-result-object v0

    return-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgzc;->zzcX()Lcom/google/android/gms/internal/ads/zzgzb;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgzb;->zzbs()Lcom/google/android/gms/internal/ads/zzgzc;

    move-result-object v0

    return-object v0
.end method

.method public final zzf(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzg;->zzb:Lcom/google/android/gms/internal/ads/zzhah;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhah;->zzi(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzg;->zzd:Lcom/google/android/gms/internal/ads/zzgxc;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgxc;->zza(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzg(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzg;->zzb:Lcom/google/android/gms/internal/ads/zzhah;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgzx;->zzq(Lcom/google/android/gms/internal/ads/zzhah;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgzg;->zzc:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzg;->zzd:Lcom/google/android/gms/internal/ads/zzgxc;

    .line 2
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgzx;->zzp(Lcom/google/android/gms/internal/ads/zzgxc;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zzh(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgzp;Lcom/google/android/gms/internal/ads/zzgxb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgzg;->zzb:Lcom/google/android/gms/internal/ads/zzhah;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzhah;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgxn;

    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public final zzi(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/zzgvx;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/ads/zzgxr;

    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzgxr;->zzt:Lcom/google/android/gms/internal/ads/zzhai;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhai;->zzc()Lcom/google/android/gms/internal/ads/zzhai;

    move-result-object p4

    if-eq p3, p4, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhai;->zzf()Lcom/google/android/gms/internal/ads/zzhai;

    move-result-object p3

    .line 2
    iput-object p3, p2, Lcom/google/android/gms/internal/ads/zzgxr;->zzt:Lcom/google/android/gms/internal/ads/zzhai;

    .line 3
    :goto_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgxn;

    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public final zzj(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzhaw;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgxn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgxn;->zza:Lcom/google/android/gms/internal/ads/zzgxg;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxg;->zzf()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgxf;

    .line 6
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzgxf;->zzc()Lcom/google/android/gms/internal/ads/zzhav;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhav;->zzi:Lcom/google/android/gms/internal/ads/zzhav;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzgxf;->zze()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzgxf;->zzd()Z

    move-result v3

    if-nez v3, :cond_1

    .line 13
    instance-of v3, v1, Lcom/google/android/gms/internal/ads/zzgyj;

    if-eqz v3, :cond_0

    .line 7
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzgxf;->zza()I

    move-result v2

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgyj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgyj;->zza()Lcom/google/android/gms/internal/ads/zzgym;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgyn;->zzb()Lcom/google/android/gms/internal/ads/zzgwj;

    move-result-object v1

    .line 8
    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/ads/zzhaw;->zzw(ILjava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzgxf;->zza()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/ads/zzhaw;->zzw(ILjava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    .line 13
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgxr;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgxr;->zzt:Lcom/google/android/gms/internal/ads/zzhai;

    .line 11
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhai;

    .line 12
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzhai;->zzk(Lcom/google/android/gms/internal/ads/zzhaw;)V

    return-void
.end method

.method public final zzk(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgxr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgxr;->zzt:Lcom/google/android/gms/internal/ads/zzhai;

    .line 2
    move-object v1, p2

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgxr;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzgxr;->zzt:Lcom/google/android/gms/internal/ads/zzhai;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgzg;->zzc:Z

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgxn;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgxn;->zza:Lcom/google/android/gms/internal/ads/zzgxg;

    .line 5
    check-cast p2, Lcom/google/android/gms/internal/ads/zzgxn;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzgxn;->zza:Lcom/google/android/gms/internal/ads/zzgxg;

    .line 6
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzgxg;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final zzl(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgxn;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgxn;->zza:Lcom/google/android/gms/internal/ads/zzgxg;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgxg;->zzi()Z

    move-result p1

    return p1
.end method
