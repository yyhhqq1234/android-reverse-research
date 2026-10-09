.class final Lcom/google/android/gms/internal/ads/zzxd;
.super Lcom/google/android/gms/internal/ads/zzxo;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final zze:I

.field private final zzf:Z

.field private final zzg:Ljava/lang/String;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzxh;

.field private final zzi:Z

.field private final zzj:I

.field private final zzk:I

.field private final zzl:I

.field private final zzm:Z

.field private final zzn:I

.field private final zzo:I

.field private final zzp:Z

.field private final zzq:I

.field private final zzr:I

.field private final zzs:I

.field private final zzt:I

.field private final zzu:Z

.field private final zzv:Z

.field private final zzw:Z


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzbr;ILcom/google/android/gms/internal/ads/zzxh;IZLcom/google/android/gms/internal/ads/zzfuo;I)V
    .locals 7

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzxo;-><init>(ILcom/google/android/gms/internal/ads/zzbr;I)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzh:Lcom/google/android/gms/internal/ads/zzxh;

    .line 2
    iget-boolean p1, p4, Lcom/google/android/gms/internal/ads/zzxh;->zzM:Z

    const/16 p2, 0x18

    const/4 p3, 0x1

    if-eq p3, p1, :cond_0

    const/16 p1, 0x10

    goto :goto_0

    :cond_0
    const/16 p1, 0x18

    .line 3
    :goto_0
    iget-boolean p8, p4, Lcom/google/android/gms/internal/ads/zzxh;->zzI:Z

    iget-object p8, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzd:Lcom/google/android/gms/internal/ads/zzab;

    .line 4
    iget-object p8, p8, Lcom/google/android/gms/internal/ads/zzab;->zzd:Ljava/lang/String;

    invoke-static {p8}, Lcom/google/android/gms/internal/ads/zzxt;->zzh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p8

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzg:Ljava/lang/String;

    const/4 p8, 0x0

    invoke-static {p5, p8}, Lcom/google/android/gms/internal/ads/zzlk;->zza(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzi:Z

    const/4 v0, 0x0

    .line 5
    :goto_1
    iget-object v1, p4, Lcom/google/android/gms/internal/ads/zzxh;->zzo:Lcom/google/android/gms/internal/ads/zzfxn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfxn;->size()I

    move-result v1

    const v2, 0x7fffffff

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzd:Lcom/google/android/gms/internal/ads/zzab;

    .line 6
    iget-object v3, p4, Lcom/google/android/gms/internal/ads/zzxh;->zzo:Lcom/google/android/gms/internal/ads/zzfxn;

    .line 7
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzfxn;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 8
    invoke-static {v1, v3, p8}, Lcom/google/android/gms/internal/ads/zzxt;->zzc(Lcom/google/android/gms/internal/ads/zzab;Ljava/lang/String;Z)I

    move-result v1

    if-lez v1, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const v0, 0x7fffffff

    const/4 v1, 0x0

    :goto_2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzk:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzj:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzd:Lcom/google/android/gms/internal/ads/zzab;

    .line 9
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzab;->zzf:I

    iget v1, p4, Lcom/google/android/gms/internal/ads/zzxh;->zzp:I

    .line 10
    invoke-static {v0, p8}, Lcom/google/android/gms/internal/ads/zzxt;->zzb(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzl:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzd:Lcom/google/android/gms/internal/ads/zzab;

    .line 11
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzab;->zzf:I

    if-eqz v1, :cond_4

    and-int/2addr v1, p3

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v1, 0x1

    :goto_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzm:Z

    .line 12
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzab;->zze:I

    and-int/2addr v1, p3

    if-eq p3, v1, :cond_5

    const/4 v1, 0x0

    goto :goto_5

    :cond_5
    const/4 v1, 0x1

    :goto_5
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzp:Z

    .line 13
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzab;->zzo:Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v4, -0x1

    if-nez v1, :cond_6

    :goto_6
    const/4 v1, 0x0

    goto :goto_9

    .line 23
    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x7e929daa

    if-eq v5, v6, :cond_9

    const v6, 0xb269699

    if-eq v5, v6, :cond_8

    const v6, 0x59afdf4a

    if-eq v5, v6, :cond_7

    goto :goto_7

    :cond_7
    const-string v5, "audio/iamf"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x2

    goto :goto_8

    :cond_8
    const-string v5, "audio/ac4"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_8

    :cond_9
    const-string v5, "audio/eac3-joc"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    goto :goto_8

    :cond_a
    :goto_7
    const/4 v1, -0x1

    :goto_8
    if-eqz v1, :cond_b

    if-eq v1, p3, :cond_b

    if-eq v1, v3, :cond_b

    goto :goto_6

    :cond_b
    const/4 v1, 0x1

    .line 13
    :goto_9
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzw:Z

    .line 14
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzab;->zzD:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzq:I

    .line 15
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzab;->zzE:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzr:I

    .line 16
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzab;->zzj:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzs:I

    .line 17
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzab;->zzj:I

    if-eq v1, v4, :cond_c

    iget v1, p4, Lcom/google/android/gms/internal/ads/zzxh;->zzr:I

    :cond_c
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzab;->zzD:I

    if-eq v1, v4, :cond_d

    iget v1, p4, Lcom/google/android/gms/internal/ads/zzxh;->zzq:I

    .line 18
    :cond_d
    invoke-interface {p7, v0}, Lcom/google/android/gms/internal/ads/zzfuo;->zza(Ljava/lang/Object;)Z

    move-result p7

    iput-boolean p7, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzf:Z

    .line 19
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p7

    invoke-virtual {p7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p7

    sget v0, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    if-lt v0, p2, :cond_e

    .line 20
    invoke-virtual {p7}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object p2

    const-string p7, ","

    .line 21
    invoke-virtual {p2, p7, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p2

    goto :goto_a

    :cond_e
    new-array p2, p3, [Ljava/lang/String;

    .line 22
    iget-object p7, p7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 23
    invoke-virtual {p7}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p7

    aput-object p7, p2, p8

    :goto_a
    const/4 p7, 0x0

    .line 24
    :goto_b
    array-length v0, p2

    if-ge p7, v0, :cond_f

    .line 25
    aget-object v0, p2, p7

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzei;->zzE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, p7

    add-int/lit8 p7, p7, 0x1

    goto :goto_b

    :cond_f
    const/4 p7, 0x0

    .line 26
    :goto_c
    array-length v0, p2

    if-ge p7, v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzd:Lcom/google/android/gms/internal/ads/zzab;

    .line 27
    aget-object v1, p2, p7

    .line 28
    invoke-static {v0, v1, p8}, Lcom/google/android/gms/internal/ads/zzxt;->zzc(Lcom/google/android/gms/internal/ads/zzab;Ljava/lang/String;Z)I

    move-result v0

    if-lez v0, :cond_10

    goto :goto_d

    :cond_10
    add-int/lit8 p7, p7, 0x1

    goto :goto_c

    :cond_11
    const p7, 0x7fffffff

    const/4 v0, 0x0

    :goto_d
    iput p7, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzn:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzo:I

    const/4 p2, 0x0

    .line 29
    :goto_e
    iget-object p7, p4, Lcom/google/android/gms/internal/ads/zzxh;->zzs:Lcom/google/android/gms/internal/ads/zzfxn;

    invoke-virtual {p7}, Lcom/google/android/gms/internal/ads/zzfxn;->size()I

    move-result p7

    if-ge p2, p7, :cond_13

    iget-object p7, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzd:Lcom/google/android/gms/internal/ads/zzab;

    .line 30
    iget-object p7, p7, Lcom/google/android/gms/internal/ads/zzab;->zzo:Ljava/lang/String;

    if-eqz p7, :cond_12

    iget-object v0, p4, Lcom/google/android/gms/internal/ads/zzxh;->zzs:Lcom/google/android/gms/internal/ads/zzfxn;

    .line 31
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzfxn;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_12

    move v2, p2

    goto :goto_f

    :cond_12
    add-int/lit8 p2, p2, 0x1

    goto :goto_e

    :cond_13
    :goto_f
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzt:I

    and-int/lit16 p2, p5, 0x180

    const/16 p4, 0x80

    if-ne p2, p4, :cond_14

    const/4 p2, 0x1

    goto :goto_10

    :cond_14
    const/4 p2, 0x0

    :goto_10
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzu:Z

    and-int/lit8 p2, p5, 0x40

    const/16 p4, 0x40

    if-ne p2, p4, :cond_15

    const/4 p2, 0x1

    goto :goto_11

    :cond_15
    const/4 p2, 0x0

    :goto_11
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzv:Z

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzh:Lcom/google/android/gms/internal/ads/zzxh;

    .line 32
    iget-boolean p4, p2, Lcom/google/android/gms/internal/ads/zzxh;->zzO:Z

    invoke-static {p5, p4}, Lcom/google/android/gms/internal/ads/zzlk;->zza(IZ)Z

    move-result p4

    if-nez p4, :cond_16

    :goto_12
    const/4 p3, 0x0

    goto :goto_13

    :cond_16
    iget-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzf:Z

    if-nez p4, :cond_17

    .line 33
    iget-boolean p7, p2, Lcom/google/android/gms/internal/ads/zzxh;->zzH:Z

    if-nez p7, :cond_17

    goto :goto_12

    .line 34
    :cond_17
    iget-object p7, p2, Lcom/google/android/gms/internal/ads/zzxh;->zzt:Lcom/google/android/gms/internal/ads/zzbu;

    invoke-static {p5, p8}, Lcom/google/android/gms/internal/ads/zzlk;->zza(IZ)Z

    move-result p7

    if-eqz p7, :cond_19

    if-eqz p4, :cond_19

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzd:Lcom/google/android/gms/internal/ads/zzab;

    .line 35
    iget p4, p4, Lcom/google/android/gms/internal/ads/zzab;->zzj:I

    if-eq p4, v4, :cond_19

    iget-boolean p4, p2, Lcom/google/android/gms/internal/ads/zzxh;->zzA:Z

    iget-boolean p4, p2, Lcom/google/android/gms/internal/ads/zzxh;->zzz:Z

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzxh;->zzQ:Z

    if-nez p2, :cond_18

    if-nez p6, :cond_19

    :cond_18
    and-int/2addr p1, p5

    if-eqz p1, :cond_19

    const/4 p3, 0x2

    .line 32
    :cond_19
    :goto_13
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzxd;->zze:I

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzxd;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzxd;->zza(Lcom/google/android/gms/internal/ads/zzxd;)I

    move-result p1

    return p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzxd;)I
    .locals 5

    .line 2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzf:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzi:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzxt;->zzg()Lcom/google/android/gms/internal/ads/zzfyy;

    move-result-object v0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzxt;->zzg()Lcom/google/android/gms/internal/ads/zzfyy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfyy;->zza()Lcom/google/android/gms/internal/ads/zzfyy;

    move-result-object v0

    .line 2
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzi:Z

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfxc;->zzj()Lcom/google/android/gms/internal/ads/zzfxc;

    move-result-object v2

    .line 3
    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzxd;->zzi:Z

    .line 4
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzfxc;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfxc;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzk:I

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzxd;->zzk:I

    .line 6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyy;->zzc()Lcom/google/android/gms/internal/ads/zzfyy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfyy;->zza()Lcom/google/android/gms/internal/ads/zzfyy;

    move-result-object v4

    .line 7
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfxc;->zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfxc;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzj:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzxd;->zzj:I

    .line 8
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfxc;->zzb(II)Lcom/google/android/gms/internal/ads/zzfxc;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzl:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzxd;->zzl:I

    .line 9
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfxc;->zzb(II)Lcom/google/android/gms/internal/ads/zzfxc;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzp:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzxd;->zzp:Z

    .line 10
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfxc;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfxc;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzm:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzxd;->zzm:Z

    .line 11
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfxc;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfxc;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzn:I

    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzxd;->zzn:I

    .line 13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyy;->zzc()Lcom/google/android/gms/internal/ads/zzfyy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfyy;->zza()Lcom/google/android/gms/internal/ads/zzfyy;

    move-result-object v4

    .line 14
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfxc;->zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfxc;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzo:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzxd;->zzo:I

    .line 15
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfxc;->zzb(II)Lcom/google/android/gms/internal/ads/zzfxc;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzf:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzxd;->zzf:Z

    .line 16
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfxc;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfxc;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzt:I

    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzxd;->zzt:I

    .line 18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyy;->zzc()Lcom/google/android/gms/internal/ads/zzfyy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfyy;->zza()Lcom/google/android/gms/internal/ads/zzfyy;

    move-result-object v4

    .line 19
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfxc;->zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfxc;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzh:Lcom/google/android/gms/internal/ads/zzxh;

    .line 20
    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzxh;->zzz:Z

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzu:Z

    .line 21
    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzxd;->zzu:Z

    .line 22
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfxc;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfxc;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzv:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzxd;->zzv:Z

    .line 23
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfxc;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfxc;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzw:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzxd;->zzw:Z

    .line 24
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfxc;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfxc;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzq:I

    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzxd;->zzq:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzfxc;->zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfxc;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzr:I

    .line 26
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzxd;->zzr:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzfxc;->zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfxc;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzg:Ljava/lang/String;

    .line 27
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzxd;->zzg:Ljava/lang/String;

    .line 28
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzs:I

    .line 29
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzxd;->zzs:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/internal/ads/zzfxc;->zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfxc;

    move-result-object v1

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfxc;->zza()I

    move-result p1

    return p1
.end method

.method public final zzb()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzxd;->zze:I

    return v0
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzxo;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzh:Lcom/google/android/gms/internal/ads/zzxh;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzxd;

    .line 2
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzxh;->zzK:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzd:Lcom/google/android/gms/internal/ads/zzab;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzab;->zzD:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzxd;->zzd:Lcom/google/android/gms/internal/ads/zzab;

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzab;->zzD:I

    if-ne v1, v4, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzab;->zzo:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzab;->zzo:Ljava/lang/String;

    .line 3
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzh:Lcom/google/android/gms/internal/ads/zzxh;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzxh;->zzJ:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzd:Lcom/google/android/gms/internal/ads/zzab;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzab;->zzE:I

    if-eq v1, v2, :cond_0

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzxd;->zzd:Lcom/google/android/gms/internal/ads/zzab;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzab;->zzE:I

    if-ne v1, v2, :cond_0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzxh;->zzL:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzu:Z

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzxd;->zzu:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzv:Z

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzxd;->zzv:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
