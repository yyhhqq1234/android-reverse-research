.class public Lcom/tencent/msdk/webviewx/core/JsBridge;
.super Ljava/lang/Object;
.source "JsBridge.java"


# static fields
.field public static final JS_CALLBACK:Ljava/lang/String; = "Callback"

.field public static final JS_FUNCNAME:Ljava/lang/String; = "msdkNativeCallback"

.field public static final JS_METHOD:Ljava/lang/String; = "MsdkMethod"

.field public static final JS_METHOD_CLOSE:Ljava/lang/String; = "WebviewClosing"

.field public static final JS_PARAMKEY:Ljava/lang/String; = "ParamKey"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mWebview:Lcom/tencent/smtt/sdk/WebView;


# direct methods
.method public constructor <init>(Lcom/tencent/smtt/sdk/WebView;)V
    .locals 0
    .param p1, "webview"    # Lcom/tencent/smtt/sdk/WebView;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/tencent/msdk/webviewx/core/JsBridge;->mWebview:Lcom/tencent/smtt/sdk/WebView;

    .line 31
    return-void
.end method

.method private static CloseWebview(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "params"    # Ljava/lang/String;
    .param p1, "callback"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-static {}, Lcom/tencent/msdk/webviewx/core/WebViewX;->getInstance()Lcom/tencent/msdk/webviewx/core/WebViewX;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/tencent/msdk/webviewx/core/WebViewX;->sendToWebJs(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/tencent/msdk/webviewx/core/WebViewX;->getInstance()Lcom/tencent/msdk/webviewx/core/WebViewX;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/webviewx/core/WebViewX;->closeWeb()I

    .line 148
    return-void
.end method

.method private static GetNetworkType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "JsonParams"    # Ljava/lang/String;
    .param p1, "callback"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-static {}, Lcom/tencent/msdk/webviewx/core/WebViewX;->getInstance()Lcom/tencent/msdk/webviewx/core/WebViewX;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/msdk/webviewx/core/WebViewX;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/webviewx/core/NetWorkUtil;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    .line 156
    .local v0, "type":I
    invoke-static {}, Lcom/tencent/msdk/webviewx/core/WebViewX;->getInstance()Lcom/tencent/msdk/webviewx/core/WebViewX;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/tencent/msdk/webviewx/core/WebViewX;->sendToWebJs(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method private static OnWebRealNameAuthNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "JsonParams"    # Ljava/lang/String;
    .param p1, "callback"    # Ljava/lang/String;

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnWebRealNameAuthNotify "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/realnameauth/tool/PluginUtil;->logDebug(Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/tencent/msdk/webviewx/core/WebViewX;->getInstance()Lcom/tencent/msdk/webviewx/core/WebViewX;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/msdk/webviewx/core/WebViewX;->setCloseMsg(Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method private static OpenUrlInMSDKBrowser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "JsonParams"    # Ljava/lang/String;
    .param p1, "callback"    # Ljava/lang/String;

    .prologue
    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OpenUrlInMSDKBrowser "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/msdk/realnameauth/tool/PluginUtil;->logDebug(Ljava/lang/String;)V

    .line 192
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 193
    .local v1, "obj":Lorg/json/JSONObject;
    const-string/jumbo v3, "url"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "uslStr":Ljava/lang/String;
    invoke-static {v2}, Lcom/tencent/msdk/api/WGPlatform;->WGOpenUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .end local v1    # "obj":Lorg/json/JSONObject;
    .end local v2    # "uslStr":Ljava/lang/String;
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static OpenUrlInSystemBrowser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "JsonParams"    # Ljava/lang/String;
    .param p1, "callback"    # Ljava/lang/String;

    .prologue
    .line 170
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OpenUrlInSystemBrowser "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/msdk/realnameauth/tool/PluginUtil;->logDebug(Ljava/lang/String;)V

    .line 172
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 173
    .local v2, "obj":Lorg/json/JSONObject;
    const-string/jumbo v5, "url"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 175
    .local v4, "uslStr":Ljava/lang/String;
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 176
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 177
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 178
    const-string v5, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 180
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xf

    if-lt v5, v6, :cond_0

    .line 181
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 183
    :cond_0
    invoke-static {}, Lcom/tencent/msdk/webviewx/core/WebViewX;->getInstance()Lcom/tencent/msdk/webviewx/core/WebViewX;

    move-result-object v5

    iget-object v5, v5, Lcom/tencent/msdk/webviewx/core/WebViewX;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "obj":Lorg/json/JSONObject;
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "uslStr":Ljava/lang/String;
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static ReportRealNameData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "JsonParams"    # Ljava/lang/String;
    .param p1, "callback"    # Ljava/lang/String;

    .prologue
    .line 202
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReportRealNameData "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/msdk/realnameauth/tool/PluginUtil;->logDebug(Ljava/lang/String;)V

    .line 204
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 205
    .local v1, "obj":Lorg/json/JSONObject;
    const-string v3, "operate"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 206
    .local v2, "operateNum":I
    invoke-static {v2}, Lcom/tencent/msdk/sdkwrapper/realname/RealNameWrapper;->reportData(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .end local v1    # "obj":Lorg/json/JSONObject;
    .end local v2    # "operateNum":I
    :goto_0
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public canResolved(Ljava/lang/String;)Z
    .locals 5
    .param p1, "JsonMessage"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 41
    const/4 v1, 0x0

    .line 54
    :cond_0
    :goto_0
    return v1

    .line 43
    :cond_1
    const-string v3, ""

    .line 44
    .local v3, "methodName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 46
    .local v1, "isMsdkMethod":Z
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 47
    .local v2, "json":Lorg/json/JSONObject;
    const-string v4, "MsdkMethod"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 48
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    .line 49
    const/4 v1, 0x1

    goto :goto_0

    .line 51
    .end local v2    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onJsPrompt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "JsonParams"    # Ljava/lang/String;

    .prologue
    .line 116
    :try_start_0
    const-string v2, "WebViewX"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JsonParams:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const-string v1, ""

    .line 119
    .local v1, "result":Ljava/lang/String;
    const-string v2, "WebViewX"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v1    # "result":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 124
    const-string v1, ""

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 130
    const-string v0, "OnEnterForeground"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webviewx/core/JsBridge;->sendToJs(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 136
    const-string v0, "OnEnterBackground"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webviewx/core/JsBridge;->sendToJs(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public parseMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "JsonMessage"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v8, p0, Lcom/tencent/msdk/webviewx/core/JsBridge;->mWebview:Lcom/tencent/smtt/sdk/WebView;

    if-nez v8, :cond_0

    .line 64
    const-string v8, "WebViewX"

    const-string v9, "Webview is null"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const-string v8, ""

    .line 84
    :goto_0
    return-object v8

    .line 67
    :cond_0
    const-string v8, "WebViewX"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "JsonMessage:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-string v5, ""

    .line 70
    .local v5, "methodName":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 71
    .local v3, "json":Lorg/json/JSONObject;
    const-string v8, "MsdkMethod"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 72
    const-string v8, "ParamKey"

    const-string v9, ""

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 73
    .local v6, "paramkey":Ljava/lang/String;
    const-string v8, "Callback"

    const-string v9, ""

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "callback":Ljava/lang/String;
    const-class v1, Lcom/tencent/msdk/webviewx/core/JsBridge;

    .line 75
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/tencent/msdk/webviewx/core/JsBridge;>;"
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v1, v5, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 76
    .local v4, "method":Ljava/lang/reflect/Method;
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    const/4 v9, 0x1

    aput-object v0, v8, v9

    invoke-virtual {v4, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 77
    .local v7, "result":Ljava/lang/Object;
    if-eqz v7, :cond_1

    .line 78
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 80
    :cond_1
    const-string v8, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    .end local v0    # "callback":Ljava/lang/String;
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/tencent/msdk/webviewx/core/JsBridge;>;"
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "paramkey":Ljava/lang/String;
    .end local v7    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 82
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    const-string v8, ""

    goto :goto_0
.end method

.method public sendToJs(Ljava/lang/String;)V
    .locals 1
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 92
    const-string v0, "msdkNativeCallback"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/msdk/webviewx/core/JsBridge;->sendToJs(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public sendToJs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "funcName"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 100
    const-string v1, "WebViewX"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendToJs:funcName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " params="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v1, "javascript:%s(\'%s\')"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "toJS":Ljava/lang/String;
    iget-object v1, p0, Lcom/tencent/msdk/webviewx/core/JsBridge;->mWebview:Lcom/tencent/smtt/sdk/WebView;

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    const-string v1, "WebViewX"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v1, p0, Lcom/tencent/msdk/webviewx/core/JsBridge;->mWebview:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v1, v0}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    const-string v1, "WebViewX"

    const-string v2, "Webview is null or funcName is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
