.class final Lcom/google/android/gms/internal/ads/zzavx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfph;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfnk;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfob;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzawk;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzavw;

.field private final zze:Lcom/google/android/gms/internal/ads/zzavg;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzawm;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzawe;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzavv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfnk;Lcom/google/android/gms/internal/ads/zzfob;Lcom/google/android/gms/internal/ads/zzawk;Lcom/google/android/gms/internal/ads/zzavw;Lcom/google/android/gms/internal/ads/zzavg;Lcom/google/android/gms/internal/ads/zzawm;Lcom/google/android/gms/internal/ads/zzawe;Lcom/google/android/gms/internal/ads/zzavv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavx;->zza:Lcom/google/android/gms/internal/ads/zzfnk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzavx;->zzb:Lcom/google/android/gms/internal/ads/zzfob;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzavx;->zzc:Lcom/google/android/gms/internal/ads/zzawk;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzavx;->zzd:Lcom/google/android/gms/internal/ads/zzavw;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzavx;->zze:Lcom/google/android/gms/internal/ads/zzavg;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzavx;->zzf:Lcom/google/android/gms/internal/ads/zzawm;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzavx;->zzg:Lcom/google/android/gms/internal/ads/zzawe;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzavx;->zzh:Lcom/google/android/gms/internal/ads/zzavv;

    return-void
.end method

.method private final zze()Ljava/util/Map;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavx;->zza:Lcom/google/android/gms/internal/ads/zzfnk;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzavx;->zzb:Lcom/google/android/gms/internal/ads/zzfob;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfob;->zzb()Lcom/google/android/gms/internal/ads/zzasy;

    move-result-object v2

    const-string v3, "v"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfnk;->zzd()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavx;->zza:Lcom/google/android/gms/internal/ads/zzfnk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfnk;->zzg()Z

    move-result v1

    .line 4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "gms"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzasy;->zzh()Ljava/lang/String;

    move-result-object v1

    const-string v3, "int"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzasy;->zzf()Lcom/google/android/gms/internal/ads/zzatj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzatj;->zza()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "attts"

    .line 7
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzasy;->zzf()Lcom/google/android/gms/internal/ads/zzatj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzatj;->zzd()Lcom/google/android/gms/internal/ads/zzgwj;

    move-result-object v1

    const-string v3, "att"

    .line 9
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzasy;->zzf()Lcom/google/android/gms/internal/ads/zzatj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzatj;->zzf()Ljava/lang/String;

    move-result-object v1

    const-string v2, "attkid"

    .line 11
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavx;->zzd:Lcom/google/android/gms/internal/ads/zzavw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzavw;->zza()Z

    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "up"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Throwable;

    .line 13
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "t"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavx;->zzg:Lcom/google/android/gms/internal/ads/zzawe;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawe;->zzc()J

    move-result-wide v1

    .line 14
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "tcq"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavx;->zzg:Lcom/google/android/gms/internal/ads/zzawe;

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawe;->zzg()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "tpq"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavx;->zzg:Lcom/google/android/gms/internal/ads/zzawe;

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawe;->zzd()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "tcv"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavx;->zzg:Lcom/google/android/gms/internal/ads/zzawe;

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawe;->zzh()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "tpv"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavx;->zzg:Lcom/google/android/gms/internal/ads/zzawe;

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawe;->zzb()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "tchv"

    .line 19
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavx;->zzg:Lcom/google/android/gms/internal/ads/zzawe;

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawe;->zzf()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "tphv"

    .line 21
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavx;->zzg:Lcom/google/android/gms/internal/ads/zzawe;

    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawe;->zza()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "tcc"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavx;->zzg:Lcom/google/android/gms/internal/ads/zzawe;

    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawe;->zze()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "tpc"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavx;->zze:Lcom/google/android/gms/internal/ads/zzavg;

    if-eqz v1, :cond_0

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzavg;->zza()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "nt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavx;->zzf:Lcom/google/android/gms/internal/ads/zzawm;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawm;->zzc()J

    move-result-wide v1

    .line 25
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "vs"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavx;->zzf:Lcom/google/android/gms/internal/ads/zzawm;

    .line 26
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawm;->zzb()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "vf"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final zza()Ljava/util/Map;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavx;->zzc:Lcom/google/android/gms/internal/ads/zzawk;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzavx;->zze()Ljava/util/Map;

    move-result-object v1

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawk;->zza()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "lts"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public final zzb()Ljava/util/Map;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzavx;->zze()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavx;->zzb:Lcom/google/android/gms/internal/ads/zzfob;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfob;->zza()Lcom/google/android/gms/internal/ads/zzasy;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzavx;->zza:Lcom/google/android/gms/internal/ads/zzfnk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfnk;->zzh()Z

    move-result v2

    .line 3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "gai"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzasy;->zzg()Ljava/lang/String;

    move-result-object v2

    const-string v3, "did"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzasy;->zzal()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const-string v3, "dst"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzasy;->zzai()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "doo"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final zzc()Ljava/util/Map;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavx;->zzh:Lcom/google/android/gms/internal/ads/zzavv;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzavx;->zze()Ljava/util/Map;

    move-result-object v1

    if-eqz v0, :cond_0

    const-string v2, "vst"

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzavv;->zza()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method final zzd(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavx;->zzc:Lcom/google/android/gms/internal/ads/zzawk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzawk;->zzd(Landroid/view/View;)V

    return-void
.end method
