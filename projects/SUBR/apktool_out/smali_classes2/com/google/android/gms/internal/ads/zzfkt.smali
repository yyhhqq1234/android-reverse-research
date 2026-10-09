.class public final Lcom/google/android/gms/internal/ads/zzfkt;
.super Lcom/google/android/gms/internal/ads/zzfkp;
.source "com.google.android.gms:play-services-ads@@23.6.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfkr;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzflo;

.field private zzc:Lcom/google/android/gms/internal/ads/zzfnb;

.field private zzd:Lcom/google/android/gms/internal/ads/zzfma;

.field private zze:Z

.field private zzf:Z

.field private final zzg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfkq;Lcom/google/android/gms/internal/ads/zzfkr;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfkp;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzflo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzflo;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkt;->zzb:Lcom/google/android/gms/internal/ads/zzflo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfkt;->zze:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfkt;->zzf:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfkt;->zza:Lcom/google/android/gms/internal/ads/zzfkr;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfkt;->zzg:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfkt;->zzk(Landroid/view/View;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfkr;->zzd()Lcom/google/android/gms/internal/ads/zzfks;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/google/android/gms/internal/ads/zzfks;->zza:Lcom/google/android/gms/internal/ads/zzfks;

    if-eq v1, v2, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfkr;->zzd()Lcom/google/android/gms/internal/ads/zzfks;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfks;->zzc:Lcom/google/android/gms/internal/ads/zzfks;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfme;

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfkr;->zzi()Ljava/util/Map;

    move-result-object p2

    .line 6
    invoke-direct {v1, p3, p2, v0}, Lcom/google/android/gms/internal/ads/zzfme;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfkt;->zzd:Lcom/google/android/gms/internal/ads/zzfma;

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfmb;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfkr;->zza()Landroid/webkit/WebView;

    move-result-object p2

    .line 4
    invoke-direct {v0, p3, p2}, Lcom/google/android/gms/internal/ads/zzfmb;-><init>(Ljava/lang/String;Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkt;->zzd:Lcom/google/android/gms/internal/ads/zzfma;

    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfkt;->zzd:Lcom/google/android/gms/internal/ads/zzfma;

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfma;->zzo()V

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzflk;->zza()Lcom/google/android/gms/internal/ads/zzflk;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzflk;->zzd(Lcom/google/android/gms/internal/ads/zzfkt;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfkt;->zzd:Lcom/google/android/gms/internal/ads/zzfma;

    .line 9
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzfma;->zzf(Lcom/google/android/gms/internal/ads/zzfkq;)V

    return-void
.end method

.method private final zzk(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfnb;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzfnb;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkt;->zzc:Lcom/google/android/gms/internal/ads/zzfnb;

    return-void
.end method


# virtual methods
.method public final zzb(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfkw;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzfkt;->zzf:Z

    if-eqz p3, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfkt;->zzb:Lcom/google/android/gms/internal/ads/zzflo;

    const-string v0, "Ad overlay"

    invoke-virtual {p3, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzflo;->zzb(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfkw;Ljava/lang/String;)V

    return-void
.end method

.method public final zzc()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfkt;->zzf:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkt;->zzc:Lcom/google/android/gms/internal/ads/zzfnb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfnb;->clear()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfkt;->zzf:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkt;->zzb:Lcom/google/android/gms/internal/ads/zzflo;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzflo;->zzc()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfkt;->zzf:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkt;->zzd:Lcom/google/android/gms/internal/ads/zzfma;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfma;->zze()V

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzflk;->zza()Lcom/google/android/gms/internal/ads/zzflk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzflk;->zze(Lcom/google/android/gms/internal/ads/zzfkt;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkt;->zzd:Lcom/google/android/gms/internal/ads/zzfma;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfma;->zzc()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkt;->zzd:Lcom/google/android/gms/internal/ads/zzfma;

    return-void
.end method

.method public final zzd(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfkt;->zzf:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfkt;->zzf()Landroid/view/View;

    move-result-object v0

    if-eq v0, p1, :cond_2

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfkt;->zzk(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkt;->zzd:Lcom/google/android/gms/internal/ads/zzfma;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfma;->zzb()V

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzflk;->zza()Lcom/google/android/gms/internal/ads/zzflk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzflk;->zzc()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfkt;

    if-eq v1, p0, :cond_1

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfkt;->zzf()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 8
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfkt;->zzc:Lcom/google/android/gms/internal/ads/zzfnb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfnb;->clear()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final zze()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfkt;->zze:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkt;->zzd:Lcom/google/android/gms/internal/ads/zzfma;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfkt;->zze:Z

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzflk;->zza()Lcom/google/android/gms/internal/ads/zzflk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzflk;->zzf(Lcom/google/android/gms/internal/ads/zzfkt;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfls;->zzb()Lcom/google/android/gms/internal/ads/zzfls;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfls;->zza()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfkt;->zzd:Lcom/google/android/gms/internal/ads/zzfma;

    .line 3
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfma;->zzl(F)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkt;->zzd:Lcom/google/android/gms/internal/ads/zzfma;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfli;->zza()Lcom/google/android/gms/internal/ads/zzfli;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfli;->zzb()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfma;->zzg(Ljava/util/Date;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkt;->zzd:Lcom/google/android/gms/internal/ads/zzfma;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfkt;->zza:Lcom/google/android/gms/internal/ads/zzfkr;

    .line 5
    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzfma;->zzi(Lcom/google/android/gms/internal/ads/zzfkt;Lcom/google/android/gms/internal/ads/zzfkr;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final zzf()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkt;->zzc:Lcom/google/android/gms/internal/ads/zzfnb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfnb;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzfma;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkt;->zzd:Lcom/google/android/gms/internal/ads/zzfma;

    return-object v0
.end method

.method public final zzh()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkt;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final zzi()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkt;->zzb:Lcom/google/android/gms/internal/ads/zzflo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzflo;->zza()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzj()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfkt;->zze:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfkt;->zzf:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
