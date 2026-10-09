.class public Lcom/tencent/pandora/webview/WebViewActivity;
.super Landroid/app/Activity;
.source "WebViewActivity.java"

# interfaces
.implements Lcom/tencent/pandora/webview/IWebView;


# static fields
.field public static final COLOR_KEY:Ljava/lang/String; = "color"

.field public static final FUN_KEY:Ljava/lang/String; = "funkey"

.field public static final HEIGHT_KEY:Ljava/lang/String; = "height"

.field public static final INFO_KEY:Ljava/lang/String; = "info"

.field public static final LEFT_KEY:Ljava/lang/String; = "left"

.field public static final MSG_KEY:Ljava/lang/String; = "message"

.field public static final Obj_KEY:Ljava/lang/String; = "unityGameObject"

.field public static final TOP_KEY:Ljava/lang/String; = "top"

.field public static final URL_KEY:Ljava/lang/String; = "url"

.field public static final WAITFULLYLOADER_KEY:Ljava/lang/String; = "waitFullyLoaded"

.field public static final WIDTH_KEY:Ljava/lang/String; = "width"

.field public static final WebviewIntentFliter:Ljava/lang/String; = "com.tencent.pandora.webview"

.field public static gameObjectName:Ljava/lang/String;

.field public static isShow:Z


# instance fields
.field color:Ljava/lang/String;

.field height:I

.field left:I

.field top:I

.field url:Ljava/lang/String;

.field waitFullyLoaded:Z

.field webviewHelper:Lcom/tencent/pandora/webview/WebViewHelper;

