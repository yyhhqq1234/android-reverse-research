.class public interface abstract Lcom/tencent/tmslite/market/IDownload$TmsCallback;
.super Ljava/lang/Object;
.source "IDownload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tmslite/market/IDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TmsCallback"
.end annotation


# virtual methods
.method public abstract onDownloadProcess(Ljava/lang/String;Ljava/lang/String;IFJJ)V
.end method

.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onNoticeInstallApk(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onQueryState(Ljava/lang/String;Ljava/lang/String;IFJJ)V
.end method

.method public abstract onServiceConnected(Landroid/content/ComponentName;)V
.end method
