.class public Lcom/apollo/iips/ApolloIIPSUpdateInterface;
.super Ljava/lang/Object;
.source "ApolloIIPSUpdateInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apollo/iips/ApolloIIPSUpdateInterface$DataVersion;
    }
.end annotation


# instance fields
.field private apolloUpdateHandle:I

.field private updateCallBack:Lcom/apollo/iips/ApolloIIPSUpdateCallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "apollo"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/apollo/iips/ApolloIIPSUpdateInterface;->apolloUpdateHandle:I

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apollo/iips/ApolloIIPSUpdateInterface;->updateCallBack:Lcom/apollo/iips/ApolloIIPSUpdateCallBack;

    .line 7
    return-void
.end method

.method private native cancelUpdateNative(I)V
.end method

.method private native checkAppUpdateNative(I)Z
.end method

.method private native createApolloUpdateHandleNative()I
.end method

.method private native deleteApolloUpdateHandleNative(I)Z
.end method

.method private native getCurDataVersionNative(I)Lcom/apollo/iips/ApolloIIPSUpdateInterface$DataVersion;
.end method

.method private native getCurrentDownloadSpeedNative(I)J
.end method

.method private native getLastErrorNative(I)J
.end method

.method private native initApolloUpdateHandleNative(ILcom/apollo/iips/ApolloIIPSUpdateCallBack;Ljava/lang/String;)Z
.end method

.method private native pollCallBackNative(I)Z
.end method

.method private native sentMsgToCurrentActionNative(ILjava/lang/String;)Z
.end method

.method private native setNextStageNative(IZ)Z
.end method

.method private native uninitApolloUpdateHandleNative(I)Z
.end method


# virtual methods
.method public cancelUpdate()V
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/apollo/iips/ApolloIIPSUpdateInterface;->apolloUpdateHandle:I

    if-nez v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    iget v0, p0, Lcom/apollo/iips/ApolloIIPSUpdateInterface;->apolloUpdateHandle:I

    invoke-direct {p0, v0}, Lcom/apollo/iips/ApolloIIPSUpdateInterface;->cancelUpdateNative(I)V

    goto :goto_0
.end method

.method public checkAppUpdate()Z
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/apollo/iips/ApolloIIPSUpdateInterface;->apolloUpdateHandle:I

    if-nez v0, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 106
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/apollo/iips/ApolloIIPSUpdateInterface;->apolloUpdateHandle:I

    invoke-direct {p0, v0}, Lcom/apollo/iips/ApolloIIPSUpdateInterface;->checkAppUpdateNative(I)Z

    move-result v0

    goto :goto_0
.end method

.method public createApolloUpdateHandle()Z
    .locals 3

    .prologue
    .line 35
    iget v0, p0, Lcom/apollo/iips/ApolloIIPSUpdateInterface;->apolloUpdateHandle:I

    if-eqz v0, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 43
    :goto_0
    return v0

    .line 41
    :cond_0
    invoke-direct {p0}, Lcom/apollo/iips/ApolloIIPSUpdateInterface;->createApolloUpdateHandleNative()I

    move-result v0

    iput v0, p0, Lcom/apollo/iips/ApolloIIPSUpdateInterface;->apolloUpdateHandle:I

    .line 42
    const-string v0, "ApolloIIPSUpdateInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "create value:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/apollo/iips/ApolloIIPSUpdateInterface;->apolloUpdateHandle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public deleteApolloUpdateHandle()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 49
    iget v2, p0, Lcom/apollo/iips/ApolloIIPSUpdateInterface;->apolloUpdateHandle:I

    if-nez v2, :cond_0

    move v0, v1

    .line 57
    :goto_0
    return v0

    .line 55
    :cond_0
    iget v2, p0, Lcom/apollo/iips/ApolloIIPSUpdateInterface;->apolloUpdateHandle:I

    invoke-direct {p0, v2}, Lcom/apollo/iips/ApolloIIPSUpdateInterface;->deleteApolloUpdateHandleNative(I)Z

    move-result v0

    .line 56
    .local v0, "a":Z
    iput v1, p0, Lcom/apollo/iips/ApolloIIPSUpdateInterface;->apolloUpdateHandle:I

    goto :goto_0
.end method

