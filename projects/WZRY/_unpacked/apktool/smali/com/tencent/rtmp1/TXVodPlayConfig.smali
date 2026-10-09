.class public Lcom/tencent/rtmp1/TXVodPlayConfig;
.super Ljava/lang/Object;
.source "TXVodPlayConfig.java"


# instance fields
.field mCacheFolderPath:Ljava/lang/String;

.field mConnectRetryCount:I

.field mConnectRetryInterval:I

.field mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mMaxCacheItems:I

.field mPlayerType:I

.field mTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput v0, p0, Lcom/tencent/rtmp1/TXVodPlayConfig;->mConnectRetryCount:I

    .line 13
    iput v0, p0, Lcom/tencent/rtmp1/TXVodPlayConfig;->mConnectRetryInterval:I

    .line 15
    const/16 v0, 0xa

    iput v0, p0, Lcom/tencent/rtmp1/TXVodPlayConfig;->mTimeout:I

    return-void
.end method


# virtual methods
.method public setCacheFolderPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/tencent/rtmp1/TXVodPlayConfig;->mCacheFolderPath:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setConnectRetryCount(I)V
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/tencent/rtmp1/TXVodPlayConfig;->mConnectRetryCount:I

    return-void
.end method

.method public setConnectRetryInterval(I)V
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lcom/tencent/rtmp1/TXVodPlayConfig;->mConnectRetryInterval:I

    return-void
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    iput-object p1, p0, Lcom/tencent/rtmp1/TXVodPlayConfig;->mHeaders:Ljava/util/Map;

    .line 85
    return-void
.end method

.method public setMaxCacheItems(I)V
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lcom/tencent/rtmp1/TXVodPlayConfig;->mMaxCacheItems:I

    .line 69
    return-void
.end method

.method public setPlayerType(I)V
    .locals 0

    .prologue
    .line 76
    iput p1, p0, Lcom/tencent/rtmp1/TXVodPlayConfig;->mPlayerType:I

    .line 77
    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/tencent/rtmp1/TXVodPlayConfig;->mTimeout:I

    .line 53
    return-void
.end method
