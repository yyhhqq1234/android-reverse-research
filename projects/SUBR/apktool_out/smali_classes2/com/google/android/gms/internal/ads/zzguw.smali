.class public final Lcom/google/android/gms/internal/ads/zzguw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzguw;

.field public static final zzb:Lcom/google/android/gms/internal/ads/zzguw;


# instance fields
.field private final zzc:Lcom/google/android/gms/internal/ads/zzguu;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzguw;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgux;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgux;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzguw;-><init>(Lcom/google/android/gms/internal/ads/zzgve;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzguw;->zza:Lcom/google/android/gms/internal/ads/zzguw;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzguw;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgvb;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgvb;-><init>()V

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzguw;-><init>(Lcom/google/android/gms/internal/ads/zzgve;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzguw;->zzb:Lcom/google/android/gms/internal/ads/zzguw;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzguw;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgvd;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgvd;-><init>()V

    .line 3
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzguw;-><init>(Lcom/google/android/gms/internal/ads/zzgve;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzguw;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgvc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgvc;-><init>()V

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzguw;-><init>(Lcom/google/android/gms/internal/ads/zzgve;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzguw;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzguy;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzguy;-><init>()V

    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzguw;-><init>(Lcom/google/android/gms/internal/ads/zzgve;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzguw;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgva;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgva;-><init>()V

    .line 6
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzguw;-><init>(Lcom/google/android/gms/internal/ads/zzgve;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzguw;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzguz;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzguz;-><init>()V

    .line 7
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzguw;-><init>(Lcom/google/android/gms/internal/ads/zzgve;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgve;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgkt;->zzb()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "The Android Project"

    const-string v2, "java.vendor"

    .line 2
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgur;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzgur;-><init>(Lcom/google/android/gms/internal/ads/zzgve;Lcom/google/android/gms/internal/ads/zzguv;)V

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzguw;->zzc:Lcom/google/android/gms/internal/ads/zzguu;

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgus;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzgus;-><init>(Lcom/google/android/gms/internal/ads/zzgve;Lcom/google/android/gms/internal/ads/zzguv;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgut;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzgut;-><init>(Lcom/google/android/gms/internal/ads/zzgve;Lcom/google/android/gms/internal/ads/zzguv;)V

    goto :goto_0
.end method

.method public static varargs zzb([Ljava/lang/String;)Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 2
    aget-object v2, p0, v1

    .line 3
    invoke-static {v2}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzguw;->zzc:Lcom/google/android/gms/internal/ads/zzguu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzguu;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
