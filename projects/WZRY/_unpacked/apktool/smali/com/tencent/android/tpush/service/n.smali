.class public Lcom/tencent/android/tpush/service/n;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Ljava/lang/String;

.field private static c:Landroid/net/LocalServerSocket;

.field private static d:Landroid/net/LocalServerSocket;

.field private static volatile f:Z

.field private static volatile g:Z

.field private static volatile h:Z

.field private static volatile i:Z


# instance fields
.field private e:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 56
    sput-object v2, Lcom/tencent/android/tpush/service/n;->a:Landroid/content/Context;

    .line 58
    const-string v0, ""

    sput-object v0, Lcom/tencent/android/tpush/service/n;->b:Ljava/lang/String;

    .line 60
    sput-object v2, Lcom/tencent/android/tpush/service/n;->c:Landroid/net/LocalServerSocket;

    .line 61
    sput-object v2, Lcom/tencent/android/tpush/service/n;->d:Landroid/net/LocalServerSocket;

    .line 65
    sput-boolean v1, Lcom/tencent/android/tpush/service/n;->f:Z

    .line 70
    sput-boolean v1, Lcom/tencent/android/tpush/service/n;->g:Z

    .line 72
    sput-boolean v1, Lcom/tencent/android/tpush/service/n;->h:Z

    .line 75
    sput-boolean v1, Lcom/tencent/android/tpush/service/n;->i:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/android/tpush/service/n;->e:Landroid/os/Handler;

    .line 78
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/e/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/service/n;->b:Ljava/lang/String;

    .line 79
    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/android/tpush/service/o;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/n;-><init>()V

    return-void
.end method

.method public static a()Lcom/tencent/android/tpush/service/n;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/tencent/android/tpush/service/r;->a:Lcom/tencent/android/tpush/service/n;

    return-object v0
.end method

