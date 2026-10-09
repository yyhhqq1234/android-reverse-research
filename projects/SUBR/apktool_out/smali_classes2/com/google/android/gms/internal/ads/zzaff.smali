.class final Lcom/google/android/gms/internal/ads/zzaff;
.super Lcom/google/android/gms/internal/ads/zzada;
.source "com.google.android.gms:play-services-ads@@23.6.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzadm;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzafg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzafg;Lcom/google/android/gms/internal/ads/zzadm;Lcom/google/android/gms/internal/ads/zzadm;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaff;->zza:Lcom/google/android/gms/internal/ads/zzadm;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaff;->zzb:Lcom/google/android/gms/internal/ads/zzafg;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzada;-><init>(Lcom/google/android/gms/internal/ads/zzadm;)V

    return-void
.end method


# virtual methods
.method public final zzg(J)Lcom/google/android/gms/internal/ads/zzadk;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaff;->zza:Lcom/google/android/gms/internal/ads/zzadm;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzadm;->zzg(J)Lcom/google/android/gms/internal/ads/zzadk;

    move-result-object p1

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzadk;->zza:Lcom/google/android/gms/internal/ads/zzadn;

    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/zzadn;->zzc:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaff;->zzb:Lcom/google/android/gms/internal/ads/zzafg;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzadk;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzadn;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzafg;->zza(Lcom/google/android/gms/internal/ads/zzafg;)J

    move-result-wide v5

    add-long/2addr v0, v5

    iget-wide v5, p2, Lcom/google/android/gms/internal/ads/zzadn;->zzb:J

    .line 2
    invoke-direct {v4, v5, v6, v0, v1}, Lcom/google/android/gms/internal/ads/zzadn;-><init>(JJ)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzadk;->zzb:Lcom/google/android/gms/internal/ads/zzadn;

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzadn;->zzc:J

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaff;->zzb:Lcom/google/android/gms/internal/ads/zzafg;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzadn;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzafg;->zza(Lcom/google/android/gms/internal/ads/zzafg;)J

    move-result-wide v5

    add-long/2addr v0, v5

    iget-wide p1, p1, Lcom/google/android/gms/internal/ads/zzadn;->zzb:J

    invoke-direct {v2, p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzadn;-><init>(JJ)V

    invoke-direct {v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzadk;-><init>(Lcom/google/android/gms/internal/ads/zzadn;Lcom/google/android/gms/internal/ads/zzadn;)V

    return-object v3
.end method
