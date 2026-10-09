.class final Lcom/google/android/gms/internal/ads/zzfnz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfoa;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzasy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzasy;->zza()Lcom/google/android/gms/internal/ads/zzasc;

    move-result-object v0

    const-string v1, "E"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzasc;->zzx(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzasc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxl;->zzbn()Lcom/google/android/gms/internal/ads/zzgxr;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzasy;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfnz;->zza:Lcom/google/android/gms/internal/ads/zzasy;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzasy;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfnz;->zza:Lcom/google/android/gms/internal/ads/zzasy;

    return-object v0
.end method
