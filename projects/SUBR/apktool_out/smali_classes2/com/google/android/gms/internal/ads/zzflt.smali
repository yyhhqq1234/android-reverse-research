.class final Lcom/google/android/gms/internal/ads/zzflt;
.super Landroid/content/BroadcastReceiver;
.source "com.google.android.gms:play-services-ads@@23.6.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzflu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzflu;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzflt;->zza:Lcom/google/android/gms/internal/ads/zzflu;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzflt;->zza:Lcom/google/android/gms/internal/ads/zzflu;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzflu;->zzf(Lcom/google/android/gms/internal/ads/zzflu;)Z

    move-result p2

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzflu;->zzd(ZZ)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzflt;->zza:Lcom/google/android/gms/internal/ads/zzflu;

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzflu;->zzb(Lcom/google/android/gms/internal/ads/zzflu;Z)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzflt;->zza:Lcom/google/android/gms/internal/ads/zzflu;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzflu;->zzf(Lcom/google/android/gms/internal/ads/zzflu;)Z

    move-result p2

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzflu;->zzd(ZZ)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzflt;->zza:Lcom/google/android/gms/internal/ads/zzflu;

    .line 6
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzflu;->zzb(Lcom/google/android/gms/internal/ads/zzflu;Z)V

    :cond_1
    return-void
.end method
