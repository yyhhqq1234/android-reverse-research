.class public Lcom/tencent/android/tpush/service/cache/CacheManager;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/android/tpush/service/cache/CacheManager;->a:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    return-void
.end method

.method public static UninstallInfoByPkgName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/tencent/android/tpush/service/cache/CacheManager;->a(Ljava/lang/String;B)V

    .line 355
    return-void
.end method

.method public static UninstallInfoSuccessByPkgName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 366
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/tencent/android/tpush/service/cache/CacheManager;->a(Ljava/lang/String;B)V

    .line 367
    return-void
.end method

.method public static UnregisterInfoByPkgName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/tencent/android/tpush/service/cache/CacheManager;->a(Ljava/lang/String;B)V

    .line 328
    return-void
.end method

.method public static UnregisterInfoSuccessByPkgName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/tencent/android/tpush/service/cache/CacheManager;->a(Ljava/lang/String;B)V

    .line 339
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 943
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".com.tencent.tpush.cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 445
    return-void
.end method

.method private static a(Ljava/lang/String;B)V
    .locals 3

    .prologue
    .line 342
    invoke-static {p0}, Lcom/tencent/android/tpush/service/e/h;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    :cond_0
    return-void

    .line 345
    :cond_1
    invoke-static {}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getRegisterEntityMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 346
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/RegisterEntity;

    .line 347
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/tencent/android/tpush/data/RegisterEntity;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/android/tpush/service/e/h;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/tencent/android/tpush/data/RegisterEntity;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 348
    iput p1, v0, Lcom/tencent/android/tpush/data/RegisterEntity;->state:I

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 431
    return-void
.end method

