.class public Lcom/tencent/msdk/webview/MttLoader;
.super Ljava/lang/Object;
.source "MttLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/msdk/webview/MttLoader$BrowserPackageInfo;,
        Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;
    }
.end annotation


# static fields
.field private static final BROWSER_MTT:I = 0x2

.field private static final BROWSER_NONE:I = -0x1

.field private static final BROWSER_QBX:I = 0x0

.field private static final BROWSER_QBX5:I = 0x1

.field public static final KEY_ACTIVITY_NAME:Ljava/lang/String; = "KEY_ACT"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEY_APP_NAME:Ljava/lang/String; = "KEY_APPNAME"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEY_EUSESTAT:Ljava/lang/String; = "KEY_EUSESTAT"

.field public static final KEY_PACKAGE:Ljava/lang/String; = "KEY_PKG"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEY_PID:Ljava/lang/String; = "KEY_PID"

.field public static final MTT_ACTION:Ljava/lang/String; = "com.tencent.QQBrowser.action.VIEW"

.field private static final MTT_PACKAGE_MTT:Ljava/lang/String; = "com.tencent.mtt"

.field private static final MTT_PACKAGE_MTT_X86:Ljava/lang/String; = "com.tencent.mtt.x86"

.field private static final MTT_PACKAGE_QBX:Ljava/lang/String; = "com.tencent.qbx"

.field private static final MTT_PACKAGE_QBX5:Ljava/lang/String; = "com.tencent.qbx5"

.field public static final PID_MOBILE_QQ:Ljava/lang/String; = "50079"

.field public static final PID_QQPIM:Ljava/lang/String; = "50190"

.field public static final QQBROWSER_DOWNLOAD_URL:Ljava/lang/String; = "http://mdc.html5.qq.com/mh?channel_id=21380&u="

.field public static final RESULT_INVALID_CONTEXT:I = 0x3

.field public static final RESULT_INVALID_URL:I = 0x2

.field public static final RESULT_NOT_INSTALL_QQBROWSER:I = 0x4

.field public static final RESULT_OK:I = 0x0

.field public static final RESULT_QQBROWSER_LOW:I = 0x5

.field public static final RESULT_UNKNOWN:I = 0x1

.field private static final SUPPORT_3RD_PARTY_CALL_VERSION:I = 0x21

.field private static final SUPPORT_QB_SCHEME_VERSION:I = 0x2a

.field private static final VERSION_420:I = 0x668a0


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static chooseClassName(Landroid/content/Context;Landroid/net/Uri;)Lcom/tencent/msdk/webview/MttLoader$BrowserPackageInfo;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    .line 379
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.tencent.QQBrowser.action.VIEW"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 380
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 382
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 383
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_1

    move-object v2, v5

    .line 402
    :cond_0
    :goto_0
    return-object v2

    .line 386
    :cond_1
    new-instance v2, Lcom/tencent/msdk/webview/MttLoader$BrowserPackageInfo;

    invoke-direct {v2, v5}, Lcom/tencent/msdk/webview/MttLoader$BrowserPackageInfo;-><init>(Lcom/tencent/msdk/webview/MttLoader$1;)V

    .line 387
    .local v2, "info":Lcom/tencent/msdk/webview/MttLoader$BrowserPackageInfo;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 389
    .local v0, "app":Landroid/content/pm/ResolveInfo;
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 390
    .local v4, "packagename":Ljava/lang/String;
    const-string v6, "com.tencent.mtt"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 392
    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v5, v2, Lcom/tencent/msdk/webview/MttLoader$BrowserPackageInfo;->classname:Ljava/lang/String;

    .line 393
    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v5, v2, Lcom/tencent/msdk/webview/MttLoader$BrowserPackageInfo;->packagename:Ljava/lang/String;

    goto :goto_0

    .line 396
    :cond_3
    const-string v6, "com.tencent.qbx"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 398
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v6, v2, Lcom/tencent/msdk/webview/MttLoader$BrowserPackageInfo;->classname:Ljava/lang/String;

    .line 399
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v6, v2, Lcom/tencent/msdk/webview/MttLoader$BrowserPackageInfo;->packagename:Ljava/lang/String;

    goto :goto_1
.end method

