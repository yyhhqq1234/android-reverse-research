.class public Lcom/tencent/rtmp1/TXLiveBase;
.super Ljava/lang/Object;
.source "TXLiveBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/rtmp1/TXLiveBase$a;
    }
.end annotation


# static fields
.field private static instance:Lcom/tencent/rtmp1/TXLiveBase;

.field private static listener:Lcom/tencent/rtmp1/ITXLiveBaseListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/rtmp1/TXLiveBase;->listener:Lcom/tencent/rtmp1/ITXLiveBaseListener;

    .line 19
    new-instance v0, Lcom/tencent/rtmp1/TXLiveBase;

    invoke-direct {v0}, Lcom/tencent/rtmp1/TXLiveBase;-><init>()V

    sput-object v0, Lcom/tencent/rtmp1/TXLiveBase;->instance:Lcom/tencent/rtmp1/TXLiveBase;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method static synthetic access$100()Lcom/tencent/rtmp1/ITXLiveBaseListener;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/tencent/rtmp1/TXLiveBase;->listener:Lcom/tencent/rtmp1/ITXLiveBaseListener;

    return-object v0
.end method

.method public static getInstance()Lcom/tencent/rtmp1/TXLiveBase;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/tencent/rtmp1/TXLiveBase;->instance:Lcom/tencent/rtmp1/TXLiveBase;

    return-object v0
.end method

.method public static getSDKVersionStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->getSDKVersionStr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setAppVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    invoke-static {p0}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetAppVersion(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public static setConsoleEnabled(Z)V
    .locals 0

    .prologue
    .line 52
    invoke-static {p0}, Lcom/tencent/liteav/basic/log/TXCLog;->setConsoleEnabled(Z)V

    .line 53
    return-void
.end method

.method public static setLibraryPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    invoke-static {p0}, Lcom/tencent/liteav/basic/util/a;->b(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static setListener(Lcom/tencent/rtmp1/ITXLiveBaseListener;)V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/tencent/rtmp1/TXLiveBase$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/rtmp1/TXLiveBase$a;-><init>(Lcom/tencent/rtmp1/TXLiveBase$1;)V

    invoke-static {v0}, Lcom/tencent/liteav/basic/log/TXCLog;->setListener(Lcom/tencent/liteav/basic/log/TXCLog$a;)V

    .line 33
    sput-object p0, Lcom/tencent/rtmp1/TXLiveBase;->listener:Lcom/tencent/rtmp1/ITXLiveBaseListener;

    .line 34
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 0

    .prologue
    .line 44
    invoke-static {p0}, Lcom/tencent/liteav/basic/log/TXCLog;->setLevel(I)V

    .line 45
    return-void
.end method
