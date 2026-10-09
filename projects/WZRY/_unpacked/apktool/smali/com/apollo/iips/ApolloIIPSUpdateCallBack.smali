.class public interface abstract Lcom/apollo/iips/ApolloIIPSUpdateCallBack;
.super Ljava/lang/Object;
.source "ApolloIIPSUpdateCallBack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apollo/iips/ApolloIIPSUpdateCallBack$ApolloIIPSAppVersion;,
        Lcom/apollo/iips/ApolloIIPSUpdateCallBack$ApolloIIPSVersionInfo;
    }
.end annotation


# virtual methods
.method public abstract onActionMsgArrive(Ljava/lang/String;)Z
.end method

.method public abstract onError(II)V
.end method

.method public abstract onGetNewVersionInfo(Lcom/apollo/iips/ApolloIIPSUpdateCallBack$ApolloIIPSVersionInfo;)Z
.end method

.method public abstract onNoticeInstallAPK(Ljava/lang/String;)Z
.end method

.method public abstract onProgress(IJJ)V
.end method

.method public abstract onSuccess()V
.end method
