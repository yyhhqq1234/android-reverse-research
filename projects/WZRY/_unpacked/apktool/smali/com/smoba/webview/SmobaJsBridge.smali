.class public Lcom/smoba/webview/SmobaJsBridge;
.super Ljava/lang/Object;
.source "SmobaJsBridge.java"


# static fields
.field static final ARG_STRING:Ljava/lang/String; = "args="

.field static final CALLBACK_STRING:Ljava/lang/String; = "callback="

.field private static mActivity:Landroid/app/Activity; = null

.field private static mWebView:Lcom/tencent/smtt/sdk/WebView; = null

.field public static final m_jsonPrefix:Ljava/lang/String; = "uniwebview://webview?funcname="


# instance fields
.field mWebViewEx:Lcom/smoba/webview/WebViewEx;

.field m_GetUserInfoString:Ljava/lang/String;

.field m_jsCheckWifiCallBackString:Ljava/lang/String;

.field m_jsIsBgSoundPlay:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    const-string v0, ""

    iput-object v0, p0, Lcom/smoba/webview/SmobaJsBridge;->m_jsCheckWifiCallBackString:Ljava/lang/String;

    .line 224
    const-string v0, ""

    iput-object v0, p0, Lcom/smoba/webview/SmobaJsBridge;->m_jsIsBgSoundPlay:Ljava/lang/String;

    .line 477
    const-string v0, ""

    iput-object v0, p0, Lcom/smoba/webview/SmobaJsBridge;->m_GetUserInfoString:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method AccepInvited(Ljava/lang/String;)V
    .locals 2
    .param p1, "JsonMessage"    # Ljava/lang/String;

    .prologue
    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AccepInvited "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 466
    const-string v0, "AccepInvited"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/smoba/webview/SmobaJsBridge;->JaveToCSharp(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    return-void
.end method

.method CheckBattery(Ljava/lang/String;)V
    .locals 2
    .param p1, "JsonMessage"    # Ljava/lang/String;

    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CheckBattery "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 190
    const-string v0, "GetBatteryLevel"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/smoba/webview/SmobaJsBridge;->JaveToCSharp(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method CheckWifi(Ljava/lang/String;)V
    .locals 3
    .param p1, "JsonMessage"    # Ljava/lang/String;

    .prologue
    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CheckWifi "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 199
    const-string v1, "CheckWifi"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/smoba/webview/SmobaJsBridge;->JaveToCSharp(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v1, "callback="

    invoke-virtual {p0, p1, v1}, Lcom/smoba/webview/SmobaJsBridge;->GetJSParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "ArgsJson":Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    iput-object v0, p0, Lcom/smoba/webview/SmobaJsBridge;->m_jsCheckWifiCallBackString:Ljava/lang/String;

    .line 206
    :cond_0
    return-void
.end method

.method CheckWifi_CallBack(I)V
    .locals 2
    .param p1, "nWifi"    # I

    .prologue
    .line 209
    iget-object v1, p0, Lcom/smoba/webview/SmobaJsBridge;->m_jsCheckWifiCallBackString:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 210
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "params":Ljava/lang/String;
    iget-object v1, p0, Lcom/smoba/webview/SmobaJsBridge;->m_jsCheckWifiCallBackString:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/smoba/webview/SmobaJsBridge;->SendToJS(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .end local v0    # "params":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method CloseWebViewUI(Ljava/lang/String;)V
    .locals 2
    .param p1, "JsonMessage"    # Ljava/lang/String;

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CloseWebViewUI "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/smoba/webview/SmobaJsBridge;->mWebViewEx:Lcom/smoba/webview/WebViewEx;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/smoba/webview/SmobaJsBridge;->mWebViewEx:Lcom/smoba/webview/WebViewEx;

    invoke-virtual {v0}, Lcom/smoba/webview/WebViewEx;->closeWebUI()V

    .line 186
    :cond_0
    return-void
.end method

.method GetJSParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "JsonMessage"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 47
    const-string v6, "&"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "aa":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, v0

    if-lt v3, v6, :cond_0

    .line 64
    const-string v1, ""

    :goto_1
    return-object v1

    .line 49
    :cond_0
    aget-object v4, v0, v3

    .line 50
    .local v4, "temp":Ljava/lang/String;
    invoke-virtual {v4, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 51
    const-string v6, ""

    invoke-virtual {v4, p2, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, "utf8":Ljava/lang/String;
    const-string v1, ""

    .line 54
    .local v1, "decodeStr":Ljava/lang/String;
    :try_start_0
    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_1

    .line 55
    :catch_0
    move-exception v2

    .line 57
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 48
    .end local v1    # "decodeStr":Ljava/lang/String;
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v5    # "utf8":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method GetUserInfo(Ljava/lang/String;)V
    .locals 3
    .param p1, "JsonMessage"    # Ljava/lang/String;

    .prologue
    .line 481
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetUserInfo "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 482
    const-string v1, "GetUserInfo"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/smoba/webview/SmobaJsBridge;->JaveToCSharp(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const-string v1, "callback="

    invoke-virtual {p0, p1, v1}, Lcom/smoba/webview/SmobaJsBridge;->GetJSParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, "ArgsJson":Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 485
    iput-object v0, p0, Lcom/smoba/webview/SmobaJsBridge;->m_GetUserInfoString:Ljava/lang/String;

    .line 487
    :cond_0
    return-void
.end method

.method GetUserInfo_CallBack(Ljava/lang/String;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 490
    iget-object v0, p0, Lcom/smoba/webview/SmobaJsBridge;->m_GetUserInfoString:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/smoba/webview/SmobaJsBridge;->m_GetUserInfoString:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/smoba/webview/SmobaJsBridge;->SendToJS(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    :cond_0
    return-void
.end method

.method public Init(Lcom/tencent/smtt/sdk/WebView;Landroid/app/Activity;Lcom/smoba/webview/WebViewEx;)V
    .locals 0
    .param p1, "webView"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "ex"    # Lcom/smoba/webview/WebViewEx;

    .prologue
    .line 40
    sput-object p1, Lcom/smoba/webview/SmobaJsBridge;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    .line 41
    sput-object p2, Lcom/smoba/webview/SmobaJsBridge;->mActivity:Landroid/app/Activity;

    .line 42
    iput-object p3, p0, Lcom/smoba/webview/SmobaJsBridge;->mWebViewEx:Lcom/smoba/webview/WebViewEx;

    .line 43
    return-void
.end method

.method IsBgSoundPlay(Ljava/lang/String;)V
    .locals 3
    .param p1, "JsonMessage"    # Ljava/lang/String;

    .prologue
    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IsBgSoundPlay "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 228
    const-string v1, "IsBgSoundPlay"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/smoba/webview/SmobaJsBridge;->JaveToCSharp(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v1, "callback="

    invoke-virtual {p0, p1, v1}, Lcom/smoba/webview/SmobaJsBridge;->GetJSParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "ArgsJson":Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 231
    iput-object v0, p0, Lcom/smoba/webview/SmobaJsBridge;->m_jsIsBgSoundPlay:Ljava/lang/String;

    .line 234
    :cond_0
    return-void
.end method

.method IsBgSoundPlay_CallBack(I)V
    .locals 2
    .param p1, "iPlay"    # I

    .prologue
    .line 237
    iget-object v1, p0, Lcom/smoba/webview/SmobaJsBridge;->m_jsIsBgSoundPlay:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 238
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "params":Ljava/lang/String;
    iget-object v1, p0, Lcom/smoba/webview/SmobaJsBridge;->m_jsIsBgSoundPlay:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/smoba/webview/SmobaJsBridge;->SendToJS(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .end local v0    # "params":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public JaveToCSharp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "funcName"    # Ljava/lang/String;
    .param p2, "parmsString"    # Ljava/lang/String;

    .prologue
    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JaveToCSharp "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/smoba/webview/SmobaJsBridge;->mWebViewEx:Lcom/smoba/webview/WebViewEx;

    iget-boolean v1, v1, Lcom/smoba/webview/WebViewEx;->m_bInUnity:Z

    if-eqz v1, :cond_0

    .line 82
    const-string v1, "BootObj/WebViewSys"

    .line 83
    const-string v2, "JaveToCSharp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 82
    invoke-static {v1, v2, v3}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method PlayAudio(Ljava/lang/String;)V
    .locals 6
    .param p1, "JsonMessage"    # Ljava/lang/String;

    .prologue
    .line 497
    const-string v4, "args="

    invoke-virtual {p0, p1, v4}, Lcom/smoba/webview/SmobaJsBridge;->GetJSParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, "ArgsJson":Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 499
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PlayAudio "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 501
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 502
    .local v2, "jsonObj":Lorg/json/JSONObject;
    const-string/jumbo v4, "type"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 505
    .local v3, "type":Ljava/lang/String;
    :try_start_1
    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 506
    const-string v4, "PlayAudio"

    invoke-virtual {p0, v4, v3}, Lcom/smoba/webview/SmobaJsBridge;->JaveToCSharp(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    iget-object v4, p0, Lcom/smoba/webview/SmobaJsBridge;->mWebViewEx:Lcom/smoba/webview/WebViewEx;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/smoba/webview/WebViewEx;->SetLoadingUI(Z)V

    .line 525
    .end local v2    # "jsonObj":Lorg/json/JSONObject;
    .end local v3    # "type":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 508
    .restart local v2    # "jsonObj":Lorg/json/JSONObject;
    .restart local v3    # "type":Ljava/lang/String;
    :cond_1
    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 509
    const-string v4, "PlayAudio"

    invoke-virtual {p0, v4, v3}, Lcom/smoba/webview/SmobaJsBridge;->JaveToCSharp(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    iget-object v4, p0, Lcom/smoba/webview/SmobaJsBridge;->mWebViewEx:Lcom/smoba/webview/WebViewEx;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/smoba/webview/WebViewEx;->SetLoadingUI(Z)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 514
    :catch_0
    move-exception v1

    .line 517
    .local v1, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 520
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "jsonObj":Lorg/json/JSONObject;
    .end local v3    # "type":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 522
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    goto :goto_0

    .line 511
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v2    # "jsonObj":Lorg/json/JSONObject;
    .restart local v3    # "type":Ljava/lang/String;
    :cond_2
    :try_start_3
    const-string v4, "3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 512
    const-string v4, "PlayAudio"

    invoke-virtual {p0, v4, v3}, Lcom/smoba/webview/SmobaJsBridge;->JaveToCSharp(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method PlayBgSound(Ljava/lang/String;)V
    .locals 2
    .param p1, "JsonMessage"    # Ljava/lang/String;

    .prologue
    .line 216
    const-string v0, "PlayBgSound"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/smoba/webview/SmobaJsBridge;->JaveToCSharp(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method RejectInvite(Ljava/lang/String;)V
    .locals 2
    .param p1, "JsonMessage"    # Ljava/lang/String;

    .prologue
    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RejectInvite "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 473
    const-string v0, "RejectInvite"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/smoba/webview/SmobaJsBridge;->JaveToCSharp(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    return-void
.end method

.method SendToJS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "funcName"    # Ljava/lang/String;
    .param p2, "Params"    # Ljava/lang/String;

    .prologue
    .line 70
    const-string v1, "javascript:%s(\"%s\")"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "toJS":Ljava/lang/String;
    sget-object v1, Lcom/smoba/webview/SmobaJsBridge;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    if-eqz v1, :cond_0

    .line 72
    sget-object v1, Lcom/smoba/webview/SmobaJsBridge;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v1, v0}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    .line 74
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SendToJS  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method SetCaption(Ljava/lang/String;)V
    .locals 4
    .param p1, "JsonMessage"    # Ljava/lang/String;

    .prologue
    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setcaption "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 157
    const-string v2, "args="

    invoke-virtual {p0, p1, v2}, Lcom/smoba/webview/SmobaJsBridge;->GetJSParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "ArgsJson":Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setcaption "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 163
    :cond_0
    const-string v2, "callback="

    invoke-virtual {p0, p1, v2}, Lcom/smoba/webview/SmobaJsBridge;->GetJSParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-static {v0}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 165
    const-string v1, ""

    .line 169
    .local v1, "params":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/smoba/webview/SmobaJsBridge;->SendToJS(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .end local v1    # "params":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method SetDetail(Ljava/lang/String;)V
    .locals 6
    .param p1, "JsonMessage"    # Ljava/lang/String;

    .prologue
    .line 262
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SetDetail "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 264
    const-string v4, "args="

    invoke-virtual {p0, p1, v4}, Lcom/smoba/webview/SmobaJsBridge;->GetJSParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "ArgsJson":Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 266
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SetDetail "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 268
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 269
    .local v2, "jsonObj":Lorg/json/JSONObject;
    const-string/jumbo v4, "title"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 270
    .local v3, "title":Ljava/lang/String;
    iget-object v4, p0, Lcom/smoba/webview/SmobaJsBridge;->mWebViewEx:Lcom/smoba/webview/WebViewEx;

    if-eqz v4, :cond_0

    .line 271
    iget-object v4, p0, Lcom/smoba/webview/SmobaJsBridge;->mWebViewEx:Lcom/smoba/webview/WebViewEx;

    invoke-virtual {v4, v3}, Lcom/smoba/webview/WebViewEx;->SetDetail(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    .end local v2    # "jsonObj":Lorg/json/JSONObject;
    .end local v3    # "title":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v4, "PlayAudio"

    const-string v5, "3"

    invoke-virtual {p0, v4, v5}, Lcom/smoba/webview/SmobaJsBridge;->JaveToCSharp(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    return-void

    .line 273
    :catch_0
    move-exception v1

    .line 275
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method SetHeaderStatus(Ljava/lang/String;)V
    .locals 7
    .param p1, "JsonMessage"    # Ljava/lang/String;

    .prologue
    .line 282
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SetHeaderStatus "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 284
    const-string v5, "args="

    invoke-virtual {p0, p1, v5}, Lcom/smoba/webview/SmobaJsBridge;->GetJSParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "ArgsJson":Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 286
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SetHeaderStatus "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 288
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 289
    .local v3, "jsonObj":Lorg/json/JSONObject;
    const-string v5, "isShow"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 293
    .local v4, "strShow":Ljava/lang/String;
    :try_start_1
    iget-object v5, p0, Lcom/smoba/webview/SmobaJsBridge;->mWebViewEx:Lcom/smoba/webview/WebViewEx;

    if-eqz v5, :cond_1

    .line 294
    const/4 v1, 0x0

    .line 295
    .local v1, "bshow":Z
    const-string v5, "false"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 296
    const/4 v1, 0x0

    .line 300
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/smoba/webview/SmobaJsBridge;->mWebViewEx:Lcom/smoba/webview/WebViewEx;

    invoke-virtual {v5, v1}, Lcom/smoba/webview/WebViewEx;->ShowHeadr(Z)V

    .line 313
    .end local v1    # "bshow":Z
    .end local v3    # "jsonObj":Lorg/json/JSONObject;
    .end local v4    # "strShow":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 297
    .restart local v1    # "bshow":Z
    .restart local v3    # "jsonObj":Lorg/json/JSONObject;
    .restart local v4    # "strShow":Ljava/lang/String;
    :cond_2
    const-string/jumbo v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    if-eqz v5, :cond_0

    .line 298
    const/4 v1, 0x1

    goto :goto_0

    .line 302
    .end local v1    # "bshow":Z
    :catch_0
    move-exception v2

    .line 305
    .local v2, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 308
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "jsonObj":Lorg/json/JSONObject;
    .end local v4    # "strShow":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 310
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method SetHome(Ljava/lang/String;)V
    .locals 2
    .param p1, "JsonMessage"    # Ljava/lang/String;

    .prologue
    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SetHome "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/smoba/webview/SmobaJsBridge;->mWebViewEx:Lcom/smoba/webview/WebViewEx;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/smoba/webview/SmobaJsBridge;->mWebViewEx:Lcom/smoba/webview/WebViewEx;

    invoke-virtual {v0}, Lcom/smoba/webview/WebViewEx;->SetHome()V

    .line 250
    :cond_0
    return-void
.end method

.method SetLoading(Ljava/lang/String;)V
    .locals 7
    .param p1, "JsonMessage"    # Ljava/lang/String;

    .prologue
    .line 350
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SetLoading "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 352
    const-string v5, "args="

    invoke-virtual {p0, p1, v5}, Lcom/smoba/webview/SmobaJsBridge;->GetJSParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "ArgsJson":Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 354
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SetLoading "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 356
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 357
    .local v3, "jsonObj":Lorg/json/JSONObject;
    const-string v5, "isShow"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 361
    .local v4, "strShow":Ljava/lang/String;
    :try_start_1
    iget-object v5, p0, Lcom/smoba/webview/SmobaJsBridge;->mWebViewEx:Lcom/smoba/webview/WebViewEx;

    if-eqz v5, :cond_1

    .line 362
    const/4 v1, 0x0

    .line 363
    .local v1, "bshow":Z
    const-string v5, "false"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 364
    const/4 v1, 0x0

    .line 368
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/smoba/webview/SmobaJsBridge;->mWebViewEx:Lcom/smoba/webview/WebViewEx;

    invoke-virtual {v5, v1}, Lcom/smoba/webview/WebViewEx;->SetLoadingUI(Z)V

    .line 381
    .end local v1    # "bshow":Z
    .end local v3    # "jsonObj":Lorg/json/JSONObject;
    .end local v4    # "strShow":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 365
    .restart local v1    # "bshow":Z
    .restart local v3    # "jsonObj":Lorg/json/JSONObject;
    .restart local v4    # "strShow":Ljava/lang/String;
    :cond_2
    const-string/jumbo v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    if-eqz v5, :cond_0

    .line 366
    const/4 v1, 0x1

    goto :goto_0

    .line 370
    .end local v1    # "bshow":Z
    :catch_0
    move-exception v2

    .line 373
    .local v2, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 376
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "jsonObj":Lorg/json/JSONObject;
    .end local v4    # "strShow":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 378
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method SetRedPoint(Ljava/lang/String;)V
    .locals 7
    .param p1, "JsonMessage"    # Ljava/lang/String;

    .prologue
    .line 316
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SetRedPoint "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 318
    const-string v5, "args="

    invoke-virtual {p0, p1, v5}, Lcom/smoba/webview/SmobaJsBridge;->GetJSParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "ArgsJson":Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 320
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SetRedPoint "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 322
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 323
    .local v3, "jsonObj":Lorg/json/JSONObject;
    const-string v5, "isShow"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 327
    .local v4, "strShow":Ljava/lang/String;
    :try_start_1
    iget-object v5, p0, Lcom/smoba/webview/SmobaJsBridge;->mWebViewEx:Lcom/smoba/webview/WebViewEx;

    if-eqz v5, :cond_1

    .line 328
    const/4 v1, 0x0

    .line 329
    .local v1, "bshow":Z
    const-string v5, "false"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 330
    const/4 v1, 0x0

    .line 334
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/smoba/webview/SmobaJsBridge;->mWebViewEx:Lcom/smoba/webview/WebViewEx;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/smoba/webview/WebViewEx;->SetRedPoint(Ljava/lang/Boolean;)V

    .line 347
    .end local v1    # "bshow":Z
    .end local v3    # "jsonObj":Lorg/json/JSONObject;
    .end local v4    # "strShow":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 331
    .restart local v1    # "bshow":Z
    .restart local v3    # "jsonObj":Lorg/json/JSONObject;
    .restart local v4    # "strShow":Ljava/lang/String;
    :cond_2
    const-string/jumbo v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    if-eqz v5, :cond_0

    .line 332
    const/4 v1, 0x1

    goto :goto_0

    .line 336
    .end local v1    # "bshow":Z
    :catch_0
    move-exception v2

    .line 339
    .local v2, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 342
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "jsonObj":Lorg/json/JSONObject;
    .end local v4    # "strShow":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 344
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method SetSubscibe(Ljava/lang/String;)V
    .locals 2
    .param p1, "JsonMessage"    # Ljava/lang/String;

    .prologue
    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SetSubscibe "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/smoba/webview/SmobaJsBridge;->mWebViewEx:Lcom/smoba/webview/WebViewEx;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/smoba/webview/SmobaJsBridge;->mWebViewEx:Lcom/smoba/webview/WebViewEx;

    invoke-virtual {v0}, Lcom/smoba/webview/WebViewEx;->SetSubscibe()V

    .line 258
    :cond_0
    const-string v0, "PlayAudio"

    const-string v1, "3"

    invoke-virtual {p0, v0, v1}, Lcom/smoba/webview/SmobaJsBridge;->JaveToCSharp(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method SmobaShareQQUrl(Ljava/lang/String;)V
    .locals 10
    .param p1, "JsonMessage"    # Ljava/lang/String;

    .prologue
    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "SmobaShareUrl "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 388
    const-string v0, "args="

    invoke-virtual {p0, p1, v0}, Lcom/smoba/webview/SmobaJsBridge;->GetJSParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 389
    .local v6, "ArgsJson":Ljava/lang/String;
    invoke-static {v6}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "SmobaShareUrl "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 392
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 393
    .local v8, "jsonObj":Lorg/json/JSONObject;
    const-string v0, "scene"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 394
    .local v9, "scene":Ljava/lang/String;
    const-string/jumbo v0, "title"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 395
    .local v1, "title":Ljava/lang/String;
    const-string v0, "desc"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 396
    .local v2, "desc":Ljava/lang/String;
    const-string v0, "link"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 397
    .local v3, "url":Ljava/lang/String;
    const-string v0, "imgUrl"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 399
    .local v4, "imgUrl":Ljava/lang/String;
    const-string v0, "QQScene_Session"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 400
    sget-object v0, Lcom/tencent/msdk/api/eQQScene;->QQScene_Session:Lcom/tencent/msdk/api/eQQScene;

    .line 401
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 400
    invoke-static/range {v0 .. v5}, Lcom/tencent/msdk/api/WGPlatform;->WGSendToQQ(Lcom/tencent/msdk/api/eQQScene;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 412
    .end local v1    # "title":Ljava/lang/String;
    .end local v2    # "desc":Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/String;
    .end local v4    # "imgUrl":Ljava/lang/String;
    .end local v8    # "jsonObj":Lorg/json/JSONObject;
    .end local v9    # "scene":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 402
    .restart local v1    # "title":Ljava/lang/String;
    .restart local v2    # "desc":Ljava/lang/String;
    .restart local v3    # "url":Ljava/lang/String;
    .restart local v4    # "imgUrl":Ljava/lang/String;
    .restart local v8    # "jsonObj":Lorg/json/JSONObject;
    .restart local v9    # "scene":Ljava/lang/String;
    :cond_1
    const-string v0, "QQScene_QZone"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    sget-object v0, Lcom/tencent/msdk/api/eQQScene;->QQScene_QZone:Lcom/tencent/msdk/api/eQQScene;

    .line 404
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 403
    invoke-static/range {v0 .. v5}, Lcom/tencent/msdk/api/WGPlatform;->WGSendToQQ(Lcom/tencent/msdk/api/eQQScene;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 407
    .end local v1    # "title":Ljava/lang/String;
    .end local v2    # "desc":Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/String;
    .end local v4    # "imgUrl":Ljava/lang/String;
    .end local v8    # "jsonObj":Lorg/json/JSONObject;
    .end local v9    # "scene":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 409
    .local v7, "e":Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method SmobaShareWxUrl(Ljava/lang/String;)V
    .locals 21
    .param p1, "JsonMessage"    # Ljava/lang/String;

    .prologue
    .line 415
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "SmobaShareWxUrl "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 417
    const-string v6, "args="

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lcom/smoba/webview/SmobaJsBridge;->GetJSParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 418
    .local v17, "ArgsJson":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 419
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "SmobaShareWxUrl "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 421
    :try_start_0
    new-instance v19, Lorg/json/JSONObject;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 422
    .local v19, "jsonObj":Lorg/json/JSONObject;
    const-string v6, "scene"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 423
    .local v20, "scene":Ljava/lang/String;
    const-string/jumbo v6, "title"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 424
    .local v3, "title":Ljava/lang/String;
    const-string v6, "desc"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 425
    .local v4, "desc":Ljava/lang/String;
    const-string v6, "link"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 427
    .local v5, "url":Ljava/lang/String;
    sget-object v2, Lcom/tencent/msdk/api/eWechatScene;->WechatScene_Timeline:Lcom/tencent/msdk/api/eWechatScene;

    .line 428
    .local v2, "typeScene":Lcom/tencent/msdk/api/eWechatScene;
    const-string v6, "1"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 429
    sget-object v2, Lcom/tencent/msdk/api/eWechatScene;->WechatScene_Timeline:Lcom/tencent/msdk/api/eWechatScene;

    .line 435
    :goto_0
    const/4 v7, 0x0

    .line 438
    .local v7, "thumbImgData":[B
    invoke-virtual/range {p0 .. p0}, Lcom/smoba/webview/SmobaJsBridge;->getAppIconData()[B

    move-result-object v7

    .line 440
    if-eqz v7, :cond_2

    .line 442
    array-length v8, v7

    .line 444
    .local v8, "thumbImgDataLen":I
    const-string v6, "MSG_INVITE"

    .line 445
    const-string/jumbo v9, "test"

    .line 443
    invoke-static/range {v2 .. v9}, Lcom/tencent/msdk/api/WGPlatform;->WGSendToWeixinWithUrl(Lcom/tencent/msdk/api/eWechatScene;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;)V

    .line 460
    .end local v2    # "typeScene":Lcom/tencent/msdk/api/eWechatScene;
    .end local v3    # "title":Ljava/lang/String;
    .end local v4    # "desc":Ljava/lang/String;
    .end local v5    # "url":Ljava/lang/String;
    .end local v7    # "thumbImgData":[B
    .end local v8    # "thumbImgDataLen":I
    .end local v19    # "jsonObj":Lorg/json/JSONObject;
    .end local v20    # "scene":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 431
    .restart local v2    # "typeScene":Lcom/tencent/msdk/api/eWechatScene;
    .restart local v3    # "title":Ljava/lang/String;
    .restart local v4    # "desc":Ljava/lang/String;
    .restart local v5    # "url":Ljava/lang/String;
    .restart local v19    # "jsonObj":Lorg/json/JSONObject;
    .restart local v20    # "scene":Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/tencent/msdk/api/eWechatScene;->WechatScene_Session:Lcom/tencent/msdk/api/eWechatScene;

    goto :goto_0

    .line 448
    .restart local v7    # "thumbImgData":[B
    :cond_2
    const-string v13, "MSG_INVITE"

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string/jumbo v16, "test"

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    .line 447
    invoke-static/range {v9 .. v16}, Lcom/tencent/msdk/api/WGPlatform;->WGSendToWeixinWithUrl(Lcom/tencent/msdk/api/eWechatScene;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 452
    .end local v2    # "typeScene":Lcom/tencent/msdk/api/eWechatScene;
    .end local v3    # "title":Ljava/lang/String;
    .end local v4    # "desc":Ljava/lang/String;
    .end local v5    # "url":Ljava/lang/String;
    .end local v7    # "thumbImgData":[B
    .end local v19    # "jsonObj":Lorg/json/JSONObject;
    .end local v20    # "scene":Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 454
    .local v18, "e":Lorg/json/JSONException;
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    goto :goto_1

    .line 455
    .end local v18    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v18

    .line 457
    .local v18, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method StopBgSound(Ljava/lang/String;)V
    .locals 2
    .param p1, "JsonMessage"    # Ljava/lang/String;

    .prologue
    .line 220
    const-string v0, "PlayBgSound"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/smoba/webview/SmobaJsBridge;->JaveToCSharp(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method WebLoaded(Ljava/lang/String;)V
    .locals 2
    .param p1, "JsonMessage"    # Ljava/lang/String;

    .prologue
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WebLoaded "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/smoba/webview/SmobaJsBridge;->mWebViewEx:Lcom/smoba/webview/WebViewEx;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/smoba/webview/SmobaJsBridge;->mWebViewEx:Lcom/smoba/webview/WebViewEx;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/smoba/webview/WebViewEx;->m_bUseLocalClose:Z

    .line 179
    :cond_0
    return-void
.end method

.method public canResolved(Ljava/lang/String;)Z
    .locals 3
    .param p1, "JsonMessage"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "the message from url loading:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 96
    invoke-static {p1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    const-string v1, "JsonMessage is empty"

    invoke-static {v1}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 103
    :cond_0
    :goto_0
    return v0

    .line 100
    :cond_1
    const-string/jumbo v1, "uniwebview://webview?funcname="

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAppIconData()[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 529
    const/4 v4, 0x0

    .line 530
    .local v4, "imageData":[B
    sget-object v10, Lcom/smoba/webview/SmobaJsBridge;->mActivity:Landroid/app/Activity;

    if-nez v10, :cond_0

    move-object v5, v4

    .end local v4    # "imageData":[B
    .local v5, "imageData":[B
    move-object v6, v4

    .line 547
    .end local v5    # "imageData":[B
    .local v6, "imageData":[B
    :goto_0
    return-object v6

    .line 535
    .end local v6    # "imageData":[B
    .restart local v4    # "imageData":[B
    :cond_0
    sget-object v10, Lcom/smoba/webview/SmobaJsBridge;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 536
    .local v7, "packageName":Ljava/lang/String;
    sget-object v10, Lcom/smoba/webview/SmobaJsBridge;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 537
    .local v8, "pm":Landroid/content/pm/PackageManager;
    const/16 v10, 0x80

    invoke-virtual {v8, v7, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 538
    .local v2, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v8, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v9

    .line 539
    .local v9, "resources":Landroid/content/res/Resources;
    iget v1, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 541
    .local v1, "appIconResId":I
    invoke-static {v9, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 543
    .local v0, "appIconBitmap":Landroid/graphics/Bitmap;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 544
    .local v3, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x5a

    invoke-virtual {v0, v10, v11, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 545
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    move-object v5, v4

    .end local v4    # "imageData":[B
    .restart local v5    # "imageData":[B
    move-object v6, v4

    .line 547
    .end local v5    # "imageData":[B
    .restart local v6    # "imageData":[B
    goto :goto_0
.end method

.method public parseMessage(Ljava/lang/String;)V
    .locals 10
    .param p1, "JsonMessage"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 109
    sget-object v5, Lcom/smoba/webview/SmobaJsBridge;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    if-nez v5, :cond_1

    .line 110
    const-string v5, "JsBridge error, mWebView is null"

    invoke-static {v5}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    sget-object v5, Lcom/smoba/webview/SmobaJsBridge;->mActivity:Landroid/app/Activity;

    if-nez v5, :cond_2

    .line 114
    const-string v5, "JsBridge error, mActivity is null"

    invoke-static {v5}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_2
    move-object v4, p1

    .line 122
    .local v4, "url":Ljava/lang/String;
    const-string/jumbo v5, "uniwebview://webview?funcname="

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 123
    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "aa":[Ljava/lang/String;
    array-length v2, v0

    .line 125
    .local v2, "len":I
    if-lt v2, v7, :cond_0

    .line 130
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v0, v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    .line 131
    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    .line 130
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 133
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    :try_start_1
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-virtual {v3, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 134
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/IllegalAccessException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 144
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v1

    .line 145
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    goto :goto_0

    .line 137
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v1

    .line 139
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    goto :goto_0

    .line 140
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 142
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method
