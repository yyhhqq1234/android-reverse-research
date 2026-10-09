.class final Lcom/google/android/gms/internal/ads/zzgxo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgxf;


# instance fields
.field final zza:I

.field final zzb:Lcom/google/android/gms/internal/ads/zzhau;

.field final zzc:Z

.field final zzd:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgxw;ILcom/google/android/gms/internal/ads/zzhau;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzgxo;->zza:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgxo;->zzb:Lcom/google/android/gms/internal/ads/zzhau;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzgxo;->zzc:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzgxo;->zzd:Z

    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgxo;

    .line 2
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzgxo;->zza:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgxo;->zza:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgxo;->zza:I

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzhau;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxo;->zzb:Lcom/google/android/gms/internal/ads/zzhau;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzhav;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxo;->zzb:Lcom/google/android/gms/internal/ads/zzhau;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhau;->zza()Lcom/google/android/gms/internal/ads/zzhav;

    move-result-object v0

    return-object v0
.end method

.method public final zzd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgxo;->zzd:Z

    return v0
.end method

.method public final zze()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgxo;->zzc:Z

    return v0
.end method
