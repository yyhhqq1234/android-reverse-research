.class public final synthetic Lcom/google/android/gms/internal/ads/zzfac;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeys;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/ads/internal/client/zzu;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/ads/internal/client/zzu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfac;->zza:Lcom/google/android/gms/ads/internal/client/zzu;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/ads/internal/client/zzdr;

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfac;->zza:Lcom/google/android/gms/ads/internal/client/zzu;

    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/internal/client/zzdr;->zze(Lcom/google/android/gms/ads/internal/client/zzu;)V

    return-void
.end method
