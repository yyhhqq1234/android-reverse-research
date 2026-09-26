.class public final Lim/yixin/algorithm/MD5;
.super Ljava/lang/Object;
.source "MD5.java"


# static fields
.field public static final hexDigitalArray:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lim/yixin/algorithm/MD5;->hexDigitalArray:[C

    .line 8
    return-void

    .line 12
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static getMessageDigest([B)Ljava/lang/String;
    .locals 10
    .param p0, "dataByteArray"    # [B

    .prologue
    .line 27
    :try_start_0
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 28
    .local v6, "md":Ljava/security/MessageDigest;
    invoke-virtual {v6, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 29
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 30
    array-length v5, p0

    .line 31
    .local v5, "length":I
    mul-int/lit8 v8, v5, 0x2

    new-array v7, v8, [C

    .line 33
    .local v7, "resultByteArray":[C
    const/4 v3, 0x0

    .local v3, "k":I
    const/4 v1, 0x0

    .local v1, "j":I
    move v2, v1

    .end local v1    # "j":I
    .local v2, "j":I
    :goto_0
    if-lt v3, v5, :cond_0

    .line 38
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>([C)V

    .line 42
    .end local v2    # "j":I
    .end local v3    # "k":I
    .end local v5    # "length":I
    .end local v6    # "md":Ljava/security/MessageDigest;
    .end local v7    # "resultByteArray":[C
    :goto_1
    return-object v8

    .line 34
    .restart local v2    # "j":I
    .restart local v3    # "k":I
    .restart local v5    # "length":I
    .restart local v6    # "md":Ljava/security/MessageDigest;
    .restart local v7    # "resultByteArray":[C
    :cond_0
    aget-byte v4, p0, v3

    .line 35
    .local v4, "l":I
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    sget-object v8, Lim/yixin/algorithm/MD5;->hexDigitalArray:[C

    ushr-int/lit8 v9, v4, 0x4

    and-int/lit8 v9, v9, 0xf

    aget-char v8, v8, v9

    aput-char v8, v7, v2

    .line 36
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "j":I
    .restart local v2    # "j":I
    sget-object v8, Lim/yixin/algorithm/MD5;->hexDigitalArray:[C

    and-int/lit8 v9, v4, 0xf

    aget-char v8, v8, v9

    aput-char v8, v7, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 39
    .end local v2    # "j":I
    .end local v3    # "k":I
    .end local v4    # "l":I
    .end local v5    # "length":I
    .end local v6    # "md":Ljava/security/MessageDigest;
    .end local v7    # "resultByteArray":[C
    :catch_0
    move-exception v0

    .line 40
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 42
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public static getRawDigest([B)[B
    .locals 3
    .param p0, "paramArrayOfByte"    # [B

    .prologue
    .line 54
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 55
    .local v1, "md5":Ljava/security/MessageDigest;
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 56
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 60
    .end local v1    # "md5":Ljava/security/MessageDigest;
    :goto_0
    return-object v2

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    const/4 v2, 0x0

    goto :goto_0
.end method
