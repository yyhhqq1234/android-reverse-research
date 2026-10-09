.class public Lcom/tencent/tmapkupdatesdk/internal/logic/a;
.super Landroid/os/Handler;
.source "ProGuard"


# static fields
.field private static a:Landroid/os/HandlerThread;

.field private static b:Lcom/tencent/tmapkupdatesdk/internal/logic/a;


# instance fields
.field private final c:Ljava/util/ArrayList;

.field private d:Ljava/util/concurrent/ConcurrentHashMap;

.field private final e:Ljava/util/HashMap;


# direct methods
.method private constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->c:Ljava/util/ArrayList;

    .line 159
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 240
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->e:Ljava/util/HashMap;

    .line 62
    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/tmapkupdatesdk/internal/logic/a;
    .locals 3

    .prologue
    .line 64
    const-class v1, Lcom/tencent/tmapkupdatesdk/internal/logic/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->b:Lcom/tencent/tmapkupdatesdk/internal/logic/a;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "apkupdate_asyctask"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->a:Landroid/os/HandlerThread;

    .line 66
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->a:Landroid/os/HandlerThread;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 67
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 68
    new-instance v0, Lcom/tencent/tmapkupdatesdk/internal/logic/a;

    sget-object v2, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->a:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/tencent/tmapkupdatesdk/internal/logic/a;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->b:Lcom/tencent/tmapkupdatesdk/internal/logic/a;

    .line 70
    :cond_0
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->b:Lcom/tencent/tmapkupdatesdk/internal/logic/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized b(Ljava/util/List;)I
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 243
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-gtz v1, :cond_1

    .line 276
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 247
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/b;->a()Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/b;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 248
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;

    .line 249
    iget-object v3, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->e:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    .line 253
    :try_start_2
    iget-object v3, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 254
    new-instance v4, Lcom/tencent/tmapkupdatesdk/internal/a/a;

    invoke-direct {v4}, Lcom/tencent/tmapkupdatesdk/internal/a/a;-><init>()V

    .line 256
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/tencent/tmapkupdatesdk/internal/a/a;->a(Ljava/lang/String;)V

    .line 257
    new-instance v5, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ApkFileInfo;

    invoke-direct {v5}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ApkFileInfo;-><init>()V

    .line 258
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v6, v5, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ApkFileInfo;->packageName:Ljava/lang/String;

    .line 259
    iget-wide v6, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->apkId:J

    iput-wide v6, v5, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ApkFileInfo;->apkId:J

    .line 262
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 263
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 265
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 267
    :cond_3
    iput-object v0, v5, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ApkFileInfo;->manifestMd5:Ljava/lang/String;

    .line 268
    invoke-virtual {v4}, Lcom/tencent/tmapkupdatesdk/internal/a/a;->a()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, v5, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ApkFileInfo;->fileCRC32:Ljava/util/Map;

    .line 269
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->e:Ljava/util/HashMap;

    iget-object v3, v5, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ApkFileInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 270
    :catch_0
    move-exception v0

    .line 271
    :try_start_3
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 272
    const-string v3, "TAG"

    const-string v4, "exception:"

    invoke-static {v3, v4, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 276
    :cond_4
    :try_start_4
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    goto/16 :goto_0
.end method

.method private declared-synchronized b()V
    .locals 3

    .prologue
    .line 281
    monitor-enter p0

    :try_start_0
    const-string v0, "TAG"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 283
    const-string v0, "TAG"

    const-string v1, "mNeedUploadApk.size() <= 0"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    :goto_0
    monitor-exit p0

    return-void

    .line 287
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 288
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->e:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->e:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ApkFileInfo;

    .line 289
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    const-string v0, "TAG"

    const-string v2, "startNewTask: UploadApkHttpRequest"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/b;->a()Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/b;

    move-result-object v0

    new-instance v2, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a/b;

    invoke-direct {v2, v1}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a/b;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/b;->a(Ljava/lang/Runnable;)V

    .line 292
    const-string v0, "TAG"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Lcom/tencent/tmapkupdatesdk/ApkUpdateListener;)V
    .locals 2

    .prologue
    .line 296
    const-string v0, "TAG"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_0
    const-string v0, "TAG"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method a(Ljava/util/List;)V
    .locals 14

    .prologue
    const/4 v13, 0x2

    .line 163
    const-string v0, "ApkUpdateSDKMessageHandler"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    if-eqz p1, :cond_3

    .line 166
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 167
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/b;->a()Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/b;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 169
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmapkupdatesdk/ApkUpdateParam;

    .line 171
    iget-object v6, v0, Lcom/tencent/tmapkupdatesdk/ApkUpdateParam;->packageName:Ljava/lang/String;

    .line 172
    iget v7, v0, Lcom/tencent/tmapkupdatesdk/ApkUpdateParam;->actionFlag:I

    .line 173
    iget v8, v0, Lcom/tencent/tmapkupdatesdk/ApkUpdateParam;->targetVersionCode:I

    .line 174
    iget v0, v0, Lcom/tencent/tmapkupdatesdk/ApkUpdateParam;->targetGrayVersionCode:I

    .line 175
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 179
    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v2, v6, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 181
    if-eqz v9, :cond_0

    .line 183
    new-instance v10, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppInfoForUpdate;

    invoke-direct {v10}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppInfoForUpdate;-><init>()V

    .line 184
    iput-object v6, v10, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppInfoForUpdate;->packageName:Ljava/lang/String;

    .line 185
    iget v11, v9, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v11, v10, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppInfoForUpdate;->versionCode:I

    .line 186
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/b;->a()Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/b;

    move-result-object v11

    invoke-virtual {v11, v6}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppInfoForUpdate;->signatureMd5:Ljava/lang/String;

    .line 187
    invoke-static {v6}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppInfoForUpdate;->manifestMd5:Ljava/lang/String;

    .line 188
    iget-object v11, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v12, v10, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppInfoForUpdate;->manifestMd5:Ljava/lang/String;

    invoke-virtual {v11, v6, v12}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v11, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v11, v11, 0x1

    if-gtz v11, :cond_1

    .line 192
    const/4 v11, 0x1

    iput-byte v11, v10, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppInfoForUpdate;->appType:B

    .line 198
    :goto_1
    iget-object v9, v9, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v9, v10, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppInfoForUpdate;->versionName:Ljava/lang/String;

    .line 200
    int-to-byte v7, v7

    iput-byte v7, v10, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppInfoForUpdate;->actionFlag:B

    .line 203
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/internal/c/a;->a()Lcom/tencent/tmapkupdatesdk/internal/c/a;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/tencent/tmapkupdatesdk/internal/c/a;->a(Ljava/lang/String;)I

    move-result v6

    iput v6, v10, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppInfoForUpdate;->grayVersionCode:I

    .line 205
    iput v8, v10, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppInfoForUpdate;->targetVersionCode:I

    .line 207
    iput v0, v10, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppInfoForUpdate;->targetGrayVersionCode:I

    .line 209
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    .line 214
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 215
    const-string v6, "TAG"

    const-string v7, "exception:"

    invoke-static {v6, v7, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 196
    :cond_1
    const/4 v11, 0x2

    :try_start_1
    iput-byte v11, v10, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppInfoForUpdate;->appType:B
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 219
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 221
    const-string v0, "TAG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updatecost="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long/2addr v2, v4

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 224
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->a()Lcom/tencent/tmapkupdatesdk/internal/logic/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 225
    const/4 v2, 0x6

    iput v2, v0, Landroid/os/Message;->what:I

    .line 226
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 227
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 228
    const-string v0, "TAG"

    const-string v1, "send Message ApkUpdateMessageHandler.CheckUpdate"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :cond_3
    :goto_2
    const-string v0, "ApkUpdateSDKMessageHandler"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void

    .line 230
    :cond_4
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->a()Lcom/tencent/tmapkupdatesdk/internal/logic/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 231
    iput v13, v0, Landroid/os/Message;->what:I

    .line 232
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 233
    const-string v0, "TAG"

    const-string v1, "send Message ApkUpdateMessageHandler.CheckUpdateFailed"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public b(Lcom/tencent/tmapkupdatesdk/ApkUpdateListener;)V
    .locals 2

    .prologue
    .line 304
    const-string v0, "TAG"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    if-nez p1, :cond_0

    .line 307
    const-string v0, "TAG"

    const-string v1, "listener == null"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :goto_0
    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 313
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 315
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmapkupdatesdk/ApkUpdateListener;

    .line 316
    if-ne v0, p1, :cond_1

    .line 318
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 321
    :cond_2
    const-string v0, "TAG"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 77
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 141
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 79
    :pswitch_1
    const-string v0, "ApkUpdateSDKMessageHandler"

    const-string v1, "message type:1"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmapkupdatesdk/ApkUpdateListener;

    .line 81
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/tencent/tmapkupdatesdk/ApkUpdateListener;->onCheckUpdateSucceed(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 85
    :pswitch_2
    const-string v0, "ApkUpdateSDKMessageHandler"

    const-string v1, "message type:2"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmapkupdatesdk/ApkUpdateListener;

    .line 87
    const-string v2, "UNKOWN"

    invoke-interface {v0, v2}, Lcom/tencent/tmapkupdatesdk/ApkUpdateListener;->onCheckUpdateFailed(Ljava/lang/String;)V

    goto :goto_2

    .line 96
    :pswitch_3
    const-string v0, "ApkUpdateSDKMessageHandler"

    const-string v1, "message type:5"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 98
    invoke-virtual {p0, v0}, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->a(Ljava/util/List;)V

    goto :goto_0

    .line 103
    :pswitch_4
    const-string v0, "ApkUpdateSDKMessageHandler"

    const-string v1, "message type:6"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 105
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/b;->a()Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/b;

    move-result-object v1

    new-instance v2, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a/a;

    invoke-direct {v2, v0}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a/a;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/b;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 109
    :pswitch_5
    const-string v0, "ApkUpdateSDKMessageHandler"

    const-string v1, "message type:7"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->b(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_0

    .line 111
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->a()Lcom/tencent/tmapkupdatesdk/internal/logic/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 112
    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 113
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 114
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 115
    const-string v0, "ApkUpdateSDKMessageHandler"

    const-string v1, "send Message ApkUpdateMessageHandler.UploadApkDetail"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 120
    :pswitch_6
    const-string v0, "ApkUpdateSDKMessageHandler"

    const-string v1, "message type:8"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 123
    invoke-direct {p0}, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->b()V

    goto/16 :goto_0

    .line 126
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 128
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 129
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->a()Lcom/tencent/tmapkupdatesdk/internal/logic/a;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->e:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 133
    :cond_2
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->a()Lcom/tencent/tmapkupdatesdk/internal/logic/a;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->b()V

    goto/16 :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
