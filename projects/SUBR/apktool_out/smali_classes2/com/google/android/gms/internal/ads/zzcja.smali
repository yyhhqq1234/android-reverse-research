.class final Lcom/google/android/gms/internal/ads/zzcja;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdft;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcih;

.field private zzb:Lcom/google/android/gms/internal/ads/zzezj;

.field private zzc:Lcom/google/android/gms/internal/ads/zzeym;

.field private zzd:Lcom/google/android/gms/internal/ads/zzdbm;

.field private zze:Lcom/google/android/gms/internal/ads/zzcvc;

.field private zzf:Lcom/google/android/gms/internal/ads/zzeiw;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcih;Lcom/google/android/gms/internal/ads/zzcjm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcja;->zza:Lcom/google/android/gms/internal/ads/zzcih;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzeym;)Lcom/google/android/gms/internal/ads/zzcuy;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcja;->zzc:Lcom/google/android/gms/internal/ads/zzeym;

    return-object p0
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzezj;)Lcom/google/android/gms/internal/ads/zzcuy;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcja;->zzb:Lcom/google/android/gms/internal/ads/zzezj;

    return-object p0
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzeiw;)Lcom/google/android/gms/internal/ads/zzdft;
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzeiw;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcja;->zzf:Lcom/google/android/gms/internal/ads/zzeiw;

    return-object p0
.end method

.method public final bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzdbm;)Lcom/google/android/gms/internal/ads/zzdft;
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdbm;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcja;->zzd:Lcom/google/android/gms/internal/ads/zzdbm;

    return-object p0
.end method

.method public final bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzcvc;)Lcom/google/android/gms/internal/ads/zzdft;
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcvc;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcja;->zze:Lcom/google/android/gms/internal/ads/zzcvc;

    return-object p0
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzdfu;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcja;->zzd:Lcom/google/android/gms/internal/ads/zzdbm;

    const-class v2, Lcom/google/android/gms/internal/ads/zzdbm;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzhez;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcja;->zze:Lcom/google/android/gms/internal/ads/zzcvc;

    const-class v2, Lcom/google/android/gms/internal/ads/zzcvc;

    .line 2
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzhez;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcja;->zzf:Lcom/google/android/gms/internal/ads/zzeiw;

    const-class v2, Lcom/google/android/gms/internal/ads/zzeiw;

    .line 3
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzhez;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcjb;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzcsf;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzcsf;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzfdo;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzfdo;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/ads/zzcue;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzcue;-><init>()V

    new-instance v8, Lcom/google/android/gms/internal/ads/zzdsl;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzdsl;-><init>()V

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzcja;->zzd:Lcom/google/android/gms/internal/ads/zzdbm;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzcja;->zze:Lcom/google/android/gms/internal/ads/zzcvc;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzehb;->zza()Lcom/google/android/gms/internal/ads/zzegz;

    move-result-object v11

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzcja;->zzf:Lcom/google/android/gms/internal/ads/zzeiw;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzcja;->zzb:Lcom/google/android/gms/internal/ads/zzezj;

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzcja;->zzc:Lcom/google/android/gms/internal/ads/zzeym;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzcja;->zza:Lcom/google/android/gms/internal/ads/zzcih;

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object v3, v1

    .line 4
    invoke-direct/range {v3 .. v16}, Lcom/google/android/gms/internal/ads/zzcjb;-><init>(Lcom/google/android/gms/internal/ads/zzcih;Lcom/google/android/gms/internal/ads/zzcsf;Lcom/google/android/gms/internal/ads/zzfdo;Lcom/google/android/gms/internal/ads/zzcue;Lcom/google/android/gms/internal/ads/zzdsl;Lcom/google/android/gms/internal/ads/zzdbm;Lcom/google/android/gms/internal/ads/zzcvc;Lcom/google/android/gms/internal/ads/zzegz;Lcom/google/android/gms/internal/ads/zzeiw;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzezj;Lcom/google/android/gms/internal/ads/zzeym;Lcom/google/android/gms/internal/ads/zzcjm;)V

    return-object v1
.end method

.method public final bridge synthetic zzh()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcja;->zzf()Lcom/google/android/gms/internal/ads/zzdfu;

    move-result-object v0

    return-object v0
.end method
