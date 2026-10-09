.class public final synthetic Lcom/google/android/gms/internal/ads/zzets;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzetu;

.field public final synthetic zzb:J

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzetr;

.field public final synthetic zzd:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzetu;JLcom/google/android/gms/internal/ads/zzetr;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzets;->zza:Lcom/google/android/gms/internal/ads/zzetu;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzets;->zzb:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzets;->zzc:Lcom/google/android/gms/internal/ads/zzetr;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzets;->zzd:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzets;->zza:Lcom/google/android/gms/internal/ads/zzetu;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzets;->zzb:J

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzets;->zzc:Lcom/google/android/gms/internal/ads/zzetr;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzets;->zzd:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzetu;->zzb(JLcom/google/android/gms/internal/ads/zzetr;Landroid/os/Bundle;)V

    return-void
.end method
