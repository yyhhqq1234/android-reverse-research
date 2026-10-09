.class public final Lcom/google/android/gms/internal/ads/zzela;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdiq;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzekn;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcvw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdiq;Lcom/google/android/gms/internal/ads/zzdrw;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzela;->zza:Lcom/google/android/gms/internal/ads/zzdiq;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzekn;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzekn;-><init>(Lcom/google/android/gms/internal/ads/zzdrw;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzela;->zzb:Lcom/google/android/gms/internal/ads/zzekn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdiq;->zzg()Lcom/google/android/gms/internal/ads/zzbmi;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzekz;

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzekz;-><init>(Lcom/google/android/gms/internal/ads/zzekn;Lcom/google/android/gms/internal/ads/zzbmi;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzela;->zzc:Lcom/google/android/gms/internal/ads/zzcvw;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzcvw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzela;->zzc:Lcom/google/android/gms/internal/ads/zzcvw;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzcxh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzela;->zzb:Lcom/google/android/gms/internal/ads/zzekn;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzdgl;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdgl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzela;->zzb:Lcom/google/android/gms/internal/ads/zzekn;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzela;->zza:Lcom/google/android/gms/internal/ads/zzdiq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzekn;->zzg()Lcom/google/android/gms/ads/internal/client/zzbl;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzdgl;-><init>(Lcom/google/android/gms/internal/ads/zzdiq;Lcom/google/android/gms/ads/internal/client/zzbl;)V

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzekn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzela;->zzb:Lcom/google/android/gms/internal/ads/zzekn;

    return-object v0
.end method

.method public final zze(Lcom/google/android/gms/ads/internal/client/zzbl;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzela;->zzb:Lcom/google/android/gms/internal/ads/zzekn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzekn;->zzj(Lcom/google/android/gms/ads/internal/client/zzbl;)V

    return-void
.end method
