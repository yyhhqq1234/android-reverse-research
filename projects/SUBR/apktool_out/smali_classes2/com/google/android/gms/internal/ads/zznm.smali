.class public final synthetic Lcom/google/android/gms/internal/ads/zznm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdk;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzlu;

.field public final synthetic zzb:I

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbi;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzbi;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzlu;ILcom/google/android/gms/internal/ads/zzbi;Lcom/google/android/gms/internal/ads/zzbi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zznm;->zza:Lcom/google/android/gms/internal/ads/zzlu;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zznm;->zzb:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zznm;->zzc:Lcom/google/android/gms/internal/ads/zzbi;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zznm;->zzd:Lcom/google/android/gms/internal/ads/zzbi;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzlw;

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznm;->zza:Lcom/google/android/gms/internal/ads/zzlu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zznm;->zzd:Lcom/google/android/gms/internal/ads/zzbi;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zznm;->zzb:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zznm;->zzc:Lcom/google/android/gms/internal/ads/zzbi;

    invoke-interface {p1, v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzlw;->zzm(Lcom/google/android/gms/internal/ads/zzlu;Lcom/google/android/gms/internal/ads/zzbi;Lcom/google/android/gms/internal/ads/zzbi;I)V

    return-void
.end method
