.class public final Lcom/google/android/gms/internal/ads/zzfh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzfxn;

.field public final zzb:Lcom/google/android/gms/internal/ads/zzfa;

.field public final zzc:Lcom/google/android/gms/internal/ads/zzfc;

.field public final zzd:Lcom/google/android/gms/internal/ads/zzfg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzey;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfa;Lcom/google/android/gms/internal/ads/zzfc;Lcom/google/android/gms/internal/ads/zzfg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfxn;->zzl(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzfxn;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfxn;->zzn()Lcom/google/android/gms/internal/ads/zzfxn;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfh;->zza:Lcom/google/android/gms/internal/ads/zzfxn;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfh;->zzb:Lcom/google/android/gms/internal/ads/zzfa;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfh;->zzc:Lcom/google/android/gms/internal/ads/zzfc;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfh;->zzd:Lcom/google/android/gms/internal/ads/zzfg;

    return-void
.end method
