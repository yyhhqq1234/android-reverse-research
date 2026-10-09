.class public final synthetic Lcom/google/android/gms/internal/ads/zzfso;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzfsw;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzftd;

.field public final synthetic zzc:I

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzftb;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfsw;Lcom/google/android/gms/internal/ads/zzftd;ILcom/google/android/gms/internal/ads/zzftb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfso;->zza:Lcom/google/android/gms/internal/ads/zzfsw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfso;->zzb:Lcom/google/android/gms/internal/ads/zzftd;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzfso;->zzc:I

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfso;->zzd:Lcom/google/android/gms/internal/ads/zzftb;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfso;->zza:Lcom/google/android/gms/internal/ads/zzfsw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfso;->zzb:Lcom/google/android/gms/internal/ads/zzftd;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfso;->zzc:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfso;->zzd:Lcom/google/android/gms/internal/ads/zzftb;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfsw;->zze(Lcom/google/android/gms/internal/ads/zzftd;ILcom/google/android/gms/internal/ads/zzftb;)V

    return-void
.end method
