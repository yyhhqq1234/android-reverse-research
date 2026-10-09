.class public Lcom/tencent/msdk/realnameauth/model/ImageDownloadInfo;
.super Ljava/lang/Object;
.source "ImageDownloadInfo.java"


# instance fields
.field public fileName:Ljava/lang/String;

.field public filePath:Ljava/lang/String;

.field public imageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "dir"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/realnameauth/model/ImageDownloadInfo;->imageUrl:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/realnameauth/model/ImageDownloadInfo;->fileName:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/realnameauth/model/ImageDownloadInfo;->filePath:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lcom/tencent/msdk/realnameauth/model/ImageDownloadInfo;->imageUrl:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/tencent/msdk/realnameauth/model/ImageDownloadInfo;->fileName:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/tencent/msdk/realnameauth/model/ImageDownloadInfo;->filePath:Ljava/lang/String;

    .line 16
    return-void
.end method
