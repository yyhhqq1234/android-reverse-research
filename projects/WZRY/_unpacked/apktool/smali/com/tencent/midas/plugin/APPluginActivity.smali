.class public Lcom/tencent/midas/plugin/APPluginActivity;
.super Landroid/app/Activity;
.source "APPluginActivity.java"

# interfaces
.implements Lcom/tencent/midas/plugin/IAPPluginActivity;


# instance fields
.field public mActivity:Landroid/app/Activity;

.field protected mApkFilePath:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field private mDexClassLoader:Ljava/lang/ClassLoader;

.field private mFinished:Z

.field protected mIsRunInPlugin:Z

.field protected mPackageInfo:Landroid/content/pm/PackageInfo;

.field protected mPluginName:Ljava/lang/String;

.field public mProxyActivity:Landroid/app/Activity;

.field protected mProxyContentView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    iput-object v1, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mProxyActivity:Landroid/app/Activity;

    .line 37
    iput-object v1, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mActivity:Landroid/app/Activity;

    .line 38
    iput-object v1, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mContext:Landroid/content/Context;

    .line 39
    iput-object v1, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mProxyContentView:Landroid/view/View;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mPluginName:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mApkFilePath:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 43
    iput-boolean v2, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mIsRunInPlugin:Z

    .line 44
    iput-object v1, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mDexClassLoader:Ljava/lang/ClassLoader;

    .line 45
    iput-boolean v2, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mFinished:Z

    return-void
.end method

.method public static final getDrawableBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    .line 51
    if-nez p0, :cond_1

    .line 57
    .end local p0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object v0

    .line 54
    .restart local p0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    instance-of v1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 55
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public IDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 559
    const/4 v1, 0x1

    .line 561
    .local v1, "ret":Z
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/tencent/midas/plugin/APPluginActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 565
    :goto_0
    return v1

    .line 562
    :catch_0
    move-exception v0

    .line 563
    .local v0, "ex":Ljava/lang/Exception;
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public IFinish()V
    .locals 0

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/tencent/midas/plugin/APPluginActivity;->finish()V

    .line 576
    return-void
.end method

.method public IGetContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mProxyContentView:Landroid/view/View;

    return-object v0
.end method

.method public IGetInHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    return-object v0
.end method

.method public IGetResource()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 416
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method

.method public IInit(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/ClassLoader;Landroid/content/pm/PackageInfo;)V
    .locals 4
    .param p1, "pluginApk"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "proxyActivity"    # Landroid/app/Activity;
    .param p4, "classLoader"    # Ljava/lang/ClassLoader;
    .param p5, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mIsRunInPlugin:Z

    .line 392
    iput-object p4, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mDexClassLoader:Ljava/lang/ClassLoader;

    .line 393
    iput-object p3, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mProxyActivity:Landroid/app/Activity;

    .line 394
    iput-object p1, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mPluginName:Ljava/lang/String;

    .line 395
    iput-object p2, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mApkFilePath:Ljava/lang/String;

    .line 396
    iput-object p5, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 397
    new-instance v0, Lcom/tencent/midas/plugin/APPluginContext;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mApkFilePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mDexClassLoader:Ljava/lang/ClassLoader;

    invoke-direct {v0, p3, v1, v2, v3}, Lcom/tencent/midas/plugin/APPluginContext;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mContext:Landroid/content/Context;

    .line 399
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/tencent/midas/plugin/APPluginActivity;->attachBaseContext(Landroid/content/Context;)V

    .line 400
    return-void
.end method

.method public IIsWrapContent()Z
    .locals 1

    .prologue
    .line 589
    const/4 v0, 0x1

    return v0
.end method

.method public IOnActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 380
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/midas/plugin/APPluginActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 381
    return-void
.end method

.method public IOnConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 585
    invoke-virtual {p0, p1}, Lcom/tencent/midas/plugin/APPluginActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 586
    return-void
.end method

.method public IOnCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/tencent/midas/plugin/APPluginActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    return-void
.end method

.method public IOnCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 539
    invoke-virtual {p0, p1}, Lcom/tencent/midas/plugin/APPluginActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public IOnDestroy()V
    .locals 0

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/tencent/midas/plugin/APPluginActivity;->onDestroy()V

    .line 153
    return-void
.end method

.method public IOnKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 233
    invoke-virtual {p0, p1, p2}, Lcom/tencent/midas/plugin/APPluginActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public IOnKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 243
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/midas/plugin/APPluginActivity;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public IOnKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 238
    invoke-virtual {p0, p1, p2}, Lcom/tencent/midas/plugin/APPluginActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public IOnMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 580
    invoke-virtual {p0, p1, p2}, Lcom/tencent/midas/plugin/APPluginActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public IOnNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/tencent/midas/plugin/APPluginActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 80
    return-void
.end method

