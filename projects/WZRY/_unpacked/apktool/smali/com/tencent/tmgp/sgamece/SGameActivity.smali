.class public Lcom/tencent/tmgp/sgamece/SGameActivity;
.super Lcom/tsf4g/apollo/ApolloPlayerActivity;
.source "SGameActivity.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tmgp/sgamece/SGameActivity$MyCrashNotify;
    }
.end annotation


# instance fields
.field private currentApiVersion:I

.field private info:Lcom/tsf4g/apollo/plugin/msdk/ApolloPlatformInfo;

.field private m_clipBoard:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "TegTransSdk"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 62
    const-string v0, "TDataMaster"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 63
    const-string v0, "MSDKSystem"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 64
    const-string v0, "apollo"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 66
    const-string v0, "MsdkAdapter"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 68
    const-string v0, "CrashAdapter"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/tsf4g/apollo/ApolloPlayerActivity;-><init>()V

    .line 72
    new-instance v0, Lcom/tsf4g/apollo/plugin/msdk/ApolloPlatformInfo;

    invoke-direct {v0}, Lcom/tsf4g/apollo/plugin/msdk/ApolloPlatformInfo;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmgp/sgamece/SGameActivity;->info:Lcom/tsf4g/apollo/plugin/msdk/ApolloPlatformInfo;

    .line 362
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmgp/sgamece/SGameActivity;->m_clipBoard:Ljava/lang/String;

    .line 76
    const-string v0, "SGameActivity"

    const-string v1, "  SGameActivity start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    sget-object v0, Lcom/tsf4g/apollo/plugin/msdk/ApolloPluginMsdk;->Instance:Lcom/tsf4g/apollo/plugin/msdk/ApolloPluginMsdk;

    invoke-virtual {v0}, Lcom/tsf4g/apollo/plugin/msdk/ApolloPluginMsdk;->Install()Z

    .line 78
    const-string v0, "SGameActivity"

    .line 79
    const-string v1, "  SGameActivity ApolloPluginMsdk.Instance.Install end"

    .line 78
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/tencent/tmgp/sgamece/SGameActivity;->info:Lcom/tsf4g/apollo/plugin/msdk/ApolloPlatformInfo;

    const-string v1, "1104791911"

    iput-object v1, v0, Lcom/tsf4g/apollo/plugin/msdk/ApolloPlatformInfo;->qqAppId:Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/tencent/tmgp/sgamece/SGameActivity;->info:Lcom/tsf4g/apollo/plugin/msdk/ApolloPlatformInfo;

    const-string v1, "5hUogCMtQsUPMZfW"

    iput-object v1, v0, Lcom/tsf4g/apollo/plugin/msdk/ApolloPlatformInfo;->qqAppKey:Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/tencent/tmgp/sgamece/SGameActivity;->info:Lcom/tsf4g/apollo/plugin/msdk/ApolloPlatformInfo;

    const-string/jumbo v1, "wx71a79717188d990b"

    iput-object v1, v0, Lcom/tsf4g/apollo/plugin/msdk/ApolloPlatformInfo;->wxAppId:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/tencent/tmgp/sgamece/SGameActivity;->info:Lcom/tsf4g/apollo/plugin/msdk/ApolloPlatformInfo;

    const-string v1, "2462206a87eb637dd77e3702d8408d98"

    iput-object v1, v0, Lcom/tsf4g/apollo/plugin/msdk/ApolloPlatformInfo;->msdkKey:Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/tencent/tmgp/sgamece/SGameActivity;->info:Lcom/tsf4g/apollo/plugin/msdk/ApolloPlatformInfo;

    const-string v1, "1450000527"

    iput-object v1, v0, Lcom/tsf4g/apollo/plugin/msdk/ApolloPlatformInfo;->offerId:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/tencent/tmgp/sgamece/SGameActivity;->info:Lcom/tsf4g/apollo/plugin/msdk/ApolloPlatformInfo;

    invoke-super {p0, v0}, Lcom/tsf4g/apollo/ApolloPlayerActivity;->setAppInfo(Ljava/lang/Object;)V

    .line 89
    const-string v0, "SGameActivity"

    const-string v1, "  SGameActivity  end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void
.end method

.method public static native SGameGameCoreCrashLog()Ljava/lang/String;
.end method

