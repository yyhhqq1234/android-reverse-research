.class public Lcom/tencent/qqgamemi/QmiSdkApi;
.super Ljava/lang/Object;
.source "QmiSdkApi.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "QmiSdkApi"

.field private static pluginX:F

.field private static pluginY:F

.field private static uploadShareDialogX:F

.field private static uploadShareDialogY:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/high16 v0, -0x40800000    # -1.0f

    .line 30
    sput v0, Lcom/tencent/qqgamemi/QmiSdkApi;->pluginX:F

    .line 31
    sput v0, Lcom/tencent/qqgamemi/QmiSdkApi;->pluginY:F

    .line 32
    sput v1, Lcom/tencent/qqgamemi/QmiSdkApi;->uploadShareDialogX:F

    .line 33
    sput v1, Lcom/tencent/qqgamemi/QmiSdkApi;->uploadShareDialogY:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GenerateExtraMomentsVideo(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .param p1, "directory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqgamemi/api/TimeStamp;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "shortVideoTimeStampList":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qqgamemi/api/TimeStamp;>;"
    const-string v0, "QmiSdkApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateMomentVideos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    const-string v1, "qmi.generate_extra_moment_video"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqgamemi/SDKApiHelper;->writeMomentFeatureCmd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    return-void
.end method

.method public static beginDraw()I
    .locals 3

    .prologue
    .line 321
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    const-string v1, "qmi.beginDraw"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqgamemi/SDKApiHelper;->readCmdSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static callMethod(IIIIII)I
    .locals 5
    .param p0, "nMethodID"    # I
    .param p1, "nParam1"    # I
    .param p2, "nParam2"    # I
    .param p3, "nParam3"    # I
    .param p4, "nParam4"    # I
    .param p5, "nParam5"    # I

    .prologue
    const/4 v4, 0x0

    .line 223
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    const-string v1, "qmi.callMethod"

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput p0, v2, v4

    const/4 v3, 0x1

    aput p1, v2, v3

    const/4 v3, 0x2

    aput p2, v2, v3

    const/4 v3, 0x3

    aput p3, v2, v3

    const/4 v3, 0x4

    aput p4, v2, v3

    const/4 v3, 0x5

    aput p5, v2, v3

    .line 224
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 223
    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqgamemi/SDKApiHelper;->readCmdSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static checkSDKFeature(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 244
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tencent/qqgamemi/QmiSdkApi;->checkSDKFeature(Landroid/content/Context;Lcom/tencent/qqgamemi/CheckSDKFeatureCallback;)V

    .line 245
    return-void
.end method

.method public static checkSDKFeature(Landroid/content/Context;Lcom/tencent/qqgamemi/CheckSDKFeatureCallback;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "checkSDKFeatureCallback"    # Lcom/tencent/qqgamemi/CheckSDKFeatureCallback;

    .prologue
    .line 248
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/qqgamemi/SDKApiHelper;->checkSDKFeature(Landroid/content/Context;Lcom/tencent/qqgamemi/CheckSDKFeatureCallback;)V

    .line 250
    return-void
.end method

.method public static checkSDKPermission(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 281
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/qqgamemi/SDKApiHelper;->checkPermission(Landroid/content/Context;)V

    .line 282
    return-void
.end method

.method public static closeGenerateMomentsVideoDialog()V
    .locals 3

    .prologue
    .line 285
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    const-string v1, "qmi.closeUploadShareVideoDialog"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqgamemi/SDKApiHelper;->writeManualOrMomentFeatureCmd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 286
    return-void
.end method

.method public static closeVideoListDialog()V
    .locals 3

    .prologue
    .line 160
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    const-string v1, "qmi.closeVideoListDialog"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqgamemi/SDKApiHelper;->writeManualOrMomentFeatureCmd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    return-void
.end method

.method public static configSDK(I)V
    .locals 3
    .param p0, "config"    # I

    .prologue
    .line 253
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    const-string v1, "qmi.configSDK"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqgamemi/SDKApiHelper;->writeManualOrMomentFeatureCmd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 254
    return-void
.end method

.method public static enableBgmMix(Landroid/content/Context;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 172
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    const-string v1, "qmi.enableBgmMix"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqgamemi/SDKApiHelper;->invokeQmiWriteCmd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    return-void
.end method

.method public static endDraw()I
    .locals 3

    .prologue
    .line 325
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    const-string v1, "qmi.endDraw"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqgamemi/SDKApiHelper;->readCmdSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static endMomentRecording()V
    .locals 3

    .prologue
    .line 101
    const-string v0, "QmiSdkApi"

    const-string v1, "endMomentRecording:"

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    const-string v1, "qmi.endMomentRecording"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqgamemi/SDKApiHelper;->writeMomentFeatureCmd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    return-void
.end method

.method public static generateMomentVideo([Ljava/lang/String;[I[J[JLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "titleArray"    # [Ljava/lang/String;
    .param p1, "priorityArray"    # [I
    .param p2, "startTimeArray"    # [J
    .param p3, "endTimeArray"    # [J
    .param p4, "defaultGameTag"    # Ljava/lang/String;
    .param p5, "extraInfoStr"    # Ljava/lang/String;

    .prologue
    .line 115
    const-string v0, "QmiSdkApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateMomentVideo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    const-string v1, "qmi.generate_moment_video"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Lcom/tencent/qqgamemi/QmiSdkApi;->uploadShareDialogX:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget v4, Lcom/tencent/qqgamemi/QmiSdkApi;->uploadShareDialogY:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p0, v2, v3

    const/4 v3, 0x3

    aput-object p1, v2, v3

    const/4 v3, 0x4

    aput-object p2, v2, v3

    const/4 v3, 0x5

    aput-object p3, v2, v3

    const/4 v3, 0x6

    aput-object p4, v2, v3

    const/4 v3, 0x7

    aput-object p5, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqgamemi/SDKApiHelper;->writeMomentFeatureCmd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method public static generateMomentVideo([Ljava/lang/String;[I[J[J[J[JLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "titleArray"    # [Ljava/lang/String;
    .param p1, "priorityArray"    # [I
    .param p2, "shortVideosStartTimeArray"    # [J
    .param p3, "shortVideosEndTimeArray"    # [J
    .param p4, "largeVideosStartTimeArray"    # [J
    .param p5, "largeVideoEndTimeArray"    # [J
    .param p6, "defaultGameTag"    # Ljava/lang/String;
    .param p7, "extraInfoStr"    # Ljava/lang/String;

    .prologue
    .line 122
    const-string v0, "QmiSdkApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateMomentVideos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    const-string v1, "qmi.generate_moment_video"

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Lcom/tencent/qqgamemi/QmiSdkApi;->uploadShareDialogX:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget v4, Lcom/tencent/qqgamemi/QmiSdkApi;->uploadShareDialogY:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p0, v2, v3

    const/4 v3, 0x3

    aput-object p1, v2, v3

    const/4 v3, 0x4

    aput-object p2, v2, v3

    const/4 v3, 0x5

    aput-object p3, v2, v3

    const/4 v3, 0x6

    aput-object p4, v2, v3

    const/4 v3, 0x7

    aput-object p5, v2, v3

    const/16 v3, 0x8

    aput-object p6, v2, v3

    const/16 v3, 0x9

    aput-object p7, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqgamemi/SDKApiHelper;->writeMomentFeatureCmd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method public static generateMomentVideoV2(Ljava/util/List;Lcom/tencent/qqgamemi/api/model/CollectionVideoTimeStamp;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "largeVideoTimeStamp"    # Lcom/tencent/qqgamemi/api/model/CollectionVideoTimeStamp;
    .param p2, "defaultGameTag"    # Ljava/lang/String;
    .param p3, "extraInfoStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqgamemi/api/model/ShortVideoTimeStamp;",
            ">;",
            "Lcom/tencent/qqgamemi/api/model/CollectionVideoTimeStamp;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "shortVideoTimestampList":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qqgamemi/api/model/ShortVideoTimeStamp;>;"
    const-string v0, "QmiSdkApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateMomentVideosV2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    const-string v1, "qmi.generate_moment_video_v2"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Lcom/tencent/qqgamemi/QmiSdkApi;->uploadShareDialogX:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget v4, Lcom/tencent/qqgamemi/QmiSdkApi;->uploadShareDialogY:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p0, v2, v3

    const/4 v3, 0x3

    aput-object p1, v2, v3

    const/4 v3, 0x4

    aput-object p2, v2, v3

    const/4 v3, 0x5

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqgamemi/SDKApiHelper;->writeMomentFeatureCmd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    return-void
.end method

.method public static generateMomentVideoWithSpeed(Ljava/util/List;Lcom/tencent/qqgamemi/api/model/SpeedCollectionVideoTimeStamp;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "largeVideoTimeStamp"    # Lcom/tencent/qqgamemi/api/model/SpeedCollectionVideoTimeStamp;
    .param p2, "defaultGameTag"    # Ljava/lang/String;
    .param p3, "extraInfoStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqgamemi/api/model/SpeedShortVideoTimeStamp;",
            ">;",
            "Lcom/tencent/qqgamemi/api/model/SpeedCollectionVideoTimeStamp;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "shortVideoTimestampList":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qqgamemi/api/model/SpeedShortVideoTimeStamp;>;"
    const-string v0, "QmiSdkApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateMomentVideoWithSpeed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    const-string v1, "qmi.generate_moment_with_speed"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Lcom/tencent/qqgamemi/QmiSdkApi;->uploadShareDialogX:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget v4, Lcom/tencent/qqgamemi/QmiSdkApi;->uploadShareDialogY:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p0, v2, v3

    const/4 v3, 0x3

    aput-object p1, v2, v3

    const/4 v3, 0x4

    aput-object p2, v2, v3

    const/4 v3, 0x5

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqgamemi/SDKApiHelper;->writeMomentFeatureCmd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    return-void
.end method

.method public static getAvailableDeviceSpaceMB()D
    .locals 2

    .prologue
    .line 370
    invoke-static {}, Lcom/tencent/qqgamemi/util/DeviceDetectUtil$Space;->getExternalAvailableSpaceInMB()D

    move-result-wide v0

    return-wide v0
.end method

.method public static getCurRecorderPosition()Ljava/lang/String;
    .locals 3

    .prologue
    .line 354
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    const-string v1, "qmi.getRecorderCurPosition"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqgamemi/SDKApiHelper;->readCmdSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getMomentSourceVideoDuration()J
    .locals 4

    .prologue
    .line 350
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    const-string v1, "qmi.getMomentSourceVideoDuration"

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqgamemi/SDKApiHelper;->readCmdSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSRPpluginVersionCode()I
    .locals 2

    .prologue
    .line 317
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    const-string v1, "com.tencent.qqgamemi.plugin.dpsrp"

    invoke-virtual {v0, v1}, Lcom/tencent/qqgamemi/SDKApiHelper;->getPluginVersionCode(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getSystemCurrentTimeMillis()J
    .locals 6

    .prologue
    .line 359
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 365
    :goto_0
    return-wide v2

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "QmiSdkApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSystemCurrentTimeMillis erro:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 365
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public static getVersionCode()I
    .locals 1

    .prologue
    .line 309
    const/16 v0, 0x258

    return v0
.end method

.method public static getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    const-string v0, "1.7.0.0"

    return-object v0
.end method

.method public static hideQMi(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    const-string v1, "qmi.hideQmi"

    invoke-virtual {v0, v1, p0}, Lcom/tencent/qqgamemi/SDKApiHelper;->writeManualFeatureCmd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method public static initQMi(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    invoke-static {}, Lcom/tencent/qqgamemi/util/GlobalUtil;->getGameEngineType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/tencent/qqgamemi/SDKApiHelper;->initPlugin(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static initQMi(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gameEngineType"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/qqgamemi/SDKApiHelper;->initPlugin(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static initSDK(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/qqgamemi/SDKApiHelper;->initSDK(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public static initSDK(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gameEngineType"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-static {p0}, Lcom/tencent/qqgamemi/util/GlobalUtil;->setContext(Landroid/content/Context;)V

    .line 41
    invoke-static {p1}, Lcom/tencent/qqgamemi/util/GlobalUtil;->setGameEngineType(Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/qqgamemi/SDKApiHelper;->initSDK(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public static isRecording()Z
    .locals 3

    .prologue
    .line 329
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    const-string v1, "qmi.isRecording"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqgamemi/SDKApiHelper;->readCmdSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isRecordingAR()Z
    .locals 3

    .prologue
    .line 341
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    const-string v1, "qmi.isARRecording"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqgamemi/SDKApiHelper;->readCmdSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isRecordingJudgement()Z
    .locals 3

    .prologue
    .line 337
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    const-string v1, "qmi.isJudgementRecording"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqgamemi/SDKApiHelper;->readCmdSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isRecordingMoment()Z
    .locals 3

    .prologue
    .line 333
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    const-string v1, "qmi.isRecordingMoment"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqgamemi/SDKApiHelper;->readCmdSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isShowed()Z
    .locals 3

    .prologue
    .line 345
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    const-string v1, "qmi.isShowed"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqgamemi/SDKApiHelper;->readCmdSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static lockRecorderPosition()V
    .locals 3

    .prologue
    .line 269
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    const-string v1, "qmi.lockPosition"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqgamemi/SDKApiHelper;->writeManualFeatureCmd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 270
    return-void
.end method

.method public static notifyQmiService(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "operation"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 264
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    const-string v1, "qmi.startQmiService"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    .line 265
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    .line 264
    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqgamemi/SDKApiHelper;->writeManualOrMomentOrReportFeatureCmd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 266
    return-void
.end method

.method protected static onBackground()V
    .locals 3

    .prologue
    .line 297
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    const-string v1, "qmi.onBackground"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqgamemi/SDKApiHelper;->invokeQmiWriteCmd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 298
    return-void
.end method

.method protected static onFront()V
    .locals 3

    .prologue
    .line 300
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    const-string v1, "qmi.onFront"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqgamemi/SDKApiHelper;->invokeQmiWriteCmd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 301
    return-void
.end method

.method public static onStartRecordVideo()V
    .locals 2

    .prologue
    .line 230
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/tencent/qqgamemi/QmiSdkApi;->onStartRecordVideo(J)V

    .line 231
    return-void
.end method

.method public static onStartRecordVideo(J)V
    .locals 4
    .param p0, "ptr"    # J

    .prologue
    .line 234
    const-string v0, "QmiSdkApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartRecordVideo with long_ptr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    const-string v1, "qmi.onStartRecordVideo"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqgamemi/SDKApiHelper;->writeManualOrMomentOrReportFeatureCmd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 236
    return-void
.end method

.method public static onStopRecordVideo()V
    .locals 3

    .prologue
    .line 239
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    const-string v1, "qmi.onStopRecordVideo"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqgamemi/SDKApiHelper;->writeManualOrMomentOrReportFeatureCmd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 241
    return-void
.end method

.method public static onUpdateVideoFrame()V
    .locals 3

    .prologue
    .line 258
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    const-string v1, "qmi.onUpdateVideoFrame"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqgamemi/SDKApiHelper;->writeManualOrMomentOrReportFeatureCmd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 259
    return-void
.end method

.method public static refreshMSDKTicket(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "openId"    # Ljava/lang/String;
    .param p3, "platform"    # I
    .param p4, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 289
    invoke-static {}, Lcom/tencent/msdk/MSDKManager;->getInstance()Lcom/tencent/msdk/MSDKManager;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/msdk/MSDKManager;->refreshMSDKTicket(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v6

    .line 290
    .local v6, "isRefresh":Z
    if-eqz v6, :cond_0

    .line 291
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    const-string v1, "qmi.refreshTicket"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqgamemi/SDKApiHelper;->invokeQmiWriteCmd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 293
    :cond_0
    return-void
.end method

.method public static setAudioSource(Landroid/content/Context;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "audioSource"    # I

    .prologue
    .line 168
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    const-string v1, "qmi.setAudioSource"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqgamemi/SDKApiHelper;->invokeQmiWriteCmd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    return-void
.end method

.method public static setCurRecorderPosition(FF)V
    .locals 5
    .param p0, "x"    # F
    .param p1, "y"    # F

    .prologue
    .line 277
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    const-string v1, "qmi.setRecorderPosition"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqgamemi/SDKApiHelper;->writeManualFeatureCmd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 278
    return-void
.end method

.method public static setDefaultStartPosition(FF)V
    .locals 0
    .param p0, "x"    # F
    .param p1, "y"    # F

    .prologue
    .line 54
    sput p0, Lcom/tencent/qqgamemi/QmiSdkApi;->pluginX:F

    .line 55
    sput p1, Lcom/tencent/qqgamemi/QmiSdkApi;->pluginY:F

    .line 56
    return-void
.end method

.method public static setGameEngineType(Ljava/lang/String;)V
    .locals 2
    .param p0, "gameEngineType"    # Ljava/lang/String;

    .prologue
    .line 176
    invoke-static {p0}, Lcom/tencent/qqgamemi/util/GlobalUtil;->setGameEngineType(Ljava/lang/String;)V

    .line 177
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    const-string v1, "qmi.setGameEngineType"

    invoke-virtual {v0, v1, p0}, Lcom/tencent/qqgamemi/SDKApiHelper;->invokeQmiWriteCmd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    return-void
.end method

.method public static setMomentOriginalVideoCache(Z)V
    .locals 5
    .param p0, "cacheable"    # Z

    .prologue
    .line 148
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    const-string v1, "qmi.setIsSaveMomentVideoTmp"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqgamemi/SDKApiHelper;->invokeQmiWriteCmd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    return-void
.end method

.method public static setUploadShareDialogPosition(FF)V
    .locals 3
    .param p0, "x"    # F
    .param p1, "y"    # F

    .prologue
    .line 211
    sput p0, Lcom/tencent/qqgamemi/QmiSdkApi;->uploadShareDialogX:F

    .line 212
    sput p1, Lcom/tencent/qqgamemi/QmiSdkApi;->uploadShareDialogY:F

    .line 213
    const-string v0, "QmiSdkApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "x,y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public static setVideoQuality(Landroid/content/Context;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # I

    .prologue
    .line 164
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    const-string v1, "qmi.setVideoQuality"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqgamemi/SDKApiHelper;->invokeQmiWriteCmd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 165
    return-void
.end method

.method public static showQMi(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-static {}, Lcom/tencent/qqgamemi/util/GlobalUtil;->getGameEngineType()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/tencent/qqgamemi/QmiSdkApi;->pluginX:F

    sget v2, Lcom/tencent/qqgamemi/QmiSdkApi;->pluginY:F

    invoke-static {p0, v0, v1, v2}, Lcom/tencent/qqgamemi/QmiSdkApi;->showQMi(Landroid/content/Context;Ljava/lang/String;FF)V

    .line 60
    return-void
.end method

.method public static showQMi(Landroid/content/Context;FF)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 69
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    invoke-static {}, Lcom/tencent/qqgamemi/util/GlobalUtil;->getGameEngineType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/tencent/qqgamemi/SDKApiHelper;->showRecorder(Landroid/content/Context;Ljava/lang/String;FF)V

    .line 71
    return-void
.end method

.method public static showQMi(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gameEngineType"    # Ljava/lang/String;

    .prologue
    .line 64
    sget v0, Lcom/tencent/qqgamemi/QmiSdkApi;->pluginX:F

    sget v1, Lcom/tencent/qqgamemi/QmiSdkApi;->pluginY:F

    invoke-static {p0, p1, v0, v1}, Lcom/tencent/qqgamemi/QmiSdkApi;->showQMi(Landroid/content/Context;Ljava/lang/String;FF)V

    .line 65
    return-void
.end method

.method public static showQMi(Landroid/content/Context;Ljava/lang/String;FF)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gameEngineType"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 75
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/tencent/qqgamemi/SDKApiHelper;->showRecorder(Landroid/content/Context;Ljava/lang/String;FF)V

    .line 77
    return-void
.end method

.method public static showUploadShareVideoDialog()V
    .locals 5

    .prologue
    .line 217
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    const-string v1, "qmi.showUploadShareVideoDialog"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Lcom/tencent/qqgamemi/QmiSdkApi;->uploadShareDialogX:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget v4, Lcom/tencent/qqgamemi/QmiSdkApi;->uploadShareDialogY:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqgamemi/SDKApiHelper;->writeMomentFeatureCmd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 218
    return-void
.end method

.method public static showVideoListDialog(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 156
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/qqgamemi/SDKApiHelper;->showVideoListDialog(Landroid/content/Context;)V

    .line 157
    return-void
.end method

.method public static startARRecording(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 193
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    invoke-static {}, Lcom/tencent/qqgamemi/util/GlobalUtil;->getGameEngineType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/tencent/qqgamemi/SDKApiHelper;->startARRecording(Landroid/content/Context;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public static startARRecording(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gameEngineType"    # Ljava/lang/String;

    .prologue
    .line 197
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/qqgamemi/SDKApiHelper;->startARRecording(Landroid/content/Context;Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public static startJudgementRecording(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 181
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    invoke-static {}, Lcom/tencent/qqgamemi/util/GlobalUtil;->getGameEngineType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/tencent/qqgamemi/SDKApiHelper;->startJudgementRecording(Landroid/content/Context;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public static startJudgementRecording(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gameEngineType"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/qqgamemi/SDKApiHelper;->startJudgementRecording(Landroid/content/Context;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public static startMomentRecording(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    invoke-static {}, Lcom/tencent/qqgamemi/util/GlobalUtil;->getGameEngineType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/tencent/qqgamemi/SDKApiHelper;->startMomentRecording(Landroid/content/Context;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public static startMomentRecording(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gameEngineType"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/qqgamemi/SDKApiHelper;->startMomentRecording(Landroid/content/Context;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public static stopARRecording()V
    .locals 3

    .prologue
    .line 201
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    const-string v1, "qmi.stopARRecording"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqgamemi/SDKApiHelper;->writeSgameArFeatureCmd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 202
    return-void
.end method

.method public static stopJudgementRecording(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "userName"    # Ljava/lang/String;
    .param p1, "extraInfoStr"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    const-string v1, "qmi.stopJudgementRecording"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqgamemi/SDKApiHelper;->writeReportFeatureCmd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 190
    return-void
.end method

.method public static stopQMi(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    const-string v1, "qmi.stopQmi"

    invoke-virtual {v0, v1, p0}, Lcom/tencent/qqgamemi/SDKApiHelper;->writeManualFeatureCmd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method public static unLockRecorderPosition()V
    .locals 3

    .prologue
    .line 273
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    const-string v1, "qmi.unlockPosition"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqgamemi/SDKApiHelper;->writeManualFeatureCmd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 274
    return-void
.end method
