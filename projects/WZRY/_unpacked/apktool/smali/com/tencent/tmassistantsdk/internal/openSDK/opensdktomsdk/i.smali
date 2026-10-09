.class Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/i;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tmassistant/a;


# instance fields
.field final synthetic a:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;


# direct methods
.method constructor <init>(Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;)V
    .locals 0

    .prologue
    .line 1098
    iput-object p1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/i;->a:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tmassistant/b;)V
    .locals 0

    .prologue
    .line 1103
    return-void
.end method

.method public a(Lcom/tencent/tmassistant/b;Ljava/lang/String;IILjava/lang/String;)V
    .locals 3

    .prologue
    .line 1107
    const-string v0, "OpensdkToMsdkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnDownloadSDKTaskStateChanged client:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | errorcode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | errorMsg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1140
    :cond_0
    :goto_0
    return-void

    .line 1113
    :cond_1
    const/4 v0, 0x4

    if-ne v0, p3, :cond_2

    .line 1114
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/i;->a:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    iget-object v0, v0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mSubMessageHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/j;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/j;-><init>(Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/i;Lcom/tencent/tmassistant/b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1133
    :cond_2
    const/4 v0, 0x5

    if-ne v0, p3, :cond_0

    .line 1135
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1136
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1137
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/i;->a:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    iget-object v1, v1, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mMainMessageHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public a(Lcom/tencent/tmassistant/b;Ljava/lang/String;JJ)V
    .locals 3

    .prologue
    .line 1145
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1146
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1147
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1148
    const-string v2, "receiveDataLen"

    invoke-virtual {v1, v2, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1149
    const-string/jumbo v2, "totalDataLen"

    invoke-virtual {v1, v2, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1150
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1151
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/i;->a:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    iget-object v1, v1, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mMainMessageHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1153
    return-void
.end method
