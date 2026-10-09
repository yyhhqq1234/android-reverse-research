.class public final Lcom/google/android/gms/internal/ads/zzaux;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"


# instance fields
.field final zza:Z

.field final zzb:Ljava/lang/String;

.field final zzc:Lcom/google/android/gms/internal/ads/zzary;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzarg;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzarg;->zzf()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaux;->zzb:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzarg;->zzi()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaux;->zza:Z

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzarg;->zzc()Lcom/google/android/gms/internal/ads/zzary;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaux;->zzc:Lcom/google/android/gms/internal/ads/zzary;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzarg;->zzd()Lcom/google/android/gms/internal/ads/zzasb;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaux;->zzb:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaux;->zza:Z

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzary;->zzc()Lcom/google/android/gms/internal/ads/zzary;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaux;->zzc:Lcom/google/android/gms/internal/ads/zzary;

    .line 6
    sget p1, Lcom/google/android/gms/internal/ads/zzasb;->zza:I

    return-void
.end method
