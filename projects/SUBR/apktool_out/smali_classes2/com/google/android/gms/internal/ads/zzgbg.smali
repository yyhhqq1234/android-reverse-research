.class public final synthetic Lcom/google/android/gms/internal/ads/zzgbg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@23.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzgbh;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfxi;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgbh;Lcom/google/android/gms/internal/ads/zzfxi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgbg;->zza:Lcom/google/android/gms/internal/ads/zzgbh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgbg;->zzb:Lcom/google/android/gms/internal/ads/zzfxi;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgbg;->zza:Lcom/google/android/gms/internal/ads/zzgbh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgbg;->zzb:Lcom/google/android/gms/internal/ads/zzfxi;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgbh;->zzx(Lcom/google/android/gms/internal/ads/zzfxi;)V

    return-void
.end method