.method public IOnOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 549
    invoke-virtual {p0, p1}, Lcom/tencent/midas/plugin/APPluginActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public IOnPause()V
    .locals 0

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/tencent/midas/plugin/APPluginActivity;->onPause()V

    .line 122
    return-void
.end method

.method public IOnPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 544
    invoke-virtual {p0, p1}, Lcom/tencent/midas/plugin/APPluginActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public IOnRestart()V
    .locals 0

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/tencent/midas/plugin/APPluginActivity;->onRestart()V

    .line 166
    return-void
.end method

.method public IOnRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 170
    return-void
.end method

.method public IOnResume()V
    .locals 0

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/tencent/midas/plugin/APPluginActivity;->onResume()V

    .line 108
    return-void
.end method

.method public IOnSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 174
    return-void
.end method

.method public IOnStart()V
    .locals 0

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/tencent/midas/plugin/APPluginActivity;->onStart()V

    .line 94
    return-void
.end method

.method public IOnStop()V
    .locals 0

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/tencent/midas/plugin/APPluginActivity;->onStop()V

    .line 136
    return-void
.end method

.method public IOnTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 554
    invoke-virtual {p0, p1}, Lcom/tencent/midas/plugin/APPluginActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public IOnUserInteraction()V
    .locals 0

    .prologue
    .line 570
    invoke-virtual {p0}, Lcom/tencent/midas/plugin/APPluginActivity;->onUserInteraction()V

    .line 571
    return-void
.end method

.method public IOnWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 276
    invoke-virtual {p0, p1}, Lcom/tencent/midas/plugin/APPluginActivity;->onWindowFocusChanged(Z)V

    .line 277
    return-void
.end method

.method public ISetIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 257
    invoke-virtual {p0, p1}, Lcom/tencent/midas/plugin/APPluginActivity;->setIntent(Landroid/content/Intent;)V

    .line 258
    return-void
.end method

