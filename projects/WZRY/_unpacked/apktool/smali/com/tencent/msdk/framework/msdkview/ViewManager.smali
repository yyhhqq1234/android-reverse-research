.class public Lcom/tencent/msdk/framework/msdkview/ViewManager;
.super Ljava/lang/Object;
.source "ViewManager.java"


# static fields
.field public static final VIEW_EVENT_INFO:Ljava/lang/String; = "view_event_info"

.field public static final VIEW_METHOD_FINISH_VIEW:Ljava/lang/String; = "method_finish_view"

.field public static final VIEW_METHOD_NAME:Ljava/lang/String; = "view_method_name"

.field public static final VIEW_METHOD_ON_VIEW_CREATE:Ljava/lang/String; = "method_on_view_create"

.field public static final VIEW_METHOD_ON_VIEW_DESTORY:Ljava/lang/String; = "method_on_view_destroy"

.field public static final VIEW_METHOD_ON_VIEW_RESUME:Ljava/lang/String; = "method_on_view_resume"

.field public static final VIEW_METHOD_ON_VIEW_STOP:Ljava/lang/String; = "method_on_view_stop"

.field public static final VIEW_METHOD_RECV_EVENT:Ljava/lang/String; = "method_recv_event"

.field public static final VIEW_METHOD_SEND_EVENT:Ljava/lang/String; = "method_send_event"

.field public static final VIEW_METHOD_START_VIEW:Ljava/lang/String; = "method_start_view"

.field public static final VIEW_NAME:Ljava/lang/String; = "view_name"

.field public static final VIEW_REQ_TYPE:Ljava/lang/String; = "req_type"

.field public static volatile instance:Lcom/tencent/msdk/framework/msdkview/ViewManager;


# instance fields
.field private mRollFloat:Lcom/tencent/msdk/notice/RollFloat;

.field private views:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/msdk/framework/msdkview/MSDKViewPanel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/msdk/framework/msdkview/ViewManager;->views:Ljava/util/HashMap;

    .line 47
    return-void
.end method

.method public static getInstance()Lcom/tencent/msdk/framework/msdkview/ViewManager;
    .locals 2

    .prologue
    .line 50
    sget-object v0, Lcom/tencent/msdk/framework/msdkview/ViewManager;->instance:Lcom/tencent/msdk/framework/msdkview/ViewManager;

    if-nez v0, :cond_1

    .line 51
    const-class v1, Lcom/tencent/msdk/framework/msdkview/ViewManager;

    monitor-enter v1

    .line 52
    :try_start_0
    sget-object v0, Lcom/tencent/msdk/framework/msdkview/ViewManager;->instance:Lcom/tencent/msdk/framework/msdkview/ViewManager;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/tencent/msdk/framework/msdkview/ViewManager;

    invoke-direct {v0}, Lcom/tencent/msdk/framework/msdkview/ViewManager;-><init>()V

    sput-object v0, Lcom/tencent/msdk/framework/msdkview/ViewManager;->instance:Lcom/tencent/msdk/framework/msdkview/ViewManager;

    .line 55
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_1
    sget-object v0, Lcom/tencent/msdk/framework/msdkview/ViewManager;->instance:Lcom/tencent/msdk/framework/msdkview/ViewManager;

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private native sendToNative(Ljava/lang/String;)V
.end method

