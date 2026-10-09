.class public final Lcom/google/android/gms/internal/ads/zzbbq$zzx$zza;
.super Lcom/google/android/gms/internal/ads/zzgxl;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbbq$zzy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzgxl<",
        "Lcom/google/android/gms/internal/ads/zzbbq$zzx;",
        "Lcom/google/android/gms/internal/ads/zzbbq$zzx$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzbbq$zzy;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbq$zzx;->zzg()Lcom/google/android/gms/internal/ads/zzbbq$zzx;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgxl;-><init>(Lcom/google/android/gms/internal/ads/zzgxr;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbbr;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbq$zzx$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbq$zzx$zza;->zza:Lcom/google/android/gms/internal/ads/zzgxr;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbq$zzx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq$zzx;->zza(I)I

    move-result p1

    return p1
.end method

.method public zzb()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbq$zzx$zza;->zza:Lcom/google/android/gms/internal/ads/zzgxr;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbq$zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbq$zzx;->zzb()I

    move-result v0

    return v0
.end method

.method public zzc()Lcom/google/android/gms/internal/ads/zzbbq$zzq;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbq$zzx$zza;->zza:Lcom/google/android/gms/internal/ads/zzgxr;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbq$zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbq$zzx;->zzc()Lcom/google/android/gms/internal/ads/zzbbq$zzq;

    move-result-object v0

    return-object v0
.end method

.method public zzd(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzbbq$zzx$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzbbq$zzx$zza;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxl;->zzbu()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbq$zzx$zza;->zza:Lcom/google/android/gms/internal/ads/zzgxr;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbq$zzx;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq$zzx;->zzx(Lcom/google/android/gms/internal/ads/zzbbq$zzx;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public zze(I)Lcom/google/android/gms/internal/ads/zzbbq$zzx$zza;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxl;->zzbu()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbq$zzx$zza;->zza:Lcom/google/android/gms/internal/ads/zzgxr;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbq$zzx;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq$zzx;->zzy(Lcom/google/android/gms/internal/ads/zzbbq$zzx;I)V

    return-object p0
.end method

.method public zzf()Lcom/google/android/gms/internal/ads/zzbbq$zzx$zza;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxl;->zzbu()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbq$zzx$zza;->zza:Lcom/google/android/gms/internal/ads/zzgxr;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbq$zzx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq$zzx;->zzz(Lcom/google/android/gms/internal/ads/zzbbq$zzx;)V

    return-object p0
.end method

.method public zzg()Lcom/google/android/gms/internal/ads/zzbbq$zzx$zza;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxl;->zzbu()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbq$zzx$zza;->zza:Lcom/google/android/gms/internal/ads/zzgxr;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbq$zzx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq$zzx;->zzA(Lcom/google/android/gms/internal/ads/zzbbq$zzx;)V

    return-object p0
.end method

.method public zzh(II)Lcom/google/android/gms/internal/ads/zzbbq$zzx$zza;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxl;->zzbu()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbq$zzx$zza;->zza:Lcom/google/android/gms/internal/ads/zzgxr;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbq$zzx;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbbq$zzx;->zzB(Lcom/google/android/gms/internal/ads/zzbbq$zzx;II)V

    return-object p0
.end method

.method public zzi(Lcom/google/android/gms/internal/ads/zzbbq$zzq;)Lcom/google/android/gms/internal/ads/zzbbq$zzx$zza;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxl;->zzbu()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbq$zzx$zza;->zza:Lcom/google/android/gms/internal/ads/zzgxr;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbq$zzx;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq$zzx;->zzC(Lcom/google/android/gms/internal/ads/zzbbq$zzx;Lcom/google/android/gms/internal/ads/zzbbq$zzq;)V

    return-object p0
.end method

.method public zzj()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbq$zzx$zza;->zza:Lcom/google/android/gms/internal/ads/zzgxr;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbq$zzx;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbq$zzx;->zzj()Ljava/util/List;

    move-result-object v0

    .line 1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public zzk()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbq$zzx$zza;->zza:Lcom/google/android/gms/internal/ads/zzgxr;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbq$zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbq$zzx;->zzk()Z

    move-result v0

    return v0
.end method
