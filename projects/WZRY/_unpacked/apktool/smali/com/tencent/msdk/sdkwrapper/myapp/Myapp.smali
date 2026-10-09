.class public Lcom/tencent/msdk/sdkwrapper/myapp/Myapp;
.super Ljava/lang/Object;
.source "Myapp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkNeedUpdate()V
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;->getInstance()Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;->checkNeedUpdate()V

    .line 14
    return-void
.end method

.method public static checkYYBInstalled()I
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;->getInstance()Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;->checkYYBInstalled()I

    move-result v0

    return v0
.end method

.method public static init()V
    .locals 0

    .prologue
    .line 10
    invoke-static {}, Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;->getInstance()Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;

    .line 11
    return-void
.end method

.method public static native onCheckNeedUpdateInfo(JLjava/lang/String;JILjava/lang/String;I)V
.end method

.method public static onDestroy()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;->getInstance()Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;->onDestroy()V

    .line 30
    return-void
.end method

.method public static native onDownloadAppProgressChanged(JJ)V
.end method

.method public static native onDownloadAppStateChanged(IILjava/lang/String;)V
.end method

.method public static native onDownloadYYBProgressChanged(Ljava/lang/String;JJ)V
.end method

.method public static native onDownloadYYBStateChanged(Ljava/lang/String;IILjava/lang/String;)V
.end method

.method public static onResume()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;->getInstance()Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;->onResume()V

    .line 26
    return-void
.end method

.method public static startSaveUpdate(Z)V
    .locals 1
    .param p0, "isUseYYB"    # Z

    .prologue
    .line 21
    invoke-static {}, Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;->getInstance()Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;->startSaveUpdate(Z)V

    .line 22
    return-void
.end method