.method private startView(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "viewName"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    const/high16 v11, 0x20000000

    .line 158
    invoke-static {p1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 159
    const-string v9, "ViewManager startView fail, viewName is empty!"

    invoke-static {v9}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    .line 241
    :goto_0
    return-void

    .line 164
    :cond_0
    const-string/jumbo v9, "view_name_qrcode"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 165
    const-string v9, "Open view_name_qrcode"

    invoke-static {v9}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 167
    :try_start_0
    const-string v9, "com.tencent.msdk.sdkwrapper.wx.WXQrCodeLoginRefactor"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 169
    .local v6, "scanLoginClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v9, "getInstance"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 170
    .local v2, "getInstance":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v2, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 171
    .local v7, "scanLoginObj":Ljava/lang/Object;
    const-string v9, "startView"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v6, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 172
    .local v8, "startView":Ljava/lang/reflect/Method;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p2, v9, v10

    invoke-virtual {v8, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    .end local v2    # "getInstance":Ljava/lang/reflect/Method;
    .end local v6    # "scanLoginClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "scanLoginObj":Ljava/lang/Object;
    .end local v8    # "startView":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 174
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 176
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const-string/jumbo v9, "view_name_real_name_auth"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 177
    const-string v9, "Open view_name_real_name_auth"

    invoke-static {v9}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 178
    new-instance v3, Landroid/content/Intent;

    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v9

    iget-object v9, v9, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    const-class v10, Lcom/tencent/msdk/NameAuthActivity;

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 179
    .local v3, "intent":Landroid/content/Intent;
    const-string v9, "method_start_view"

    invoke-virtual {v3, v9, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v9

    iget-object v9, v9, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v9, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 181
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_2
    const-string/jumbo v9, "view_name_webview"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 182
    const-string v9, "Open view_name_webview"

    invoke-static {v9}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 183
    const/4 v0, 0x0

    .line 185
    .local v0, "closeX5":Z
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 186
    .local v4, "json":Lorg/json/JSONObject;
    const-string/jumbo v9, "webview_close_x5"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 187
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Close X5 : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 188
    if-eqz v0, :cond_3

    .line 189
    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->forceSysWebView()V

    .line 192
    :cond_3
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v9

    iget-object v9, v9, Lcom/tencent/msdk/framework/MSDKEnv;->application:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/tencent/smtt/sdk/QbSdk;->initX5Environment(Landroid/content/Context;Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 197
    .end local v4    # "json":Lorg/json/JSONObject;
    :goto_1
    new-instance v3, Landroid/content/Intent;

    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v9

    iget-object v9, v9, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    const-class v10, Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 198
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {v3, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 199
    const-string v9, "method_start_view"

    invoke-virtual {v3, v9, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const-string/jumbo v9, "webview_close_x5"

    invoke-virtual {v3, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 201
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v9

    iget-object v9, v9, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v9, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 193
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v1

    .line 194
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 202
    .end local v0    # "closeX5":Z
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    const-string/jumbo v9, "view_name_notice"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 204
    :try_start_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 205
    .restart local v4    # "json":Lorg/json/JSONObject;
    const-string v9, "rollMsg"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 206
    const-string v9, "rollMsg"

    const-string v10, ""

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 207
    .local v5, "rollMsg":Ljava/lang/String;
    invoke-static {v5}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 209
    const-string v9, "Close roll notice"

    invoke-static {v9}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 212
    iget-object v9, p0, Lcom/tencent/msdk/framework/msdkview/ViewManager;->mRollFloat:Lcom/tencent/msdk/notice/RollFloat;

    if-eqz v9, :cond_5

    .line 213
    iget-object v9, p0, Lcom/tencent/msdk/framework/msdkview/ViewManager;->mRollFloat:Lcom/tencent/msdk/notice/RollFloat;

    invoke-virtual {v9}, Lcom/tencent/msdk/notice/RollFloat;->hideRollNotice()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 235
    .end local v4    # "json":Lorg/json/JSONObject;
    .end local v5    # "rollMsg":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 236
    .local v1, "e":Lorg/json/JSONException;
    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 215
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v4    # "json":Lorg/json/JSONObject;
    .restart local v5    # "rollMsg":Ljava/lang/String;
    :cond_5
    :try_start_3
    const-string v9, "hideScrollNotice RollFloat has not create"

    invoke-static {v9}, Lcom/tencent/msdk/framework/mlog/MLog;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 219
    :cond_6
    const-string v9, "Open roll notice"

    invoke-static {v9}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 223
    iget-object v9, p0, Lcom/tencent/msdk/framework/msdkview/ViewManager;->mRollFloat:Lcom/tencent/msdk/notice/RollFloat;

    if-nez v9, :cond_7

    .line 224
    new-instance v9, Lcom/tencent/msdk/notice/RollFloat;

    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v10

    iget-object v10, v10, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    invoke-direct {v9, v10}, Lcom/tencent/msdk/notice/RollFloat;-><init>(Landroid/app/Activity;)V

    iput-object v9, p0, Lcom/tencent/msdk/framework/msdkview/ViewManager;->mRollFloat:Lcom/tencent/msdk/notice/RollFloat;

    .line 226
    :cond_7
    iget-object v9, p0, Lcom/tencent/msdk/framework/msdkview/ViewManager;->mRollFloat:Lcom/tencent/msdk/notice/RollFloat;

    invoke-virtual {v9, v5}, Lcom/tencent/msdk/notice/RollFloat;->showRollNotice(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 229
    .end local v5    # "rollMsg":Ljava/lang/String;
    :cond_8
    const-string v9, "Open alert notice"

    invoke-static {v9}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 230
    new-instance v3, Landroid/content/Intent;

    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v9

    iget-object v9, v9, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    const-class v10, Lcom/tencent/msdk/notice/AlertMsgActivity;

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 231
    .restart local v3    # "intent":Landroid/content/Intent;
    const/high16 v9, 0x20000000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 232
    const-string v9, "method_start_view"

    invoke-virtual {v3, v9, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v9

    iget-object v9, v9, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v9, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 239
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "json":Lorg/json/JSONObject;
    :cond_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown view : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public addView(Lcom/tencent/msdk/framework/msdkview/MSDKViewPanel;)Z
    .locals 3
    .param p1, "view"    # Lcom/tencent/msdk/framework/msdkview/MSDKViewPanel;

    .prologue
    .line 63
    const-class v1, Lcom/tencent/msdk/framework/msdkview/ViewManager;

    monitor-enter v1

    .line 64
    :try_start_0
    invoke-virtual {p1}, Lcom/tencent/msdk/framework/msdkview/MSDKViewPanel;->getViewName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const-string v0, "ViewManager add view faild, view name is empty!"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    monitor-exit v1

    .line 71
    :goto_0
    return v0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/ViewManager;->views:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/tencent/msdk/framework/msdkview/MSDKViewPanel;->getViewName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewManager add a duplicate view of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/msdk/framework/msdkview/MSDKViewPanel;->getViewName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->w(Ljava/lang/String;)V

    .line 71
    :cond_1
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public recvMessage(Ljava/lang/String;)V
    .locals 10
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 107
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ViewManager receive msg : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 109
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 110
    .local v3, "json":Lorg/json/JSONObject;
    const-string/jumbo v7, "view_name"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 111
    .local v6, "viewName":Ljava/lang/String;
    const-string/jumbo v7, "view_method_name"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 112
    .local v4, "methodName":Ljava/lang/String;
    const-string/jumbo v7, "view_event_info"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "event_info":Ljava/lang/String;
    const-class v8, Lcom/tencent/msdk/framework/msdkview/ViewManager;

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :try_start_1
    const-string v7, "method_start_view"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 115
    invoke-direct {p0, v6, v1}, Lcom/tencent/msdk/framework/msdkview/ViewManager;->startView(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :goto_0
    monitor-exit v8

    .line 155
    .end local v1    # "event_info":Ljava/lang/String;
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "methodName":Ljava/lang/String;
    .end local v6    # "viewName":Ljava/lang/String;
    :goto_1
    return-void

    .line 118
    .restart local v1    # "event_info":Ljava/lang/String;
    .restart local v3    # "json":Lorg/json/JSONObject;
    .restart local v4    # "methodName":Ljava/lang/String;
    .restart local v6    # "viewName":Ljava/lang/String;
    :cond_0
    const-string/jumbo v7, "view_name_webview"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 119
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    const-class v9, Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-direct {v2, v7, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    .local v2, "intent":Landroid/content/Intent;
    const-string v7, "method_finish_view"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 121
    const-string v7, "method_finish_view"

    invoke-virtual {v2, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    :goto_2
    const/high16 v7, 0x20000000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 128
    const-string v7, "ViewManager start webview activity"

    invoke-static {v7}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v7, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 130
    monitor-exit v8

    goto :goto_1

    .line 151
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 152
    .end local v1    # "event_info":Ljava/lang/String;
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "methodName":Ljava/lang/String;
    .end local v6    # "viewName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 122
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "event_info":Ljava/lang/String;
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "json":Lorg/json/JSONObject;
    .restart local v4    # "methodName":Ljava/lang/String;
    .restart local v6    # "viewName":Ljava/lang/String;
    :cond_1
    :try_start_3
    const-string v7, "method_send_event"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 123
    const-string v7, "method_send_event"

    invoke-virtual {v2, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 125
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ViewManager receive error method name : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 131
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    const-string/jumbo v7, "view_name_diffaccount"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 132
    const-string v7, "ViewManager start diffaccount"

    invoke-static {v7}, Lcom/tencent/msdk/framework/mlog/MLog;->w(Ljava/lang/String;)V

    .line 133
    new-instance v7, Lcom/tencent/msdk/framework/msdkview/diffaccount/DiffAccountDialog;

    invoke-direct {v7}, Lcom/tencent/msdk/framework/msdkview/diffaccount/DiffAccountDialog;-><init>()V

    invoke-virtual {v7}, Lcom/tencent/msdk/framework/msdkview/diffaccount/DiffAccountDialog;->showDefaultDiffAccountAlert()V

    .line 134
    monitor-exit v8

    goto :goto_1

    .line 137
    :cond_4
    iget-object v7, p0, Lcom/tencent/msdk/framework/msdkview/ViewManager;->views:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/msdk/framework/msdkview/MSDKViewPanel;

    .line 138
    .local v5, "view":Lcom/tencent/msdk/framework/msdkview/MSDKViewPanel;
    if-nez v5, :cond_5

    .line 139
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ViewManager get view fail, "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " is not found!"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    .line 140
    monitor-exit v8

    goto/16 :goto_1

    .line 142
    :cond_5
    const-string v7, "method_finish_view"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 143
    invoke-virtual {v5}, Lcom/tencent/msdk/framework/msdkview/MSDKViewPanel;->finishView()V

    goto/16 :goto_0

    .line 144
    :cond_6
    const-string v7, "method_send_event"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 145
    invoke-virtual {v5, v1}, Lcom/tencent/msdk/framework/msdkview/MSDKViewPanel;->recvEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 147
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ViewManager receive error method name : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public removeView(Lcom/tencent/msdk/framework/msdkview/MSDKViewPanel;)Z
    .locals 3
    .param p1, "view"    # Lcom/tencent/msdk/framework/msdkview/MSDKViewPanel;

    .prologue
    .line 76
    const-class v1, Lcom/tencent/msdk/framework/msdkview/ViewManager;

    monitor-enter v1

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/ViewManager;->views:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/tencent/msdk/framework/msdkview/MSDKViewPanel;->getViewName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewManager remove view fail, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/msdk/framework/msdkview/MSDKViewPanel;->getViewName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " not found"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->w(Ljava/lang/String;)V

    .line 80
    const/4 v0, 0x0

    monitor-exit v1

    .line 82
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "viewName"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "eventInfo"    # Ljava/lang/String;

    .prologue
    .line 96
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 97
    .local v1, "json":Lorg/json/JSONObject;
    const-string/jumbo v2, "view_name"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    const-string/jumbo v2, "view_method_name"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    const-string/jumbo v2, "view_event_info"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tencent/msdk/framework/msdkview/ViewManager;->sendMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public sendMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-static {p1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-direct {p0, p1}, Lcom/tencent/msdk/framework/msdkview/ViewManager;->sendToNative(Ljava/lang/String;)V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    const-string v0, "Send message is empty!"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