.field width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/pandora/webview/WebViewActivity;->isShow:Z

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/tencent/pandora/webview/WebViewActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/tencent/pandora/webview/WebViewActivity;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private parseIntent(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 174
    if-eqz p1, :cond_0

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewActivity;->webviewHelper:Lcom/tencent/pandora/webview/WebViewHelper;

    if-nez v0, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    const-string v0, "WebViewActivity"

    const-string v1, "on parseIntent !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-string v0, "funkey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 179
    .local v9, "funkey":Ljava/lang/String;
    const-string/jumbo v0, "unityGameObject"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/pandora/webview/WebViewActivity;->gameObjectName:Ljava/lang/String;

    .line 180
    const-string v0, "WebViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parseIntent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const-string v0, "showUrl"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 182
    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/pandora/webview/WebViewActivity;->width:I

    .line 183
    const-string v0, "height"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/pandora/webview/WebViewActivity;->height:I

    .line 184
    const-string v0, "left"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/pandora/webview/WebViewActivity;->left:I

    .line 185
    const-string/jumbo v0, "top"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/pandora/webview/WebViewActivity;->top:I

    .line 186
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/pandora/webview/WebViewActivity;->url:Ljava/lang/String;

    .line 187
    const-string v0, "color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/pandora/webview/WebViewActivity;->color:Ljava/lang/String;

    .line 188
    const-string/jumbo v0, "waitFullyLoaded"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/pandora/webview/WebViewActivity;->waitFullyLoaded:Z

    .line 189
    const-string v0, "WebViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "show url "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/pandora/webview/WebViewActivity;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget v1, p0, Lcom/tencent/pandora/webview/WebViewActivity;->width:I

    iget v2, p0, Lcom/tencent/pandora/webview/WebViewActivity;->height:I

    iget v3, p0, Lcom/tencent/pandora/webview/WebViewActivity;->left:I

    iget v4, p0, Lcom/tencent/pandora/webview/WebViewActivity;->top:I

    iget-object v5, p0, Lcom/tencent/pandora/webview/WebViewActivity;->url:Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/pandora/webview/WebViewActivity;->color:Ljava/lang/String;

    .line 191
    iget-boolean v7, p0, Lcom/tencent/pandora/webview/WebViewActivity;->waitFullyLoaded:Z

    move-object v0, p0

    .line 190
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/pandora/webview/WebViewActivity;->showUrl(IIIILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 224
    .end local v9    # "funkey":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 225
    .local v8, "ex":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 226
    invoke-virtual {p0}, Lcom/tencent/pandora/webview/WebViewActivity;->finish()V

    goto/16 :goto_0

    .line 192
    .end local v8    # "ex":Ljava/lang/Exception;
    .restart local v9    # "funkey":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v0, "close"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 193
    invoke-virtual {p0}, Lcom/tencent/pandora/webview/WebViewActivity;->close()V

    goto/16 :goto_0

    .line 194
    :cond_3
    const-string v0, "goBack"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 195
    invoke-virtual {p0}, Lcom/tencent/pandora/webview/WebViewActivity;->goBack()V

    goto/16 :goto_0

    .line 196
    :cond_4
    const-string v0, "setInfo"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 197
    const-string v0, "info"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 198
    .local v10, "info":Ljava/lang/String;
    invoke-virtual {p0, v10}, Lcom/tencent/pandora/webview/WebViewActivity;->setInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 199
    .end local v10    # "info":Ljava/lang/String;
    :cond_5
    const-string/jumbo v0, "writeMessage"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 200
    const-string v0, "message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 201
    .local v11, "msg":Ljava/lang/String;
    invoke-virtual {p0, v11}, Lcom/tencent/pandora/webview/WebViewActivity;->writeMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 202
    .end local v11    # "msg":Ljava/lang/String;
    :cond_6
    const-string/jumbo v0, "uninitiated"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 203
    invoke-virtual {p0}, Lcom/tencent/pandora/webview/WebViewActivity;->uninitiated()V

    goto/16 :goto_0

    .line 204
    :cond_7
    const-string v0, "show"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    const-string v0, "hide"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 207
    invoke-virtual {p0}, Lcom/tencent/pandora/webview/WebViewActivity;->close()V

    goto/16 :goto_0

    .line 209
    :cond_8
    const-string v0, "message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 210
    .restart local v11    # "msg":Ljava/lang/String;
    const-string v0, "OnBackPress"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    const-string v0, "OnLowMemory"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    const-string v0, "OnPageLoaded"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    const-string v0, "OnPageMessage"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private sendMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "function"    # Ljava/lang/String;
    .param p2, "payload"    # Ljava/lang/String;

    .prologue
    .line 66
    return-void
.end method


# virtual methods
.method public canGoBack()Z
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewActivity;->webviewHelper:Lcom/tencent/pandora/webview/WebViewHelper;

    invoke-virtual {v0}, Lcom/tencent/pandora/webview/WebViewHelper;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewActivity;->webviewHelper:Lcom/tencent/pandora/webview/WebViewHelper;

    invoke-virtual {v0}, Lcom/tencent/pandora/webview/WebViewHelper;->close()V

    .line 256
    invoke-virtual {p0}, Lcom/tencent/pandora/webview/WebViewActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewActivity;->webviewHelper:Lcom/tencent/pandora/webview/WebViewHelper;

    invoke-virtual {v0}, Lcom/tencent/pandora/webview/WebViewHelper;->goBack()V

    .line 311
    return-void
.end method

.method public hide()V
    .locals 0

    .prologue
    .line 292
    return-void
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 235
    return-void
.end method

.method public isShow()Z
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewActivity;->webviewHelper:Lcom/tencent/pandora/webview/WebViewHelper;

    invoke-virtual {v0}, Lcom/tencent/pandora/webview/WebViewHelper;->isShow()Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    const-string v2, "WebViewActivity"

    const-string v3, "on created ...................... !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    sget-boolean v2, Lcom/tencent/pandora/webview/WebViewActivity;->isShow:Z

    if-eqz v2, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/tencent/pandora/webview/WebViewActivity;->finish()V

    .line 75
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const-string v2, "WebViewActivity"

    const-string v3, "on created1 !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v2, Lcom/tencent/pandora/webview/WebViewHelper;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/tencent/pandora/webview/WebViewHelper;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/tencent/pandora/webview/WebViewActivity;->webviewHelper:Lcom/tencent/pandora/webview/WebViewHelper;

    .line 82
    iget-object v2, p0, Lcom/tencent/pandora/webview/WebViewActivity;->webviewHelper:Lcom/tencent/pandora/webview/WebViewHelper;

    invoke-static {}, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->getScreenWidth()I

    move-result v3

    invoke-static {}, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->getScreenHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/tencent/pandora/webview/WebViewHelper;->setScreenDimension(II)V

    .line 83
    new-instance v2, Lcom/tencent/pandora/webview/WebViewActivity$1;

    invoke-direct {v2, p0}, Lcom/tencent/pandora/webview/WebViewActivity$1;-><init>(Lcom/tencent/pandora/webview/WebViewActivity;)V

    invoke-virtual {p0, v2}, Lcom/tencent/pandora/webview/WebViewActivity;->setListener(Lcom/tencent/pandora/webview/WebViewEventListener;)V

    .line 130
    sget-object v2, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->cachedUserInfo:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/tencent/pandora/webview/WebViewActivity;->setInfo(Ljava/lang/String;)V

    .line 131
    iget-object v2, p0, Lcom/tencent/pandora/webview/WebViewActivity;->webviewHelper:Lcom/tencent/pandora/webview/WebViewHelper;

    invoke-virtual {v2}, Lcom/tencent/pandora/webview/WebViewHelper;->initialize()V

    .line 133
    const-string v2, "WebViewActivity"

    const-string v3, "on created2 !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p0}, Lcom/tencent/pandora/webview/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 135
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 136
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 137
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-direct {p0, v0}, Lcom/tencent/pandora/webview/WebViewActivity;->parseIntent(Landroid/os/Bundle;)V

    .line 140
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/pandora/webview/WebViewActivity;->isShow:Z

    .line 168
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/pandora/webview/WebViewActivity;->setListener(Lcom/tencent/pandora/webview/WebViewEventListener;)V

    .line 169
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 170
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 156
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 157
    invoke-virtual {p0, p1}, Lcom/tencent/pandora/webview/WebViewActivity;->setIntent(Landroid/content/Intent;)V

    .line 158
    if-eqz p1, :cond_0

    .line 159
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 160
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-direct {p0, v0}, Lcom/tencent/pandora/webview/WebViewActivity;->parseIntent(Landroid/os/Bundle;)V

    .line 162
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 150
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 151
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/pandora/webview/WebViewActivity;->isShow:Z

    .line 152
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 145
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/pandora/webview/WebViewActivity;->isShow:Z

    .line 146
    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewActivity;->webviewHelper:Lcom/tencent/pandora/webview/WebViewHelper;

    invoke-virtual {v0, p1}, Lcom/tencent/pandora/webview/WebViewHelper;->setInfo(Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method public setListener(Lcom/tencent/pandora/webview/WebViewEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/tencent/pandora/webview/WebViewEventListener;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewActivity;->webviewHelper:Lcom/tencent/pandora/webview/WebViewHelper;

    invoke-virtual {v0, p1}, Lcom/tencent/pandora/webview/WebViewHelper;->setListener(Lcom/tencent/pandora/webview/WebViewEventListener;)V

    .line 248
    return-void
.end method

.method public setScreenDimension(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 304
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewActivity;->webviewHelper:Lcom/tencent/pandora/webview/WebViewHelper;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/pandora/webview/WebViewHelper;->setScreenDimension(II)V

    .line 305
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 299
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
    .line 241
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewActivity;->webviewHelper:Lcom/tencent/pandora/webview/WebViewHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/pandora/webview/WebViewHelper;->showUrl(IIIILjava/lang/String;Ljava/lang/String;Z)V

    .line 242
    return-void
.end method

.method public uninitiated()V
    .locals 1

    .prologue
    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewActivity;->webviewHelper:Lcom/tencent/pandora/webview/WebViewHelper;

    invoke-virtual {v0}, Lcom/tencent/pandora/webview/WebViewHelper;->uninitiated()V

    .line 280
    invoke-virtual {p0}, Lcom/tencent/pandora/webview/WebViewActivity;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/tencent/pandora/webview/WebViewActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 283
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public writeMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewActivity;->webviewHelper:Lcom/tencent/pandora/webview/WebViewHelper;

    invoke-virtual {v0, p1}, Lcom/tencent/pandora/webview/WebViewHelper;->writeMessage(Ljava/lang/String;)V

    .line 273
    return-void
.end method