.method static synthetic access$0(Lcom/tencent/tmgp/sgamece/SGameActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/tencent/tmgp/sgamece/SGameActivity;->m_clipBoard:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public AddXGLocalMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "date"    # Ljava/lang/String;
    .param p4, "hour"    # Ljava/lang/String;
    .param p5, "minute"    # Ljava/lang/String;
    .param p6, "Identifierkey"    # Ljava/lang/String;

    .prologue
    .line 336
    new-instance v0, Lcom/tencent/android/tpush/XGLocalMessage;

    invoke-direct {v0}, Lcom/tencent/android/tpush/XGLocalMessage;-><init>()V

    .line 337
    .local v0, "local_msg":Lcom/tencent/android/tpush/XGLocalMessage;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/XGLocalMessage;->setType(I)V

    .line 338
    invoke-virtual {v0, p1}, Lcom/tencent/android/tpush/XGLocalMessage;->setTitle(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v0, p2}, Lcom/tencent/android/tpush/XGLocalMessage;->setContent(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v0, p3}, Lcom/tencent/android/tpush/XGLocalMessage;->setDate(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v0, p4}, Lcom/tencent/android/tpush/XGLocalMessage;->setHour(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v0, p5}, Lcom/tencent/android/tpush/XGLocalMessage;->setMin(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0}, Lcom/tencent/tmgp/sgamece/SGameActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/XGPushManager;->addLocalNotification(Landroid/content/Context;Lcom/tencent/android/tpush/XGLocalMessage;)J

    .line 345
    return-void
.end method

.method public CopyTextToClipboard(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 366
    iput-object p1, p0, Lcom/tencent/tmgp/sgamece/SGameActivity;->m_clipBoard:Ljava/lang/String;

    .line 369
    :try_start_0
    new-instance v1, Lcom/tencent/tmgp/sgamece/SGameActivity$4;

    invoke-direct {v1, p0}, Lcom/tencent/tmgp/sgamece/SGameActivity$4;-><init>(Lcom/tencent/tmgp/sgamece/SGameActivity;)V

    invoke-virtual {p0, v1}, Lcom/tencent/tmgp/sgamece/SGameActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    :goto_0
    return-void

    .line 380
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "sgame"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public RefeshPhoto(Ljava/lang/String;)V
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 355
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 356
    .local v0, "intent":Landroid/content/Intent;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 357
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 358
    invoke-virtual {p0}, Lcom/tencent/tmgp/sgamece/SGameActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 359
    const-string v2, "RefeshPhoto"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " RefeshPhoto java"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    return-void
.end method

.method public RegisterXGPush(Ljava/lang/String;)V
    .locals 3
    .param p1, "openID"    # Ljava/lang/String;

    .prologue
    .line 314
    const-string/jumbo v0, "testpush"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RegisterXGPush "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual {p0}, Lcom/tencent/tmgp/sgamece/SGameActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 316
    new-instance v1, Lcom/tencent/tmgp/sgamece/SGameActivity$3;

    invoke-direct {v1, p0}, Lcom/tencent/tmgp/sgamece/SGameActivity$3;-><init>(Lcom/tencent/tmgp/sgamece/SGameActivity;)V

    .line 315
    invoke-static {v0, p1, v1}, Lcom/tencent/android/tpush/XGPushManager;->registerPush(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/android/tpush/XGIOperateCallback;)V

    .line 330
    return-void
.end method

.method public RemoveAllNotifaction()V
    .locals 1

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/tencent/tmgp/sgamece/SGameActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/XGPushManager;->clearLocalNotifications(Landroid/content/Context;)V

    .line 349
    return-void
.end method

.method public RemoveNotifaction(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 353
    return-void
.end method

.method SendAudioMsg(Ljava/lang/String;)V
    .locals 2
    .param p1, "focusChange"    # Ljava/lang/String;

    .prologue
    .line 230
    const-string v0, "BootObj/WebViewSys"

    .line 231
    const-string v1, "OnSendAudioMsg"

    .line 230
    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 501
    sget-boolean v0, Lcom/tencent/tmgp/sgamece/SGameUtility;->g_EnableInput:Z

    if-eqz v0, :cond_0

    .line 504
    invoke-super {p0, p1}, Lcom/tsf4g/apollo/ApolloPlayerActivity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 507
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/KeyEvent;

    .prologue
    .line 488
    sget-boolean v0, Lcom/tencent/tmgp/sgamece/SGameUtility;->g_EnableInput:Z

    if-eqz v0, :cond_0

    .line 491
    invoke-super {p0, p1}, Lcom/tsf4g/apollo/ApolloPlayerActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 494
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/KeyEvent;

    .prologue
    .line 515
    sget-boolean v0, Lcom/tencent/tmgp/sgamece/SGameUtility;->g_EnableInput:Z

    if-eqz v0, :cond_0

    .line 518
    invoke-super {p0, p1}, Lcom/tsf4g/apollo/ApolloPlayerActivity;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 521
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 528
    sget-boolean v0, Lcom/tencent/tmgp/sgamece/SGameUtility;->g_EnableInput:Z

    if-eqz v0, :cond_0

    .line 531
    invoke-super {p0, p1}, Lcom/tsf4g/apollo/ApolloPlayerActivity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 535
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 474
    sget-boolean v0, Lcom/tencent/tmgp/sgamece/SGameUtility;->g_EnableInput:Z

    if-eqz v0, :cond_0

    .line 477
    invoke-super {p0, p1}, Lcom/tsf4g/apollo/ApolloPlayerActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 480
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 542
    sget-boolean v0, Lcom/tencent/tmgp/sgamece/SGameUtility;->g_EnableInput:Z

    if-eqz v0, :cond_0

    .line 546
    invoke-super {p0, p1}, Lcom/tsf4g/apollo/ApolloPlayerActivity;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 549
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 388
    const-string v0, "SGameActivity resultCode"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-super {p0, p1, p2, p3}, Lcom/tsf4g/apollo/ApolloPlayerActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 390
    invoke-static {}, Lcom/tencent/apollo/qr/QRCodeAPI;->getInstance()Lcom/tencent/apollo/qr/QRCodeAPI;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/apollo/qr/QRCodeAPI;->onActivityResult(IILandroid/content/Intent;)V

    .line 391
    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 1
    .param p1, "focusChange"    # I

    .prologue
    .line 236
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "strFoucsChange":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 265
    :goto_0
    :pswitch_0
    return-void

    .line 243
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/tencent/tmgp/sgamece/SGameActivity;->SendAudioMsg(Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/tencent/tmgp/sgamece/SGameActivity;->SendAudioMsg(Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :pswitch_3
    invoke-virtual {p0, v0}, Lcom/tencent/tmgp/sgamece/SGameActivity;->SendAudioMsg(Ljava/lang/String;)V

    goto :goto_0

    .line 262
    :pswitch_4
    invoke-virtual {p0, v0}, Lcom/tencent/tmgp/sgamece/SGameActivity;->SendAudioMsg(Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 135
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/tmgp/sgamece/SGameActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 136
    invoke-virtual {p0}, Lcom/tencent/tmgp/sgamece/SGameActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 137
    const/16 v10, 0x80

    .line 136
    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 139
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v8, 0x0

    sput-boolean v8, Lcom/tencent/tmgp/sgamece/SGameUtility;->g_UseNoBundleAPk:Z

    .line 140
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 141
    .local v2, "bundle":Landroid/os/Bundle;
    const/4 v5, 0x0

    .line 143
    .local v5, "findBoundString":I
    if-eqz v2, :cond_1

    .line 146
    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "IsNoBundle"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 147
    if-ne v5, v11, :cond_0

    .line 149
    const/4 v8, 0x1

    sput-boolean v8, Lcom/tencent/tmgp/sgamece/SGameUtility;->g_UseNoBundleAPk:Z

    .line 151
    :cond_0
    const-string v8, "SGame"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "find  IsNoBundle"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v5    # "findBoundString":I
    :cond_1
    :goto_0
    new-instance v7, Lcom/tencent/tmgp/sgamece/SGameActivity$MyCrashNotify;

    invoke-direct {v7, p0}, Lcom/tencent/tmgp/sgamece/SGameActivity$MyCrashNotify;-><init>(Lcom/tencent/tmgp/sgamece/SGameActivity;)V

    .line 160
    .local v7, "myCrashnotify":Lcom/tencent/tmgp/sgamece/SGameActivity$MyCrashNotify;
    invoke-static {}, Lcom/tsf4g/apollo/report/CrashNotifyHandler;->Instance()Lcom/tsf4g/apollo/report/CrashNotifyHandler;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/tsf4g/apollo/report/CrashNotifyHandler;->SetListener(Lcom/tsf4g/apollo/report/ICrashListener;)V

    .line 163
    invoke-virtual {p0}, Lcom/tencent/tmgp/sgamece/SGameActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/tencent/smtt/sdk/QbSdk;->initX5Environment(Landroid/content/Context;Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;)V

    .line 164
    invoke-super {p0, p1}, Lcom/tsf4g/apollo/ApolloPlayerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 165
    const-string v8, "SGameActivity"

    const-string v9, "ApolloTest onCreate"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {p0}, Lcom/tencent/tmgp/sgamece/SGameActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, p0}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->ApolloVoiceDeviceInit(Landroid/content/Context;Landroid/app/Activity;)V

    .line 169
    invoke-static {}, Lcom/tencent/apollo/qr/QRCodeAPI;->getInstance()Lcom/tencent/apollo/qr/QRCodeAPI;

    move-result-object v8

    invoke-virtual {v8, p0}, Lcom/tencent/apollo/qr/QRCodeAPI;->Initialize(Landroid/app/Activity;)Z

    .line 170
    invoke-virtual {p0}, Lcom/tencent/tmgp/sgamece/SGameActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 171
    new-instance v9, Lcom/tencent/tmgp/sgamece/SGameActivity$1;

    invoke-direct {v9, p0}, Lcom/tencent/tmgp/sgamece/SGameActivity$1;-><init>(Lcom/tencent/tmgp/sgamece/SGameActivity;)V

    .line 170
    invoke-static {v8, v9}, Lcom/tencent/android/tpush/XGPushManager;->registerPush(Landroid/content/Context;Lcom/tencent/android/tpush/XGIOperateCallback;)V

    .line 188
    const-string/jumbo v8, "testpush"

    const-string/jumbo v9, "xgpush end"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v8, p0, Lcom/tencent/tmgp/sgamece/SGameActivity;->currentApiVersion:I

    .line 191
    const/16 v6, 0x1706

    .line 199
    .local v6, "flags":I
    iget v8, p0, Lcom/tencent/tmgp/sgamece/SGameActivity;->currentApiVersion:I

    const/16 v9, 0x13

    if-lt v8, v9, :cond_2

    .line 202
    invoke-virtual {p0}, Lcom/tencent/tmgp/sgamece/SGameActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x1706

    invoke-virtual {v8, v9}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 207
    invoke-virtual {p0}, Lcom/tencent/tmgp/sgamece/SGameActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 209
    .local v3, "decorView":Landroid/view/View;
    new-instance v8, Lcom/tencent/tmgp/sgamece/SGameActivity$2;

    invoke-direct {v8, p0, v3}, Lcom/tencent/tmgp/sgamece/SGameActivity$2;-><init>(Lcom/tencent/tmgp/sgamece/SGameActivity;Landroid/view/View;)V

    invoke-virtual {v3, v8}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 225
    .end local v3    # "decorView":Landroid/view/View;
    :cond_2
    const-string v8, "audio"

    invoke-virtual {p0, v8}, Lcom/tencent/tmgp/sgamece/SGameActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 226
    .local v1, "audioManager":Landroid/media/AudioManager;
    const/4 v8, 0x3

    invoke-virtual {v1, p0, v8, v11}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 227
    return-void

    .line 154
    .end local v1    # "audioManager":Landroid/media/AudioManager;
    .end local v6    # "flags":I
    .end local v7    # "myCrashnotify":Lcom/tencent/tmgp/sgamece/SGameActivity$MyCrashNotify;
    :catch_0
    move-exception v4

    .line 155
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 291
    invoke-super {p0}, Lcom/tsf4g/apollo/ApolloPlayerActivity;->onDestroy()V

    .line 293
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/tencent/tmgp/sgamece/SGameActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 294
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 461
    sget-boolean v0, Lcom/tencent/tmgp/sgamece/SGameUtility;->g_EnableInput:Z

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/tencent/tmgp/sgamece/SGameActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    .line 467
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 423
    sget-boolean v0, Lcom/tencent/tmgp/sgamece/SGameUtility;->g_EnableInput:Z

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/tencent/tmgp/sgamece/SGameActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p2}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    .line 429
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 435
    sget-boolean v0, Lcom/tencent/tmgp/sgamece/SGameUtility;->g_EnableInput:Z

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/tencent/tmgp/sgamece/SGameActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p3}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    .line 441
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 411
    sget-boolean v0, Lcom/tencent/tmgp/sgamece/SGameUtility;->g_EnableInput:Z

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/tencent/tmgp/sgamece/SGameActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p2}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    .line 416
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 398
    :try_start_0
    const-string v1, "SGameActivity"

    const-string v2, "onNewIntent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-super {p0, p1}, Lcom/tsf4g/apollo/ApolloPlayerActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 401
    invoke-static {}, Lcom/tencent/apollo/qr/QRCodeAPI;->getInstance()Lcom/tencent/apollo/qr/QRCodeAPI;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tencent/apollo/qr/QRCodeAPI;->RefreshLaunch(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    :goto_0
    return-void

    .line 403
    :catch_0
    move-exception v0

    .line 405
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SGameActivity onNewIntent"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 277
    invoke-super {p0}, Lcom/tsf4g/apollo/ApolloPlayerActivity;->onPause()V

    .line 279
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 269
    invoke-super {p0}, Lcom/tsf4g/apollo/ApolloPlayerActivity;->onResume()V

    .line 271
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 284
    invoke-super {p0}, Lcom/tsf4g/apollo/ApolloPlayerActivity;->onStop()V

    .line 286
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 448
    sget-boolean v0, Lcom/tencent/tmgp/sgamece/SGameUtility;->g_EnableInput:Z

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/tencent/tmgp/sgamece/SGameActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    .line 454
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 300
    invoke-super {p0, p1}, Lcom/tsf4g/apollo/ApolloPlayerActivity;->onWindowFocusChanged(Z)V

    .line 301
    iget v0, p0, Lcom/tencent/tmgp/sgamece/SGameActivity;->currentApiVersion:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/tencent/tmgp/sgamece/SGameActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 304
    const/16 v1, 0x1706

    .line 303
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 311
    :cond_0
    return-void
.end method
