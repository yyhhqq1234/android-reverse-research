.class public final synthetic Lcom/google/android/gms/internal/ads/zzju;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzlf;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzkc;Lcom/google/android/gms/internal/ads/zzlf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzju;->zza:Lcom/google/android/gms/internal/ads/zzlf;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzju;->zza:Lcom/google/android/gms/internal/ads/zzlf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzkc;->zzs(Lcom/google/android/gms/internal/ads/zzlf;)V

    return-void
.end method
