.class public final Lcom/google/android/gms/internal/ads/zzdnh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcvr;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcxa;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcxn;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzcxz;

.field private final zze:Lcom/google/android/gms/internal/ads/zzdap;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzfbo;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfbr;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzcmk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcvr;Lcom/google/android/gms/internal/ads/zzcxa;Lcom/google/android/gms/internal/ads/zzcxn;Lcom/google/android/gms/internal/ads/zzcxz;Lcom/google/android/gms/internal/ads/zzdap;Lcom/google/android/gms/internal/ads/zzfbo;Lcom/google/android/gms/internal/ads/zzfbr;Lcom/google/android/gms/internal/ads/zzcmk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnh;->zza:Lcom/google/android/gms/internal/ads/zzcvr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdnh;->zzb:Lcom/google/android/gms/internal/ads/zzcxa;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdnh;->zzc:Lcom/google/android/gms/internal/ads/zzcxn;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdnh;->zzd:Lcom/google/android/gms/internal/ads/zzcxz;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdnh;->zze:Lcom/google/android/gms/internal/ads/zzdap;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdnh;->zzf:Lcom/google/android/gms/internal/ads/zzfbo;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdnh;->zzg:Lcom/google/android/gms/internal/ads/zzfbr;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdnh;->zzh:Lcom/google/android/gms/internal/ads/zzcmk;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdnl;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnh;->zzb:Lcom/google/android/gms/internal/ads/zzcxa;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdnl;->zzb(Lcom/google/android/gms/internal/ads/zzdnl;)Lcom/google/android/gms/internal/ads/zzdmy;

    move-result-object v1

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzdng;

    invoke-direct {v6, v0}, Lcom/google/android/gms/internal/ads/zzdng;-><init>(Lcom/google/android/gms/internal/ads/zzcxa;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdnh;->zza:Lcom/google/android/gms/internal/ads/zzcvr;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdnh;->zzc:Lcom/google/android/gms/internal/ads/zzcxn;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdnh;->zzd:Lcom/google/android/gms/internal/ads/zzcxz;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdnh;->zze:Lcom/google/android/gms/internal/ads/zzdap;

    .line 1
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzdmy;->zzh(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/internal/ads/zzbif;Lcom/google/android/gms/ads/internal/overlay/zzr;Lcom/google/android/gms/internal/ads/zzbih;Lcom/google/android/gms/ads/internal/overlay/zzac;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnh;->zzf:Lcom/google/android/gms/internal/ads/zzfbo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdnh;->zzg:Lcom/google/android/gms/internal/ads/zzfbr;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdnh;->zzh:Lcom/google/android/gms/internal/ads/zzcmk;

    .line 3
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdnl;->zzh(Lcom/google/android/gms/internal/ads/zzfbo;Lcom/google/android/gms/internal/ads/zzfbr;Lcom/google/android/gms/internal/ads/zzcmk;)V

    return-void
.end method
