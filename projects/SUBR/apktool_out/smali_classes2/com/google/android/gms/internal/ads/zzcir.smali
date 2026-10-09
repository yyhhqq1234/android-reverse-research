.class final Lcom/google/android/gms/internal/ads/zzcir;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeyd;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/ads/internal/client/zzs;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzcih;

.field private final zze:Lcom/google/android/gms/internal/ads/zzhfa;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzhfa;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzhfa;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzhfa;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzhfa;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzhfa;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcih;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzs;Lcom/google/android/gms/internal/ads/zzcjm;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcir;->zzd:Lcom/google/android/gms/internal/ads/zzcih;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcir;->zza:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcir;->zzb:Lcom/google/android/gms/ads/internal/client/zzs;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcir;->zzc:Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhes;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzher;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcir;->zze:Lcom/google/android/gms/internal/ads/zzhfa;

    .line 2
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzhes;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzher;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzcir;->zzf:Lcom/google/android/gms/internal/ads/zzhfa;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcih;->zzY(Lcom/google/android/gms/internal/ads/zzcih;)Lcom/google/android/gms/internal/ads/zzhfa;

    move-result-object p2

    new-instance p3, Lcom/google/android/gms/internal/ads/zzeko;

    invoke-direct {p3, p2}, Lcom/google/android/gms/internal/ads/zzeko;-><init>(Lcom/google/android/gms/internal/ads/zzhfj;)V

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzheq;->zzc(Lcom/google/android/gms/internal/ads/zzhfa;)Lcom/google/android/gms/internal/ads/zzhfa;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/gms/internal/ads/zzcir;->zzg:Lcom/google/android/gms/internal/ads/zzhfa;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzekt;->zza()Lcom/google/android/gms/internal/ads/zzekt;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzheq;->zzc(Lcom/google/android/gms/internal/ads/zzhfa;)Lcom/google/android/gms/internal/ads/zzhfa;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/gms/internal/ads/zzcir;->zzh:Lcom/google/android/gms/internal/ads/zzhfa;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdat;->zza()Lcom/google/android/gms/internal/ads/zzdat;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzheq;->zzc(Lcom/google/android/gms/internal/ads/zzhfa;)Lcom/google/android/gms/internal/ads/zzhfa;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/gms/internal/ads/zzcir;->zzi:Lcom/google/android/gms/internal/ads/zzhfa;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcih;->zzS(Lcom/google/android/gms/internal/ads/zzcih;)Lcom/google/android/gms/internal/ads/zzhfa;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcih;->zzN(Lcom/google/android/gms/internal/ads/zzcih;)Lcom/google/android/gms/internal/ads/zzhfa;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfcl;->zza()Lcom/google/android/gms/internal/ads/zzfcl;

    move-result-object v7

    new-instance p1, Lcom/google/android/gms/internal/ads/zzeyb;

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzeyb;-><init>(Lcom/google/android/gms/internal/ads/zzhfj;Lcom/google/android/gms/internal/ads/zzhfj;Lcom/google/android/gms/internal/ads/zzhfj;Lcom/google/android/gms/internal/ads/zzhfj;Lcom/google/android/gms/internal/ads/zzhfj;Lcom/google/android/gms/internal/ads/zzhfj;Lcom/google/android/gms/internal/ads/zzhfj;Lcom/google/android/gms/internal/ads/zzhfj;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzheq;->zzc(Lcom/google/android/gms/internal/ads/zzhfa;)Lcom/google/android/gms/internal/ads/zzhfa;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcir;->zzj:Lcom/google/android/gms/internal/ads/zzhfa;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzejt;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcir;->zzj:Lcom/google/android/gms/internal/ads/zzhfa;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzejt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfa;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/internal/ads/zzeya;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcir;->zzg:Lcom/google/android/gms/internal/ads/zzhfa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfa;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/internal/ads/zzekn;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcir;->zzd:Lcom/google/android/gms/internal/ads/zzcih;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcih;->zzH(Lcom/google/android/gms/internal/ads/zzcih;)Lcom/google/android/gms/internal/ads/zzcha;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzchs;->zzc(Lcom/google/android/gms/internal/ads/zzcha;)Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcir;->zzd:Lcom/google/android/gms/internal/ads/zzcih;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcih;->zzY(Lcom/google/android/gms/internal/ads/zzcih;)Lcom/google/android/gms/internal/ads/zzhfa;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfa;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/gms/internal/ads/zzdrw;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcir;->zza:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcir;->zzb:Lcom/google/android/gms/ads/internal/client/zzs;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcir;->zzc:Ljava/lang/String;

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzejt;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzs;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzeya;Lcom/google/android/gms/internal/ads/zzekn;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzdrw;)V

    return-object v9
.end method
