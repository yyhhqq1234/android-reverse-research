.class public Lcom/tencent/pandora/webview/WebViewService;
.super Landroid/app/Service;
.source "WebViewService.java"

# interfaces
.implements Lcom/tencent/pandora/webview/IWebView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/pandora/webview/WebViewService$CommandHandler;
    }
.end annotation


# static fields
.field static final MSG_CLOSE:I = 0x2

.field static final MSG_GO_BACK:I = 0x6

.field static final MSG_HIDE:I = 0x9

.field static final MSG_IS_SHOW:I = 0x7

.field static final MSG_OPEN:I = 0x1

.field static final MSG_SET_DIM:I = 0xa

.field static final MSG_SET_INFO:I = 0x4

.field static final MSG_SHOW:I = 0x8

.field static final MSG_UNINITIATE:I = 0x5

.field static final MSG_WRITE_MESSAGE:I = 0x3


# instance fields
.field public cachedInfo:Ljava/lang/String;

.field mClient:Landroid/os/Messenger;

.field final mMessenger:Landroid/os/Messenger;

.field webViewEventListener:Lcom/tencent/pandora/webview/WebViewEventListener;

.field webViewHelper:Lcom/tencent/pandora/webview/WebViewHelper;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 139
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 87
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/tencent/pandora/webview/WebViewService$CommandHandler;

    invoke-direct {v1, p0}, Lcom/tencent/pandora/webview/WebViewService$CommandHandler;-><init>(Lcom/tencent/pandora/webview/WebViewService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/tencent/pandora/webview/WebViewService;->mMessenger:Landroid/os/Messenger;

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/pandora/webview/WebViewService;->mClient:Landroid/os/Messenger;

    .line 90
    new-instance v0, Lcom/tencent/pandora/webview/WebViewService$1;

    invoke-direct {v0, p0}, Lcom/tencent/pandora/webview/WebViewService$1;-><init>(Lcom/tencent/pandora/webview/WebViewService;)V

    iput-object v0, p0, Lcom/tencent/pandora/webview/WebViewService;->webViewEventListener:Lcom/tencent/pandora/webview/WebViewEventListener;

    .line 140
    return-void
.end method

.method static synthetic access$0(Lcom/tencent/pandora/webview/WebViewService;ILandroid/os/Bundle;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lcom/tencent/pandora/webview/WebViewService;->getMessage(ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/tencent/pandora/webview/WebViewService;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/tencent/pandora/webview/WebViewService;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method private getMessage(ILandroid/os/Bundle;)Landroid/os/Message;
    .locals 2
    .param p1, "type"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 125
    const/4 v1, 0x0

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 126
    .local v0, "msg":Landroid/os/Message;
    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 127
    :cond_0
    return-object v0
.end method

.method private sendMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 131
    if-nez p1, :cond_0

    .line 137
    :goto_0
    return-void

    .line 133
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/tencent/pandora/webview/WebViewService;->mClient:Landroid/os/Messenger;

    invoke-virtual {v1, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public canGoBack()Z
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewService;->webViewHelper:Lcom/tencent/pandora/webview/WebViewHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewService;->webViewHelper:Lcom/tencent/pandora/webview/WebViewHelper;

    invoke-virtual {v0}, Lcom/tencent/pandora/webview/WebViewHelper;->close()V

    .line 174
    :cond_0
    return-void
.end method

.method public goBack()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 217
    const-string v0, "Pandora WebView"

    const-string v1, "Should Hide"

    invoke-static {v0, v1}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewService;->webViewHelper:Lcom/tencent/pandora/webview/WebViewHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewService;->webViewHelper:Lcom/tencent/pandora/webview/WebViewHelper;

    invoke-virtual {v0}, Lcom/tencent/pandora/webview/WebViewHelper;->hide()V

    .line 219
    :cond_0
    return-void
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method public isShow()Z
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewService;->webViewHelper:Lcom/tencent/pandora/webview/WebViewHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewService;->webViewHelper:Lcom/tencent/pandora/webview/WebViewHelper;

    invoke-virtual {v0}, Lcom/tencent/pandora/webview/WebViewHelper;->isShow()Z

    move-result v0

    .line 189
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 144
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 145
    new-instance v0, Lcom/tencent/pandora/webview/WebViewHelper;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/tencent/pandora/webview/WebViewHelper;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/tencent/pandora/webview/WebViewService;->webViewHelper:Lcom/tencent/pandora/webview/WebViewHelper;

    .line 146
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewService;->webViewHelper:Lcom/tencent/pandora/webview/WebViewHelper;

    iget-object v1, p0, Lcom/tencent/pandora/webview/WebViewService;->webViewEventListener:Lcom/tencent/pandora/webview/WebViewEventListener;

    invoke-virtual {v0, v1}, Lcom/tencent/pandora/webview/WebViewHelper;->setListener(Lcom/tencent/pandora/webview/WebViewEventListener;)V

    .line 147
    const-string v0, "Pandora WebView"

    const-string v1, "Service Setup..."

    invoke-static {v0, v1}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/tencent/pandora/webview/WebViewService;->uninitiated()V

    .line 229
    const-string v0, "Pandora WebView"

    const-string v1, "Destroyed"

    invoke-static {v0, v1}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 231
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 235
    const-string v0, "Pandora WebView"

    const-string v1, "On Low Memory..."

    invoke-static {v0, v1}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const/4 v0, -0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/pandora/webview/WebViewService;->getMessage(ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/pandora/webview/WebViewService;->sendMessage(Landroid/os/Message;)V

    .line 237
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 238
    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 194
    const-string v0, "Pandora WebView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Service Set Info "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iput-object p1, p0, Lcom/tencent/pandora/webview/WebViewService;->cachedInfo:Ljava/lang/String;

    .line 196
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewService;->webViewHelper:Lcom/tencent/pandora/webview/WebViewHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewService;->webViewHelper:Lcom/tencent/pandora/webview/WebViewHelper;

    invoke-virtual {v0, p1}, Lcom/tencent/pandora/webview/WebViewHelper;->setInfo(Ljava/lang/String;)V

    .line 197
    :cond_0
    return-void
.end method

.method public setListener(Lcom/tencent/pandora/webview/WebViewEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/tencent/pandora/webview/WebViewEventListener;

    .prologue
    .line 163
    return-void
.end method

.method public setScreenDimension(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 223
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewService;->webViewHelper:Lcom/tencent/pandora/webview/WebViewHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewService;->webViewHelper:Lcom/tencent/pandora/webview/WebViewHelper;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/pandora/webview/WebViewHelper;->setScreenDimension(II)V

    .line 224
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 211
    const-string v0, "Pandora WebView"

    const-string v1, "Should Show"

    invoke-static {v0, v1}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewService;->webViewHelper:Lcom/tencent/pandora/webview/WebViewHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewService;->webViewHelper:Lcom/tencent/pandora/webview/WebViewHelper;

    invoke-virtual {v0}, Lcom/tencent/pandora/webview/WebViewHelper;->show()V

    .line 213
    :cond_0
    return-void
.end method

.method public showUrl(IIIILjava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "url"    # Ljava/lang/String;
    .param p6, "color"    # Ljava/lang/String;
    .param p7, "delayShow"    # Z

    .prologue
    .line 167
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewService;->webViewHelper:Lcom/tencent/pandora/webview/WebViewHelper;

    if-nez v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewService;->webViewHelper:Lcom/tencent/pandora/webview/WebViewHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/pandora/webview/WebViewHelper;->showUrl(IIIILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public uninitiated()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewService;->webViewHelper:Lcom/tencent/pandora/webview/WebViewHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewService;->webViewHelper:Lcom/tencent/pandora/webview/WebViewHelper;

    invoke-virtual {v0}, Lcom/tencent/pandora/webview/WebViewHelper;->uninitiated()V

    .line 207
    :cond_0
    return-void
.end method

.method public writeMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 201
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewService;->webViewHelper:Lcom/tencent/pandora/webview/WebViewHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewService;->webViewHelper:Lcom/tencent/pandora/webview/WebViewHelper;

    invoke-virtual {v0, p1}, Lcom/tencent/pandora/webview/WebViewHelper;->writeMessage(Ljava/lang/String;)V

    .line 202
    :cond_0
    return-void
.end method