.method public static addOptKey(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 746
    :try_start_0
    invoke-static {p0}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getOptKeyList(Landroid/content/Context;)Ljava/util/HashSet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 750
    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 751
    invoke-static {p0, v0}, Lcom/tencent/android/tpush/service/cache/CacheManager;->addOptKeyList(Landroid/content/Context;Ljava/util/HashSet;)V

    .line 752
    return-void

    .line 747
    :catch_0
    move-exception v0

    .line 748
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_0
.end method

.method public static addOptKeyList(Landroid/content/Context;Ljava/util/HashSet;)V
    .locals 3

    .prologue
    .line 725
    if-eqz p0, :cond_0

    .line 730
    :try_start_0
    invoke-static {p1}, Lcom/tencent/android/tpush/common/k;->a(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v0

    .line 731
    invoke-static {v0}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 733
    const-string v1, ".com.tencent.tpush.cache.keylist"

    invoke-static {p0, v1, v0}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    :cond_0
    :goto_0
    return-void

    .line 734
    :catch_0
    move-exception v0

    .line 735
    const-string v1, "XGService"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static declared-synchronized addOptStrategy(Lcom/tencent/android/tpush/horse/data/StrategyItem;)V
    .locals 5

    .prologue
    .line 647
    const-class v1, Lcom/tencent/android/tpush/service/cache/CacheManager;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/e/h;->i(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 652
    :try_start_1
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getOptStrategyList(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/android/tpush/horse/data/OptStrategyList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 657
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->d()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 658
    invoke-virtual {p0}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->f()I

    move-result v3

    if-nez v3, :cond_0

    .line 659
    invoke-virtual {v0, p0}, Lcom/tencent/android/tpush/horse/data/OptStrategyList;->d(Lcom/tencent/android/tpush/horse/data/StrategyItem;)V

    .line 670
    :goto_1
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v0}, Lcom/tencent/android/tpush/service/cache/CacheManager;->addOptStrategyList(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/android/tpush/horse/data/OptStrategyList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 671
    monitor-exit v1

    return-void

    .line 653
    :catch_0
    move-exception v0

    .line 654
    :try_start_3
    const-string v3, "XGService"

    const-string v4, ">> Can not get OptStrategyList from local"

    invoke-static {v3, v4, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 655
    new-instance v0, Lcom/tencent/android/tpush/horse/data/OptStrategyList;

    invoke-direct {v0}, Lcom/tencent/android/tpush/horse/data/OptStrategyList;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 647
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 661
    :cond_0
    :try_start_4
    invoke-virtual {v0, p0}, Lcom/tencent/android/tpush/horse/data/OptStrategyList;->c(Lcom/tencent/android/tpush/horse/data/StrategyItem;)V

    goto :goto_1

    .line 664
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->f()I

    move-result v3

    if-nez v3, :cond_2

    .line 665
    invoke-virtual {v0, p0}, Lcom/tencent/android/tpush/horse/data/OptStrategyList;->b(Lcom/tencent/android/tpush/horse/data/StrategyItem;)V

    goto :goto_1

    .line 667
    :cond_2
    invoke-virtual {v0, p0}, Lcom/tencent/android/tpush/horse/data/OptStrategyList;->a(Lcom/tencent/android/tpush/horse/data/StrategyItem;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public static declared-synchronized addOptStrategyList(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/android/tpush/horse/data/OptStrategyList;)V
    .locals 4

    .prologue
    .line 592
    const-class v1, Lcom/tencent/android/tpush/service/cache/CacheManager;

    monitor-enter v1

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 610
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 598
    :cond_1
    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/android/tpush/service/cache/CacheManager;->addOptKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".com.tencent.tpush.cache.redirect"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 601
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/tencent/android/tpush/horse/data/OptStrategyList;->a(J)V

    .line 602
    invoke-static {p2}, Lcom/tencent/android/tpush/common/k;->a(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v2

    .line 603
    invoke-static {v2}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 605
    invoke-static {p0, v0, v2}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 606
    :catch_0
    move-exception v0

    .line 607
    :try_start_2
    const-string v2, "XGService"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 592
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static addRegisterInfo(Lcom/tencent/android/tpush/data/RegisterEntity;)V
    .locals 4

    .prologue
    .line 236
    if-eqz p0, :cond_0

    iget-wide v0, p0, Lcom/tencent/android/tpush/data/RegisterEntity;->accessId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 237
    invoke-static {}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getRegisterEntityMap()Ljava/util/Map;

    move-result-object v0

    iget-wide v2, p0, Lcom/tencent/android/tpush/data/RegisterEntity;->accessId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    :cond_0
    return-void
.end method

.method public static addServerItems(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3

    .prologue
    .line 682
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 697
    :cond_0
    :goto_0
    return-void

    .line 686
    :cond_1
    invoke-static {p0, p1}, Lcom/tencent/android/tpush/service/cache/CacheManager;->saveDomainKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".com.tencent.tpush.cache.server"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 689
    :try_start_0
    invoke-static {p2}, Lcom/tencent/android/tpush/common/k;->a(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v1

    .line 690
    invoke-static {v1}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 691
    invoke-static {p0, v0, v1}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 694
    :catch_0
    move-exception v0

    .line 695
    const-string v1, "XGService"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static clearDomainServerItem(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 917
    :try_start_0
    invoke-static {p0}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getDomainKeyList(Landroid/content/Context;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/tencent/android/tpush/service/channel/exception/NullReturnException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 921
    :goto_0
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 922
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 923
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 924
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 925
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".com.tencent.tpush.cache.server"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 928
    :try_start_1
    const-string v2, ""

    invoke-static {p0, v0, v2}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 929
    :catch_0
    move-exception v0

    .line 930
    const-string v2, "XGService"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 918
    :catch_1
    move-exception v0

    .line 919
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 933
    :cond_0
    return-void
.end method

.method public static clearOptKeyList(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 778
    if-eqz p0, :cond_0

    .line 780
    const-string v0, ".com.tencent.tpush.cache.keylist"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    :cond_0
    return-void
.end method

.method public static findValidPackageByAccessid(J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    invoke-static {}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getRegisterEntityMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/RegisterEntity;

    .line 139
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/data/RegisterEntity;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    iget-object v0, v0, Lcom/tencent/android/tpush/data/RegisterEntity;->packageName:Ljava/lang/String;

    .line 142
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static findValidRegisterEntityByPkg(Ljava/lang/String;)Lcom/tencent/android/tpush/data/RegisterEntity;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 146
    invoke-static {p0}, Lcom/tencent/android/tpush/service/e/h;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 155
    :goto_0
    return-object v0

    .line 149
    :cond_0
    invoke-static {}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getRegisterEntityMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 150
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/RegisterEntity;

    .line 151
    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/tencent/android/tpush/data/RegisterEntity;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 155
    goto :goto_0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 229
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v0

    .line 232
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tencent/android/tpush/XGPushManager;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCurrentAppRegisterEntity(Landroid/content/Context;)Lcom/tencent/android/tpush/data/RegisterEntity;
    .locals 2

    .prologue
    .line 216
    const-string v0, "cur.register"

    const-string v1, ".reg"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/service/cache/CacheManager;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/tencent/android/tpush/common/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-static {v0}, Lcom/tencent/android/tpush/service/e/h;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 218
    invoke-static {v0}, Lcom/tencent/android/tpush/data/RegisterEntity;->a(Ljava/lang/String;)Lcom/tencent/android/tpush/data/RegisterEntity;

    move-result-object v0

    .line 220
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDomain(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 847
    if-eqz p0, :cond_0

    .line 850
    const-string v0, ".com.tencent.tpush.cache.domain"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/tencent/android/tpush/common/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 852
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static getDomainKeyList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3

    .prologue
    .line 890
    if-nez p0, :cond_0

    .line 891
    new-instance v0, Lcom/tencent/android/tpush/service/channel/exception/NullReturnException;

    const-string v1, "getDomainKeyList return null,because ctx is null"

    invoke-direct {v0, v1}, Lcom/tencent/android/tpush/service/channel/exception/NullReturnException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 896
    :cond_0
    :try_start_0
    const-string v0, ".com.tencent.tpush.cache.domain.key"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/tencent/android/tpush/common/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 897
    invoke-static {v0}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 898
    invoke-static {v0}, Lcom/tencent/android/tpush/common/k;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 899
    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 901
    check-cast v0, Ljava/util/ArrayList;

    .line 902
    return-object v0

    .line 904
    :cond_1
    new-instance v0, Lcom/tencent/android/tpush/service/channel/exception/NullReturnException;

    const-string v1, "getDomainKeyList return null,because object not instance of ArrayList<?>"

    invoke-direct {v0, v1}, Lcom/tencent/android/tpush/service/channel/exception/NullReturnException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 907
    :catch_0
    move-exception v0

    .line 908
    new-instance v1, Lcom/tencent/android/tpush/service/channel/exception/NullReturnException;

    const-string v2, "getDomainKeyList return null\uff0cdeseriallize err"

    invoke-direct {v1, v2, v0}, Lcom/tencent/android/tpush/service/channel/exception/NullReturnException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public static getLastLoadIpTime(Landroid/content/Context;)J
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    .line 794
    if-eqz p0, :cond_0

    .line 796
    const-string v2, ".com.tencent.tpush.cache.load.ip.last.time"

    invoke-static {p0, v2, v0, v1}, Lcom/tencent/android/tpush/common/n;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 798
    :cond_0
    return-wide v0
.end method

.method public static getOptKeyList(Landroid/content/Context;)Ljava/util/HashSet;
    .locals 3

    .prologue
    .line 755
    if-nez p0, :cond_0

    .line 756
    new-instance v0, Lcom/tencent/android/tpush/service/channel/exception/NullReturnException;

    const-string v1, "getOptKeyList return null,because ctx is null"

    invoke-direct {v0, v1}, Lcom/tencent/android/tpush/service/channel/exception/NullReturnException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 762
    :cond_0
    :try_start_0
    const-string v0, ".com.tencent.tpush.cache.keylist"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/tencent/android/tpush/common/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 763
    invoke-static {v0}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 764
    invoke-static {v0}, Lcom/tencent/android/tpush/common/k;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 765
    instance-of v1, v0, Ljava/util/HashSet;

    if-eqz v1, :cond_1

    .line 767
    check-cast v0, Ljava/util/HashSet;

    .line 768
    return-object v0

    .line 770
    :cond_1
    new-instance v0, Lcom/tencent/android/tpush/service/channel/exception/NullReturnException;

    const-string v1, "getOptKeyList return null,because object not instance of ArrayList<?>"

    invoke-direct {v0, v1}, Lcom/tencent/android/tpush/service/channel/exception/NullReturnException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    :catch_0
    move-exception v0

    .line 773
    new-instance v1, Lcom/tencent/android/tpush/service/channel/exception/NullReturnException;

    const-string v2, "getOptKeyList return null\uff0cdeseriallize err"

    invoke-direct {v1, v2, v0}, Lcom/tencent/android/tpush/service/channel/exception/NullReturnException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public static getOptStrategyList(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/android/tpush/horse/data/OptStrategyList;
    .locals 3

    .prologue
    .line 625
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 626
    :cond_0
    :try_start_0
    new-instance v1, Lcom/tencent/android/tpush/service/channel/exception/NullReturnException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v0, "getStrategy return null,contex is null("

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ") and key="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tencent/android/tpush/service/channel/exception/NullReturnException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    :catch_0
    move-exception v0

    .line 641
    new-instance v1, Lcom/tencent/android/tpush/service/channel/exception/NullReturnException;

    const-string v2, "getOptStrategyList return null,deserialize err"

    invoke-direct {v1, v2, v0}, Lcom/tencent/android/tpush/service/channel/exception/NullReturnException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 626
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 629
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".com.tencent.tpush.cache.redirect"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 631
    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/tencent/android/tpush/common/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 632
    invoke-static {v0}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 633
    invoke-static {v0}, Lcom/tencent/android/tpush/common/k;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 634
    instance-of v1, v0, Lcom/tencent/android/tpush/horse/data/OptStrategyList;

    if-eqz v1, :cond_3

    .line 635
    check-cast v0, Lcom/tencent/android/tpush/horse/data/OptStrategyList;

    return-object v0

    .line 637
    :cond_3
    new-instance v0, Lcom/tencent/android/tpush/service/channel/exception/NullReturnException;

    const-string v1, "getStrategy return null, because serializer object is not instanceof OptStrategyList"

    invoke-direct {v0, v1}, Lcom/tencent/android/tpush/service/channel/exception/NullReturnException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public static getQua(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 563
    const-string v0, ""

    .line 564
    if-eqz p0, :cond_0

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".com.tencent.tpush.cache.qua."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/tencent/android/tpush/common/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 567
    invoke-static {v0}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 570
    :cond_0
    return-object v0
.end method

.method public static getRegisterEntityMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 209
    sget-object v0, Lcom/tencent/android/tpush/service/cache/CacheManager;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 210
    invoke-static {}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/a;->e(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/service/cache/CacheManager;->a:Ljava/util/Map;

    .line 212
    :cond_0
    sget-object v0, Lcom/tencent/android/tpush/service/cache/CacheManager;->a:Ljava/util/Map;

    return-object v0
.end method

.method public static getRegisterInfo(Landroid/content/Context;)Ljava/util/List;
    .locals 4

    .prologue
    .line 242
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 243
    if-eqz p0, :cond_1

    .line 244
    invoke-static {}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getRegisterEntityMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 245
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/RegisterEntity;

    .line 246
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/data/RegisterEntity;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 247
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 251
    :cond_1
    return-object v1
.end method

.method public static getRegisterInfoByPkgName(Ljava/lang/String;)Lcom/tencent/android/tpush/data/RegisterEntity;
    .locals 1

    .prologue
    .line 316
    invoke-static {p0}, Lcom/tencent/android/tpush/service/cache/CacheManager;->findValidRegisterEntityByPkg(Ljava/lang/String;)Lcom/tencent/android/tpush/data/RegisterEntity;

    move-result-object v0

    return-object v0
.end method

.method public static getRegisterInfos(Landroid/content/Context;)Ljava/util/List;
    .locals 4

    .prologue
    .line 188
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 190
    :try_start_0
    invoke-static {}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getRegisterEntityMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 191
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/RegisterEntity;

    .line 192
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/tencent/android/tpush/data/RegisterEntity;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/android/tpush/service/e/h;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/data/RegisterEntity;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 193
    iget-object v0, v0, Lcom/tencent/android/tpush/data/RegisterEntity;->packageName:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    const-string v1, "XGService"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 201
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_1
    return-object v0

    :cond_2
    move-object v0, v1

    .line 199
    goto :goto_1
.end method

.method public static getServerItems(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3

    .prologue
    .line 702
    if-nez p1, :cond_0

    .line 703
    new-instance v0, Lcom/tencent/android/tpush/service/channel/exception/NullReturnException;

    const-string v1, "getServerItems return null,because key is null"

    invoke-direct {v0, v1}, Lcom/tencent/android/tpush/service/channel/exception/NullReturnException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 705
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".com.tencent.tpush.cache.server"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 708
    :try_start_0
    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/tencent/android/tpush/common/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 709
    invoke-static {v0}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 710
    invoke-static {v0}, Lcom/tencent/android/tpush/common/k;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 711
    if-eqz v0, :cond_1

    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 713
    check-cast v0, Ljava/util/ArrayList;

    .line 714
    return-object v0

    .line 716
    :cond_1
    new-instance v0, Lcom/tencent/android/tpush/service/channel/exception/NullReturnException;

    const-string v1, "getServerItems return null,because object not instance of Arraylist<?>"

    invoke-direct {v0, v1}, Lcom/tencent/android/tpush/service/channel/exception/NullReturnException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 718
    :catch_0
    move-exception v0

    .line 719
    new-instance v1, Lcom/tencent/android/tpush/service/channel/exception/NullReturnException;

    const-string v2, "getServerItem return null,deseriallize err"

    invoke-direct {v1, v2, v0}, Lcom/tencent/android/tpush/service/channel/exception/NullReturnException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public static getSpeedTestList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3

    .prologue
    .line 817
    if-nez p0, :cond_0

    .line 818
    new-instance v0, Lcom/tencent/android/tpush/service/channel/exception/NullReturnException;

    const-string v1, "getSpeedTestList return null ,because ctx is null"

    invoke-direct {v0, v1}, Lcom/tencent/android/tpush/service/channel/exception/NullReturnException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 821
    :cond_0
    const-string v0, ".com.tencent.tpush.cache.speed.test"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/tencent/android/tpush/common/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 822
    invoke-static {v0}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 824
    :try_start_0
    invoke-static {v0}, Lcom/tencent/android/tpush/common/k;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 825
    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 826
    check-cast v0, Ljava/util/ArrayList;

    return-object v0

    .line 828
    :cond_1
    new-instance v0, Lcom/tencent/android/tpush/service/channel/exception/NullReturnException;

    const-string v1, "getSpeedTestList return null ,because instanceof err"

    invoke-direct {v0, v1}, Lcom/tencent/android/tpush/service/channel/exception/NullReturnException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    :catch_0
    move-exception v0

    .line 831
    new-instance v1, Lcom/tencent/android/tpush/service/channel/exception/NullReturnException;

    const-string v2, "getSpeedTestList return null ,because deserialize err"

    invoke-direct {v1, v2, v0}, Lcom/tencent/android/tpush/service/channel/exception/NullReturnException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public static getToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 529
    invoke-static {p0}, Lcom/tencent/android/tpush/stat/b/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 530
    invoke-static {v0}, Lcom/tencent/mid/api/MidService;->isMidValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/tencent/mid/api/MidService;->getLocalMidOnly(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getUninstallAndUnregisterInfo(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 10

    .prologue
    .line 296
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 297
    if-eqz p0, :cond_2

    .line 298
    invoke-static {}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getRegisterEntityMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 299
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/RegisterEntity;

    .line 300
    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {v0}, Lcom/tencent/android/tpush/data/RegisterEntity;->b()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/tencent/android/tpush/data/RegisterEntity;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    :cond_1
    new-instance v9, Lcom/tencent/android/tpush/service/channel/protocol/UnregInfo;

    invoke-direct {v9}, Lcom/tencent/android/tpush/service/channel/protocol/UnregInfo;-><init>()V

    .line 303
    new-instance v1, Lcom/tencent/android/tpush/service/channel/protocol/AppInfo;

    iget-wide v2, v0, Lcom/tencent/android/tpush/data/RegisterEntity;->accessId:J

    iget-object v4, v0, Lcom/tencent/android/tpush/data/RegisterEntity;->accessKey:Ljava/lang/String;

    iget-object v5, v0, Lcom/tencent/android/tpush/data/RegisterEntity;->packageName:Ljava/lang/String;

    invoke-static {v5}, Lcom/tencent/android/tpush/service/e/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/android/tpush/service/channel/protocol/AppInfo;-><init>(JLjava/lang/String;Ljava/lang/String;B)V

    iput-object v1, v9, Lcom/tencent/android/tpush/service/channel/protocol/UnregInfo;->appInfo:Lcom/tencent/android/tpush/service/channel/protocol/AppInfo;

    .line 305
    iget v1, v0, Lcom/tencent/android/tpush/data/RegisterEntity;->state:I

    int-to-byte v1, v1

    iput-byte v1, v9, Lcom/tencent/android/tpush/service/channel/protocol/UnregInfo;->isUninstall:B

    .line 306
    iget-wide v0, v0, Lcom/tencent/android/tpush/data/RegisterEntity;->timestamp:J

    iput-wide v0, v9, Lcom/tencent/android/tpush/service/channel/protocol/UnregInfo;->timestamp:J

    .line 307
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 312
    :cond_2
    return-object v7
.end method

.method public static getUninstallInfo(Landroid/content/Context;)Ljava/util/List;
    .locals 4

    .prologue
    .line 278
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 279
    if-eqz p0, :cond_1

    .line 280
    invoke-static {}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getRegisterEntityMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 281
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/RegisterEntity;

    .line 282
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/tencent/android/tpush/data/RegisterEntity;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/android/tpush/service/e/h;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/data/RegisterEntity;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 283
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 287
    :cond_1
    return-object v1
.end method

.method public static getUnregisterInfo(Landroid/content/Context;)Ljava/util/List;
    .locals 4

    .prologue
    .line 260
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 261
    if-eqz p0, :cond_1

    .line 262
    invoke-static {}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getRegisterEntityMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 263
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/RegisterEntity;

    .line 264
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/tencent/android/tpush/data/RegisterEntity;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/android/tpush/service/e/h;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/data/RegisterEntity;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 265
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 269
    :cond_1
    return-object v1
.end method

.method public static declared-synchronized removeOptStrategyList(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 619
    const-class v1, Lcom/tencent/android/tpush/service/cache/CacheManager;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/tencent/android/tpush/horse/data/OptStrategyList;

    invoke-direct {v0}, Lcom/tencent/android/tpush/horse/data/OptStrategyList;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/tencent/android/tpush/service/cache/CacheManager;->addOptStrategyList(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/android/tpush/horse/data/OptStrategyList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 620
    monitor-exit v1

    return-void

    .line 619
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static removeRegisterInfoByPkgName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 371
    invoke-static {p0}, Lcom/tencent/android/tpush/service/cache/CacheManager;->a(Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method public static removeRegisterInfos(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/tencent/android/tpush/service/cache/CacheManager;->a(Ljava/lang/String;B)V

    .line 160
    return-void
.end method

.method public static saveDomain(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 838
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 841
    const-string v0, ".com.tencent.tpush.cache.domain"

    invoke-static {p0, v0, p1}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    :cond_0
    return-void
.end method

.method public static saveDomainKey(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 874
    if-eqz p0, :cond_0

    .line 879
    :try_start_0
    invoke-static {p0}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getDomainKeyList(Landroid/content/Context;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 884
    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 885
    invoke-static {p0, v0}, Lcom/tencent/android/tpush/service/cache/CacheManager;->saveDomainKeyList(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 887
    :cond_0
    return-void

    .line 880
    :catch_0
    move-exception v0

    .line 882
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public static saveDomainKeyList(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 3

    .prologue
    .line 857
    if-eqz p0, :cond_1

    .line 860
    :try_start_0
    const-string v0, ""

    .line 861
    if-eqz p1, :cond_0

    .line 862
    invoke-static {p1}, Lcom/tencent/android/tpush/common/k;->a(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v0

    .line 864
    :cond_0
    invoke-static {v0}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 866
    const-string v1, ".com.tencent.tpush.cache.domain.key"

    invoke-static {p0, v1, v0}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 871
    :cond_1
    :goto_0
    return-void

    .line 867
    :catch_0
    move-exception v0

    .line 868
    const-string v1, "XGService"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static saveLoadIpTime(Landroid/content/Context;J)V
    .locals 3

    .prologue
    .line 787
    if-eqz p0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 789
    const-string v0, ".com.tencent.tpush.cache.load.ip.last.time"

    invoke-static {p0, v0, p1, p2}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 791
    :cond_0
    return-void
.end method

.method public static saveSpeedTestList(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2

    .prologue
    .line 802
    if-nez p0, :cond_0

    .line 813
    :goto_0
    return-void

    .line 806
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/tencent/android/tpush/common/k;->a(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v0

    .line 807
    invoke-static {v0}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 809
    const-string v1, ".com.tencent.tpush.cache.speed.test"

    invoke-static {p0, v1, v0}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 810
    :catch_0
    move-exception v0

    .line 811
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setCurrentAppRegisterEntity(Landroid/content/Context;Lcom/tencent/android/tpush/data/RegisterEntity;)V
    .locals 2

    .prologue
    .line 224
    const-string v0, "cur.register"

    const-string v1, ".reg"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/service/cache/CacheManager;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/tencent/android/tpush/data/RegisterEntity;->a(Lcom/tencent/android/tpush/data/RegisterEntity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public static setQua(Landroid/content/Context;JLjava/lang/String;)V
    .locals 3

    .prologue
    .line 581
    if-eqz p0, :cond_0

    invoke-static {p3}, Lcom/tencent/android/tpush/service/e/h;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".com.tencent.tpush.cache.qua."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p3}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    :cond_0
    return-void
.end method

.method public static setToken(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 541
    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/tencent/android/tpush/service/e/h;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 543
    invoke-static {p0}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 544
    invoke-static {p0, p1}, Lcom/tencent/android/tpush/stat/b/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 548
    const/4 v0, 0x1

    .line 551
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static updateUnregUninList(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 487
    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 489
    invoke-static {p0}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getUnregisterInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 490
    invoke-static {p0}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getUninstallInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    .line 492
    if-eqz v5, :cond_4

    move v2, v3

    .line 493
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 494
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/service/channel/protocol/UnregInfo;

    .line 495
    iget-byte v1, v0, Lcom/tencent/android/tpush/service/channel/protocol/UnregInfo;->isUninstall:B

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    move v4, v3

    .line 496
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_1

    .line 497
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/android/tpush/data/RegisterEntity;

    .line 498
    iget-wide v8, v1, Lcom/tencent/android/tpush/data/RegisterEntity;->accessId:J

    iget-object v7, v0, Lcom/tencent/android/tpush/service/channel/protocol/UnregInfo;->appInfo:Lcom/tencent/android/tpush/service/channel/protocol/AppInfo;

    iget-wide v10, v7, Lcom/tencent/android/tpush/service/channel/protocol/AppInfo;->accessId:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_0

    .line 499
    iget-object v7, v1, Lcom/tencent/android/tpush/data/RegisterEntity;->packageName:Ljava/lang/String;

    iget-object v1, v1, Lcom/tencent/android/tpush/data/RegisterEntity;->packageName:Ljava/lang/String;

    const-string v8, ".reg"

    invoke-static {v1, v8}, Lcom/tencent/android/tpush/service/cache/CacheManager;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x3

    invoke-static {v7, v1, v8}, Lcom/tencent/android/tpush/service/cache/CacheManager;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 496
    :cond_0
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    .line 506
    :cond_1
    iget-byte v1, v0, Lcom/tencent/android/tpush/service/channel/protocol/UnregInfo;->isUninstall:B

    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    .line 507
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/android/tpush/data/RegisterEntity;

    .line 508
    iget-wide v8, v1, Lcom/tencent/android/tpush/data/RegisterEntity;->accessId:J

    iget-object v7, v0, Lcom/tencent/android/tpush/service/channel/protocol/UnregInfo;->appInfo:Lcom/tencent/android/tpush/service/channel/protocol/AppInfo;

    iget-wide v10, v7, Lcom/tencent/android/tpush/service/channel/protocol/AppInfo;->accessId:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_2

    .line 510
    iget-object v7, v1, Lcom/tencent/android/tpush/data/RegisterEntity;->packageName:Ljava/lang/String;

    iget-object v1, v1, Lcom/tencent/android/tpush/data/RegisterEntity;->packageName:Ljava/lang/String;

    const-string v8, ".reg"

    invoke-static {v1, v8}, Lcom/tencent/android/tpush/service/cache/CacheManager;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x4

    invoke-static {v7, v1, v8}, Lcom/tencent/android/tpush/service/cache/CacheManager;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 493
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 519
    :cond_4
    return-void
.end method
