.class public interface abstract Lcom/tencent/tmslite/market/IDownload;
.super Ljava/lang/Object;
.source "IDownload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tmslite/market/IDownload$STATE;,
        Lcom/tencent/tmslite/market/IDownload$TmsCallback;
    }
.end annotation


# virtual methods
.method public abstract bindService(Landroid/content/Context;Lcom/tencent/tmslite/market/IDownload$TmsCallback;)Z
.end method

.method public abstract download(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public abstract install(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract pause(Z)V
.end method

.method public abstract queryState(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract unBindService(Landroid/content/Context;)Z
.end method
