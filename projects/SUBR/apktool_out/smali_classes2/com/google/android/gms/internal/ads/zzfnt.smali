.class public final Lcom/google/android/gms/internal/ads/zzfnt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfnt;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfnt;->zzb:Landroid/os/Looper;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfoj;->zza()Lcom/google/android/gms/internal/ads/zzfog;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfnt;->zza:Landroid/content/Context;

    .line 2
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfog;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfog;

    const/4 v1, 0x2

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfog;->zzc(I)Lcom/google/android/gms/internal/ads/zzfog;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfof;->zza()Lcom/google/android/gms/internal/ads/zzfod;

    move-result-object v2

    .line 5
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzfod;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfod;

    .line 6
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzfod;->zzb(I)Lcom/google/android/gms/internal/ads/zzfod;

    .line 7
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfog;->zzb(Lcom/google/android/gms/internal/ads/zzfod;)Lcom/google/android/gms/internal/ads/zzfog;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxl;->zzbn()Lcom/google/android/gms/internal/ads/zzgxr;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfoj;

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfnu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfnt;->zza:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfnt;->zzb:Landroid/os/Looper;

    .line 10
    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzfnu;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzfoj;)V

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfnu;->zza()V

    return-void
.end method
