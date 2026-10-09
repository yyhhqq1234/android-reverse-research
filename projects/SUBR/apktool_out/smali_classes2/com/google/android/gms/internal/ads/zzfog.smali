.class public final Lcom/google/android/gms/internal/ads/zzfog;
.super Lcom/google/android/gms/internal/ads/zzgxl;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgzd;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfoi;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfoj;->zzb()Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgxl;-><init>(Lcom/google/android/gms/internal/ads/zzgxr;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfog;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxl;->zzbu()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfog;->zza:Lcom/google/android/gms/internal/ads/zzgxr;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzfoj;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzfoj;->zzc(Lcom/google/android/gms/internal/ads/zzfoj;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfod;)Lcom/google/android/gms/internal/ads/zzfog;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxl;->zzbu()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfog;->zza:Lcom/google/android/gms/internal/ads/zzgxr;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzfoj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgxl;->zzbn()Lcom/google/android/gms/internal/ads/zzgxr;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfof;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzfoj;->zzd(Lcom/google/android/gms/internal/ads/zzfoj;Lcom/google/android/gms/internal/ads/zzfof;)V

    return-object p0
.end method

.method public final zzc(I)Lcom/google/android/gms/internal/ads/zzfog;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxl;->zzbu()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfog;->zza:Lcom/google/android/gms/internal/ads/zzgxr;

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfoj;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzfoj;->zzf(Lcom/google/android/gms/internal/ads/zzfoj;I)V

    return-object p0
.end method
