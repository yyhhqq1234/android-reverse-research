.class public Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;
.super Ljava/lang/Object;
.source "ShareInfoForQQ.java"


# instance fields
.field public description:Ljava/lang/String;

.field public extraScene:Ljava/lang/String;

.field public image_Url:Ljava/lang/String;

.field public imgFilePath:Ljava/lang/String;

.field public imgFilePaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mediaTagName:Ljava/lang/String;

.field public media_type:I

.field public messageExt:Ljava/lang/String;

.field public musicDataUrl:Ljava/lang/String;

.field public musicUrl:Ljava/lang/String;

.field public scene:I

.field public summary:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public videoPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput v1, p0, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->scene:I

    .line 54
    iput v1, p0, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->media_type:I

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->title:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->description:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->url:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->musicUrl:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->musicDataUrl:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->image_Url:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->mediaTagName:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->imgFilePath:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->summary:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->imgFilePaths:Ljava/util/ArrayList;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->videoPath:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->extraScene:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->messageExt:Ljava/lang/String;

    .line 13
    iput v1, p0, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->scene:I

    .line 14
    iput v1, p0, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->media_type:I

    .line 15
    return-void
.end method


# virtual methods
.method public synNativeData(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "info_scene"    # I
    .param p2, "info_media_type"    # I
    .param p3, "info_title"    # Ljava/lang/String;
    .param p4, "info_description"    # Ljava/lang/String;
    .param p5, "info_url"    # Ljava/lang/String;
    .param p6, "info_imageData"    # [B
    .param p7, "info_musicUrl"    # Ljava/lang/String;
    .param p8, "info_musicDataUrl"    # Ljava/lang/String;
    .param p9, "info_image_Url"    # Ljava/lang/String;
    .param p10, "info_mediaTagName"    # Ljava/lang/String;
    .param p11, "info_imgFilePath"    # Ljava/lang/String;
    .param p12, "info_summary"    # Ljava/lang/String;
    .param p13, "info_imgFilePaths"    # [Ljava/lang/String;
    .param p14, "info_videoPath"    # Ljava/lang/String;
    .param p15, "info_extraScene"    # Ljava/lang/String;
    .param p16, "info_messageExt"    # Ljava/lang/String;

    .prologue
    .line 32
    iput p1, p0, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->scene:I

    .line 33
    iput p2, p0, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->media_type:I

    .line 35
    iput-object p3, p0, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->title:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->description:Ljava/lang/String;

    .line 37
    iput-object p5, p0, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->url:Ljava/lang/String;

    .line 39
    iput-object p7, p0, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->musicUrl:Ljava/lang/String;

    .line 40
    iput-object p8, p0, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->musicDataUrl:Ljava/lang/String;

    .line 41
    iput-object p9, p0, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->image_Url:Ljava/lang/String;

    .line 42
    iput-object p10, p0, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->mediaTagName:Ljava/lang/String;

    .line 43
    iput-object p11, p0, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->imgFilePath:Ljava/lang/String;

    .line 44
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->summary:Ljava/lang/String;

    .line 45
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    move-object/from16 v0, p13

    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 47
    iget-object v2, p0, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->imgFilePaths:Ljava/util/ArrayList;

    aget-object v3, p13, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    :cond_0
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->videoPath:Ljava/lang/String;

    .line 50
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->extraScene:Ljava/lang/String;

    .line 51
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->messageExt:Ljava/lang/String;

    .line 52
    return-void
.end method
