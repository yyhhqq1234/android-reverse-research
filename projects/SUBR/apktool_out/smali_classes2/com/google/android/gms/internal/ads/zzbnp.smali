.class public final synthetic Lcom/google/android/gms/internal/ads/zzbnp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzbnq;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbmn;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbnq;Lcom/google/android/gms/internal/ads/zzbmn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbnp;->zza:Lcom/google/android/gms/internal/ads/zzbnq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbnp;->zzb:Lcom/google/android/gms/internal/ads/zzbmn;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnp;->zzb:Lcom/google/android/gms/internal/ads/zzbmn;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbmn;

    const-string v1, "/result"

    .line 2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbjo;->zzo:Lcom/google/android/gms/internal/ads/zzbkf;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbmn;->zzr(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjp;)V

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbmn;->zzc()V

    return-void
.end method
