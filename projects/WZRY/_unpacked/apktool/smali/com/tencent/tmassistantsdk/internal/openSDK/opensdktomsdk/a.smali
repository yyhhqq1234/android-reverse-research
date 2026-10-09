.class Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;


# direct methods
.method constructor <init>(Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a;->a:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    .prologue
    .line 149
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 186
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 151
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/b;

    .line 152
    if-eqz v0, :cond_0

    .line 153
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a;->a:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    invoke-virtual {v1, v0}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->onNetworkFinishedSuccess(Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/b;)V

    goto :goto_0

    .line 158
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 159
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a;->a:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    invoke-virtual {v1, v0}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->onNetworkFinishedFailed(I)V

    goto :goto_0

    .line 163
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 164
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    iget-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a;->a:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    invoke-virtual {v2, v1, v0}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->handleInstall(Ljava/lang/String;I)V

    goto :goto_0

    .line 168
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_0

    .line 170
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a;->a:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    const-string v2, "receiveDataLen"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string/jumbo v4, "totalDataLen"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->handleDownloading(JJ)V

    goto :goto_0

    .line 174
    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_0

    .line 176
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a;->a:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    const-string v2, "receiveDataLen"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string/jumbo v4, "totalDataLen"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->handleDownloadContinue(JJ)V

    goto :goto_0

    .line 180
    :pswitch_6
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a;->a:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    invoke-virtual {v0}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->handleDownloadFailed()V

    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method
