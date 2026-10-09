.class public abstract Lcom/tencent/msdk/myapp/autoupdate/WGSaveUpdateObserver;
.super Ljava/lang/Object;
.source "WGSaveUpdateObserver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract OnCheckNeedUpdateInfo(JLjava/lang/String;JILjava/lang/String;I)V
.end method

.method public abstract OnDownloadAppProgressChanged(JJ)V
.end method

.method public abstract OnDownloadAppStateChanged(IILjava/lang/String;)V
.end method

.method public abstract OnDownloadYYBProgressChanged(Ljava/lang/String;JJ)V
.end method

.method public abstract OnDownloadYYBStateChanged(Ljava/lang/String;IILjava/lang/String;)V
.end method
