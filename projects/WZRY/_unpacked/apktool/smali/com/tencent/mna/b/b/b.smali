.class public Lcom/tencent/mna/b/b/b;
.super Ljava/lang/Object;
.source "NetworkBinding.java"


# static fields
.field private static b:Ljava/lang/reflect/Field;

.field private static c:Ljava/lang/reflect/Method;


# instance fields
.field public volatile a:I

.field private d:Lcom/tencent/mna/b/b/a;

.field private e:Ljava/lang/Object;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    sput-object v0, Lcom/tencent/mna/b/b/b;->b:Ljava/lang/reflect/Field;

    .line 46
    sput-object v0, Lcom/tencent/mna/b/b/b;->c:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mna/b/b/b;->a:I

    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mna/b/b/b;->f:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mna/b/b/b;I)I
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/tencent/mna/b/b/b;->c(I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/tencent/mna/b/b/b;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/tencent/mna/b/b/b;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/Object;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 332
    sget-object v1, Lcom/tencent/mna/b/b/b;->b:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    .line 338
    :goto_0
    return v0

    .line 336
    :cond_0
    :try_start_0
    sget-object v1, Lcom/tencent/mna/b/b/b;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 337
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private b(II)I
    .locals 6

    .prologue
    const/16 v1, -0x69

    .line 343
    sget-object v0, Lcom/tencent/mna/b/b/b;->c:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    move v0, v1

    .line 349
    :goto_0
    return v0

    .line 347
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tencent/mna/b/b/b;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 348
    :catch_0
    move-exception v0

    move v0, v1

    .line 349
    goto :goto_0
.end method

.method private declared-synchronized c(I)I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 170
    monitor-enter p0

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mna/b/b/b;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v1

    .line 172
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 173
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 174
    invoke-direct {p0, v0, p1}, Lcom/tencent/mna/b/b/b;->b(II)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 175
    :goto_1
    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    .line 177
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :cond_0
    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    move v3, v0

    .line 180
    goto :goto_0

    :cond_1
    move v0, v2

    .line 174
    goto :goto_1

    :cond_2
    move v0, v2

    .line 179
    goto :goto_2

    .line 181
    :cond_3
    if-eqz v3, :cond_4

    :goto_3
    monitor-exit p0

    return v2

    :cond_4
    const/4 v2, -0x1

    goto :goto_3

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 241
    invoke-static {p1}, Lcom/tencent/mna/base/f/l;->a(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 266
    if-nez p1, :cond_0

    move v0, v2

    .line 321
    :goto_0
    return v0

    .line 269
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 272
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/mna/b/b/b;->e(Landroid/content/Context;)V

    .line 274
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 275
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v3, 0xc

    .line 276
    invoke-virtual {v1, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/4 v3, 0x0

    .line 277
    invoke-virtual {v1, v3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 278
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v3

    .line 279
    new-instance v1, Lcom/tencent/mna/b/b/b$1;

    invoke-direct {v1, p0}, Lcom/tencent/mna/b/b/b$1;-><init>(Lcom/tencent/mna/b/b/b;)V

    iput-object v1, p0, Lcom/tencent/mna/b/b/b;->e:Ljava/lang/Object;

    .line 302
    if-eqz v0, :cond_1

    .line 303
    const-string v1, "NetworkBinding callback register"

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 304
    iget-object v1, p0, Lcom/tencent/mna/b/b/b;->e:Ljava/lang/Object;

    check-cast v1, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v3, v1}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 306
    :goto_1
    add-int/lit8 v1, v0, 0x1

    const/16 v3, 0x19

    if-ge v0, v3, :cond_1

    .line 308
    const-wide/16 v4, 0xc8

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 312
    :goto_2
    :try_start_2
    iget v0, p0, Lcom/tencent/mna/b/b/b;->a:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v0, :cond_2

    .line 313
    const/4 v0, 0x1

    goto :goto_0

    .line 317
    :catch_0
    move-exception v0

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetworkBinding prepareNetwork exception:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    :cond_1
    move v0, v2

    .line 321
    goto :goto_0

    .line 309
    :catch_1
    move-exception v0

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private e(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 325
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 326
    invoke-direct {p0}, Lcom/tencent/mna/b/b/b;->f()I

    .line 327
    invoke-direct {p0, p1}, Lcom/tencent/mna/b/b/b;->f(Landroid/content/Context;)V

    .line 329
    :cond_0
    return-void
.end method

.method private f()I
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/mna/b/b/b;->c(I)I

    move-result v0

    return v0
.end method

.method private f(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 354
    if-nez p1, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 359
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 360
    iget-object v1, p0, Lcom/tencent/mna/b/b/b;->e:Ljava/lang/Object;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 361
    iget-object v1, p0, Lcom/tencent/mna/b/b/b;->e:Ljava/lang/Object;

    check-cast v1, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 362
    const-string v0, "NetworkBinding callback unregistered"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    :cond_2
    iput-object v3, p0, Lcom/tencent/mna/b/b/b;->e:Ljava/lang/Object;

    goto :goto_0

    .line 364
    :catch_0
    move-exception v0

    .line 365
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkBinding unregisterNetworkCallback exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    iput-object v3, p0, Lcom/tencent/mna/b/b/b;->e:Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v3, p0, Lcom/tencent/mna/b/b/b;->e:Ljava/lang/Object;

    throw v0
.end method

.method private g()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 245
    sget-object v2, Lcom/tencent/mna/b/b/b;->b:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/tencent/mna/b/b/b;->c:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 262
    :goto_0
    return v0

    .line 248
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 250
    :try_start_0
    const-class v2, Landroid/net/Network;

    const-string v3, "netId"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/tencent/mna/b/b/b;->b:Ljava/lang/reflect/Field;

    .line 251
    sget-object v2, Lcom/tencent/mna/b/b/b;->b:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 254
    const-string v2, "android.net.NetworkUtils"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 255
    const-string v3, "bindSocketToNetwork"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/tencent/mna/b/b/b;->c:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetworkBinding reflect exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    :cond_1
    move v0, v1

    .line 262
    goto :goto_0
.end method


# virtual methods
.method public a(I)I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/tencent/mna/b/b/b;->a:I

    invoke-virtual {p0, p1, v0}, Lcom/tencent/mna/b/b/b;->a(II)I

    move-result v0

    return v0
.end method

.method public a(II)I
    .locals 4

    .prologue
    .line 143
    iget-object v0, p0, Lcom/tencent/mna/b/b/b;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mna/b/b/b;->f:Ljava/util/Map;

    .line 144
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p2, :cond_1

    .line 145
    const/4 v0, 0x0

    .line 151
    :cond_0
    :goto_0
    return v0

    .line 147
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/tencent/mna/b/b/b;->b(II)I

    move-result v0

    .line 148
    if-nez v0, :cond_0

    .line 149
    iget-object v1, p0, Lcom/tencent/mna/b/b/b;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/tencent/mna/b/b/b;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    const/16 v0, -0x66

    .line 111
    :goto_0
    return v0

    .line 102
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 103
    const/16 v0, -0x67

    goto :goto_0

    .line 105
    :cond_1
    invoke-direct {p0}, Lcom/tencent/mna/b/b/b;->g()Z

    move-result v0

    if-nez v0, :cond_2

    .line 106
    const/16 v0, -0x69

    goto :goto_0

    .line 108
    :cond_2
    invoke-direct {p0, p1}, Lcom/tencent/mna/b/b/b;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 109
    const/16 v0, -0x68

    goto :goto_0

    .line 111
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Z)I
    .locals 4

    .prologue
    .line 76
    const/16 v0, 0xbb8

    invoke-static {v0}, Lcom/tencent/mna/base/jni/e;->c(I)I

    move-result v2

    .line 77
    if-nez v2, :cond_0

    .line 79
    const/16 v0, -0x6a

    .line 95
    :goto_0
    return v0

    .line 81
    :cond_0
    iget v0, p0, Lcom/tencent/mna/b/b/b;->a:I

    invoke-virtual {p0, v2, v0}, Lcom/tencent/mna/b/b/b;->a(II)I

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    invoke-static {v2}, Lcom/tencent/mna/base/jni/e;->d(I)V

    .line 83
    const/16 v0, -0x6b

    goto :goto_0

    .line 86
    :cond_1
    new-instance v0, Lcom/tencent/mna/b/b/a;

    invoke-direct {v0}, Lcom/tencent/mna/b/b/a;-><init>()V

    iput-object v0, p0, Lcom/tencent/mna/b/b/b;->d:Lcom/tencent/mna/b/b/a;

    .line 87
    iget-object v0, p0, Lcom/tencent/mna/b/b/b;->d:Lcom/tencent/mna/b/b/a;

    iget v1, p0, Lcom/tencent/mna/b/b/b;->a:I

    invoke-virtual {v0, p1, v2, v1}, Lcom/tencent/mna/b/b/a;->a(Landroid/content/Context;II)I

    move-result v1

    .line 89
    if-eqz p2, :cond_2

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/tencent/mna/b/b/b;->d:Lcom/tencent/mna/b/b/a;

    iget-object v0, v0, Lcom/tencent/mna/b/b/a;->m:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mna/b/b/b;->d:Lcom/tencent/mna/b/b/a;

    iget-object v0, v0, Lcom/tencent/mna/b/b/a;->m:Ljava/util/List;

    .line 90
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/tencent/mna/b/b/b;->d:Lcom/tencent/mna/b/b/a;

    iget-object v0, v0, Lcom/tencent/mna/b/b/a;->m:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mna/base/jni/e;->h(Ljava/lang/String;)V

    .line 93
    :cond_2
    invoke-virtual {p0, v2}, Lcom/tencent/mna/b/b/b;->b(I)I

    .line 94
    invoke-static {v2}, Lcom/tencent/mna/base/jni/e;->d(I)V

    move v0, v1

    .line 95
    goto :goto_0
.end method

.method public a(Landroid/content/Context;ZZZ)I
    .locals 1

    .prologue
    .line 58
    if-eqz p2, :cond_1

    .line 59
    const/16 v0, -0x6e

    .line 71
    :cond_0
    :goto_0
    return v0

    .line 62
    :cond_1
    if-eqz p3, :cond_2

    .line 63
    const/16 v0, -0x65

    goto :goto_0

    .line 67
    :cond_2
    invoke-virtual {p0, p1}, Lcom/tencent/mna/b/b/b;->a(Landroid/content/Context;)I

    move-result v0

    .line 68
    if-nez v0, :cond_0

    .line 71
    invoke-virtual {p0, p1, p4}, Lcom/tencent/mna/b/b/b;->a(Landroid/content/Context;Z)I

    move-result v0

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/tencent/mna/b/b/b;->d:Lcom/tencent/mna/b/b/a;

    iget-object v0, v0, Lcom/tencent/mna/b/b/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/tencent/mna/b/b/b;->d:Lcom/tencent/mna/b/b/a;

    iget v0, v0, Lcom/tencent/mna/b/b/a;->g:I

    return v0
.end method

.method public b(I)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 159
    iget-object v1, p0, Lcom/tencent/mna/b/b/b;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v0

    .line 162
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/tencent/mna/b/b/b;->b(II)I

    move-result v0

    .line 163
    if-nez v0, :cond_0

    .line 164
    iget-object v1, p0, Lcom/tencent/mna/b/b/b;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mna/b/b/b;->a:I

    .line 138
    invoke-direct {p0, p1}, Lcom/tencent/mna/b/b/b;->e(Landroid/content/Context;)V

    .line 139
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/tencent/mna/b/b/b;->d:Lcom/tencent/mna/b/b/a;

    iget-object v0, v0, Lcom/tencent/mna/b/b/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/tencent/mna/b/b/b;->d:Lcom/tencent/mna/b/b/a;

    iget v0, v0, Lcom/tencent/mna/b/b/a;->k:I

    return v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/tencent/mna/b/b/b;->d:Lcom/tencent/mna/b/b/a;

    iget-object v0, v0, Lcom/tencent/mna/b/b/a;->m:Ljava/util/List;

    return-object v0
.end method
