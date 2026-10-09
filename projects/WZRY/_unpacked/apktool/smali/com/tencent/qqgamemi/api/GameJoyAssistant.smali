.class public Lcom/tencent/qqgamemi/api/GameJoyAssistant;
.super Ljava/lang/Object;
.source "GameJoyAssistant.java"


# static fields
.field private static final DEFAULT_GAME_ENGINE_TYPE:Ljava/lang/String; = "cocos2d"

.field private static final RECORD_GENERATE:I = 0x2

.field private static final RECORD_NULL:I = -0x1

.field private static final RECORD_START:I = 0x1

.field private static final RECORD_STOP:I

.field private static isShowVideoListDialog:Z

.field private static manualRecorderState:I

.field private static momentRecorderState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 28
    sput v0, Lcom/tencent/qqgamemi/api/GameJoyAssistant;->manualRecorderState:I

    .line 29
    sput v0, Lcom/tencent/qqgamemi/api/GameJoyAssistant;->momentRecorderState:I

    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/qqgamemi/api/GameJoyAssistant;->isShowVideoListDialog:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GenerateExtraMomentsVideo(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
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
    .line 149
    .local p0, "timeStampList":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qqgamemi/api/TimeStamp;>;"
    sget v0, Lcom/tencent/qqgamemi/api/GameJoyAssistant;->momentRecorderState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget v0, Lcom/tencent/qqgamemi/api/GameJoyAssistant;->momentRecorderState:I

    if-nez v0, :cond_1

    .line 151
    :cond_0
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->GenerateExtraMomentsVideo(Ljava/util/List;Ljava/lang/String;)V

    .line 153
    :cond_1
    const/4 v0, 0x2

    sput v0, Lcom/tencent/qqgamemi/api/GameJoyAssistant;->momentRecorderState:I

    .line 154
    return-void
.end method

.method public static checkSDKFeature(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 201
    invoke-static {p0}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->checkSDKFeature(Landroid/content/Context;)V

    .line 202
    return-void
.end method

.method public static checkSDKFeature(Landroid/content/Context;Lcom/tencent/qqgamemi/CheckSDKFeatureCallback;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "checkSDKFeatureCallback"    # Lcom/tencent/qqgamemi/CheckSDKFeatureCallback;

    .prologue
    .line 205
    invoke-static {p0, p1}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->checkSDKFeature(Landroid/content/Context;Lcom/tencent/qqgamemi/CheckSDKFeatureCallback;)V

    .line 206
    return-void
.end method

.method public static checkSDKPermission(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 296
    invoke-static {p0}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->checkSDKPermission(Landroid/content/Context;)V

    .line 297
    return-void
.end method

.method public static closeGenerateMomentsVideoDialog()V
    .locals 0

    .prologue
    .line 481
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->closeGenerateMomentsVideoDialog()V

    .line 482
    return-void
.end method

.method public static closeVideoListDialog()V
    .locals 1

    .prologue
    .line 231
    sget-boolean v0, Lcom/tencent/qqgamemi/api/GameJoyAssistant;->isShowVideoListDialog:Z

    if-nez v0, :cond_0

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_0
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->closeVideoListDialog()V

    .line 235
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/qqgamemi/api/GameJoyAssistant;->isShowVideoListDialog:Z

    goto :goto_0
.end method

.method public static configSDK(I)V
    .locals 0
    .param p0, "config"    # I

    .prologue
    .line 477
    invoke-static {p0}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->configSDK(I)V

    .line 478
    return-void
.end method

.method public static currentRecorderPosition()Lcom/tencent/qqgamemi/api/RecorderPosition;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 408
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->isInstance()Z

    move-result v0

    if-nez v0, :cond_0

    .line 409
    new-instance v0, Lcom/tencent/qqgamemi/api/RecorderPosition;

    invoke-direct {v0, v1, v1}, Lcom/tencent/qqgamemi/api/RecorderPosition;-><init>(FF)V

    .line 412
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->currentRecorderPosition()Lcom/tencent/qqgamemi/api/RecorderPosition;

    move-result-object v0

    goto :goto_0
.end method

.method public static currentRecorderPositionStr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 416
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->isInstance()Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    new-instance v0, Ljava/lang/String;

    const-string v1, "0,0"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 420
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->currentRecorderPositionStr()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static enableBgmMix(Landroid/content/Context;Z)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 341
    invoke-static {p0, p1}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->enableBgmMix(Landroid/content/Context;Z)V

    .line 342
    return-void
.end method

.method public static endMomentsRecording()V
    .locals 2

    .prologue
    .line 96
    sget v0, Lcom/tencent/qqgamemi/api/GameJoyAssistant;->momentRecorderState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget v0, Lcom/tencent/qqgamemi/api/GameJoyAssistant;->momentRecorderState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 97
    :cond_0
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->endMomentsRecording()V

    .line 101
    :cond_1
    const/4 v0, 0x0

    sput v0, Lcom/tencent/qqgamemi/api/GameJoyAssistant;->momentRecorderState:I

    .line 102
    return-void
.end method

.method public static generateMomentsVideo(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqgamemi/api/TimeStamp;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "timeStampList":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qqgamemi/api/TimeStamp;>;"
    .local p2, "extraInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget v0, Lcom/tencent/qqgamemi/api/GameJoyAssistant;->momentRecorderState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget v0, Lcom/tencent/qqgamemi/api/GameJoyAssistant;->momentRecorderState:I

    if-nez v0, :cond_1

    .line 114
    :cond_0
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->generateMomentsVideo(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V

    .line 116
    :cond_1
    const/4 v0, 0x2

    sput v0, Lcom/tencent/qqgamemi/api/GameJoyAssistant;->momentRecorderState:I

    .line 117
    return-void
.end method

.method public static generateMomentsVideo(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p2, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqgamemi/api/TimeStamp;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqgamemi/api/TimeStamp;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "shortVideoTime":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qqgamemi/api/TimeStamp;>;"
    .local p1, "largeVideoTime":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qqgamemi/api/TimeStamp;>;"
    .local p3, "extraInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget v0, Lcom/tencent/qqgamemi/api/GameJoyAssistant;->momentRecorderState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget v0, Lcom/tencent/qqgamemi/api/GameJoyAssistant;->momentRecorderState:I

    if-nez v0, :cond_1

    .line 139
    :cond_0
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->generateMomentsVideo(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V

    .line 141
    :cond_1
    const/4 v0, 0x2

    sput v0, Lcom/tencent/qqgamemi/api/GameJoyAssistant;->momentRecorderState:I

    .line 142
    return-void
.end method

.method public static generateMomentsVideo([Ljava/lang/String;[I[J[JLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "titleArray"    # [Ljava/lang/String;
    .param p1, "priorityArray"    # [I
    .param p2, "startTimeArray"    # [J
    .param p3, "endTimeArray"    # [J
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "extraInfoStr"    # Ljava/lang/String;

    .prologue
    .line 121
    sget v0, Lcom/tencent/qqgamemi/api/GameJoyAssistant;->momentRecorderState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget v0, Lcom/tencent/qqgamemi/api/GameJoyAssistant;->momentRecorderState:I

    if-nez v0, :cond_1

    .line 122
    :cond_0
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    invoke-static/range {p0 .. p5}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->generateMomentsVideo([Ljava/lang/String;[I[J[JLjava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_1
    const/4 v0, 0x2

    sput v0, Lcom/tencent/qqgamemi/api/GameJoyAssistant;->momentRecorderState:I

    .line 125
    return-void
.end method

.method public static generateMomentsVideo([Ljava/lang/String;[I[J[J[J[JLjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "titleArray"    # [Ljava/lang/String;
    .param p1, "priorityArray"    # [I
    .param p2, "shortVideosStartTimeArray"    # [J
    .param p3, "shortVideosEndTimeArray"    # [J
    .param p4, "largeVideosStartTimeArray"    # [J
    .param p5, "largeVideoEndTimeArray"    # [J
    .param p6, "title"    # Ljava/lang/String;
    .param p7, "extraInfoStr"    # Ljava/lang/String;

    .prologue
    .line 158
    sget v0, Lcom/tencent/qqgamemi/api/GameJoyAssistant;->momentRecorderState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget v0, Lcom/tencent/qqgamemi/api/GameJoyAssistant;->momentRecorderState:I

    if-nez v0, :cond_1

    .line 160
    :cond_0
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->generateMomentsVideo([Ljava/lang/String;[I[J[J[J[JLjava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_1
    const/4 v0, 0x2

    sput v0, Lcom/tencent/qqgamemi/api/GameJoyAssistant;->momentRecorderState:I

    .line 163
    return-void
.end method

.method public static generateMomentsVideoV2([Lcom/tencent/qqgamemi/api/model/ShortVideoTimeStamp;Lcom/tencent/qqgamemi/api/model/CollectionVideoTimeStamp;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "shortVideoTimeStamps"    # [Lcom/tencent/qqgamemi/api/model/ShortVideoTimeStamp;
    .param p1, "largeVideoTimestamp"    # Lcom/tencent/qqgamemi/api/model/CollectionVideoTimeStamp;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "extraInfoStr"    # Ljava/lang/String;

    .prologue
    .line 167
    sget v2, Lcom/tencent/qqgamemi/api/GameJoyAssistant;->momentRecorderState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    sget v2, Lcom/tencent/qqgamemi/api/GameJoyAssistant;->momentRecorderState:I

    if-nez v2, :cond_2

    .line 168
    :cond_0
    const/4 v0, 0x0

    .line 169
    .local v0, "shortTimeStamps":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qqgamemi/api/model/ShortVideoTimeStamp;>;"
    if-eqz p0, :cond_1

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "shortTimeStamps":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qqgamemi/api/model/ShortVideoTimeStamp;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .restart local v0    # "shortTimeStamps":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qqgamemi/api/model/ShortVideoTimeStamp;>;"
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, p0, v2

    .line 172
    .local v1, "timeStamp":Lcom/tencent/qqgamemi/api/model/ShortVideoTimeStamp;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    .end local v1    # "timeStamp":Lcom/tencent/qqgamemi/api/model/ShortVideoTimeStamp;
    :cond_1
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    move-result-object v2

    invoke-virtual {v2, v0, p1, p2, p3}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->generateMomentVideoV2(Ljava/util/List;Lcom/tencent/qqgamemi/api/model/CollectionVideoTimeStamp;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .end local v0    # "shortTimeStamps":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qqgamemi/api/model/ShortVideoTimeStamp;>;"
    :cond_2
    const/4 v2, 0x2

    sput v2, Lcom/tencent/qqgamemi/api/GameJoyAssistant;->momentRecorderState:I

    .line 178
    return-void
.end method

.method public static generateMomentsVideoWithSpeed([Lcom/tencent/qqgamemi/api/model/SpeedShortVideoTimeStamp;Lcom/tencent/qqgamemi/api/model/SpeedCollectionVideoTimeStamp;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "shortVideoTimeStamps"    # [Lcom/tencent/qqgamemi/api/model/SpeedShortVideoTimeStamp;
    .param p1, "largeVideoTimestamp"    # Lcom/tencent/qqgamemi/api/model/SpeedCollectionVideoTimeStamp;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "extraInfoStr"    # Ljava/lang/String;

    .prologue
    .line 182
    sget v2, Lcom/tencent/qqgamemi/api/GameJoyAssistant;->momentRecorderState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    sget v2, Lcom/tencent/qqgamemi/api/GameJoyAssistant;->momentRecorderState:I

    if-nez v2, :cond_2

    .line 183
    :cond_0
    const/4 v0, 0x0

    .line 184
    .local v0, "shortTimeStamps":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qqgamemi/api/model/SpeedShortVideoTimeStamp;>;"
    if-eqz p0, :cond_1

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "shortTimeStamps":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qqgamemi/api/model/SpeedShortVideoTimeStamp;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .restart local v0    # "shortTimeStamps":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qqgamemi/api/model/SpeedShortVideoTimeStamp;>;"
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, p0, v2

    .line 187
    .local v1, "timeStamp":Lcom/tencent/qqgamemi/api/model/SpeedShortVideoTimeStamp;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 190
    .end local v1    # "timeStamp":Lcom/tencent/qqgamemi/api/model/SpeedShortVideoTimeStamp;
    :cond_1
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    move-result-object v2

    invoke-virtual {v2, v0, p1, p2, p3}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->generateMomentVideoWithSpeed(Ljava/util/List;Lcom/tencent/qqgamemi/api/model/SpeedCollectionVideoTimeStamp;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .end local v0    # "shortTimeStamps":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qqgamemi/api/model/SpeedShortVideoTimeStamp;>;"
    :cond_2
    const/4 v2, 0x2

    sput v2, Lcom/tencent/qqgamemi/api/GameJoyAssistant;->momentRecorderState:I

    .line 193
    return-void
.end method

.method public static getAvailableDeviceSpaceMB()D
    .locals 2

    .prologue
    .line 468
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getAvailableDeviceSpaceMB()D

    move-result-wide v0

    return-wide v0
.end method

.method public static getCurMomentSourceVideoDuration()J
    .locals 2

    .prologue
    .line 239
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->isInstance()Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    const-wide/16 v0, -0x1

    .line 243
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getCurMomentSourceVideoDuration()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getSrpVersionCode()I
    .locals 1

    .prologue
    .line 247
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getSrpVersionCode()I

    move-result v0

    return v0
.end method

.method public static getSystemCurrentTimeMillis()J
    .locals 2

    .prologue
    .line 464
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getSystemCurrentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static initialized(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const-string v0, "cocos2d"

    invoke-static {p0, v0}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->initSDK(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static initialized(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gameEngineType"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->initSDK(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static isRecording()Z
    .locals 1

    .prologue
    .line 350
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->isInstance()Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    const/4 v0, 0x0

    .line 353
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->isRecording()Z

    move-result v0

    goto :goto_0
.end method

.method public static isRecordingAR()Z
    .locals 1

    .prologue
    .line 385
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->isInstance()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 386
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->isRecordingAR()Z

    move-result v0

    goto :goto_0
.end method

.method public static isRecordingJudgement()Z
    .locals 1

    .prologue
    .line 375
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->isInstance()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 376
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->isRecordingJudgement()Z

    move-result v0

    goto :goto_0
.end method

.method public static isRecordingMoments()Z
    .locals 1

    .prologue
    .line 362
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->isInstance()Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    const/4 v0, 0x0

    .line 366
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->isRecordingMoments()Z

    move-result v0

    goto :goto_0
.end method

.method static isShowed()Z
    .locals 1

    .prologue
    .line 209
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->isInstance()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    const/4 v0, 0x0

    .line 213
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->isShowed()Z

    move-result v0

    goto :goto_0
.end method

.method public static lockRecorderPosition()V
    .locals 1

    .prologue
    .line 428
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->isInstance()Z

    move-result v0

    if-nez v0, :cond_0

    .line 433
    :goto_0
    return-void

    .line 432
    :cond_0
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->lockRecorderPosition()V

    goto :goto_0
.end method

.method public static refreshMSDKTicket(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "openId"    # Ljava/lang/String;
    .param p3, "platform"    # I
    .param p4, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 484
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->refreshMSDKTicket(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 485
    return-void
.end method

.method public static setCurrentRecorderPosition(FF)V
    .locals 1
    .param p0, "x"    # F
    .param p1, "y"    # F

    .prologue
    .line 396
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->isInstance()Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    :goto_0
    return-void

    .line 399
    :cond_0
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->setCurrentRecorderPosition(FF)V

    goto :goto_0
.end method

.method public static setDefaultStartPosition(FF)V
    .locals 1
    .param p0, "x"    # F
    .param p1, "y"    # F

    .prologue
    .line 56
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->setDefaultStartPosition(FF)V

    .line 57
    return-void
.end method

.method public static setDefaultUploadShareDialogPosition(FF)V
    .locals 1
    .param p0, "x"    # F
    .param p1, "y"    # F

    .prologue
    .line 452
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->isInstance()Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    :goto_0
    return-void

    .line 455
    :cond_0
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->setDefaultUploadShareDialogPosition(FF)V

    goto :goto_0
.end method

.method public static setMomentOriginalVideoCache(Z)V
    .locals 0
    .param p0, "cacheable"    # Z

    .prologue
    .line 488
    invoke-static {p0}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->setMomentOriginalVideoCache(Z)V

    .line 489
    return-void
.end method

.method public static setRecorderAudioSource(Landroid/content/Context;I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "audioSource"    # I

    .prologue
    .line 331
    invoke-static {p0, p1}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->setRecorderAudioSource(Landroid/content/Context;I)V

    .line 332
    return-void
.end method

.method public static setRecorderAudioSource(Landroid/content/Context;Lcom/tencent/qqgamemi/api/AudioSource;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "audioSource"    # Lcom/tencent/qqgamemi/api/AudioSource;

    .prologue
    .line 327
    invoke-static {p0, p1}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->setRecorderAudioSource(Landroid/content/Context;Lcom/tencent/qqgamemi/api/AudioSource;)V

    .line 328
    return-void
.end method

.method public static setVideoQuality(Landroid/content/Context;I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # I

    .prologue
    .line 313
    invoke-static {p0, p1}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->setVideoQuality(Landroid/content/Context;I)V

    .line 314
    return-void
.end method

.method public static setVideoQuality(Landroid/content/Context;Lcom/tencent/qqgamemi/api/VideoQuality;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "quality"    # Lcom/tencent/qqgamemi/api/VideoQuality;

    .prologue
    .line 309
    invoke-static {p0, p1}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->setVideoQuality(Landroid/content/Context;Lcom/tencent/qqgamemi/api/VideoQuality;)V

    .line 310
    return-void
.end method

.method public static showVideoListDialog(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 222
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->showVideoListDialog(Landroid/content/Context;)V

    .line 223
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/qqgamemi/api/GameJoyAssistant;->isShowVideoListDialog:Z

    .line 224
    return-void
.end method

.method public static startARRecording(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 279
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->startARRecording(Landroid/content/Context;)V

    .line 280
    return-void
.end method

.method public static startJudgementRecording(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 256
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->startJudgementRecording(Landroid/content/Context;)V

    .line 257
    return-void
.end method

.method public static startMomentsRecording(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    const/4 v0, 0x1

    sput v0, Lcom/tencent/qqgamemi/api/GameJoyAssistant;->momentRecorderState:I

    .line 89
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->startMomentsRecording(Landroid/content/Context;)V

    .line 90
    return-void
.end method

.method public static startRecorder(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const/4 v0, 0x1

    sput v0, Lcom/tencent/qqgamemi/api/GameJoyAssistant;->manualRecorderState:I

    .line 66
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->startRecorder(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method public static stopARRecording()V
    .locals 1

    .prologue
    .line 287
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->stopARRecording()V

    .line 288
    return-void
.end method

.method public static stopJudgementRecording(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "userName"    # Ljava/lang/String;
    .param p1, "extraInfo"    # Ljava/lang/String;

    .prologue
    .line 270
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->stopJudgementRecording(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public static stopJudgementRecording(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0, "userName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 266
    .local p1, "extraInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->stopJudgementRecording(Ljava/lang/String;Ljava/util/Map;)V

    .line 267
    return-void
.end method

.method public static stopRecorder(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    sget v0, Lcom/tencent/qqgamemi/api/GameJoyAssistant;->manualRecorderState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->stopRecorder(Landroid/content/Context;)V

    .line 79
    const/4 v0, 0x0

    sput v0, Lcom/tencent/qqgamemi/api/GameJoyAssistant;->manualRecorderState:I

    goto :goto_0
.end method

.method public static unLockRecorderPosition()V
    .locals 1

    .prologue
    .line 439
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->isInstance()Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    :goto_0
    return-void

    .line 442
    :cond_0
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->unLockRecorderPosition()V

    goto :goto_0
.end method
