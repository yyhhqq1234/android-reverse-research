.class public Lcom/tencent/beacon/cover/UserActionProxy;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doUploadRecords()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public flushObjectsToDB(Z)V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public getCloudParas(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    const-string v0, ""

    return-object v0
.end method

.method public getQIMEI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string v0, ""

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const-string v0, ""

    return-object v0
.end method

.method public initUserAction(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method public initUserAction(Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public initUserAction(Landroid/content/Context;ZJ)V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public initUserAction(Landroid/content/Context;ZJLcom/tencent/beacon/upload/InitHandleListener;Lcom/tencent/beacon/upload/UploadHandleListener;)V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public loginEvent(ZJLjava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public onUserAction(Ljava/lang/String;ZJJLjava/util/Map;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZJJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public onUserAction(Ljava/lang/String;ZJJLjava/util/Map;ZZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZJJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ)Z"
        }
    .end annotation

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public setAdditionalInfo(Ljava/util/Map;)V
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
    .line 99
    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public setChannelID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public setJsClientId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public setLogAble(ZZ)V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public setQQ(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public setReportDomain(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public setSDKVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public setUploadMode(Z)V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    return-void
.end method
