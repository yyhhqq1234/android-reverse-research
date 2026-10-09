.class public Lcom/tencent/qqgamemi/Cocos2dxGameJoyAssistant;
.super Ljava/lang/Object;
.source "Cocos2dxGameJoyAssistant.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSDKFeature(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    invoke-static {p0}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->checkSDKFeature(Landroid/content/Context;)V

    .line 101
    return-void
.end method

.method public static checkSDKPermission(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 157
    invoke-static {p0}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->checkSDKPermission(Landroid/content/Context;)V

    .line 158
    return-void
.end method

.method public static closeVideoListDialog()V
    .locals 1

    .prologue
    .line 124
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->closeVideoListDialog()V

    .line 125
    return-void
.end method

.method public static currentRecorderPosition()Lcom/tencent/qqgamemi/api/RecorderPosition;
    .locals 1

    .prologue
    .line 216
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->currentRecorderPosition()Lcom/tencent/qqgamemi/api/RecorderPosition;

    move-result-object v0

    return-object v0
.end method

.method public static endMomentsRecording()V
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->endMomentsRecording()V

    .line 69
    return-void
.end method

.method public static generateMomentsVideo(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
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
    .line 79
    .local p0, "timeStampList":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qqgamemi/api/TimeStamp;>;"
    .local p2, "extraInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->generateMomentsVideo(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V

    .line 80
    return-void
.end method

.method public static generateMomentsVideo(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
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
    .line 91
    .local p0, "shortVideoTime":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qqgamemi/api/TimeStamp;>;"
    .local p1, "largeVideoTime":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qqgamemi/api/TimeStamp;>;"
    .local p3, "extraInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->generateMomentsVideo(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V

    .line 92
    return-void
.end method

.method public static getCurMomentSourceVideoDuration()J
    .locals 2

    .prologue
    .line 117
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getCurMomentSourceVideoDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSrpVersionCode()I
    .locals 1

    .prologue
    .line 129
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getSrpVersionCode()I

    move-result v0

    return v0
.end method

.method public static getSystemCurrentTimeMillis()J
    .locals 2

    .prologue
    .line 249
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getSystemCurrentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static initialized(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gameEngineType"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {p0, p1}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->initSDK(Landroid/content/Context;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static isRecording()Z
    .locals 1

    .prologue
    .line 179
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->isRecording()Z

    move-result v0

    return v0
.end method

.method public static isRecordingJudgement()Z
    .locals 1

    .prologue
    .line 197
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->isRecordingJudgement()Z

    move-result v0

    return v0
.end method

.method public static isRecordingMoments()Z
    .locals 1

    .prologue
    .line 188
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->isRecordingMoments()Z

    move-result v0

    return v0
.end method

.method static isShowed()Z
    .locals 1

    .prologue
    .line 104
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->isShowed()Z

    move-result v0

    return v0
.end method

.method public static lockRecorderPosition()V
    .locals 1

    .prologue
    .line 223
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->lockRecorderPosition()V

    .line 224
    return-void
.end method

.method public static setCurrentRecorderPosition(FF)V
    .locals 1
    .param p0, "x"    # F
    .param p1, "y"    # F

    .prologue
    .line 207
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->setCurrentRecorderPosition(FF)V

    .line 208
    return-void
.end method

.method public static setDefaultStartPosition(FF)V
    .locals 1
    .param p0, "x"    # F
    .param p1, "y"    # F

    .prologue
    .line 34
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->setDefaultStartPosition(FF)V

    .line 35
    return-void
.end method

.method public static setDefaultUploadShareDialogPosition(FF)V
    .locals 1
    .param p0, "x"    # F
    .param p1, "y"    # F

    .prologue
    .line 240
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->setDefaultUploadShareDialogPosition(FF)V

    .line 241
    return-void
.end method

.method public static setVideoQuality(Landroid/content/Context;Lcom/tencent/qqgamemi/api/VideoQuality;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "quality"    # Lcom/tencent/qqgamemi/api/VideoQuality;

    .prologue
    .line 170
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    invoke-static {p0, p1}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->setVideoQuality(Landroid/content/Context;Lcom/tencent/qqgamemi/api/VideoQuality;)V

    .line 171
    return-void
.end method

.method public static showVideoListDialog(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->showVideoListDialog(Landroid/content/Context;)V

    .line 114
    return-void
.end method

.method public static startJudgementRecording(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->startJudgementRecording(Landroid/content/Context;)V

    .line 139
    return-void
.end method

.method public static startMomentsRecording(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->startMomentsRecording(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public static startRecorder(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->startRecorder(Landroid/content/Context;)V

    .line 44
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
    .line 148
    .local p1, "extraInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->stopJudgementRecording(Ljava/lang/String;Ljava/util/Map;)V

    .line 149
    return-void
.end method

.method public static stopRecorder(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->stopRecorder(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public static unLockRecorderPosition()V
    .locals 1

    .prologue
    .line 230
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->unLockRecorderPosition()V

    .line 231
    return-void
.end method
