.class public final Lcom/google/android/gms/internal/ads/zzgke;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdn;


# instance fields
.field private final zza:[B

.field private final zzb:I

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgpy;


# direct methods
.method private constructor <init>([BLcom/google/android/gms/internal/ads/zzgvo;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgvi;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzgvi;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgke;->zzc:Lcom/google/android/gms/internal/ads/zzgpy;

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgvo;->zzc()[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgke;->zza:[B

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzgke;->zzb:I

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzgif;)Lcom/google/android/gms/internal/ads/zzgdn;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgke;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgif;->zzd()Lcom/google/android/gms/internal/ads/zzgvp;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgdw;->zza()Lcom/google/android/gms/internal/ads/zzgeo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgvp;->zzd(Lcom/google/android/gms/internal/ads/zzgeo;)[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgif;->zzc()Lcom/google/android/gms/internal/ads/zzgvo;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgif;->zzb()Lcom/google/android/gms/internal/ads/zzgik;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgik;->zzb()I

    move-result p0

    .line 2
    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/gms/internal/ads/zzgke;-><init>([BLcom/google/android/gms/internal/ads/zzgvo;I)V

    return-object v0
.end method


# virtual methods
.method public final zza([B[B)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgke;->zza:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgke;->zzb:I

    array-length v2, p1

    array-length v3, v0

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x1c

    const-string v1, "ciphertext too short"

    if-lt v2, v3, :cond_6

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgnu;->zzc([B[B)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgke;->zza:[B

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzgke;->zzb:I

    array-length v0, v0

    add-int/2addr v3, v0

    .line 5
    invoke-static {p1, v0, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    const/16 v4, 0x10

    new-array v5, v4, [B

    fill-array-data v5, :array_0

    new-array v6, v4, [B

    fill-array-data v6, :array_1

    .line 6
    array-length v7, v0

    const/16 v8, 0xc

    if-gt v7, v8, :cond_4

    const/16 v9, 0x8

    if-lt v7, v9, :cond_4

    const/4 v9, 0x0

    const/4 v10, 0x4

    .line 8
    invoke-static {v0, v9, v5, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    invoke-static {v0, v9, v6, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgke;->zzc:Lcom/google/android/gms/internal/ads/zzgpy;

    const/16 v7, 0x20

    new-array v7, v7, [B

    .line 10
    invoke-interface {v0, v5, v4}, Lcom/google/android/gms/internal/ads/zzgpy;->zza([BI)[B

    move-result-object v0

    invoke-static {v0, v9, v7, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgke;->zzc:Lcom/google/android/gms/internal/ads/zzgpy;

    .line 11
    invoke-interface {v0, v6, v4}, Lcom/google/android/gms/internal/ads/zzgpy;->zza([BI)[B

    move-result-object v0

    invoke-static {v0, v9, v7, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x2

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgks;->zza(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 14
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgjd;->zzc([B)Ljavax/crypto/SecretKey;

    move-result-object v4

    add-int/lit8 v5, v3, 0xc

    .line 15
    invoke-static {p1, v3, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 16
    array-length v6, v3

    if-ne v6, v8, :cond_2

    add-int/lit8 v6, v5, 0x10

    if-lt v2, v6, :cond_1

    .line 19
    invoke-static {v3, v9, v8}, Lcom/google/android/gms/internal/ads/zzgjd;->zza([BII)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgjd;->zzb()Ljavax/crypto/Cipher;

    move-result-object v3

    .line 21
    invoke-virtual {v3, v0, v4, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz p2, :cond_0

    array-length v0, p2

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v3, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    :cond_0
    sub-int/2addr v2, v5

    .line 23
    invoke-virtual {v3, p1, v5, v2}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p1

    return-object p1

    .line 18
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-direct {p1, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "iv is wrong size"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_4
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "invalid salt size"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_5
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Decryption failed (OutputPrefix mismatch)."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_6
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-direct {p1, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ciphertext is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x58t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x2t
        0x58t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
