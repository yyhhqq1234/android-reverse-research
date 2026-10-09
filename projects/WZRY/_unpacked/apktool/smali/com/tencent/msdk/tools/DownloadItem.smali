.class Lcom/tencent/msdk/tools/DownloadItem;
.super Ljava/lang/Object;
.source "DownloadItem.java"


# instance fields
.field public mFileLength:J

.field public mFileUrl:Ljava/net/URL;

.field public mHashValue:Ljava/lang/String;

.field public mLocalFilePath:Ljava/lang/String;

.field public mPercent:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/msdk/tools/DownloadItem;->mPercent:F

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "hashValue"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/msdk/tools/DownloadItem;->mPercent:F

    .line 22
    iput-object p1, p0, Lcom/tencent/msdk/tools/DownloadItem;->mFileUrl:Ljava/net/URL;

    .line 23
    iput-object p2, p0, Lcom/tencent/msdk/tools/DownloadItem;->mLocalFilePath:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/tencent/msdk/tools/DownloadItem;->mHashValue:Ljava/lang/String;

    .line 25
    return-void
.end method
