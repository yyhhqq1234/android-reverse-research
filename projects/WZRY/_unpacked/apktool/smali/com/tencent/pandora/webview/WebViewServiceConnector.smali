.class public Lcom/tencent/pandora/webview/WebViewServiceConnector;
.super Ljava/lang/Object;
.source "WebViewServiceConnector.java"

# interfaces
.implements Lcom/tencent/pandora/webview/IWebView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/pandora/webview/WebViewServiceConnector$CommandHandler;
    }
.end annotation


# static fields
.field static final MSG_IS_SHOW:I = -0x3

.field static final MSG_LOAD_FINISH:I = -0x1

.field static final MSG_LOW_MEMORY:I = -0x4

.field static final MSG_ON_BACK_PRESS:I = -0x5

.field static final MSG_ON_MESSAGE:I = -0x2


# instance fields
.field currentContext:Landroid/content/Context;

.field listener:Lcom/tencent/pandora/webview/WebViewEventListener;

.field mBound:Z

.field final mClient:Landroid/os/Messenger;

.field private mConnection:Landroid/content/ServiceConnection;

.field mService:Landroid/os/Messenger;

.field messageQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field userInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "currentContext"    # Landroid/content/Context;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/tencent/pandora/webview/WebViewServiceConnector$CommandHandler;

    invoke-direct {v1, p0}, Lcom/tencent/pandora/webview/WebViewServiceConnector$CommandHandler;-><init>(Lcom/tencent/pandora/webview/WebViewServiceConnector;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/tencent/pandora/webview/WebViewServiceConnector;->mClient:Landroid/os/Messenger;

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/pandora/webview/WebViewServiceConnector;->listener:Lcom/tencent/pandora/webview/WebViewEventListener;

    .line 62
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/pandora/webview/WebViewServiceConnector;->messageQueue:Ljava/util/Queue;

    .line 65
    new-instance v0, Lcom/tencent/pandora/webview/WebViewServiceConnector$1;

    invoke-direct {v0, p0}, Lcom/tencent/pandora/webview/WebViewServiceConnector$1;-><init>(Lcom/tencent/pandora/webview/WebViewServiceConnector;)V

    iput-object v0, p0, Lcom/tencent/pandora/webview/WebViewServiceConnector;->mConnection:Landroid/content/ServiceConnection;

    .line 86
    iput-object p1, p0, Lcom/tencent/pandora/webview/WebViewServiceConnector;->currentContext:Landroid/content/Context;

    .line 87
    return-void
.end method

.method static synthetic access$0(Lcom/tencent/pandora/webview/WebViewServiceConnector;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/tencent/pandora/webview/WebViewServiceConnector;->sendQueuedMessage()V

    return-void
.end method

.method private getMessage(ILandroid/os/Bundle;)Landroid/os/Message;
    .locals 2
    .param p1, "type"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 109
    const/4 v1, 0x0

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 110
    .local v0, "msg":Landroid/os/Message;
    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/tencent/pandora/webview/WebViewServiceConnector;->mClient:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 112
    return-object v0
.end method

.method private sendMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 129
    if-nez p1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-boolean v1, p0, Lcom/tencent/pandora/webview/WebViewServiceConnector;->mBound:Z

    if-nez v1, :cond_2

    .line 131
    invoke-virtual {p0}, Lcom/tencent/pandora/webview/WebViewServiceConnector;->connectService()V

    .line 132
    iget-object v1, p0, Lcom/tencent/pandora/webview/WebViewServiceConnector;->messageQueue:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/tencent/pandora/webview/WebViewServiceConnector;->messageQueue:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 137
    :cond_2
    :try_start_0
    const-string v1, "Pandora WebView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Connector Send Message "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/tencent/pandora/webview/WebViewServiceConnector;->mService:Landroid/os/Messenger;

    invoke-virtual {v1, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private sendQueuedMessage()V
    .locals 4

    .prologue
    .line 116
    iget-object v1, p0, Lcom/tencent/pandora/webview/WebViewServiceConnector;->messageQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 117
    .local v0, "msg":Landroid/os/Message;
    if-nez v0, :cond_1

    .line 118
    const-string v1, "Pandora WebView"

    const-string v2, "No Queued Message"

    invoke-static {v1, v2}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    const-string v1, "Pandora WebView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Has Queued Message, Sending Message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-direct {p0, v0}, Lcom/tencent/pandora/webview/WebViewServiceConnector;->sendMessage(Landroid/os/Message;)V

    .line 123
    iget-boolean v1, p0, Lcom/tencent/pandora/webview/WebViewServiceConnector;->mBound:Z

    if-eqz v1, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/tencent/pandora/webview/WebViewServiceConnector;->sendQueuedMessage()V

    goto :goto_0
.end method


# virtual methods
.method public canGoBack()Z
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/tencent/pandora/webview/WebViewServiceConnector;->mBound:Z

    if-nez v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 177
    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/pandora/webview/WebViewServiceConnector;->getMessage(ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/pandora/webview/WebViewServiceConnector;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method connectService()V
    .locals 4

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/tencent/pandora/webview/WebViewServiceConnector;->mBound:Z

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewServiceConnector;->currentContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/pandora/webview/WebViewServiceConnector;->currentContext:Landroid/content/Context;

    const-class v3, Lcom/tencent/pandora/webview/WebViewService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    iget-object v2, p0, Lcom/tencent/pandora/webview/WebViewServiceConnector;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    .line 95
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 98
    :cond_0
    return-void
.end method

.method disconnectService()V
    .locals 2

    .prologue
    .line 101
    const-string v0, "Pandora WebView"

    const-string v1, "Unbound Service"

    invoke-static {v0, v1}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-boolean v0, p0, Lcom/tencent/pandora/webview/WebViewServiceConnector;->mBound:Z

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewServiceConnector;->currentContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/pandora/webview/WebViewServiceConnector;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/pandora/webview/WebViewServiceConnector;->mBound:Z

    .line 106
    :cond_0
    return-void
.end method

.method public goBack()V
    .locals 2

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/tencent/pandora/webview/WebViewServiceConnector;->mBound:Z

    if-nez v0, :cond_0

    .line 201
    :goto_0
    return-void

    .line 200
    :cond_0
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/pandora/webview/WebViewServiceConnector;->getMessage(ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/pandora/webview/WebViewServiceConnector;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/tencent/pandora/webview/WebViewServiceConnector;->mBound:Z

    if-nez v0, :cond_0

    .line 213
    :goto_0
    return-void

    .line 212
    :cond_0
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/pandora/webview/WebViewServiceConnector;->getMessage(ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/pandora/webview/WebViewServiceConnector;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public initialize()V
    .locals 2

    .prologue
    .line 147
    const-string v0, "Pandora WebView"

    const-string v1, "Initialize"

    invoke-static {v0, v1}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/tencent/pandora/webview/WebViewServiceConnector;->connectService()V

    .line 149
    return-void
.end method

.method public isBound()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/tencent/pandora/webview/WebViewServiceConnector;->mBound:Z

    return v0
.end method

.method public isShow()Z
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 2
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/tencent/pandora/webview/WebViewServiceConnector;->userInfo:Ljava/lang/String;

    .line 191
    iget-boolean v1, p0, Lcom/tencent/pandora/webview/WebViewServiceConnector;->mBound:Z

    if-nez v1, :cond_0

    .line 195
    :goto_0
    return-void

    .line 192
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 193
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "info"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/tencent/pandora/webview/WebViewServiceConnector;->getMessage(ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/pandora/webview/WebViewServiceConnector;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public setListener(Lcom/tencent/pandora/webview/WebViewEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/tencent/pandora/webview/WebViewEventListener;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/tencent/pandora/webview/WebViewServiceConnector;->listener:Lcom/tencent/pandora/webview/WebViewEventListener;

    .line 154
    return-void
.end method

.method public setScreenDimension(II)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 233
    iget-boolean v1, p0, Lcom/tencent/pandora/webview/WebViewServiceConnector;->mBound:Z

    if-nez v1, :cond_0

    .line 238
    :goto_0
    return-void

    .line 234
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 235
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v1, "width"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 236
    const-string v1, "height"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 237
    const/16 v1, 0xa

    invoke-direct {p0, v1, v0}, Lcom/tencent/pandora/webview/WebViewServiceConnector;->getMessage(ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/pandora/webview/WebViewServiceConnector;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/tencent/pandora/webview/WebViewServiceConnector;->mBound:Z

    if-nez v0, :cond_0

    .line 207
    :goto_0
    return-void

    .line 206
    :cond_0
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/pandora/webview/WebViewServiceConnector;->getMessage(ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/pandora/webview/WebViewServiceConnector;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public showUrl(IIIILjava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "url"    # Ljava/lang/String;
    .param p6, "color"    # Ljava/lang/String;
    .param p7, "delayShow"    # Z

    .prologue
    .line 160
    iget-boolean v1, p0, Lcom/tencent/pandora/webview/WebViewServiceConnector;->mBound:Z

    if-nez v1, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/tencent/pandora/webview/WebViewServiceConnector;->connectService()V

    .line 163
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 164
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v1, "width"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 165
    const-string v1, "height"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 166
    const-string v1, "left"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 167
    const-string/jumbo v1, "top"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 168
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v1, "color"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v1, "delayShow"

    invoke-virtual {v0, v1, p7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 171
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/tencent/pandora/webview/WebViewServiceConnector;->getMessage(ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/pandora/webview/WebViewServiceConnector;->sendMessage(Landroid/os/Message;)V

    .line 172
    return-void
.end method

.method public uninitiated()V
    .locals 2

    .prologue
    .line 227
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/pandora/webview/WebViewServiceConnector;->getMessage(ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/pandora/webview/WebViewServiceConnector;->sendMessage(Landroid/os/Message;)V

    .line 228
    invoke-virtual {p0}, Lcom/tencent/pandora/webview/WebViewServiceConnector;->disconnectService()V

    .line 229
    return-void
.end method

.method public writeMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 182
    iget-boolean v1, p0, Lcom/tencent/pandora/webview/WebViewServiceConnector;->mBound:Z

    if-nez v1, :cond_0

    .line 186
    :goto_0
    return-void

    .line 183
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 184
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/tencent/pandora/webview/WebViewServiceConnector;->getMessage(ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/pandora/webview/WebViewServiceConnector;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
