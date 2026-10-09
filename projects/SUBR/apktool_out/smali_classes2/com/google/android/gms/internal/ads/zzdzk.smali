.class public final Lcom/google/android/gms/internal/ads/zzdzk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzbnz;


# instance fields
.field public final zzb:Lcom/google/android/gms/internal/ads/zzdzo;

.field public final zzc:Lorg/json/JSONObject;

.field public final zzd:Lcom/google/android/gms/internal/ads/zzbvm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdzj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdzj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdzk;->zza:Lcom/google/android/gms/internal/ads/zzbnz;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdzo;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzbvm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzk;->zzb:Lcom/google/android/gms/internal/ads/zzdzo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdzk;->zzc:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdzk;->zzd:Lcom/google/android/gms/internal/ads/zzbvm;

    return-void
.end method
