.class public final Lcom/google/android/gms/internal/ads/zzdmg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"


# instance fields
.field private final zza:Ljava/util/concurrent/Executor;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcnr;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzddm;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzcmk;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzcnr;Lcom/google/android/gms/internal/ads/zzddm;Lcom/google/android/gms/internal/ads/zzcmk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmg;->zza:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdmg;->zzc:Lcom/google/android/gms/internal/ads/zzddm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdmg;->zzb:Lcom/google/android/gms/internal/ads/zzcnr;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdmg;->zzd:Lcom/google/android/gms/internal/ads/zzcmk;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzcex;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmg;->zzc:Lcom/google/android/gms/internal/ads/zzddm;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcex;->zzF()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzddm;->zza(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmg;->zzc:Lcom/google/android/gms/internal/ads/zzddm;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdmc;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzdmc;-><init>(Lcom/google/android/gms/internal/ads/zzcex;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdmg;->zza:Ljava/util/concurrent/Executor;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdbj;->zzo(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmg;->zzc:Lcom/google/android/gms/internal/ads/zzddm;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdmd;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzdmd;-><init>(Lcom/google/android/gms/internal/ads/zzcex;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdmg;->zza:Ljava/util/concurrent/Executor;

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdbj;->zzo(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmg;->zzc:Lcom/google/android/gms/internal/ads/zzddm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmg;->zzb:Lcom/google/android/gms/internal/ads/zzcnr;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdmg;->zza:Ljava/util/concurrent/Executor;

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdbj;->zzo(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmg;->zzb:Lcom/google/android/gms/internal/ads/zzcnr;

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcnr;->zzf(Lcom/google/android/gms/internal/ads/zzcex;)V

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcex;->zzN()Lcom/google/android/gms/internal/ads/zzcgp;

    move-result-object v0

    .line 7
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcl;->zzjY:Lcom/google/android/gms/internal/ads/zzbcc;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbe;->zzc()Lcom/google/android/gms/internal/ads/zzbcj;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcj;->zza(Lcom/google/android/gms/internal/ads/zzbcc;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmg;->zzd:Lcom/google/android/gms/internal/ads/zzcmk;

    .line 9
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzcgp;->zzL(Lcom/google/android/gms/internal/ads/zzcmk;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmg;->zzd:Lcom/google/android/gms/internal/ads/zzcmk;

    const/4 v2, 0x0

    .line 10
    invoke-interface {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzcgp;->zzM(Lcom/google/android/gms/internal/ads/zzcmk;Lcom/google/android/gms/internal/ads/zzebk;Lcom/google/android/gms/internal/ads/zzdrw;)V

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdme;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdme;-><init>(Lcom/google/android/gms/internal/ads/zzdmg;)V

    const-string v1, "/trackActiveViewUnit"

    .line 11
    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzcex;->zzag(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjp;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdmf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdmf;-><init>(Lcom/google/android/gms/internal/ads/zzdmg;)V

    const-string v1, "/untrackActiveViewUnit"

    .line 12
    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzcex;->zzag(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjp;)V

    return-void
.end method

.method final synthetic zzb(Lcom/google/android/gms/internal/ads/zzcex;Ljava/util/Map;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmg;->zzb:Lcom/google/android/gms/internal/ads/zzcnr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcnr;->zzb()V

    return-void
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzcex;Ljava/util/Map;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmg;->zzb:Lcom/google/android/gms/internal/ads/zzcnr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcnr;->zza()V

    return-void
.end method
