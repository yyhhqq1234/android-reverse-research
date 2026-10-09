.class public Lcom/tencent/android/tpush/XGPushActivity;
.super Landroid/app/Activity;
.source "ProGuard"


# annotations
.annotation build Lcom/jg/JgClassChecked;
    author = 0x1
    fComment = "\u786e\u8ba4\u5df2\u8fdb\u884c\u5b89\u5168\u6821\u9a8c"
    lastDate = "20150316"
    reviewer = 0x3
    vComment = {
        .enum Lcom/jg/EType;->ACTIVITYCHECK:Lcom/jg/EType;,
        .enum Lcom/jg/EType;->INTENTCHECK:Lcom/jg/EType;,
        .enum Lcom/jg/EType;->INTENTSCHEMECHECK:Lcom/jg/EType;
    }
.end annotation


# static fields
.field static activityCallBack:Landroid/app/Application$ActivityLifecycleCallbacks;

.field static activityName:Ljava/lang/String;

.field static activityNames:Ljava/util/List;

.field private static mContext:Landroid/content/Context;

.field static msgBuildId:J

.field static msgId:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 96
    sput-object v0, Lcom/tencent/android/tpush/XGPushActivity;->activityCallBack:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 158
    sput-object v0, Lcom/tencent/android/tpush/XGPushActivity;->activityNames:Ljava/util/List;

    .line 161
    const-string v0, ""

    sput-object v0, Lcom/tencent/android/tpush/XGPushActivity;->activityName:Ljava/lang/String;

    .line 162
    sput-wide v2, Lcom/tencent/android/tpush/XGPushActivity;->msgId:J

    .line 163
    sput-wide v2, Lcom/tencent/android/tpush/XGPushActivity;->msgBuildId:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/tencent/android/tpush/XGPushActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/android/tpush/XGPushActivity;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/tencent/android/tpush/XGPushActivity;->broadcastToTPushService(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/tencent/android/tpush/XGPushActivity;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/tencent/android/tpush/XGPushActivity;->openUrl(Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/tencent/android/tpush/XGPushActivity;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/tencent/android/tpush/XGPushActivity;->openIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public static addActivityNames(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 165
    invoke-static {p0}, Lcom/tencent/android/tpush/common/t;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    sget-object v0, Lcom/tencent/android/tpush/XGPushActivity;->activityNames:Ljava/util/List;

    if-nez v0, :cond_2

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/android/tpush/XGPushActivity;->activityNames:Ljava/util/List;

    .line 171
    :cond_2
    sget-object v0, Lcom/tencent/android/tpush/XGPushActivity;->activityNames:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    sget-object v0, Lcom/tencent/android/tpush/XGPushActivity;->activityNames:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private broadcastToTPushService(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/tencent/android/tpush/XGPushActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/tencent/android/tpush/XGPushManager;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 492
    return-void
.end method

.method private checkIntent(Landroid/content/Intent;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 42
    if-eqz p1, :cond_0

    const-string v1, "protect"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    const-string v1, "protect"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-static {v1}, Lcom/tencent/android/tpush/common/t;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 46
    invoke-static {v1}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 49
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    .line 55
    :cond_0
    :goto_0
    return v0

    .line 52
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private creatDialog(ILandroid/content/Intent;)V
    .locals 4

    .prologue
    .line 268
    if-nez p1, :cond_1

    .line 269
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 270
    new-instance v1, Lcom/tencent/android/tpush/l;

    invoke-direct {v1, p0, p2}, Lcom/tencent/android/tpush/l;-><init>(Lcom/tencent/android/tpush/XGPushActivity;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u63d0\u793a"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u662f\u5426\u786e\u5b9a\u6253\u5f00\u6b64\u5e94\u7528\uff1f"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u6253\u5f00"

    new-instance v3, Lcom/tencent/android/tpush/k;

    invoke-direct {v3, p0, p2}, Lcom/tencent/android/tpush/k;-><init>(Lcom/tencent/android/tpush/XGPushActivity;Landroid/content/Intent;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u53d6\u6d88"

    new-instance v3, Lcom/tencent/android/tpush/j;

    invoke-direct {v3, p0, p2}, Lcom/tencent/android/tpush/j;-><init>(Lcom/tencent/android/tpush/XGPushActivity;Landroid/content/Intent;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 309
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 311
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 312
    new-instance v1, Lcom/tencent/android/tpush/o;

    invoke-direct {v1, p0, p2}, Lcom/tencent/android/tpush/o;-><init>(Lcom/tencent/android/tpush/XGPushActivity;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u63d0\u793a"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u672c\u5730\u672a\u53d1\u73b0\u6b64\u5e94\u7528\uff0c\u5efa\u8bae\u53bb\u4e0b\u8f7d\uff01"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u4e0b\u8f7d"

    new-instance v3, Lcom/tencent/android/tpush/n;

    invoke-direct {v3, p0, p2}, Lcom/tencent/android/tpush/n;-><init>(Lcom/tencent/android/tpush/XGPushActivity;Landroid/content/Intent;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u53d6\u6d88"

    new-instance v3, Lcom/tencent/android/tpush/m;

    invoke-direct {v3, p0, p2}, Lcom/tencent/android/tpush/m;-><init>(Lcom/tencent/android/tpush/XGPushActivity;Landroid/content/Intent;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 358
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private getAppMainActivity(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 244
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/android/tpush/XGPushActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 245
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 246
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 250
    new-instance v3, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    invoke-direct {v3, v0}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 252
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 253
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 254
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 257
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 264
    :goto_0
    return-object v0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    const-string v2, "TPush"

    const-string/jumbo v3, "\u67e5\u627e\u4e3bActivity\u51fa\u9519"

    invoke-static {v2, v3, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    move-object v0, v1

    .line 264
    goto :goto_0
.end method

.method static initActivityCallBack()V
    .locals 2

    .prologue
    .line 99
    sget-object v0, Lcom/tencent/android/tpush/XGPushActivity;->activityCallBack:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/tencent/android/tpush/g;

    invoke-direct {v0}, Lcom/tencent/android/tpush/g;-><init>()V

    sput-object v0, Lcom/tencent/android/tpush/XGPushActivity;->activityCallBack:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 150
    sget-object v0, Lcom/tencent/android/tpush/XGPushActivity;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 152
    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/XGPushActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    sget-object v1, Lcom/tencent/android/tpush/XGPushActivity;->activityCallBack:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static isMonitorActivityNames(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 178
    sget-object v1, Lcom/tencent/android/tpush/XGPushActivity;->activityNames:Ljava/util/List;

    if-nez v1, :cond_1

    .line 185
    :cond_0
    :goto_0
    return v0

    .line 179
    :cond_1
    invoke-static {p0}, Lcom/tencent/android/tpush/common/t;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 182
    sget-object v1, Lcom/tencent/android/tpush/XGPushActivity;->activityNames:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private openIntent(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 448
    :try_start_0
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 451
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 452
    const-string v0, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 453
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 454
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v2, 0xf

    if-lt v0, v2, :cond_0

    .line 456
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Intent;

    aput-object v3, v0, v2

    .line 457
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setSelector"

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 459
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 460
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 466
    :cond_0
    :goto_0
    :try_start_2
    invoke-direct {p0, p1}, Lcom/tencent/android/tpush/XGPushActivity;->broadcastToTPushService(Landroid/content/Intent;)V

    .line 467
    invoke-virtual {p0, v1}, Lcom/tencent/android/tpush/XGPushActivity;->startActivity(Landroid/content/Intent;)V

    .line 468
    invoke-virtual {p0}, Lcom/tencent/android/tpush/XGPushActivity;->finish()V

    .line 472
    :goto_1
    return-void

    .line 461
    :catch_0
    move-exception v0

    .line 462
    const-string v2, "TPush"

    const-string v3, "invoke intent.setComponent error."

    invoke-static {v2, v3, v0}, Lcom/tencent/android/tpush/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 469
    :catch_1
    move-exception v0

    .line 470
    const-string v1, "TPush"

    const-string v2, "openIntent error."

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private openUrl(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 479
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 480
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 481
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 482
    invoke-direct {p0, p2}, Lcom/tencent/android/tpush/XGPushActivity;->broadcastToTPushService(Landroid/content/Intent;)V

    .line 483
    invoke-virtual {p0, v1}, Lcom/tencent/android/tpush/XGPushActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/android/tpush/XGPushActivity;->finish()V

    .line 488
    return-void

    .line 484
    :catch_0
    move-exception v0

    .line 485
    const-string v1, "TPush"

    const-string v2, "openUrl error."

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private pushClickedPackageResult(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcom/tencent/android/tpush/XGPushActivity;->broadcastToTPushService(Landroid/content/Intent;)V

    .line 228
    const-string v0, "packageName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-direct {p0, v0}, Lcom/tencent/android/tpush/XGPushActivity;->getAppMainActivity(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 230
    if-eqz v0, :cond_0

    .line 231
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 232
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 233
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 234
    invoke-virtual {v2, p1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 235
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 236
    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lcom/tencent/android/tpush/XGPushActivity;->creatDialog(ILandroid/content/Intent;)V

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/tencent/android/tpush/XGPushActivity;->creatDialog(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method private pushClickedResult(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 192
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    :goto_0
    sget-boolean v1, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v1, :cond_0

    .line 196
    const-string v1, "XGPushMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activity intent ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "activity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "intent.getFlags()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_0
    if-eqz p1, :cond_1

    .line 202
    const-string v1, "msgId"

    invoke-virtual {p1, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lcom/tencent/android/tpush/XGPushActivity;->msgId:J

    .line 204
    const-string v1, "busiMsgId"

    invoke-virtual {p1, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lcom/tencent/android/tpush/XGPushActivity;->msgBuildId:J

    .line 205
    sput-object v0, Lcom/tencent/android/tpush/XGPushActivity;->activityName:Ljava/lang/String;

    .line 207
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 208
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 209
    invoke-virtual {p0}, Lcom/tencent/android/tpush/XGPushActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    const-string/jumbo v0, "tag.tpush.MSG"

    const-string/jumbo v2, "true"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 212
    invoke-static {p0}, Lcom/tencent/android/tpush/XGPushManager;->a(Landroid/app/Activity;)Lcom/tencent/android/tpush/XGPushClickedResult;

    move-result-object v0

    .line 213
    const-string/jumbo v2, "tag.tpush.NOTIFIC"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 216
    :try_start_0
    invoke-static {}, Lcom/tencent/android/tpush/XGPushActivity;->initActivityCallBack()V

    .line 219
    invoke-virtual {p0, v1}, Lcom/tencent/android/tpush/XGPushActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_1
    invoke-virtual {p0}, Lcom/tencent/android/tpush/XGPushActivity;->finish()V

    .line 224
    return-void

    .line 192
    :cond_2
    const-string v0, ""

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private showAlertDialog(ILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 363
    if-nez p1, :cond_2

    .line 364
    const-string v0, "activity"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 366
    const-string v1, "action_confirm"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 367
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "\u63d0\u793a"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u662f\u5426\u6253\u5f00\u7f51\u7ad9:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u786e\u8ba4"

    new-instance v3, Lcom/tencent/android/tpush/q;

    invoke-direct {v3, p0, v0, p2}, Lcom/tencent/android/tpush/q;-><init>(Lcom/tencent/android/tpush/XGPushActivity;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "\u53d6\u6d88"

    new-instance v2, Lcom/tencent/android/tpush/p;

    invoke-direct {v2, p0, p2}, Lcom/tencent/android/tpush/p;-><init>(Lcom/tencent/android/tpush/XGPushActivity;Landroid/content/Intent;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/tencent/android/tpush/XGPushActivity;->openUrl(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 414
    :cond_2
    if-ne p1, v2, :cond_0

    .line 415
    const-string v0, "action_confirm"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 416
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "\u7ee7\u7eed\u6253\u5f00Intent?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "\u786e\u8ba4"

    new-instance v2, Lcom/tencent/android/tpush/i;

    invoke-direct {v2, p0, p2}, Lcom/tencent/android/tpush/i;-><init>(Lcom/tencent/android/tpush/XGPushActivity;Landroid/content/Intent;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "\u53d6\u6d88"

    new-instance v2, Lcom/tencent/android/tpush/h;

    invoke-direct {v2, p0, p2}, Lcom/tencent/android/tpush/h;-><init>(Lcom/tencent/android/tpush/XGPushActivity;Landroid/content/Intent;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 440
    :cond_3
    invoke-direct {p0, p2}, Lcom/tencent/android/tpush/XGPushActivity;->openIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    sput-object p0, Lcom/tencent/android/tpush/XGPushActivity;->mContext:Landroid/content/Context;

    .line 63
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/android/tpush/XGPushActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 64
    sget-boolean v1, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v1, :cond_0

    .line 65
    const-string v1, "TPush"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XGPushActivity receiver intent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_0
    invoke-direct {p0, v0}, Lcom/tencent/android/tpush/XGPushActivity;->checkIntent(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 69
    const-string v1, "action_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 71
    if-ne v1, v4, :cond_1

    .line 72
    invoke-direct {p0, v0}, Lcom/tencent/android/tpush/XGPushActivity;->pushClickedResult(Landroid/content/Intent;)V

    .line 93
    :goto_0
    return-void

    .line 73
    :cond_1
    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 74
    invoke-direct {p0, v0}, Lcom/tencent/android/tpush/XGPushActivity;->pushClickedPackageResult(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    const-string v1, "TPush"

    const-string/jumbo v2, "warning"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    :try_start_1
    invoke-virtual {p0}, Lcom/tencent/android/tpush/XGPushActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 89
    :catch_1
    move-exception v0

    goto :goto_0

    .line 75
    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 76
    const/4 v1, 0x0

    :try_start_2
    invoke-direct {p0, v1, v0}, Lcom/tencent/android/tpush/XGPushActivity;->showAlertDialog(ILandroid/content/Intent;)V

    goto :goto_0

    .line 77
    :cond_3
    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 78
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/tencent/android/tpush/XGPushActivity;->showAlertDialog(ILandroid/content/Intent;)V

    goto :goto_0

    .line 80
    :cond_4
    invoke-virtual {p0}, Lcom/tencent/android/tpush/XGPushActivity;->finish()V

    goto :goto_0

    .line 83
    :cond_5
    invoke-virtual {p0}, Lcom/tencent/android/tpush/XGPushActivity;->finish()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 506
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 507
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 501
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 502
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 496
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 497
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 511
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 512
    return-void
.end method