.method public static a(Landroid/app/Service;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 389
    const-string v0, "showMockNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " showMockNotification"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 391
    iput-object v3, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 392
    iput-object v3, v0, Landroid/app/Notification;->vibrate:[J

    .line 393
    const v1, 0x130e337

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 394
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 177
    const-string v0, "com.tencent.android.tpush.action.keepalive"

    const-wide/16 v2, 0x0

    invoke-static {p0, v0, v2, v3}, Lcom/tencent/android/tpush/service/n;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 178
    return-void
.end method

.method public static a(Landroid/content/Context;J)V
    .locals 1

    .prologue
    .line 186
    const-string v0, "com.tencent.android.tpush.action.keepalive"

    invoke-static {p0, v0, p1, p2}, Lcom/tencent/android/tpush/service/n;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 187
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 6

    .prologue
    .line 192
    const/4 v2, 0x0

    .line 193
    if-eqz p0, :cond_1

    .line 195
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 196
    :try_start_1
    const-class v0, Lcom/tencent/android/tpush/service/XGPushServiceV3;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 197
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-eqz v0, :cond_0

    .line 199
    const-string v0, "delay_time"

    invoke-virtual {v1, v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 201
    :cond_0
    invoke-static {p0}, Lcom/tencent/android/tpush/common/t;->a(Landroid/content/Context;)I

    move-result v0

    if-gtz v0, :cond_2

    .line 202
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 230
    :cond_1
    :goto_0
    return-void

    .line 204
    :cond_2
    const-string v0, "PushServiceManager"

    const-string v2, "startService failed, libtpnsSecurity.so not found."

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    :goto_1
    const-string v2, "PushServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startService failed, intent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :try_start_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 214
    :try_start_3
    const-class v0, Lcom/tencent/android/tpush/service/XGPushServiceV3;

    invoke-virtual {v2, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 215
    invoke-static {p0}, Lcom/tencent/android/tpush/common/t;->a(Landroid/content/Context;)I

    move-result v0

    if-gtz v0, :cond_3

    .line 217
    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 224
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 225
    :goto_2
    const-string v2, "PushServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "222 startService failed, intent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", ex:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :cond_3
    :try_start_4
    const-string v0, "PushServiceManager"

    const-string v1, "startService failed, libtpnsSecurity.so not found."

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 224
    :catch_2
    move-exception v0

    goto :goto_2

    .line 209
    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method static synthetic a(Lcom/tencent/android/tpush/service/n;)Z
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/n;->n()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .prologue
    .line 44
    sput-boolean p0, Lcom/tencent/android/tpush/service/n;->h:Z

    return p0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 182
    const-string v0, "com.tencent.android.tpush.action.start_slave"

    const-wide/16 v2, 0x0

    invoke-static {p0, v0, v2, v3}, Lcom/tencent/android/tpush/service/n;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 183
    return-void
.end method

.method static synthetic b(Lcom/tencent/android/tpush/service/n;)Z
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/n;->o()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Z)Z
    .locals 0

    .prologue
    .line 44
    sput-boolean p0, Lcom/tencent/android/tpush/service/n;->i:Z

    return p0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 233
    const-string v0, "PushServiceManager"

    const-string v1, "Action -> stop Current Connect"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v0, "com.tencent.android.tpush.action.stop_connect"

    const-wide/16 v2, 0x0

    invoke-static {p0, v0, v2, v3}, Lcom/tencent/android/tpush/service/n;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 235
    return-void
.end method

.method public static d(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 303
    if-eqz p0, :cond_0

    .line 305
    sput-object p0, Lcom/tencent/android/tpush/service/n;->a:Landroid/content/Context;

    .line 306
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/service/n;->b:Ljava/lang/String;

    .line 308
    :cond_0
    return-void
.end method

.method public static e(Landroid/content/Context;)I
    .locals 5

    .prologue
    .line 398
    const/4 v1, 0x0

    .line 400
    :try_start_0
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 402
    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    .line 404
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 406
    const-class v2, Lcom/tencent/android/tpush/service/XGPushServiceV3;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 407
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 408
    iget-object v4, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 410
    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 411
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 412
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 415
    goto :goto_0

    .line 417
    :catch_0
    move-exception v0

    .line 420
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static f()Landroid/content/Context;
    .locals 1

    .prologue
    .line 317
    sget-object v0, Lcom/tencent/android/tpush/service/n;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    sget-object v0, Lcom/tencent/android/tpush/service/n;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/tencent/android/tpush/service/n;->h:Z

    return v0
.end method

.method static synthetic j()Landroid/content/Context;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/tencent/android/tpush/service/n;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic k()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/tencent/android/tpush/service/n;->i:Z

    return v0
.end method

.method private l()Z
    .locals 11

    .prologue
    const/4 v2, 0x1

    .line 332
    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/service/n;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/e/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 385
    :goto_0
    return v0

    .line 335
    :cond_0
    invoke-static {}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getRegisterEntityMap()Ljava/util/Map;

    move-result-object v0

    .line 336
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ge v1, v3, :cond_2

    :cond_1
    :goto_1
    move v0, v2

    .line 385
    goto :goto_0

    .line 341
    :cond_2
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 342
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 343
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/RegisterEntity;

    .line 344
    if-eqz v0, :cond_3

    iget-object v3, v0, Lcom/tencent/android/tpush/data/RegisterEntity;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/android/tpush/service/e/h;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lcom/tencent/android/tpush/data/RegisterEntity;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 345
    iget-object v3, v0, Lcom/tencent/android/tpush/data/RegisterEntity;->packageName:Ljava/lang/String;

    iget v0, v0, Lcom/tencent/android/tpush/data/RegisterEntity;->xgSDKVersion:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 382
    :catch_0
    move-exception v0

    .line 383
    const-string v1, "PushServiceManager"

    const-string v3, "isSurvive"

    invoke-static {v1, v3, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 348
    :cond_4
    const/4 v1, 0x0

    .line 350
    :try_start_1
    sget-object v0, Lcom/tencent/android/tpush/service/n;->b:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 351
    sget-object v0, Lcom/tencent/android/tpush/service/n;->b:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    move v3, v0

    .line 355
    :goto_3
    sget-object v0, Lcom/tencent/android/tpush/service/n;->a:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 357
    const v5, 0x7fffffff

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    .line 359
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 361
    const-class v5, Lcom/tencent/android/tpush/service/XGPushServiceV3;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 362
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 363
    iget-object v7, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 365
    iget-object v7, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 366
    const-string v8, "PushServiceManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isSurvive srvPkg :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-static {v7}, Lcom/tencent/android/tpush/stat/a/e;->b(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 368
    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 369
    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 370
    cmpl-float v7, v0, v1

    if-lez v7, :cond_7

    :goto_5
    move v1, v0

    .line 376
    goto :goto_4

    .line 353
    :cond_5
    const v0, 0x40466666    # 3.1f

    move v3, v0

    goto :goto_3

    .line 378
    :cond_6
    cmpl-float v0, v1, v3

    if-lez v0, :cond_1

    .line 379
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto :goto_5
.end method

.method private m()V
    .locals 3

    .prologue
    .line 427
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 429
    invoke-static {}, Lcom/tencent/android/tpush/service/XGPushServiceV3;->b()Landroid/app/Service;

    move-result-object v0

    const/16 v1, -0x7ce

    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 444
    :goto_0
    return-void

    .line 431
    :cond_0
    sget-object v0, Lcom/tencent/android/tpush/service/n;->a:Landroid/content/Context;

    const-class v1, Lcom/tencent/android/tpush/service/XGDaemonService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/common/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 432
    const-string v0, "Service"

    const-string v1, "checkManifestIfComponentConfiged false"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 436
    :cond_1
    invoke-static {}, Lcom/tencent/android/tpush/service/XGPushServiceV3;->b()Landroid/app/Service;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/n;->a(Landroid/app/Service;)V

    .line 440
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/tencent/android/tpush/service/n;->a:Landroid/content/Context;

    const-class v2, Lcom/tencent/android/tpush/service/XGDaemonService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 441
    const-string v1, "NotificationID"

    const v2, 0x130e337

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 442
    sget-object v1, Lcom/tencent/android/tpush/service/n;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private n()Z
    .locals 8

    .prologue
    .line 453
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/n;->l()Z

    move-result v0

    .line 454
    monitor-enter p0

    .line 455
    if-eqz v0, :cond_2

    .line 457
    :try_start_0
    invoke-static {}, Lcom/tencent/android/tpush/service/e/h;->a()Ljava/lang/String;

    move-result-object v1

    .line 458
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "V3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/android/tpush/encrypt/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 460
    sget-object v3, Lcom/tencent/android/tpush/service/n;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 461
    sget-object v4, Lcom/tencent/android/tpush/service/n;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/android/tpush/service/n;->e(Landroid/content/Context;)I

    move-result v4

    .line 463
    const-string v5, "PushServiceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "running v3 service count "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/android/tpush/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    const/4 v5, 0x3

    if-le v4, v5, :cond_0

    .line 465
    const/4 v0, 0x0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 503
    :goto_0
    return v0

    .line 471
    :cond_0
    :try_start_2
    invoke-static {v3}, Lcom/tencent/android/tpush/common/t;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 472
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 473
    new-instance v4, Landroid/net/LocalServerSocket;

    invoke-direct {v4, v3}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/tencent/android/tpush/service/n;->c:Landroid/net/LocalServerSocket;

    .line 474
    new-instance v3, Landroid/net/LocalServerSocket;

    invoke-direct {v3, v2}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 475
    if-eqz v3, :cond_1

    .line 477
    :try_start_3
    invoke-virtual {v3}, Landroid/net/LocalServerSocket;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 487
    :cond_1
    :goto_1
    :try_start_4
    const-string v3, "PushServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tmpSocketName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", socketName: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/android/tpush/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/tencent/android/tpush/service/n;->f:Z

    .line 491
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/n;->m()V

    .line 492
    sget-object v1, Lcom/tencent/android/tpush/service/n;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/android/tpush/service/XGWatchdog;->getInstance(Landroid/content/Context;)Lcom/tencent/android/tpush/service/XGWatchdog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/android/tpush/service/XGWatchdog;->startWatchdog()V

    .line 494
    sget-object v1, Lcom/tencent/android/tpush/service/n;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/android/tpush/service/aa;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/service/aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/android/tpush/service/aa;->a()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 502
    :cond_2
    :goto_2
    :try_start_5
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 484
    :cond_3
    :try_start_6
    new-instance v3, Landroid/net/LocalServerSocket;

    invoke-direct {v3, v2}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    sput-object v3, Lcom/tencent/android/tpush/service/n;->c:Landroid/net/LocalServerSocket;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 495
    :catch_0
    move-exception v0

    .line 497
    :try_start_7
    sget-boolean v0, Lcom/tencent/android/tpush/service/n;->f:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 478
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method private o()Z
    .locals 3

    .prologue
    .line 532
    const-string v0, "PushServiceManager"

    const-string/jumbo v1, "tryToKeepSlaveServiceAlive"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/n;->l()Z

    move-result v0

    .line 534
    monitor-enter p0

    .line 535
    if-eqz v0, :cond_0

    .line 537
    :try_start_0
    invoke-static {}, Lcom/tencent/android/tpush/service/e/h;->a()Ljava/lang/String;

    move-result-object v1

    .line 538
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "V3.Slave"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/android/tpush/encrypt/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 540
    new-instance v2, Landroid/net/LocalServerSocket;

    invoke-direct {v2, v1}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/tencent/android/tpush/service/n;->d:Landroid/net/LocalServerSocket;

    .line 541
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/tencent/android/tpush/service/n;->g:Z

    .line 544
    sget-object v1, Lcom/tencent/android/tpush/service/n;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/android/tpush/service/XGWatchdog;->getInstance(Landroid/content/Context;)Lcom/tencent/android/tpush/service/XGWatchdog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/android/tpush/service/XGWatchdog;->startWatchdog()V

    .line 546
    sget-object v1, Lcom/tencent/android/tpush/service/n;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/android/tpush/service/aa;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/service/aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/android/tpush/service/aa;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 552
    return v0

    .line 547
    :catch_0
    move-exception v0

    .line 548
    sget-boolean v0, Lcom/tencent/android/tpush/service/n;->g:Z

    goto :goto_0

    .line 551
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private p()V
    .locals 2

    .prologue
    .line 559
    new-instance v0, Lcom/tencent/android/tpush/service/o;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/android/tpush/service/o;-><init>(Lcom/tencent/android/tpush/service/n;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/android/tpush/service/n;->e:Landroid/os/Handler;

    .line 712
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const-wide/16 v0, 0x0

    .line 101
    iget-object v2, p0, Lcom/tencent/android/tpush/service/n;->e:Landroid/os/Handler;

    if-nez v2, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/n;->p()V

    .line 106
    :cond_0
    monitor-enter p0

    .line 107
    :try_start_0
    sget-boolean v2, Lcom/tencent/android/tpush/service/n;->f:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/tencent/android/tpush/service/n;->c:Landroid/net/LocalServerSocket;

    if-eqz v2, :cond_4

    .line 108
    if-eqz p1, :cond_1

    .line 109
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 110
    if-eqz v2, :cond_1

    .line 111
    const-string v3, "com.tencent.android.tpush.action.keepalive"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 112
    iget-object v2, p0, Lcom/tencent/android/tpush/service/n;->e:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 114
    const-string v3, "delay_time"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 116
    cmp-long v0, v4, v0

    if-nez v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/tencent/android/tpush/service/n;->e:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 118
    iget-object v0, p0, Lcom/tencent/android/tpush/service/n;->e:Landroid/os/Handler;

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 133
    :cond_1
    :goto_0
    monitor-exit p0

    .line 168
    :goto_1
    return-void

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/tencent/android/tpush/service/n;->e:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 121
    iget-object v0, p0, Lcom/tencent/android/tpush/service/n;->e:Landroid/os/Handler;

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 125
    :cond_3
    :try_start_1
    const-string v0, "com.tencent.android.tpush.action.stop_connect"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/tencent/android/tpush/service/n;->e:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/tencent/android/tpush/service/n;->e:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 129
    iget-object v1, p0, Lcom/tencent/android/tpush/service/n;->e:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 135
    :cond_4
    sget-boolean v2, Lcom/tencent/android/tpush/service/n;->g:Z

    if-eqz v2, :cond_7

    sget-object v2, Lcom/tencent/android/tpush/service/n;->d:Landroid/net/LocalServerSocket;

    if-eqz v2, :cond_7

    .line 136
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/e/h;->q(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p1, :cond_6

    const-string v0, "com.tencent.android.tpush.action.slave2main"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 137
    :cond_5
    iget-object v0, p0, Lcom/tencent/android/tpush/service/n;->e:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/tencent/android/tpush/service/n;->e:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 141
    :cond_6
    monitor-exit p0

    goto :goto_1

    .line 143
    :cond_7
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getRegisterInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 155
    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_8

    .line 160
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit16 v0, v0, 0x384

    int-to-long v0, v0

    .line 161
    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-gez v2, :cond_8

    .line 162
    const-wide/16 v0, 0x3e8

    .line 166
    :cond_8
    iget-object v2, p0, Lcom/tencent/android/tpush/service/n;->e:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 167
    iget-object v3, p0, Lcom/tencent/android/tpush/service/n;->e:Landroid/os/Handler;

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1
.end method

.method public b()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 241
    const-string v0, "PushServiceManager"

    const-string v1, "@@ serviceExit()"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-static {}, Lcom/tencent/android/tpush/common/t;->a()V

    .line 243
    iget-object v0, p0, Lcom/tencent/android/tpush/service/n;->e:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/tencent/android/tpush/service/n;->e:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 245
    iput-object v2, p0, Lcom/tencent/android/tpush/service/n;->e:Landroid/os/Handler;

    .line 248
    :cond_0
    invoke-static {}, Lcom/tencent/android/tpush/common/g;->a()Lcom/tencent/android/tpush/common/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/common/g;->b()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 249
    invoke-static {}, Lcom/tencent/android/tpush/common/g;->a()Lcom/tencent/android/tpush/common/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/common/g;->b()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 254
    :cond_1
    invoke-static {}, Lcom/tencent/android/tpush/service/a;->a()Lcom/tencent/android/tpush/service/a;

    sget-object v0, Lcom/tencent/android/tpush/service/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/a;->b(Landroid/content/Context;)V

    .line 257
    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/n;->d()V

    .line 260
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/e/h;->s(Landroid/content/Context;)V

    .line 261
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 267
    monitor-enter p0

    .line 268
    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/service/n;->c:Landroid/net/LocalServerSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 270
    :try_start_1
    sget-object v0, Lcom/tencent/android/tpush/service/n;->c:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->close()V

    .line 271
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/android/tpush/service/n;->c:Landroid/net/LocalServerSocket;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/tencent/android/tpush/service/n;->f:Z

    .line 278
    monitor-exit p0

    .line 279
    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 273
    const-string v1, "XGService"

    const-string v2, ">> Destroy local socket exception"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public e()V
    .locals 3

    .prologue
    .line 284
    monitor-enter p0

    .line 285
    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/service/n;->d:Landroid/net/LocalServerSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 287
    :try_start_1
    sget-object v0, Lcom/tencent/android/tpush/service/n;->d:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->close()V

    .line 288
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/android/tpush/service/n;->d:Landroid/net/LocalServerSocket;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 294
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/tencent/android/tpush/service/n;->g:Z

    .line 295
    monitor-exit p0

    .line 296
    return-void

    .line 289
    :catch_0
    move-exception v0

    .line 290
    const-string v1, "XGService"

    const-string v2, ">> Destroy local socket exception"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public h()Z
    .locals 6

    .prologue
    .line 508
    const/4 v0, 0x0

    .line 510
    :try_start_0
    invoke-static {}, Lcom/tencent/android/tpush/service/e/h;->a()Ljava/lang/String;

    move-result-object v2

    .line 511
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "V3"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/android/tpush/encrypt/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 512
    const-string v1, "PushServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tmpSocketName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", socketName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/android/tpush/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    new-instance v1, Landroid/net/LocalServerSocket;

    invoke-direct {v1, v3}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    :try_start_1
    const-string v0, "PushServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tmpSocketName is success"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", socketName: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 515
    const/4 v0, 0x1

    .line 519
    if-eqz v1, :cond_0

    .line 521
    :try_start_2
    invoke-virtual {v1}, Landroid/net/LocalServerSocket;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 524
    :cond_0
    :goto_0
    return v0

    .line 522
    :catch_0
    move-exception v1

    .line 523
    const-string v2, "PushServiceManager"

    const-string v3, "localSocket.close()"

    invoke-static {v2, v3, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 516
    :catch_1
    move-exception v1

    move-object v1, v0

    .line 517
    :goto_1
    const/4 v0, 0x0

    .line 519
    if-eqz v1, :cond_0

    .line 521
    :try_start_3
    invoke-virtual {v1}, Landroid/net/LocalServerSocket;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 522
    :catch_2
    move-exception v1

    .line 523
    const-string v2, "PushServiceManager"

    const-string v3, "localSocket.close()"

    invoke-static {v2, v3, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 519
    :catchall_0
    move-exception v1

    move-object v2, v1

    move-object v3, v0

    :goto_2
    if-eqz v3, :cond_1

    .line 521
    :try_start_4
    invoke-virtual {v3}, Landroid/net/LocalServerSocket;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 524
    :cond_1
    :goto_3
    throw v2

    .line 522
    :catch_3
    move-exception v0

    .line 523
    const-string v1, "PushServiceManager"

    const-string v3, "localSocket.close()"

    invoke-static {v1, v3, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 519
    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    goto :goto_2

    .line 516
    :catch_4
    move-exception v0

    goto :goto_1
.end method
