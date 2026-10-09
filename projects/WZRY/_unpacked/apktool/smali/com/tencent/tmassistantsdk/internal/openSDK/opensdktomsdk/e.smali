.class Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/e;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;


# direct methods
.method constructor <init>(Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;)V
    .locals 0

    .prologue
    .line 826
    iput-object p1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/e;->a:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 831
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/e;->a:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    iget-object v0, v0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->dialog:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;

    invoke-virtual {v0}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 832
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/e;->a:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    iget-object v0, v0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->dialog:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;

    invoke-virtual {v0}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;->dismiss()V

    .line 833
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/e;->a:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mHttpRequest:Lcom/tencent/tmassistantsdk/internal/d/a;

    .line 837
    :cond_0
    invoke-static {}, Lcom/tencent/tmassistantsdk/internal/c/h;->h()Lcom/tencent/tmassistantsdk/internal/c/h;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/e;->a:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    iget-object v1, v1, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mAuthorizedInfo:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;

    invoke-virtual {v0, v1}, Lcom/tencent/tmassistantsdk/internal/c/h;->a(Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;)Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;

    move-result-object v0

    .line 838
    if-eqz v0, :cond_1

    .line 839
    iget v1, v0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->cancelBtnClickCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->cancelBtnClickCount:I

    .line 840
    invoke-static {}, Lcom/tencent/tmassistantsdk/internal/c/h;->h()Lcom/tencent/tmassistantsdk/internal/c/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/tmassistantsdk/internal/c/h;->a(Lcom/qq/taf/jce/JceStruct;)V

    .line 848
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/e;->a:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    iget-object v0, v0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mClient:Lcom/tencent/tmassistant/b;

    if-eqz v0, :cond_2

    .line 849
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/e;->a:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/e;->a:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    iget-object v1, v1, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->pauseDownloadTask(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 856
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/e;->a:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    iget v0, v0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->authorizedState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 857
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/e;->a:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/e;->a:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    iget-object v2, v2, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mAuthorizedInfo:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->notifyAuthorizedFinished(ZLcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;)V

    .line 861
    :goto_1
    return-void

    .line 852
    :catch_0
    move-exception v0

    .line 853
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 859
    :cond_3
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/e;->a:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/e;->a:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    iget-object v2, v2, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mAuthorizedInfo:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->notifyAuthorizedFinished(ZLcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;)V

    goto :goto_1
.end method
