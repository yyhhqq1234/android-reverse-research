.class public Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;
.super Ljava/lang/Object;
.source "ShareInfoForWX.java"


# instance fields
.field public description:Ljava/lang/String;

.field public extInfo:Ljava/lang/String;

.field public imageData:[B

.field public imagePath:Ljava/lang/String;

.field public mediaTagName:Ljava/lang/String;

.field public media_type:I

.field public messagExt:Ljava/lang/String;

.field public messageAction:Ljava/lang/String;

.field public musicDataUrl:Ljava/lang/String;

.field public musicLowBandDataUrl:Ljava/lang/String;

.field public musicLowBandUrl:Ljava/lang/String;

.field public musicUrl:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public scene:I

.field public share_from:I

.field public thumbData:[B

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public userName:Ljava/lang/String;

.field public videoLowBandUrl:Ljava/lang/String;

.field public videoPath:Ljava/lang/String;

.field public videoUrl:Ljava/lang/String;

.field public webpageUrl:Ljava/lang/String;

.field public withShareTicket:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput v1, p0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->scene:I

    .line 66
    iput v1, p0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->media_type:I

    .line 67
    iput v1, p0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->share_from:I

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->title:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->description:Ljava/lang/String;

    .line 71
    iput-object v2, p0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->thumbData:[B

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->mediaTagName:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->messagExt:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->messageAction:Ljava/lang/String;

    .line 77
    iput-object v2, p0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->imageData:[B

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->imagePath:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->musicUrl:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->musicLowBandUrl:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->musicDataUrl:Ljava/lang/String;

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->musicLowBandDataUrl:Ljava/lang/String;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->videoUrl:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->videoLowBandUrl:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->videoPath:Ljava/lang/String;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->webpageUrl:Ljava/lang/String;

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->url:Ljava/lang/String;

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->extInfo:Ljava/lang/String;

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->userName:Ljava/lang/String;

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->path:Ljava/lang/String;

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->withShareTicket:Z

    .line 10
    iput v1, p0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->scene:I

    .line 11
    iput v1, p0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->media_type:I

    .line 12
    iput v1, p0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->share_from:I

    .line 13
    return-void
.end method


# virtual methods
.method public synNativeData(IIILjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "info_scene"    # I
    .param p2, "info_media_type"    # I
    .param p3, "info_share_from"    # I
    .param p4, "info_title"    # Ljava/lang/String;
    .param p5, "info_description"    # Ljava/lang/String;
    .param p6, "info_thumbData"    # [B
    .param p7, "info_mediaTagName"    # Ljava/lang/String;
    .param p8, "info_messagExt"    # Ljava/lang/String;
    .param p9, "info_messageAction"    # Ljava/lang/String;
    .param p10, "info_imageData"    # [B
    .param p11, "info_imagePath"    # Ljava/lang/String;
    .param p12, "info_musicUrl"    # Ljava/lang/String;
    .param p13, "info_musicLowBandUrl"    # Ljava/lang/String;
    .param p14, "info_musicDataUrl"    # Ljava/lang/String;
    .param p15, "info_musicLowBandDataUrl"    # Ljava/lang/String;
    .param p16, "info_videoUrl"    # Ljava/lang/String;
    .param p17, "info_videoLowBandUrl"    # Ljava/lang/String;
    .param p18, "info_videoPath"    # Ljava/lang/String;
    .param p19, "info_webpageUrl"    # Ljava/lang/String;
    .param p20, "info_url"    # Ljava/lang/String;
    .param p21, "info_extInfo"    # Ljava/lang/String;
    .param p22, "info_fileData"    # [B
    .param p23, "info_userName"    # Ljava/lang/String;
    .param p24, "info_path"    # Ljava/lang/String;
    .param p25, "info_withShareTicket"    # Z

    .prologue
    .line 38
    iput p1, p0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->scene:I

    .line 39
    iput p2, p0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->media_type:I

    .line 40
    iput p3, p0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->share_from:I

    .line 41
    iput-object p4, p0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->title:Ljava/lang/String;

    .line 42
    iput-object p5, p0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->description:Ljava/lang/String;

    .line 43
    iput-object p6, p0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->thumbData:[B

    .line 44
    iput-object p7, p0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->mediaTagName:Ljava/lang/String;

    .line 45
    iput-object p8, p0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->messagExt:Ljava/lang/String;

    .line 46
    iput-object p9, p0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->messageAction:Ljava/lang/String;

    .line 47
    iput-object p10, p0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->imageData:[B

    .line 48
    iput-object p11, p0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->imagePath:Ljava/lang/String;

    .line 49
    iput-object p12, p0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->musicUrl:Ljava/lang/String;

    .line 50
    iput-object p13, p0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->musicLowBandUrl:Ljava/lang/String;

    .line 51
    iput-object p14, p0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->musicDataUrl:Ljava/lang/String;

    .line 52
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->musicLowBandDataUrl:Ljava/lang/String;

    .line 53
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->videoUrl:Ljava/lang/String;

    .line 54
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->videoLowBandUrl:Ljava/lang/String;

    .line 55
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->videoPath:Ljava/lang/String;

    .line 56
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->webpageUrl:Ljava/lang/String;

    .line 57
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->url:Ljava/lang/String;

    .line 58
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->extInfo:Ljava/lang/String;

    .line 59
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->userName:Ljava/lang/String;

    .line 60
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->path:Ljava/lang/String;

    .line 61
    move/from16 v0, p25

    iput-boolean v0, p0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->withShareTicket:Z

    .line 63
    return-void
.end method
