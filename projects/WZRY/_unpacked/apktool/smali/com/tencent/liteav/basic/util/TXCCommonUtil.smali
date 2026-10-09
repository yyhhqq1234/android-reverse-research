.class public Lcom/tencent/liteav/basic/util/TXCCommonUtil;
.super Ljava/lang/Object;
.source "TXCCommonUtil.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 54
    invoke-static {}, Lcom/tencent/liteav/basic/util/a;->d()V

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x0

    .line 35
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 36
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 37
    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 38
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 41
    :cond_0
    return-object v0
.end method

.method public static getSDKID()I
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->nativeGetSDKID()I

    move-result v0

    return v0
.end method

.method public static getSDKVersion()[I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->nativeGetSDKVersion()Ljava/lang/String;

    move-result-object v0

    .line 11
    const-string v2, "\\."

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 12
    array-length v0, v3

    new-array v4, v0, [I

    move v0, v1

    .line 13
    :goto_0
    array-length v2, v3

    if-ge v0, v2, :cond_0

    .line 15
    :try_start_0
    aget-object v2, v3, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v4, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 17
    :catch_0
    move-exception v2

    .line 18
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 19
    aput v1, v4, v0

    goto :goto_1

    .line 22
    :cond_0
    return-object v4
.end method

.method public static getSDKVersionStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->nativeGetSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native nativeGetSDKID()I
.end method

.method private static native nativeGetSDKVersion()Ljava/lang/String;
.end method

.method public static sleep(I)V
    .locals 2

    .prologue
    .line 46
    int-to-long v0, p0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
