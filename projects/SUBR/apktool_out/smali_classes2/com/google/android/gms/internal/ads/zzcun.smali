.class final Lcom/google/android/gms/internal/ads/zzcun;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgcd;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzcuo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcuo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcun;->zza:Lcom/google/android/gms/internal/ads/zzcuo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcun;->zza:Lcom/google/android/gms/internal/ads/zzcuo;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcuo;->zzg(Lcom/google/android/gms/internal/ads/zzcuo;)Lcom/google/android/gms/internal/ads/zzcwl;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcwl;->zza()V

    return-void
.end method