.method public static getBrowserInfo(Landroid/content/Context;)Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 407
    new-instance v7, Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;

    invoke-direct {v7}, Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;-><init>()V

    .line 412
    .local v7, "result":Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 413
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    .line 418
    .local v5, "pi":Landroid/content/pm/PackageInfo;
    :try_start_1
    const-string v8, "com.tencent.mtt"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 419
    const/4 v8, 0x2

    iput v8, v7, Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;->browserType:I

    .line 420
    const-string v8, "ADRQB_"

    iput-object v8, v7, Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;->quahead:Ljava/lang/String;

    .line 421
    if-eqz v5, :cond_1

    iget v8, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    const v9, 0x668a0

    if-le v8, v9, :cond_1

    .line 423
    iget v8, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v8, v7, Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;->ver:I

    .line 424
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v7, Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;->quahead:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v10, "\\."

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;->quahead:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 493
    .end local v5    # "pi":Landroid/content/pm/PackageInfo;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-object v7

    .line 428
    .restart local v5    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v8

    .line 434
    :cond_1
    :try_start_2
    const-string v8, "com.tencent.qbx"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 435
    const/4 v8, 0x0

    iput v8, v7, Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;->browserType:I

    .line 436
    const-string v8, "ADRQBX_"

    iput-object v8, v7, Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;->quahead:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 482
    :cond_2
    :goto_1
    if-eqz v5, :cond_0

    .line 484
    :try_start_3
    iget v8, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v8, v7, Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;->ver:I

    .line 485
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v7, Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;->quahead:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v10, "\\."

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;->quahead:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 489
    .end local v5    # "pi":Landroid/content/pm/PackageInfo;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v8

    goto :goto_0

    .line 438
    .restart local v5    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    :catch_2
    move-exception v1

    .line 442
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_4
    const-string v8, "com.tencent.qbx5"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 443
    const/4 v8, 0x1

    iput v8, v7, Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;->browserType:I

    .line 444
    const-string v8, "ADRQBX5_"

    iput-object v8, v7, Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;->quahead:Ljava/lang/String;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 446
    :catch_3
    move-exception v2

    .line 450
    .local v2, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_5
    const-string v8, "com.tencent.mtt"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 451
    const/4 v8, 0x2

    iput v8, v7, Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;->browserType:I

    .line 452
    const-string v8, "ADRQB_"

    iput-object v8, v7, Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;->quahead:Ljava/lang/String;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 454
    :catch_4
    move-exception v3

    .line 458
    .local v3, "e2":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_6
    const-string v8, "com.tencent.mtt.x86"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 459
    const/4 v8, 0x2

    iput v8, v7, Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;->browserType:I

    .line 460
    const-string v8, "ADRQB_"

    iput-object v8, v7, Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;->quahead:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_1

    .line 462
    :catch_5
    move-exception v4

    .line 466
    .local v4, "e3":Ljava/lang/Exception;
    :try_start_7
    const-string v8, "http://mdc.html5.qq.com/mh?channel_id=21380&u="

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/tencent/msdk/webview/MttLoader;->chooseClassName(Landroid/content/Context;Landroid/net/Uri;)Lcom/tencent/msdk/webview/MttLoader$BrowserPackageInfo;

    move-result-object v0

    .line 467
    .local v0, "browserPackageInfo":Lcom/tencent/msdk/webview/MttLoader$BrowserPackageInfo;
    if-eqz v0, :cond_2

    iget-object v8, v0, Lcom/tencent/msdk/webview/MttLoader$BrowserPackageInfo;->packagename:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 469
    iget-object v8, v0, Lcom/tencent/msdk/webview/MttLoader$BrowserPackageInfo;->packagename:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 470
    const/4 v8, 0x2

    iput v8, v7, Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;->browserType:I

    .line 471
    const-string v8, "ADRQB_"

    iput-object v8, v7, Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;->quahead:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_1

    .line 474
    .end local v0    # "browserPackageInfo":Lcom/tencent/msdk/webview/MttLoader$BrowserPackageInfo;
    :catch_6
    move-exception v8

    goto :goto_1
.end method

