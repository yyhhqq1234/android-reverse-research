.class public Lcom/tencent/tmassistantsdk/internal/b/b;
.super Lcom/tencent/tmassistant/d;
.source "ProGuard"


# instance fields
.field protected a:Z

.field protected b:I

.field j:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/tmassistant/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iput-boolean v0, p0, Lcom/tencent/tmassistantsdk/internal/b/b;->a:Z

    .line 35
    iput v0, p0, Lcom/tencent/tmassistantsdk/internal/b/b;->b:I

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/b/b;->j:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Lcom/tencent/tmassistantsdk/internal/b/c;

    invoke-direct {v0, p0}, Lcom/tencent/tmassistantsdk/internal/b/c;-><init>(Lcom/tencent/tmassistantsdk/internal/b/b;)V

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/b/b;->h:Landroid/os/IInterface;

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/tencent/tmassistantsdk/internal/b/b;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/b/b;->c:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/b/b;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/b/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/b/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmassistantsdk/internal/b/a;

    .line 116
    if-eqz v0, :cond_0

    .line 118
    invoke-interface {v0}, Lcom/tencent/tmassistantsdk/internal/b/a;->a()V

    goto :goto_0

    .line 123
    :cond_1
    return-void
.end method

.method protected a(Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 129
    invoke-static {p1}, Lcom/tencent/assistant/sdk/remote/BaseService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/assistant/sdk/remote/BaseService;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/b/b;->g:Landroid/os/IInterface;

    .line 130
    return-void
.end method

.method public a(Lcom/tencent/tmassistantsdk/internal/b/a;)V
    .locals 2

    .prologue
    .line 105
    const-string v0, "TMAssistantDownloadOpenSDKClient"

    const-string v1, "addAssistantOnActionListener"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/b/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/b/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_0
    return-void
.end method

.method public a([B)[B
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/b/b;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    invoke-super {p0}, Lcom/tencent/tmassistant/d;->g()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/tencent/assistant/sdk/remote/BaseService;

    .line 63
    if-eqz v0, :cond_0

    .line 65
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/b/b;->d:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/tencent/assistant/sdk/remote/BaseService;->sendSyncData(Ljava/lang/String;[B)[B

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    .line 67
    :cond_0
    invoke-super {p0}, Lcom/tencent/tmassistant/d;->e()Z

    .line 68
    const-string v0, "TMAssistantDownloadOpenSDKClient"

    const-string v1, "initTMAssistantDownloadSDK"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()V
    .locals 6

    .prologue
    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 138
    new-instance v1, Lcom/tencent/tmassistantbase/util/Cryptor;

    invoke-direct {v1}, Lcom/tencent/tmassistantbase/util/Cryptor;-><init>()V

    iget-object v2, p0, Lcom/tencent/tmassistantsdk/internal/b/b;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/tencent/tmassistantbase/util/Cryptor;->encrypt([B[B)[B

    move-result-object v0

    .line 140
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 142
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/b/b;->g:Landroid/os/IInterface;

    check-cast v0, Lcom/tencent/assistant/sdk/remote/BaseService;

    iget-object v3, p0, Lcom/tencent/tmassistantsdk/internal/b/b;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/b/b;->h:Landroid/os/IInterface;

    check-cast v1, Lcom/tencent/assistant/sdk/remote/SDKActionCallback;

    invoke-interface {v0, v3, v2, v1}, Lcom/tencent/assistant/sdk/remote/BaseService;->registerActionCallback(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/assistant/sdk/remote/SDKActionCallback;)I

    move-result v0

    .line 144
    const-string v1, "TMAssistantDownloadOpenSDKClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceConnected,registerActionCallback:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/tmassistantsdk/internal/b/b;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",tokenString:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",threadId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mServiceCallback:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/tmassistantsdk/internal/b/b;->h:Landroid/os/IInterface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",registed result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/tencent/tmassistantsdk/internal/b/b;->a()V

    .line 156
    :cond_0
    return-void
.end method

.method public b([B)V
    .locals 4

    .prologue
    .line 82
    const-string v0, "TMAssistantDownloadOpenSDKClient"

    const-string v1, "sendAsyncData"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/b/b;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    invoke-super {p0}, Lcom/tencent/tmassistant/d;->g()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/tencent/assistant/sdk/remote/BaseService;

    .line 86
    const-string v1, "TMAssistantDownloadOpenSDKClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendAsyncData baseService:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    if-eqz v0, :cond_1

    .line 89
    const-string v1, "TMAssistantDownloadOpenSDKClient"

    const-string v2, "baseService sendAsyncData"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/b/b;->d:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/tencent/assistant/sdk/remote/BaseService;->sendAsyncData(Ljava/lang/String;[B)V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-super {p0}, Lcom/tencent/tmassistant/d;->e()Z

    .line 93
    const-string v0, "TMAssistantDownloadOpenSDKClient"

    const-string v1, "initTMAssistantDownloadSDK"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected c()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 160
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/b/b;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.tencent.android.qqdownloader"

    const-string v2, "com.tencent.assistant.sdk.SDKSupportService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected d()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/b/b;->g:Landroid/os/IInterface;

    check-cast v0, Lcom/tencent/assistant/sdk/remote/BaseService;

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/b/b;->h:Landroid/os/IInterface;

    check-cast v1, Lcom/tencent/assistant/sdk/remote/SDKActionCallback;

    invoke-interface {v0, v1}, Lcom/tencent/assistant/sdk/remote/BaseService;->unregisterActionCallback(Lcom/tencent/assistant/sdk/remote/SDKActionCallback;)I

    move-result v0

    .line 166
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/tencent/tmassistantsdk/internal/b/b;->a()V

    .line 170
    :cond_0
    return-void
.end method

.method public declared-synchronized e()Z
    .locals 6

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/tencent/tmassistant/d;->e()Z

    move-result v1

    .line 179
    const-string v0, "TMAssistantDownloadOpenSDKClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initTMAssistantDownloadSDK bindResult:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    if-nez v1, :cond_0

    .line 182
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 183
    const-string v2, "com.tencent.android.qqdownloader"

    const-string v3, "com.tencent.pangu.link.LinkProxyActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 185
    iget-object v2, p0, Lcom/tencent/tmassistantsdk/internal/b/b;->c:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    :goto_0
    :try_start_2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "retry_thread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 194
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 196
    new-instance v0, Lcom/tencent/tmassistantsdk/internal/b/d;

    invoke-direct {v0, p0, v2}, Lcom/tencent/tmassistantsdk/internal/b/d;-><init>(Lcom/tencent/tmassistantsdk/internal/b/b;Landroid/os/Handler;)V

    .line 216
    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    :cond_0
    monitor-exit p0

    return v1

    .line 186
    :catch_0
    move-exception v0

    .line 187
    :try_start_3
    const-string v2, "TMAssistantDownloadOpenSDKClient"

    const-string v3, "retry bind service startActivity Exception:"

    invoke-static {v2, v3, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
