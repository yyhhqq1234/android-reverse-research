.class final Lcom/google/android/gms/internal/ads/zzcjh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdoe;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcih;

.field private zzb:Lcom/google/android/gms/internal/ads/zzezj;

.field private zzc:Lcom/google/android/gms/internal/ads/zzeym;

.field private zzd:Lcom/google/android/gms/internal/ads/zzdbm;

.field private zze:Lcom/google/android/gms/internal/ads/zzcvc;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcih;Lcom/google/android/gms/internal/ads/zzcjm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zza:Lcom/google/android/gms/internal/ads/zzcih;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzeym;)Lcom/google/android/gms/internal/ads/zzcuy;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzc:Lcom/google/android/gms/internal/ads/zzeym;

    return-object p0
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzezj;)Lcom/google/android/gms/internal/ads/zzcuy;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzb:Lcom/google/android/gms/internal/ads/zzezj;

    return-object p0
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzdbm;)Lcom/google/android/gms/internal/ads/zzdoe;
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdbm;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzd:Lcom/google/android/gms/internal/ads/zzdbm;

    return-object p0
.end method

.method public final bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzcvc;)Lcom/google/android/gms/internal/ads/zzdoe;
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcvc;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zze:Lcom/google/android/gms/internal/ads/zzcvc;

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzdof;
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzd:Lcom/google/android/gms/internal/ads/zzdbm;

    const-class v1, Lcom/google/android/gms/internal/ads/zzdbm;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhez;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zze:Lcom/google/android/gms/internal/ads/zzcvc;

    const-class v1, Lcom/google/android/gms/internal/ads/zzcvc;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhez;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcji;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzcsf;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzcsf;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/ads/zzfdo;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzfdo;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzcue;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzcue;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/ads/zzdsl;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzdsl;-><init>()V

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzd:Lcom/google/android/gms/internal/ads/zzdbm;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zze:Lcom/google/android/gms/internal/ads/zzcvc;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzehb;->zza()Lcom/google/android/gms/internal/ads/zzegz;

    move-result-object v10

    iget-object v12, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzb:Lcom/google/android/gms/internal/ads/zzezj;

    iget-object v13, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzc:Lcom/google/android/gms/internal/ads/zzeym;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zza:Lcom/google/android/gms/internal/ads/zzcih;

    const/4 v11, 0x0

    const/4 v14, 0x0

    move-object v2, v0

    .line 3
    invoke-direct/range {v2 .. v14}, Lcom/google/android/gms/internal/ads/zzcji;-><init>(Lcom/google/android/gms/internal/ads/zzcih;Lcom/google/android/gms/internal/ads/zzcsf;Lcom/google/android/gms/internal/ads/zzfdo;Lcom/google/android/gms/internal/ads/zzcue;Lcom/google/android/gms/internal/ads/zzdsl;Lcom/google/android/gms/internal/ads/zzdbm;Lcom/google/android/gms/internal/ads/zzcvc;Lcom/google/android/gms/internal/ads/zzegz;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzezj;Lcom/google/android/gms/internal/ads/zzeym;Lcom/google/android/gms/internal/ads/zzcjm;)V

    return-object v0
.end method

.method public final bridge synthetic zzh()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcjh;->zze()Lcom/google/android/gms/internal/ads/zzdof;

    move-result-object v0

    return-object v0
.end method