.method public static getDownloadUrlWithQb(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "qburl"    # Ljava/lang/String;

    .prologue
    .line 204
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://mdc.html5.qq.com/mh?channel_id=21380&u="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 210
    :goto_0
    return-object v0

    .line 206
    :catch_0
    move-exception v0

    .line 210
    const-string v0, "http://mdc.html5.qq.com/mh?channel_id=21380&u="

    goto :goto_0
.end method

.method public static getValidQBUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 175
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, "tempStr":Ljava/lang/String;
    const-string v3, "qb://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 179
    const/4 v1, 0x0

    .line 180
    .local v1, "shouldFixUrl":Z
    invoke-static {p0}, Lcom/tencent/msdk/webview/MttLoader;->getBrowserInfo(Landroid/content/Context;)Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;

    move-result-object v0

    .line 181
    .local v0, "info":Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;
    iget v3, v0, Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;->browserType:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 182
    const/4 v1, 0x1

    .line 186
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 187
    invoke-static {p1}, Lcom/tencent/msdk/webview/MttLoader;->getDownloadUrlWithQb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 191
    .end local v0    # "info":Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;
    .end local v1    # "shouldFixUrl":Z
    .end local p1    # "url":Ljava/lang/String;
    :cond_1
    return-object p1

    .line 183
    .restart local v0    # "info":Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;
    .restart local v1    # "shouldFixUrl":Z
    .restart local p1    # "url":Ljava/lang/String;
    :cond_2
    iget v3, v0, Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;->browserType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget v3, v0, Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;->ver:I

    const/16 v4, 0x21

    if-ge v3, v4, :cond_0

    .line 184
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static hasValidProtocal(Ljava/lang/String;)Z
    .locals 6
    .param p0, "aUrl"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 501
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 516
    :cond_0
    :goto_0
    return v3

    .line 505
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 507
    .local v2, "url":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 508
    .local v0, "pos1":I
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 511
    .local v1, "pos2":I
    if-lez v0, :cond_2

    if-lez v1, :cond_2

    if-gt v0, v1, :cond_0

    .line 516
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    goto :goto_0
.end method

.method public static isBrowserInstalled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 521
    invoke-static {p0}, Lcom/tencent/msdk/webview/MttLoader;->getBrowserInfo(Landroid/content/Context;)Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;

    move-result-object v0

    .line 522
    .local v0, "browserInfo":Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;
    iget v1, v0, Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;->browserType:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 523
    const/4 v1, 0x0

    .line 526
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isSupportQBScheme(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 215
    invoke-static {p0}, Lcom/tencent/msdk/webview/MttLoader;->getBrowserInfo(Landroid/content/Context;)Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;

    move-result-object v0

    .line 216
    .local v0, "info":Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;
    iget v2, v0, Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;->browserType:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 222
    :cond_0
    :goto_0
    return v1

    .line 219
    :cond_1
    iget v2, v0, Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;->browserType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget v2, v0, Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;->ver:I

    const/16 v3, 0x2a

    if-lt v2, v3, :cond_0

    .line 222
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static loadUrl(Landroid/app/Activity;Ljava/lang/String;Ljava/util/HashMap;)I
    .locals 10
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 237
    .local p2, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 239
    const/4 v8, 0x3

    .line 374
    :goto_0
    return v8

    .line 242
    :cond_0
    invoke-static {p1}, Lcom/tencent/msdk/webview/MttLoader;->hasValidProtocal(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 244
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 247
    :cond_1
    const/4 v6, 0x0

    .line 250
    .local v6, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 251
    if-nez v6, :cond_2

    .line 253
    const/4 v8, 0x2

    goto :goto_0

    .line 255
    :cond_2
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "qb"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {p0}, Lcom/tencent/msdk/webview/MttLoader;->isSupportQBScheme(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 258
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http://mdc.html5.qq.com/mh?channel_id=21380&u="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {p1, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 267
    :cond_3
    invoke-static {p0}, Lcom/tencent/msdk/webview/MttLoader;->getBrowserInfo(Landroid/content/Context;)Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;

    move-result-object v2

    .line 268
    .local v2, "info":Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;
    iget v8, v2, Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;->browserType:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_4

    .line 270
    const/4 v8, 0x4

    goto :goto_0

    .line 261
    .end local v2    # "info":Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;
    :catch_0
    move-exception v1

    .line 263
    .local v1, "e":Ljava/lang/Exception;
    const/4 v8, 0x2

    goto :goto_0

    .line 272
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "info":Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;
    :cond_4
    iget v8, v2, Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;->browserType:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    iget v8, v2, Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;->ver:I

    const/16 v9, 0x21

    if-ge v8, v9, :cond_5

    .line 275
    const/4 v8, 0x5

    goto :goto_0

    .line 279
    :cond_5
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 280
    .local v3, "intent":Landroid/content/Intent;
    iget v8, v2, Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;->browserType:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_a

    .line 282
    iget v8, v2, Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;->ver:I

    const/16 v9, 0x21

    if-lt v8, v9, :cond_8

    iget v8, v2, Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;->ver:I

    const/16 v9, 0x27

    if-gt v8, v9, :cond_8

    .line 285
    const-string v8, "com.tencent.mtt"

    const-string v9, "com.tencent.mtt.MainActivity"

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    :cond_6
    :goto_1
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 350
    if-eqz p2, :cond_f

    .line 352
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 353
    .local v5, "keyset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v5, :cond_f

    .line 355
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_7
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 357
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 358
    .local v7, "value":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 359
    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 287
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "keyset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "value":Ljava/lang/String;
    :cond_8
    iget v8, v2, Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;->ver:I

    const/16 v9, 0x28

    if-lt v8, v9, :cond_9

    iget v8, v2, Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;->ver:I

    const/16 v9, 0x2d

    if-gt v8, v9, :cond_9

    .line 290
    const-string v8, "com.tencent.mtt"

    const-string v9, "com.tencent.mtt.SplashActivity"

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 292
    :cond_9
    iget v8, v2, Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;->ver:I

    const/16 v9, 0x2e

    if-lt v8, v9, :cond_6

    .line 295
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    const-string v8, "com.tencent.QQBrowser.action.VIEW"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 296
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-static {p0, v6}, Lcom/tencent/msdk/webview/MttLoader;->chooseClassName(Landroid/content/Context;Landroid/net/Uri;)Lcom/tencent/msdk/webview/MttLoader$BrowserPackageInfo;

    move-result-object v0

    .line 297
    .local v0, "brinfo":Lcom/tencent/msdk/webview/MttLoader$BrowserPackageInfo;
    if-eqz v0, :cond_6

    iget-object v8, v0, Lcom/tencent/msdk/webview/MttLoader$BrowserPackageInfo;->classname:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 300
    iget-object v8, v0, Lcom/tencent/msdk/webview/MttLoader$BrowserPackageInfo;->packagename:Ljava/lang/String;

    iget-object v9, v0, Lcom/tencent/msdk/webview/MttLoader$BrowserPackageInfo;->classname:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 304
    .end local v0    # "brinfo":Lcom/tencent/msdk/webview/MttLoader$BrowserPackageInfo;
    :cond_a
    iget v8, v2, Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;->browserType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_c

    .line 306
    iget v8, v2, Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;->ver:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_b

    .line 309
    const-string v8, "com.tencent.qbx5"

    const-string v9, "com.tencent.qbx5.MainActivity"

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 311
    :cond_b
    iget v8, v2, Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;->ver:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_6

    .line 314
    const-string v8, "com.tencent.qbx5"

    const-string v9, "com.tencent.qbx5.SplashActivity"

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 317
    :cond_c
    iget v8, v2, Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;->browserType:I

    if-nez v8, :cond_e

    .line 319
    iget v8, v2, Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;->ver:I

    const/4 v9, 0x4

    if-lt v8, v9, :cond_d

    iget v8, v2, Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;->ver:I

    const/4 v9, 0x6

    if-gt v8, v9, :cond_d

    .line 322
    const-string v8, "com.tencent.qbx"

    const-string v9, "com.tencent.qbx.SplashActivity"

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 324
    :cond_d
    iget v8, v2, Lcom/tencent/msdk/webview/MttLoader$BrowserInfo;->ver:I

    const/4 v9, 0x6

    if-le v8, v9, :cond_6

    .line 327
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    const-string v8, "com.tencent.QQBrowser.action.VIEW"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 328
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-static {p0, v6}, Lcom/tencent/msdk/webview/MttLoader;->chooseClassName(Landroid/content/Context;Landroid/net/Uri;)Lcom/tencent/msdk/webview/MttLoader$BrowserPackageInfo;

    move-result-object v0

    .line 329
    .restart local v0    # "brinfo":Lcom/tencent/msdk/webview/MttLoader$BrowserPackageInfo;
    if-eqz v0, :cond_6

    iget-object v8, v0, Lcom/tencent/msdk/webview/MttLoader$BrowserPackageInfo;->classname:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 332
    iget-object v8, v0, Lcom/tencent/msdk/webview/MttLoader$BrowserPackageInfo;->packagename:Ljava/lang/String;

    iget-object v9, v0, Lcom/tencent/msdk/webview/MttLoader$BrowserPackageInfo;->classname:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 339
    .end local v0    # "brinfo":Lcom/tencent/msdk/webview/MttLoader$BrowserPackageInfo;
    :cond_e
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    const-string v8, "com.tencent.QQBrowser.action.VIEW"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 340
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-static {p0, v6}, Lcom/tencent/msdk/webview/MttLoader;->chooseClassName(Landroid/content/Context;Landroid/net/Uri;)Lcom/tencent/msdk/webview/MttLoader$BrowserPackageInfo;

    move-result-object v0

    .line 341
    .restart local v0    # "brinfo":Lcom/tencent/msdk/webview/MttLoader$BrowserPackageInfo;
    if-eqz v0, :cond_6

    iget-object v8, v0, Lcom/tencent/msdk/webview/MttLoader$BrowserPackageInfo;->classname:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 344
    iget-object v8, v0, Lcom/tencent/msdk/webview/MttLoader$BrowserPackageInfo;->packagename:Ljava/lang/String;

    iget-object v9, v0, Lcom/tencent/msdk/webview/MttLoader$BrowserPackageInfo;->classname:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 367
    .end local v0    # "brinfo":Lcom/tencent/msdk/webview/MttLoader$BrowserPackageInfo;
    :cond_f
    :try_start_1
    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 374
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 369
    :catch_1
    move-exception v1

    .line 371
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const/4 v8, 0x4

    goto/16 :goto_0
.end method
