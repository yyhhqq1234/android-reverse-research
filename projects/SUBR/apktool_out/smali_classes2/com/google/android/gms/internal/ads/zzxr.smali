.class final Lcom/google/android/gms/internal/ads/zzxr;
.super Lcom/google/android/gms/internal/ads/zzxo;
.source "com.google.android.gms:play-services-ads@@23.6.0"


# instance fields
.field private final zze:Z

.field private final zzf:Lcom/google/android/gms/internal/ads/zzxh;

.field private final zzg:Z

.field private final zzh:Z

.field private final zzi:Z

.field private final zzj:I

.field private final zzk:I

.field private final zzl:I

.field private final zzm:I

.field private final zzn:I

.field private final zzo:I

.field private final zzp:Z

.field private final zzq:I

.field private final zzr:I

.field private final zzs:Z

.field private final zzt:Z

.field private final zzu:I


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzbr;ILcom/google/android/gms/internal/ads/zzxh;ILjava/lang/String;IZ)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzxo;-><init>(ILcom/google/android/gms/internal/ads/zzbr;I)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzxr;->zzf:Lcom/google/android/gms/internal/ads/zzxh;

    .line 2
    iget-boolean p1, p4, Lcom/google/android/gms/internal/ads/zzxh;->zzF:Z

    const/4 p2, 0x1

    if-eq p2, p1, :cond_0

    const/16 p1, 0x10

    goto :goto_0

    :cond_0
    const/16 p1, 0x18

    .line 3
    :goto_0
    iget-boolean p3, p4, Lcom/google/android/gms/internal/ads/zzxh;->zzE:Z

    const/high16 p3, -0x40800000    # -1.0f

    const/4 p7, -0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxr;->zzd:Lcom/google/android/gms/internal/ads/zzab;

    .line 4
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzab;->zzv:I

    if-eq v2, p7, :cond_1

    iget v2, p4, Lcom/google/android/gms/internal/ads/zzxh;->zza:I

    :cond_1
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzab;->zzw:I

    if-eq v2, p7, :cond_2

    iget v2, p4, Lcom/google/android/gms/internal/ads/zzxh;->zzb:I

    :cond_2
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzab;->zzx:F

    cmpl-float v3, v2, p3

    if-eqz v3, :cond_3

    iget v3, p4, Lcom/google/android/gms/internal/ads/zzxh;->zzc:I

    const/high16 v3, 0x4f000000

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_5

    :cond_3
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzab;->zzj:I

    if-eq v1, p7, :cond_4

    iget v1, p4, Lcom/google/android/gms/internal/ads/zzxh;->zzd:I

    :cond_4
    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxr;->zze:Z

    if-eqz p8, :cond_a

    iget-object p8, p0, Lcom/google/android/gms/internal/ads/zzxr;->zzd:Lcom/google/android/gms/internal/ads/zzab;

    .line 5
    iget v1, p8, Lcom/google/android/gms/internal/ads/zzab;->zzv:I

    if-eq v1, p7, :cond_6

    iget v2, p4, Lcom/google/android/gms/internal/ads/zzxh;->zze:I

    if-ltz v1, :cond_a

    :cond_6
    iget v1, p8, Lcom/google/android/gms/internal/ads/zzab;->zzw:I

    if-eq v1, p7, :cond_7

    iget v2, p4, Lcom/google/android/gms/internal/ads/zzxh;->zzf:I

    if-ltz v1, :cond_a

    :cond_7
    iget v1, p8, Lcom/google/android/gms/internal/ads/zzab;->zzx:F

    cmpl-float v2, v1, p3

    if-eqz v2, :cond_8

    iget v2, p4, Lcom/google/android/gms/internal/ads/zzxh;->zzg:I

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_a

    :cond_8
    iget p8, p8, Lcom/google/android/gms/internal/ads/zzab;->zzj:I

    if-eq p8, p7, :cond_9

    iget v1, p4, Lcom/google/android/gms/internal/ads/zzxh;->zzh:I

    if-ltz p8, :cond_a

    :cond_9
    const/4 p8, 0x1

    goto :goto_2

    :cond_a
    const/4 p8, 0x0

    :goto_2
    iput-boolean p8, p0, Lcom/google/android/gms/internal/ads/zzxr;->zzg:Z

    invoke-static {p5, v0}, Lcom/google/android/gms/internal/ads/zzlk;->zza(IZ)Z

    move-result p8

    iput-boolean p8, p0, Lcom/google/android/gms/internal/ads/zzxr;->zzh:Z

    iget-object p8, p0, Lcom/google/android/gms/internal/ads/zzxr;->zzd:Lcom/google/android/gms/internal/ads/zzab;

    .line 6
    iget v1, p8, Lcom/google/android/gms/internal/ads/zzab;->zzx:F

    cmpl-float p3, v1, p3

    if-eqz p3, :cond_b

    const/high16 p3, 0x41200000    # 10.0f

    cmpl-float p3, v1, p3

    if-ltz p3, :cond_b

    const/4 p3, 0x1

    goto :goto_3

    :cond_b
    const/4 p3, 0x0

    :goto_3
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzxr;->zzi:Z

    .line 7
    iget p3, p8, Lcom/google/android/gms/internal/ads/zzab;->zzj:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzxr;->zzj:I

    .line 8
    invoke-virtual {p8}, Lcom/google/android/gms/internal/ads/zzab;->zza()I

    move-result p3

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzxr;->zzk:I

    const/4 p3, 0x0

    .line 9
    :goto_4
    iget-object p8, p4, Lcom/google/android/gms/internal/ads/zzxh;->zzm:Lcom/google/android/gms/internal/ads/zzfxn;

    invoke-virtual {p8}, Lcom/google/android/gms/internal/ads/zzfxn;->size()I

    move-result p8

    const v1, 0x7fffffff

    if-ge p3, p8, :cond_d

    iget-object p8, p0, Lcom/google/android/gms/internal/ads/zzxr;->zzd:Lcom/google/android/gms/internal/ads/zzab;

    .line 10
    iget-object v2, p4, Lcom/google/android/gms/internal/ads/zzxh;->zzm:Lcom/google/android/gms/internal/ads/zzfxn;

    .line 11
    invoke-virtual {v2, p3}, Lcom/google/android/gms/internal/ads/zzfxn;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 12
    invoke-static {p8, v2, v0}, Lcom/google/android/gms/internal/ads/zzxt;->zzc(Lcom/google/android/gms/internal/ads/zzab;Ljava/lang/String;Z)I

    move-result p8

    if-lez p8, :cond_c

    goto :goto_5

    :cond_c
    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :cond_d
    const p3, 0x7fffffff

    const/4 p8, 0x0

    :goto_5
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzxr;->zzm:I

    iput p8, p0, Lcom/google/android/gms/internal/ads/zzxr;->zzn:I

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzxr;->zzd:Lcom/google/android/gms/internal/ads/zzab;

    .line 13
    iget p3, p3, Lcom/google/android/gms/internal/ads/zzab;->zzf:I

    iget p8, p4, Lcom/google/android/gms/internal/ads/zzxh;->zzn:I

    .line 14
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/zzxt;->zzb(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzxr;->zzo:I

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzxr;->zzd:Lcom/google/android/gms/internal/ads/zzab;

    .line 15
    iget p3, p3, Lcom/google/android/gms/internal/ads/zzab;->zzf:I

    if-eqz p3, :cond_f

    and-int/2addr p3, p2

    if-eqz p3, :cond_e

    goto :goto_6

    :cond_e
    const/4 p3, 0x0

    goto :goto_7

    :cond_f
    :goto_6
    const/4 p3, 0x1

    :goto_7
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzxr;->zzp:Z

    .line 16
    invoke-static {p6}, Lcom/google/android/gms/internal/ads/zzxt;->zzh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_10

    const/4 p3, 0x1

    goto :goto_8

    :cond_10
    const/4 p3, 0x0

    :goto_8
    iget-object p8, p0, Lcom/google/android/gms/internal/ads/zzxr;->zzd:Lcom/google/android/gms/internal/ads/zzab;

    .line 17
    invoke-static {p8, p6, p3}, Lcom/google/android/gms/internal/ads/zzxt;->zzc(Lcom/google/android/gms/internal/ads/zzab;Ljava/lang/String;Z)I

    move-result p3

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzxr;->zzq:I

    const/4 p3, 0x0

    .line 18
    :goto_9
    iget-object p6, p4, Lcom/google/android/gms/internal/ads/zzxh;->zzl:Lcom/google/android/gms/internal/ads/zzfxn;

    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzfxn;->size()I

    move-result p6

    if-ge p3, p6, :cond_12

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzxr;->zzd:Lcom/google/android/gms/internal/ads/zzab;

    .line 19
    iget-object p6, p6, Lcom/google/android/gms/internal/ads/zzab;->zzo:Ljava/lang/String;

    if-eqz p6, :cond_11

    iget-object p8, p4, Lcom/google/android/gms/internal/ads/zzxh;->zzl:Lcom/google/android/gms/internal/ads/zzfxn;

    .line 20
    invoke-virtual {p8, p3}, Lcom/google/android/gms/internal/ads/zzfxn;->get(I)Ljava/lang/Object;

    move-result-object p8

    invoke-virtual {p6, p8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_11

    move v1, p3

    goto :goto_a

    :cond_11
    add-int/lit8 p3, p3, 0x1

    goto :goto_9

    :cond_12
    :goto_a
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzxr;->zzl:I

    and-int/lit16 p3, p5, 0x180

    const/16 p4, 0x80

    if-ne p3, p4, :cond_13

    const/4 p3, 0x1

    goto :goto_b

    :cond_13
    const/4 p3, 0x0

    :goto_b
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzxr;->zzs:Z

    and-int/lit8 p3, p5, 0x40

    const/16 p4, 0x40

    if-ne p3, p4, :cond_14

    const/4 p3, 0x1

    goto :goto_c

    :cond_14
    const/4 p3, 0x0

    :goto_c
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzxr;->zzt:Z

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzxr;->zzd:Lcom/google/android/gms/internal/ads/zzab;

    .line 21
    iget-object p4, p3, Lcom/google/android/gms/internal/ads/zzab;->zzo:Ljava/lang/String;

    const/4 p6, 0x2

    if-nez p4, :cond_15

    :goto_d
    const/4 v1, 0x0

    goto :goto_10

    .line 25
    :cond_15
    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result p8

    const/4 v1, 0x4

    const/4 v2, 0x3

    sparse-switch p8, :sswitch_data_0

    goto :goto_e

    :sswitch_0
    const-string p8, "video/x-vnd.on2.vp9"

    invoke-virtual {p4, p8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_16

    const/4 p4, 0x3

    goto :goto_f

    :sswitch_1
    const-string p8, "video/avc"

    invoke-virtual {p4, p8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_16

    const/4 p4, 0x4

    goto :goto_f

    :sswitch_2
    const-string p8, "video/hevc"

    invoke-virtual {p4, p8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_16

    const/4 p4, 0x2

    goto :goto_f

    :sswitch_3
    const-string p8, "video/av01"

    invoke-virtual {p4, p8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_16

    const/4 p4, 0x1

    goto :goto_f

    :sswitch_4
    const-string p8, "video/dolby-vision"

    invoke-virtual {p4, p8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_16

    const/4 p4, 0x0

    goto :goto_f

    :cond_16
    :goto_e
    const/4 p4, -0x1

    :goto_f
    if-eqz p4, :cond_1a

    if-eq p4, p2, :cond_1b

    if-eq p4, p6, :cond_19

    if-eq p4, v2, :cond_18

    if-eq p4, v1, :cond_17

    goto :goto_d

    :cond_17
    const/4 v1, 0x1

    goto :goto_10

    :cond_18
    const/4 v1, 0x2

    goto :goto_10

    :cond_19
    const/4 v1, 0x3

    goto :goto_10

    :cond_1a
    const/4 v1, 0x5

    .line 21
    :cond_1b
    :goto_10
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzxr;->zzu:I

    .line 22
    iget p4, p3, Lcom/google/android/gms/internal/ads/zzab;->zzf:I

    and-int/lit16 p4, p4, 0x4000

    if-eqz p4, :cond_1c

    :goto_11
    const/4 p2, 0x0

    goto :goto_12

    :cond_1c
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzxr;->zzf:Lcom/google/android/gms/internal/ads/zzxh;

    .line 23
    iget-boolean p8, p4, Lcom/google/android/gms/internal/ads/zzxh;->zzO:Z

    invoke-static {p5, p8}, Lcom/google/android/gms/internal/ads/zzlk;->zza(IZ)Z

    move-result p8

    if-nez p8, :cond_1d

    goto :goto_11

    :cond_1d
    iget-boolean p8, p0, Lcom/google/android/gms/internal/ads/zzxr;->zze:Z

    if-nez p8, :cond_1e

    .line 24
    iget-boolean v1, p4, Lcom/google/android/gms/internal/ads/zzxh;->zzD:Z

    if-nez v1, :cond_1e

    goto :goto_11

    :cond_1e
    invoke-static {p5, v0}, Lcom/google/android/gms/internal/ads/zzlk;->zza(IZ)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxr;->zzg:Z

    if-eqz v0, :cond_1f

    if-eqz p8, :cond_1f

    .line 25
    iget p3, p3, Lcom/google/android/gms/internal/ads/zzab;->zzj:I

    if-eq p3, p7, :cond_1f

    iget-boolean p3, p4, Lcom/google/android/gms/internal/ads/zzxh;->zzA:Z

    iget-boolean p3, p4, Lcom/google/android/gms/internal/ads/zzxh;->zzz:Z

    and-int/2addr p1, p5

    if-eqz p1, :cond_1f

    const/4 p2, 0x2

    .line 22
    :cond_1f
    :goto_12
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzxr;->zzr:I

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6e5534ef -> :sswitch_4
        -0x631b55f6 -> :sswitch_3
        -0x63185e82 -> :sswitch_2
        0x4f62373a -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzxr;Lcom/google/android/gms/internal/ads/zzxr;)I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxr;->zze:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxr;->zzh:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzxt;->zzg()Lcom/google/android/gms/internal/ads/zzfyy;

    move-result-object v0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzxt;->zzg()Lcom/google/android/gms/internal/ads/zzfyy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfyy;->zza()Lcom/google/android/gms/internal/ads/zzfyy;

    move-result-object v0

    .line 3
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfxc;->zzj()Lcom/google/android/gms/internal/ads/zzfxc;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzxr;->zzf:Lcom/google/android/gms/internal/ads/zzxh;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzxh;->zzz:Z

    .line 5
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzxr;->zzk:I

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzxr;->zzk:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzfxc;->zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfxc;

    move-result-object v1

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzxr;->zzj:I

    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzxr;->zzj:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzfxc;->zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfxc;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfxc;->zza()I

    move-result p0

    return p0
.end method

.method public static synthetic zzd(Lcom/google/android/gms/internal/ads/zzxr;Lcom/google/android/gms/internal/ads/zzxr;)I
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfxc;->zzj()Lcom/google/android/gms/internal/ads/zzfxc;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxr;->zzh:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzxr;->zzh:Z

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfxc;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfxc;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzxr;->zzm:I

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzxr;->zzm:I

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyy;->zzc()Lcom/google/android/gms/internal/ads/zzfyy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfyy;->zza()Lcom/google/android/gms/internal/ads/zzfyy;

    move-result-object v3

    .line 5
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfxc;->zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfxc;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzxr;->zzn:I

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzxr;->zzn:I

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfxc;->zzb(II)Lcom/google/android/gms/internal/ads/zzfxc;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzxr;->zzo:I

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzxr;->zzo:I

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfxc;->zzb(II)Lcom/google/android/gms/internal/ads/zzfxc;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxr;->zzp:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzxr;->zzp:Z

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfxc;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfxc;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzxr;->zzq:I

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzxr;->zzq:I

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfxc;->zzb(II)Lcom/google/android/gms/internal/ads/zzfxc;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxr;->zzi:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzxr;->zzi:Z

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfxc;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfxc;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxr;->zze:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzxr;->zze:Z

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfxc;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfxc;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxr;->zzg:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzxr;->zzg:Z

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfxc;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfxc;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzxr;->zzl:I

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzxr;->zzl:I

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyy;->zzc()Lcom/google/android/gms/internal/ads/zzfyy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfyy;->zza()Lcom/google/android/gms/internal/ads/zzfyy;

    move-result-object v3

    .line 15
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfxc;->zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfxc;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxr;->zzs:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzxr;->zzs:Z

    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfxc;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfxc;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxr;->zzt:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzxr;->zzt:Z

    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfxc;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfxc;

    move-result-object v0

    .line 18
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxr;->zzs:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxr;->zzt:Z

    if-eqz v1, :cond_0

    .line 19
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzxr;->zzu:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzxr;->zzu:I

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfxc;->zzb(II)Lcom/google/android/gms/internal/ads/zzfxc;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfxc;->zza()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final zzb()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzxr;->zzr:I

    return v0
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzxo;)Z
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzxr;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxr;->zzd:Lcom/google/android/gms/internal/ads/zzab;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzab;->zzo:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzxr;->zzd:Lcom/google/android/gms/internal/ads/zzab;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzab;->zzo:Ljava/lang/String;

    .line 3
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxr;->zzf:Lcom/google/android/gms/internal/ads/zzxh;

    .line 4
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzxh;->zzG:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxr;->zzs:Z

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzxr;->zzs:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxr;->zzt:Z

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzxr;->zzt:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
