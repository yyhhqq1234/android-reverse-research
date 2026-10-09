.class Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger$3;
.super Ljava/lang/Object;
.source "MyappMananger.java"

# interfaces
.implements Lcom/tencent/tmselfupdatesdk/ITMSelfUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger$3;->this$0:Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadAppProgressChanged(JJ)V
    .locals 3
    .param p1, "receiveDataLen"    # J
    .param p3, "totalDataLen"    # J

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receiveDataLen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " totalDataLen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 156
    invoke-static {p1, p2, p3, p4}, Lcom/tencent/msdk/sdkwrapper/myapp/Myapp;->onDownloadAppProgressChanged(JJ)V

    .line 157
    return-void
.end method

.method public onDownloadAppStateChanged(IILjava/lang/String;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " errorMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 150
    invoke-static {p1, p2, p3}, Lcom/tencent/msdk/sdkwrapper/myapp/Myapp;->onDownloadAppStateChanged(IILjava/lang/String;)V

    .line 151
    return-void
.end method

.method public onUpdateInfoReceived(Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;)V
    .locals 8
    .param p1, "tmSelfUpdateUpdateInfo"    # Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;

    .prologue
    .line 161
    if-eqz p1, :cond_0

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NewApkSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->getNewApkSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " NewFeature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 163
    invoke-virtual {p1}, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->getNewFeature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PatchSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 164
    invoke-virtual {p1}, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->getPatchSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 165
    invoke-virtual {p1}, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UpdateDownloadUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 166
    invoke-virtual {p1}, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->getUpdateDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UpdateMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 167
    invoke-virtual {p1}, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->getUpdateMethod()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p1}, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->getNewApkSize()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->getNewFeature()Ljava/lang/String;

    move-result-object v2

    .line 169
    invoke-virtual {p1}, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->getPatchSize()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->getStatus()I

    move-result v5

    .line 170
    invoke-virtual {p1}, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->getUpdateDownloadUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->getUpdateMethod()I

    move-result v7

    .line 168
    invoke-static/range {v0 .. v7}, Lcom/tencent/msdk/sdkwrapper/myapp/Myapp;->onCheckNeedUpdateInfo(JLjava/lang/String;JILjava/lang/String;I)V

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    const-string/jumbo v0, "yyb TMSelfUpdateUpdateInfo is null"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
