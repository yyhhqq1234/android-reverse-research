.class public Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;
.super Ljava/lang/Object;
.source "UnisdkNtGmBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$IPageCloseListener;,
        Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$ITokenSetter;,
        Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$IAsynTokenRequest;,
        Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$ITokenRequest;,
        Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$Settings;
    }
.end annotation


# static fields
.field public static final REQUEST_CODE_PICK_FROM_ALBUM:I = 0x143

.field public static final REQUEST_CODE_PICK_FROM_CAMERA:I = 0x144

.field private static final TAG:Ljava/lang/String; = "gm_bridge"

.field private static final VERSION:Ljava/lang/String; = "4.6.0"

.field public static final WINDOW_GRAVITY_LB:I = 0x53

.field public static final WINDOW_GRAVITY_LT:I = 0x33

.field public static final WINDOW_GRAVITY_RB:I = 0x55

.field public static final WINDOW_GRAVITY_RT:I = 0x35

.field public static sActivity:Landroid/app/Activity;

.field public static sDataManager:Lcom/netease/unisdk/gmbridge/data/DataManager;

.field public static sPageCloseListener:Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$IPageCloseListener;

.field public static sRefer:Ljava/lang/String;

.field public static sWebViewDialog:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    const-string v0, "4.6.0"

    return-object v0
.end method

.method public static ntDestroy()V
    .locals 2

    .prologue
    .line 290
    const-string v0, "gm_bridge"

    const-string v1, "ntDestroy"

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 292
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sActivity:Landroid/app/Activity;

    new-instance v1, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$6;

    invoke-direct {v1}, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$6;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 308
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sActivity:Landroid/app/Activity;

    .line 310
    :cond_0
    return-void
.end method

