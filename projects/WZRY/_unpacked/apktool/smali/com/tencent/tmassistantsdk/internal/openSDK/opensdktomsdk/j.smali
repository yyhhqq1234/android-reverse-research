.class Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/j;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/tmassistant/b;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/i;


# direct methods
.method constructor <init>(Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/i;Lcom/tencent/tmassistant/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1114
    iput-object p1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/j;->c:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/i;

    iput-object p2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/j;->a:Lcom/tencent/tmassistant/b;

    iput-object p3, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/j;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1118
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/j;->a:Lcom/tencent/tmassistant/b;

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/tmassistant/b;->a(Ljava/lang/String;)Lcom/tencent/tmassistant/aidl/TMAssistantDownloadTaskInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tmassistant/aidl/TMAssistantDownloadTaskInfo;->mSavePath:Ljava/lang/String;

    .line 1119
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1121
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1122
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1123
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1124
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/j;->c:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/i;

    iget-object v0, v0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/i;->a:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    iget-object v0, v0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mMainMessageHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1130
    :cond_0
    :goto_0
    return-void

    .line 1126
    :catch_0
    move-exception v0

    .line 1127
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
