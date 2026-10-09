.class public Lcom/tencent/tmassistant/e;
.super Landroid/os/Handler;
.source "ProGuard"


# static fields
.field protected static a:Lcom/tencent/tmassistant/e;

.field protected static b:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    sput-object v0, Lcom/tencent/tmassistant/e;->a:Lcom/tencent/tmassistant/e;

    .line 26
    sput-object v0, Lcom/tencent/tmassistant/e;->b:Landroid/os/HandlerThread;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 36
    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/tmassistant/e;
    .locals 3

    .prologue
    .line 45
    const-class v1, Lcom/tencent/tmassistant/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/tmassistant/e;->a:Lcom/tencent/tmassistant/e;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "TMAssistantDownloadSDKMessageThread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/tmassistant/e;->b:Landroid/os/HandlerThread;

    .line 48
    sget-object v0, Lcom/tencent/tmassistant/e;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 49
    new-instance v0, Lcom/tencent/tmassistant/e;

    sget-object v2, Lcom/tencent/tmassistant/e;->b:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/tencent/tmassistant/e;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tencent/tmassistant/e;->a:Lcom/tencent/tmassistant/e;

    .line 51
    :cond_0
    sget-object v0, Lcom/tencent/tmassistant/e;->a:Lcom/tencent/tmassistant/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Lcom/tencent/tmassistant/b;Lcom/tencent/tmassistant/a;)V
    .locals 2

    .prologue
    .line 200
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    invoke-static {}, Lcom/tencent/tmassistant/e;->a()Lcom/tencent/tmassistant/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistant/e;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 206
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 208
    new-instance v1, Lcom/tencent/tmassistantbase/util/ParamPair;

    invoke-direct {v1, p1, p2}, Lcom/tencent/tmassistantbase/util/ParamPair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 210
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public a(Lcom/tencent/tmassistant/b;Lcom/tencent/tmassistant/a;Ljava/lang/String;IILjava/lang/String;)V
    .locals 3

    .prologue
    .line 138
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    invoke-static {}, Lcom/tencent/tmassistant/e;->a()Lcom/tencent/tmassistant/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistant/e;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 144
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 146
    new-instance v1, Lcom/tencent/tmassistantbase/util/ParamPair;

    invoke-direct {v1, p1, p2}, Lcom/tencent/tmassistantbase/util/ParamPair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 148
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 149
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v2, "state"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 151
    const-string v2, "errorCode"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 152
    const-string v2, "errorMsg"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 156
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public a(Lcom/tencent/tmassistant/b;Lcom/tencent/tmassistant/a;Ljava/lang/String;JJ)V
    .locals 4

    .prologue
    .line 171
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 173
    :cond_0
    const-string v0, "TMAssistantDownloadSDKMessageThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listenr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " === sdkClient"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :goto_0
    return-void

    .line 177
    :cond_1
    invoke-static {}, Lcom/tencent/tmassistant/e;->a()Lcom/tencent/tmassistant/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistant/e;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 178
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 180
    new-instance v1, Lcom/tencent/tmassistantbase/util/ParamPair;

    invoke-direct {v1, p1, p2}, Lcom/tencent/tmassistantbase/util/ParamPair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 182
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 183
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v2, "receiveDataLen"

    invoke-virtual {v1, v2, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 185
    const-string/jumbo v2, "totalDataLen"

    invoke-virtual {v1, v2, p6, p7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 187
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 189
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public a([BLjava/util/ArrayList;)V
    .locals 2

    .prologue
    .line 219
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 221
    invoke-static {}, Lcom/tencent/tmassistant/e;->a()Lcom/tencent/tmassistant/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistant/e;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 222
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 223
    new-instance v1, Lcom/tencent/tmassistantbase/util/ParamPair;

    invoke-direct {v1, p1, p2}, Lcom/tencent/tmassistantbase/util/ParamPair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 224
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 226
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 61
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 64
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/tmassistantbase/util/ParamPair;

    .line 65
    iget-object v1, v0, Lcom/tencent/tmassistantbase/util/ParamPair;->mFirstParam:Ljava/lang/Object;

    check-cast v1, Lcom/tencent/tmassistant/b;

    .line 66
    iget-object v0, v0, Lcom/tencent/tmassistantbase/util/ParamPair;->mSecondParam:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/tmassistant/a;

    .line 68
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    .line 69
    const-string/jumbo v2, "url"

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    const-string v3, "state"

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 71
    const-string v4, "errorCode"

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 72
    const-string v6, "errorMsg"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 74
    if-eqz v0, :cond_0

    .line 76
    invoke-interface/range {v0 .. v5}, Lcom/tencent/tmassistant/a;->a(Lcom/tencent/tmassistant/b;Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    .line 80
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/tmassistantbase/util/ParamPair;

    .line 81
    iget-object v2, v0, Lcom/tencent/tmassistantbase/util/ParamPair;->mFirstParam:Ljava/lang/Object;

    check-cast v2, Lcom/tencent/tmassistant/b;

    .line 82
    iget-object v1, v0, Lcom/tencent/tmassistantbase/util/ParamPair;->mSecondParam:Ljava/lang/Object;

    check-cast v1, Lcom/tencent/tmassistant/a;

    .line 84
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 85
    const-string/jumbo v3, "url"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 86
    const-string v4, "receiveDataLen"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 87
    const-string/jumbo v6, "totalDataLen"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 89
    if-eqz v1, :cond_0

    .line 91
    invoke-interface/range {v1 .. v7}, Lcom/tencent/tmassistant/a;->a(Lcom/tencent/tmassistant/b;Ljava/lang/String;JJ)V

    goto :goto_0

    .line 95
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/tmassistantbase/util/ParamPair;

    .line 96
    iget-object v1, v0, Lcom/tencent/tmassistantbase/util/ParamPair;->mFirstParam:Ljava/lang/Object;

    check-cast v1, Lcom/tencent/tmassistant/b;

    .line 97
    iget-object v0, v0, Lcom/tencent/tmassistantbase/util/ParamPair;->mSecondParam:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/tmassistant/a;

    .line 99
    if-eqz v0, :cond_0

    .line 101
    invoke-interface {v0, v1}, Lcom/tencent/tmassistant/a;->a(Lcom/tencent/tmassistant/b;)V

    goto :goto_0

    .line 105
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/tmassistantbase/util/ParamPair;

    .line 106
    iget-object v1, v0, Lcom/tencent/tmassistantbase/util/ParamPair;->mFirstParam:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    .line 107
    iget-object v0, v0, Lcom/tencent/tmassistantbase/util/ParamPair;->mSecondParam:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 109
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmassistantsdk/internal/b/a;

    .line 113
    if-eqz v0, :cond_1

    .line 115
    invoke-interface {v0, v1}, Lcom/tencent/tmassistantsdk/internal/b/a;->a([B)V

    goto :goto_1

    .line 61
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
