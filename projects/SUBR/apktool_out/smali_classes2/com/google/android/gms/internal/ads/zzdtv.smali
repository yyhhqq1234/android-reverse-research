.class public final synthetic Lcom/google/android/gms/internal/ads/zzdtv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdua;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzblr;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzfdh;

.field public final synthetic zze:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdua;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzblr;Lcom/google/android/gms/internal/ads/zzfdh;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdtv;->zza:Lcom/google/android/gms/internal/ads/zzdua;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdtv;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdtv;->zzc:Lcom/google/android/gms/internal/ads/zzblr;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdtv;->zzd:Lcom/google/android/gms/internal/ads/zzfdh;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdtv;->zze:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtv;->zza:Lcom/google/android/gms/internal/ads/zzdua;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdtv;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdtv;->zzc:Lcom/google/android/gms/internal/ads/zzblr;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdtv;->zzd:Lcom/google/android/gms/internal/ads/zzfdh;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdtv;->zze:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdua;->zzn(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzblr;Lcom/google/android/gms/internal/ads/zzfdh;Ljava/util/List;)V

    return-void
.end method