.method public getCurDataVersion()Lcom/apollo/iips/ApolloIIPSUpdateInterface$DataVersion;
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/apollo/iips/ApolloIIPSUpdateInterface;->apolloUpdateHandle:I

    if-nez v0, :cond_0

    .line 126
    const/4 v0, 0x0

    .line 130
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/apollo/iips/ApolloIIPSUpdateInterface;->apolloUpdateHandle:I

    invoke-direct {p0, v0}, Lcom/apollo/iips/ApolloIIPSUpdateInterface;->getCurDataVersionNative(I)Lcom/apollo/iips/ApolloIIPSUpdateInterface$DataVersion;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentDownloadSpeed()J
    .locals 2

    .prologue
    .line 172
    iget v0, p0, Lcom/apollo/iips/ApolloIIPSUpdateInterface;->apolloUpdateHandle:I

    if-nez v0, :cond_0

    .line 174
    const-wide/16 v0, 0x0

    .line 178
    :goto_0
    return-wide v0

    :cond_0
    iget v0, p0, Lcom/apollo/iips/ApolloIIPSUpdateInterface;->apolloUpdateHandle:I

    invoke-direct {p0, v0}, Lcom/apollo/iips/ApolloIIPSUpdateInterface;->getCurrentDownloadSpeedNative(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getLastError()J
    .locals 2

    .prologue
    .line 136
    iget v0, p0, Lcom/apollo/iips/ApolloIIPSUpdateInterface;->apolloUpdateHandle:I

    if-nez v0, :cond_0

    .line 138
    const-wide/16 v0, 0x0

    .line 142
    :goto_0
    return-wide v0

    :cond_0
    iget v0, p0, Lcom/apollo/iips/ApolloIIPSUpdateInterface;->apolloUpdateHandle:I

    invoke-direct {p0, v0}, Lcom/apollo/iips/ApolloIIPSUpdateInterface;->getLastErrorNative(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public initApolloUpdateHandle(Lcom/apollo/iips/ApolloIIPSUpdateCallBack;Ljava/lang/String;)Z
    .locals 1
    .param p1, "callBack"    # Lcom/apollo/iips/ApolloIIPSUpdateCallBack;
    .param p2, "strInitParam"    # Ljava/lang/String;

    .prologue
    .line 63
    iget v0, p0, Lcom/apollo/iips/ApolloIIPSUpdateInterface;->apolloUpdateHandle:I

    if-nez v0, :cond_0

    .line 65
    const/4 v0, 0x0

    .line 70
    :goto_0
    return v0

    .line 69
    :cond_0
    iput-object p1, p0, Lcom/apollo/iips/ApolloIIPSUpdateInterface;->updateCallBack:Lcom/apollo/iips/ApolloIIPSUpdateCallBack;

    .line 70
    iget v0, p0, Lcom/apollo/iips/ApolloIIPSUpdateInterface;->apolloUpdateHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/apollo/iips/ApolloIIPSUpdateInterface;->initApolloUpdateHandleNative(ILcom/apollo/iips/ApolloIIPSUpdateCallBack;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public pollCallBack()Z
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/apollo/iips/ApolloIIPSUpdateInterface;->apolloUpdateHandle:I

    if-nez v0, :cond_0

    .line 150
    const/4 v0, 0x0

    .line 154
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/apollo/iips/ApolloIIPSUpdateInterface;->apolloUpdateHandle:I

    invoke-direct {p0, v0}, Lcom/apollo/iips/ApolloIIPSUpdateInterface;->pollCallBackNative(I)Z

    move-result v0

    goto :goto_0
.end method

.method public sentMsgToCurrentAction(Ljava/lang/String;)Z
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 160
    iget v0, p0, Lcom/apollo/iips/ApolloIIPSUpdateInterface;->apolloUpdateHandle:I

    if-nez v0, :cond_0

    .line 162
    const/4 v0, 0x0

    .line 166
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/apollo/iips/ApolloIIPSUpdateInterface;->apolloUpdateHandle:I

    invoke-direct {p0, v0, p1}, Lcom/apollo/iips/ApolloIIPSUpdateInterface;->sentMsgToCurrentActionNative(ILjava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setNextStage(Z)Z
    .locals 1
    .param p1, "goonWork"    # Z

    .prologue
    .line 88
    iget v0, p0, Lcom/apollo/iips/ApolloIIPSUpdateInterface;->apolloUpdateHandle:I

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 94
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/apollo/iips/ApolloIIPSUpdateInterface;->apolloUpdateHandle:I

    invoke-direct {p0, v0, p1}, Lcom/apollo/iips/ApolloIIPSUpdateInterface;->setNextStageNative(IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public uninitApolloUpdateHandle()Z
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/apollo/iips/ApolloIIPSUpdateInterface;->apolloUpdateHandle:I

    if-nez v0, :cond_0

    .line 78
    const/4 v0, 0x0

    .line 82
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/apollo/iips/ApolloIIPSUpdateInterface;->apolloUpdateHandle:I

    invoke-direct {p0, v0}, Lcom/apollo/iips/ApolloIIPSUpdateInterface;->uninitApolloUpdateHandleNative(I)Z

    move-result v0

    goto :goto_0
.end method