.method public ISetOutHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 248
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 198
    iget-boolean v1, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mIsRunInPlugin:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mProxyContentView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 199
    iget-object v1, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mProxyContentView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 200
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 201
    invoke-super {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 205
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public finish()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 333
    const-string v5, "APPluginActivity"

    const-string v6, "APPluginActivity finish"

    invoke-static {v5, v6}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-boolean v5, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mIsRunInPlugin:Z

    if-eqz v5, :cond_0

    .line 335
    const/4 v4, 0x0

    .line 336
    .local v4, "resultCode":I
    const/4 v1, 0x0

    .line 337
    .local v1, "data":Landroid/content/Intent;
    monitor-enter p0

    .line 340
    :try_start_0
    const-class v5, Landroid/app/Activity;

    const-string v6, "mResultCode"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 341
    .local v3, "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 342
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 343
    const-class v5, Landroid/app/Activity;

    const-string v6, "mResultData"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 344
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 345
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/content/Intent;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    .end local v3    # "field":Ljava/lang/reflect/Field;
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 350
    iget-object v5, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v5, v4, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 351
    iget-object v5, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    .line 352
    iput-boolean v8, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mFinished:Z

    .line 356
    .end local v1    # "data":Landroid/content/Intent;
    .end local v4    # "resultCode":I
    :goto_1
    return-void

    .line 346
    .restart local v1    # "data":Landroid/content/Intent;
    .restart local v4    # "resultCode":I
    :catch_0
    move-exception v2

    .line 347
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v5, "Midas"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "APPluginActivity finish Exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 349
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 354
    .end local v1    # "data":Landroid/content/Intent;
    .end local v4    # "resultCode":I
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 3

    .prologue
    .line 323
    const-string v0, "APPluginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APPluginActivity getApplicationContext mProxyActivity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-boolean v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mIsRunInPlugin:Z

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 327
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 526
    iget-boolean v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mIsRunInPlugin:Z

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 529
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 469
    iget-boolean v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mIsRunInPlugin:Z

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getChangingConfigurations()I

    move-result v0

    .line 472
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->getChangingConfigurations()I

    move-result v0

    goto :goto_0
.end method

.method public getHostResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 407
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    goto :goto_0
.end method

.method public getOutActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mProxyActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getOutResources()Landroid/content/res/Resources;
    .locals 2

    .prologue
    .line 431
    iget-boolean v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mIsRunInPlugin:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 432
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 434
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method

.method public getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 1

    .prologue
    .line 517
    iget-boolean v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mIsRunInPlugin:Z

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 520
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 509
    iget-boolean v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mIsRunInPlugin:Z

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 512
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 443
    const-string/jumbo v0, "window"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "search"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 444
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mIsRunInPlugin:Z

    if-eqz v0, :cond_1

    .line 445
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 454
    :goto_0
    return-object v0

    .line 447
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 451
    :cond_2
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 452
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 454
    :cond_3
    invoke-super {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 478
    iget-boolean v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mIsRunInPlugin:Z

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 481
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    goto :goto_0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 460
    iget-boolean v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mIsRunInPlugin:Z

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 463
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    goto :goto_0
.end method

.method public isFinishing()Z
    .locals 1

    .prologue
    .line 360
    iget-boolean v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mIsRunInPlugin:Z

    if-eqz v0, :cond_0

    .line 361
    iget-boolean v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mFinished:Z

    .line 363
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 370
    const-string v0, "APPluginActivity"

    const-string v1, "APPluginActivity onActivityResult"

    invoke-static {v0, v1}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-boolean v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mIsRunInPlugin:Z

    if-eqz v0, :cond_0

    .line 376
    :goto_0
    return-void

    .line 374
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mIsRunInPlugin:Z

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mProxyActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mActivity:Landroid/app/Activity;

    .line 65
    invoke-static {p0}, Lcom/tencent/midas/plugin/APPluginStatic;->add(Lcom/tencent/midas/plugin/IAPPluginActivity;)V

    .line 70
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    iput-object p0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mActivity:Landroid/app/Activity;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 141
    const-string v0, "APPluginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy mIsRunInPlugin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mIsRunInPlugin:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-boolean v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mIsRunInPlugin:Z

    if-eqz v0, :cond_0

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mDexClassLoader:Ljava/lang/ClassLoader;

    .line 144
    invoke-static {p0}, Lcom/tencent/midas/plugin/APPluginStatic;->remove(Lcom/tencent/midas/plugin/IAPPluginActivity;)V

    .line 148
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mIsRunInPlugin:Z

    if-eqz v0, :cond_0

    .line 282
    const/4 v0, 0x0

    .line 284
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mIsRunInPlugin:Z

    if-eqz v0, :cond_0

    .line 298
    const/4 v0, 0x0

    .line 300
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mIsRunInPlugin:Z

    if-eqz v0, :cond_0

    .line 290
    const/4 v0, 0x0

    .line 292
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mIsRunInPlugin:Z

    if-eqz v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mIsRunInPlugin:Z

    if-eqz v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 160
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mIsRunInPlugin:Z

    if-eqz v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mIsRunInPlugin:Z

    if-eqz v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mIsRunInPlugin:Z

    if-eqz v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mIsRunInPlugin:Z

    if-eqz v0, :cond_0

    .line 315
    const/4 v0, 0x0

    .line 317
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mIsRunInPlugin:Z

    if-eqz v0, :cond_0

    .line 272
    :goto_0
    return-void

    .line 271
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    goto :goto_0
.end method

.method public openOptionsMenu()V
    .locals 1

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mIsRunInPlugin:Z

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->openOptionsMenu()V

    .line 310
    :goto_0
    return-void

    .line 308
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->openOptionsMenu()V

    goto :goto_0
.end method

.method public overridePendingTransition(II)V
    .locals 1
    .param p1, "enterAnim"    # I
    .param p2, "exitAnim"    # I

    .prologue
    .line 421
    iget-boolean v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mIsRunInPlugin:Z

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 428
    :goto_0
    return-void

    .line 426
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method public setContentView(I)V
    .locals 2
    .param p1, "layoutResID"    # I

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mIsRunInPlugin:Z

    if-eqz v0, :cond_0

    .line 179
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mProxyContentView:Landroid/view/View;

    .line 180
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mProxyContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mIsRunInPlugin:Z

    if-eqz v0, :cond_0

    .line 189
    iput-object p1, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mProxyContentView:Landroid/view/View;

    .line 190
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mProxyContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setRequestedOrientation(I)V
    .locals 0
    .param p1, "requestedOrientation"    # I

    .prologue
    .line 504
    invoke-super {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 505
    return-void
.end method

.method public setTheme(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 487
    iget-boolean v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mIsRunInPlugin:Z

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTheme(I)V

    .line 492
    :goto_0
    return-void

    .line 490
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 211
    iget-boolean v4, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mIsRunInPlugin:Z

    if-eqz v4, :cond_4

    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, "internalOnly":Z
    const-string v4, "PARAM_PLUGIN_INTERNAL_ACTIVITIES_ONLY"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 214
    const-string v4, "PARAM_PLUGIN_INTERNAL_ACTIVITIES_ONLY"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 220
    :goto_0
    if-nez v0, :cond_3

    .line 221
    iget-object v2, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 229
    .end local v0    # "internalOnly":Z
    :goto_1
    return-void

    .line 216
    .restart local v0    # "internalOnly":Z
    :cond_0
    iget-object v4, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x10000

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 217
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    move v0, v3

    :goto_2
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_2

    .line 223
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    const-string v2, "pluginsdk_IsPluginActivity"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 224
    iget-object v2, p0, Lcom/tencent/midas/plugin/APPluginActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 227
    .end local v0    # "internalOnly":Z
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method