.method public static ntInit(Landroid/app/Activity;Ljava/lang/String;ILcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$IAsynTokenRequest;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "roleId"    # Ljava/lang/String;
    .param p2, "windowGravity"    # I
    .param p3, "asynTokenRequest"    # Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$IAsynTokenRequest;

    .prologue
    .line 100
    invoke-static {p0}, Lcom/netease/unisdk/gmbridge/log/NgLog;->checkIsDebug(Landroid/content/Context;)V

    .line 101
    const-string v0, "gm_bridge"

    const-string v1, "ntInit"

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const/4 v0, 0x2

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netease/unisdk/gmbridge/task/TaskExecutor;->init(III)V

    .line 103
    sput-object p0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sActivity:Landroid/app/Activity;

    .line 104
    new-instance v0, Lcom/netease/unisdk/gmbridge/data/DataManager;

    invoke-direct {v0, p0, p1}, Lcom/netease/unisdk/gmbridge/data/DataManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sDataManager:Lcom/netease/unisdk/gmbridge/data/DataManager;

    .line 105
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sDataManager:Lcom/netease/unisdk/gmbridge/data/DataManager;

    invoke-virtual {v0, p3}, Lcom/netease/unisdk/gmbridge/data/DataManager;->setAsynTokenRequest(Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$IAsynTokenRequest;)V

    .line 106
    new-instance v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$2;

    invoke-direct {v0, p0, p2}, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$2;-><init>(Landroid/app/Activity;I)V

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    .line 112
    return-void
.end method

.method public static ntInit(Landroid/app/Activity;Ljava/lang/String;ILcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$ITokenRequest;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "roleId"    # Ljava/lang/String;
    .param p2, "windowGravity"    # I
    .param p3, "tokenRequest"    # Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$ITokenRequest;

    .prologue
    .line 77
    invoke-static {p0}, Lcom/netease/unisdk/gmbridge/log/NgLog;->checkIsDebug(Landroid/content/Context;)V

    .line 78
    const-string v0, "gm_bridge"

    const-string v1, "ntInit"

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x2

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netease/unisdk/gmbridge/task/TaskExecutor;->init(III)V

    .line 80
    sput-object p0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sActivity:Landroid/app/Activity;

    .line 81
    new-instance v0, Lcom/netease/unisdk/gmbridge/data/DataManager;

    invoke-direct {v0, p0, p1}, Lcom/netease/unisdk/gmbridge/data/DataManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sDataManager:Lcom/netease/unisdk/gmbridge/data/DataManager;

    .line 82
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sDataManager:Lcom/netease/unisdk/gmbridge/data/DataManager;

    invoke-virtual {v0, p3}, Lcom/netease/unisdk/gmbridge/data/DataManager;->setTokenRequest(Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$ITokenRequest;)V

    .line 83
    new-instance v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$1;

    invoke-direct {v0, p0, p2}, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$1;-><init>(Landroid/app/Activity;I)V

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    .line 89
    return-void
.end method

.method public static ntInit(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$IAsynTokenRequest;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "asynTokenRequest"    # Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$IAsynTokenRequest;

    .prologue
    .line 133
    const/16 v0, 0x53

    invoke-static {p0, p1, v0, p2}, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->ntInit(Landroid/app/Activity;Ljava/lang/String;ILcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$IAsynTokenRequest;)V

    .line 134
    return-void
.end method

.method public static ntInit(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$ITokenRequest;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "tokenRequest"    # Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$ITokenRequest;

    .prologue
    .line 122
    const/16 v0, 0x53

    invoke-static {p0, p1, v0, p2}, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->ntInit(Landroid/app/Activity;Ljava/lang/String;ILcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$ITokenRequest;)V

    .line 123
    return-void
.end method

.method public static ntOnActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p0, "requestCode"    # I
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 313
    const-string v0, "gm_bridge"

    const-string v1, "ntOnActivityResult requestCode = %d,resultCode = %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sWebViewDialog:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    if-nez v0, :cond_1

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    const/16 v0, 0x143

    if-ne v0, p0, :cond_3

    .line 318
    if-nez p2, :cond_2

    .line 319
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sWebViewDialog:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->onPickResult(Landroid/net/Uri;)V

    goto :goto_0

    .line 321
    :cond_2
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sWebViewDialog:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->onPickResult(Landroid/net/Uri;)V

    goto :goto_0

    .line 323
    :cond_3
    const/16 v0, 0x144

    if-ne v0, p0, :cond_0

    .line 324
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sWebViewDialog:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->onCaptureResult()V

    goto :goto_0
.end method

.method public static ntOnPause()V
    .locals 3

    .prologue
    .line 278
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 287
    :goto_0
    return-void

    .line 281
    :cond_0
    const-string v0, "gm_bridge"

    const-string v1, "ntOnPause"

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sWebViewDialog:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    if-eqz v0, :cond_1

    .line 283
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sWebViewDialog:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->getInstance(Landroid/content/Context;)Lcom/netease/unisdk/gmbridge/voice/VoiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->stopPlayback()V

    .line 284
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sWebViewDialog:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    const-string v1, ""

    const-string v2, "cancel_record"

    invoke-virtual {v0, v1, v2}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->jsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_1
    invoke-static {}, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->onPause()V

    goto :goto_0
.end method

.method public static ntOnResume()V
    .locals 3

    .prologue
    .line 260
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    const-string v0, "gm_bridge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ntOnResume :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sRefer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sRefer:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 265
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sWebViewDialog:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    if-nez v0, :cond_2

    .line 266
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sRefer:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->ntOpenGMPage(Ljava/lang/String;)V

    goto :goto_0

    .line 268
    :cond_2
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sWebViewDialog:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sWebViewDialog:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->show()V

    goto :goto_0

    .line 273
    :cond_3
    invoke-static {}, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->onResume()V

    goto :goto_0
.end method

.method public static ntOpenGMPage()V
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sDataManager:Lcom/netease/unisdk/gmbridge/data/DataManager;

    if-nez v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 152
    :cond_0
    new-instance v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$3;

    invoke-direct {v0}, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$3;-><init>()V

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge/task/TaskExecutor;->executeTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static ntOpenGMPage(Ljava/lang/String;)V
    .locals 1
    .param p0, "refer"    # Ljava/lang/String;

    .prologue
    .line 178
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 181
    :cond_0
    new-instance v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$4;

    invoke-direct {v0, p0}, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$4;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static ntReceiveMessage(Ljava/lang/String;)V
    .locals 9
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 201
    sget-object v6, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sDataManager:Lcom/netease/unisdk/gmbridge/data/DataManager;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sActivity:Landroid/app/Activity;

    if-nez v6, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 208
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 209
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v6, "msgs"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 210
    .local v2, "jsonArray":Lorg/json/JSONArray;
    if-eqz v2, :cond_3

    .line 211
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 212
    .local v4, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_4

    .line 213
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 214
    .local v5, "object":Lorg/json/JSONObject;
    if-eqz v5, :cond_2

    .line 215
    sget-object v6, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sDataManager:Lcom/netease/unisdk/gmbridge/data/DataManager;

    const-string v7, "menu_id"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/netease/unisdk/gmbridge/data/DataManager;->addRedIds(Ljava/lang/String;)V

    .line 212
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 219
    .end local v1    # "i":I
    .end local v4    # "len":I
    .end local v5    # "object":Lorg/json/JSONObject;
    :cond_3
    sget-object v6, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sDataManager:Lcom/netease/unisdk/gmbridge/data/DataManager;

    const-string v7, "menu_id"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/netease/unisdk/gmbridge/data/DataManager;->addRedIds(Ljava/lang/String;)V

    .line 221
    :cond_4
    new-instance v6, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$5;

    invoke-direct {v6}, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$5;-><init>()V

    invoke-static {v6}, Lcom/netease/unisdk/gmbridge/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 227
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "gm_bridge"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ntReceiveMessage error : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netease/unisdk/gmbridge/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static ntSetFloatBtnVisible(Z)V
    .locals 0
    .param p0, "v"    # Z

    .prologue
    .line 56
    invoke-static {p0}, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->setFloatBtnVisible(Z)V

    .line 57
    return-void
.end method

.method public static ntSetGMPageBackground(I)V
    .locals 0
    .param p0, "bgColor"    # I

    .prologue
    .line 246
    sput p0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$Settings;->bgColor:I

    .line 247
    return-void
.end method

.method public static ntSetGMPageBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p0, "bgDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 238
    sput-object p0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$Settings;->bgDrawable:Landroid/graphics/drawable/Drawable;

    .line 239
    return-void
.end method

.method public static ntSetGMPageSize(FF)V
    .locals 0
    .param p0, "widthPercent"    # F
    .param p1, "heightPercent"    # F

    .prologue
    .line 255
    sput p0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$Settings;->widthPercent:F

    .line 256
    sput p1, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$Settings;->heightPercent:F

    .line 257
    return-void
.end method

.method public static ntSetRoleId(Ljava/lang/String;)V
    .locals 1
    .param p0, "roleId"    # Ljava/lang/String;

    .prologue
    .line 63
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sDataManager:Lcom/netease/unisdk/gmbridge/data/DataManager;

    if-eqz v0, :cond_0

    .line 64
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sDataManager:Lcom/netease/unisdk/gmbridge/data/DataManager;

    invoke-virtual {v0, p0}, Lcom/netease/unisdk/gmbridge/data/DataManager;->setRoleId(Ljava/lang/String;)V

    .line 66
    :cond_0
    return-void
.end method

.method public static ntsetPageCloseListener(Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$IPageCloseListener;)V
    .locals 0
    .param p0, "pageCloseListener"    # Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$IPageCloseListener;

    .prologue
    .line 142
    sput-object p0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sPageCloseListener:Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$IPageCloseListener;

    .line 143
    return-void
.end method

.method public static setShowFloatWindowWhenInit(Z)V
    .locals 0
    .param p0, "show"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 49
    invoke-static {p0}, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->ntSetFloatBtnVisible(Z)V

    .line 50
    return-void
.end method
