.class public Lcom/tencent/mna/base/d/b;
.super Ljava/lang/Object;
.source "LossRateCounter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mna/base/d/b$b;,
        Lcom/tencent/mna/base/d/b$c;,
        Lcom/tencent/mna/base/d/b$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/tencent/mna/base/d/b$c;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/tencent/mna/base/d/b$c;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Lcom/tencent/mna/base/d/b$b;

.field private static e:I

.field private static f:I

.field private static g:Ljava/lang/String;

.field private static h:I

.field private static i:I

.field private static j:I

.field private static k:I

.field private static l:I

.field private static m:Z

.field private static final n:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 24
    sput-object v0, Lcom/tencent/mna/base/d/b;->a:Ljava/util/Vector;

    .line 25
    sput-object v0, Lcom/tencent/mna/base/d/b;->b:Ljava/util/Vector;

    .line 26
    sput-object v0, Lcom/tencent/mna/base/d/b;->c:Ljava/util/Vector;

    .line 28
    sput-object v0, Lcom/tencent/mna/base/d/b;->d:Lcom/tencent/mna/base/d/b$b;

    .line 29
    sput v1, Lcom/tencent/mna/base/d/b;->e:I

    .line 40
    sput-boolean v1, Lcom/tencent/mna/base/d/b;->m:Z

    .line 42
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/tencent/mna/base/d/b;->n:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public static a()I
    .locals 2

    .prologue
    .line 196
    const/4 v0, 0x0

    .line 197
    sget-object v1, Lcom/tencent/mna/base/d/b;->b:Ljava/util/Vector;

    if-eqz v1, :cond_0

    .line 198
    sget-object v1, Lcom/tencent/mna/base/d/b;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 200
    :cond_0
    return v0
.end method

.method public static a(II)V
    .locals 8

    .prologue
    .line 160
    sget-boolean v0, Lcom/tencent/mna/base/d/b;->m:Z

    if-eqz v0, :cond_0

    .line 161
    sget-object v6, Lcom/tencent/mna/base/d/b;->c:Ljava/util/Vector;

    monitor-enter v6

    .line 162
    :try_start_0
    sget-object v7, Lcom/tencent/mna/base/d/b;->c:Ljava/util/Vector;

    new-instance v0, Lcom/tencent/mna/base/d/b$c;

    const/4 v1, 0x0

    const/4 v3, 0x0

    int-to-long v4, p1

    move v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mna/base/d/b$c;-><init>(IIIJ)V

    invoke-virtual {v7, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 163
    monitor-exit v6

    .line 165
    :cond_0
    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(IIIJ)V
    .locals 9

    .prologue
    .line 152
    sget v0, Lcom/tencent/mna/base/d/b;->f:I

    if-ne p0, v0, :cond_0

    .line 153
    sget-object v6, Lcom/tencent/mna/base/d/b;->a:Ljava/util/Vector;

    monitor-enter v6

    .line 154
    :try_start_0
    sget-object v7, Lcom/tencent/mna/base/d/b;->a:Ljava/util/Vector;

    new-instance v0, Lcom/tencent/mna/base/d/b$c;

    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/l;->a(Landroid/content/Context;)I

    move-result v1

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mna/base/d/b$c;-><init>(IIIJ)V

    invoke-virtual {v7, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 155
    monitor-exit v6

    .line 157
    :cond_0
    return-void

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(IIJ)V
    .locals 4

    .prologue
    .line 144
    sget v0, Lcom/tencent/mna/base/d/b;->f:I

    if-ne p0, v0, :cond_0

    .line 145
    sget-object v1, Lcom/tencent/mna/base/d/b;->b:Ljava/util/Vector;

    monitor-enter v1

    .line 146
    :try_start_0
    sget-object v0, Lcom/tencent/mna/base/d/b;->b:Ljava/util/Vector;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 147
    monitor-exit v1

    .line 149
    :cond_0
    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;IIIIIFIIIII)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 48
    sget-object v1, Lcom/tencent/mna/base/d/b;->n:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    const-string v1, "startUdpLoop get lock fail"

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 63
    :goto_0
    return v0

    .line 53
    :cond_0
    :try_start_0
    const-string v1, "startUdpLoop get lock success"

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 54
    invoke-static/range {p0 .. p13}, Lcom/tencent/mna/base/d/b;->b(Ljava/lang/String;ILjava/lang/String;IIIIIFIIIII)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 60
    sget-object v1, Lcom/tencent/mna/base/d/b;->n:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 61
    const-string v1, "startUdpLoop release lock"

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :catch_0
    move-exception v1

    .line 58
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    sget-object v1, Lcom/tencent/mna/base/d/b;->n:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 61
    const-string v1, "startUdpLoop release lock"

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/tencent/mna/base/d/b;->n:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 61
    const-string v1, "startUdpLoop release lock"

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    throw v0
.end method

.method public static b()I
    .locals 2

    .prologue
    .line 204
    const/4 v0, 0x0

    .line 205
    sget-object v1, Lcom/tencent/mna/base/d/b;->c:Ljava/util/Vector;

    if-eqz v1, :cond_0

    .line 206
    sget-object v1, Lcom/tencent/mna/base/d/b;->c:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 208
    :cond_0
    sget-object v1, Lcom/tencent/mna/base/d/b;->a:Ljava/util/Vector;

    if-eqz v1, :cond_1

    .line 209
    sget-object v1, Lcom/tencent/mna/base/d/b;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 211
    :cond_1
    return v0
.end method

.method private static b(Ljava/lang/String;ILjava/lang/String;IIIIIFIIIII)Z
    .locals 4

    .prologue
    .line 70
    const-string v0, "startUdpLoopInner"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 71
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/tencent/mna/base/d/b;->a:Ljava/util/Vector;

    .line 72
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/tencent/mna/base/d/b;->b:Ljava/util/Vector;

    .line 73
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/tencent/mna/base/d/b;->c:Ljava/util/Vector;

    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mna/base/d/b;->d:Lcom/tencent/mna/base/d/b$b;

    .line 75
    sput-object p2, Lcom/tencent/mna/base/d/b;->g:Ljava/lang/String;

    .line 76
    sput p3, Lcom/tencent/mna/base/d/b;->h:I

    .line 77
    sput p4, Lcom/tencent/mna/base/d/b;->e:I

    .line 78
    const/16 v0, 0x1f4

    invoke-static {v0}, Lcom/tencent/mna/base/jni/e;->b(I)I

    move-result v0

    sput v0, Lcom/tencent/mna/base/d/b;->f:I

    .line 79
    sput p9, Lcom/tencent/mna/base/d/b;->i:I

    .line 80
    sput p11, Lcom/tencent/mna/base/d/b;->j:I

    .line 81
    sput p12, Lcom/tencent/mna/base/d/b;->k:I

    .line 82
    sput p13, Lcom/tencent/mna/base/d/b;->l:I

    .line 84
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 86
    :try_start_0
    const-string v1, "pushTimes"

    invoke-virtual {v0, v1, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 87
    const-string v1, "pushLen"

    invoke-virtual {v0, v1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 88
    const-string v1, "pushInterval"

    float-to-double v2, p8

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 89
    const-string v1, "pushIsDouble"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 94
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u53cc\u53d1\u5305\u914d\u7f6econfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 96
    sget v1, Lcom/tencent/mna/base/d/b;->f:I

    invoke-static {p0}, Lcom/tencent/mna/base/f/f;->k(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, p1, v0}, Lcom/tencent/mna/base/jni/e;->a(I[BILjava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/tencent/mna/base/d/b;->m:Z

    .line 98
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 99
    const-string/jumbo v1, "\u542f\u52a8\u6536\u53d1\u5305"

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 100
    new-instance v1, Lcom/tencent/mna/base/d/b$1;

    invoke-direct {v1, p5, p6, p10}, Lcom/tencent/mna/base/d/b$1;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 112
    new-instance v1, Lcom/tencent/mna/base/d/b$2;

    invoke-direct {v1, p10}, Lcom/tencent/mna/base/d/b$2;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 125
    add-int/lit16 v1, p10, 0x3e8

    int-to-long v2, v1

    :try_start_1
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 126
    if-nez v1, :cond_0

    .line 128
    :try_start_2
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 140
    :cond_0
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 133
    :catch_0
    move-exception v1

    .line 135
    :try_start_3
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 136
    :catch_1
    move-exception v0

    goto :goto_1

    .line 129
    :catch_2
    move-exception v0

    goto :goto_1

    .line 90
    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method public static c()Lcom/tencent/mna/base/d/b$a;
    .locals 22

    .prologue
    .line 223
    new-instance v3, Lcom/tencent/mna/base/d/b$a;

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    const-wide/16 v8, -0x1

    invoke-direct/range {v3 .. v9}, Lcom/tencent/mna/base/d/b$a;-><init>(JJJ)V

    .line 225
    sget-object v2, Lcom/tencent/mna/base/d/b;->n:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v2

    if-nez v2, :cond_0

    .line 226
    const-string v2, "getDgnData get lock fail"

    invoke-static {v2}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 339
    :goto_0
    return-object v3

    .line 233
    :cond_0
    :try_start_0
    sget-object v2, Lcom/tencent/mna/base/d/b;->b:Ljava/util/Vector;

    if-eqz v2, :cond_e

    sget-object v2, Lcom/tencent/mna/base/d/b;->b:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_e

    sget-object v2, Lcom/tencent/mna/base/d/b;->a:Ljava/util/Vector;

    if-eqz v2, :cond_e

    .line 240
    sget-object v2, Lcom/tencent/mna/base/d/b;->b:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v13

    .line 241
    new-instance v14, Ljava/util/Vector;

    invoke-direct {v14}, Ljava/util/Vector;-><init>()V

    .line 244
    new-instance v15, Ljava/util/Vector;

    invoke-direct {v15}, Ljava/util/Vector;-><init>()V

    .line 246
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v13, :cond_1

    .line 247
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 246
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 250
    :cond_1
    const/4 v11, 0x0

    .line 251
    new-instance v16, Ljava/util/Vector;

    invoke-direct/range {v16 .. v16}, Ljava/util/Vector;-><init>()V

    .line 252
    sget-object v2, Lcom/tencent/mna/base/d/b;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v17

    .line 254
    const/4 v5, -0x1

    .line 255
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    const/4 v2, 0x0

    move v12, v2

    :goto_2
    move/from16 v0, v17

    if-ge v12, v0, :cond_4

    .line 258
    sget-object v2, Lcom/tencent/mna/base/d/b;->a:Ljava/util/Vector;

    invoke-virtual {v2, v12}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/mna/base/d/b$c;

    .line 259
    iget v4, v2, Lcom/tencent/mna/base/d/b$c;->b:I

    if-lt v4, v13, :cond_2

    move v2, v5

    move v4, v11

    .line 257
    :goto_3
    add-int/lit8 v6, v12, 0x1

    move v12, v6

    move v5, v2

    move v11, v4

    goto :goto_2

    .line 262
    :cond_2
    iget-wide v6, v2, Lcom/tencent/mna/base/d/b$c;->c:J

    sget-object v4, Lcom/tencent/mna/base/d/b;->b:Ljava/util/Vector;

    iget v8, v2, Lcom/tencent/mna/base/d/b$c;->b:I

    invoke-virtual {v4, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-int v7, v6

    .line 263
    const/16 v4, 0x1f4

    if-le v7, v4, :cond_3

    .line 264
    add-int/lit16 v10, v5, 0x1f4

    .line 265
    const-string v4, "500,"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    :goto_4
    new-instance v4, Lcom/tencent/mna/base/d/b$c;

    iget v5, v2, Lcom/tencent/mna/base/d/b$c;->a:I

    iget v6, v2, Lcom/tencent/mna/base/d/b$c;->b:I

    iget v8, v2, Lcom/tencent/mna/base/d/b$c;->d:I

    int-to-long v8, v8

    invoke-direct/range {v4 .. v9}, Lcom/tencent/mna/base/d/b$c;-><init>(IIIJ)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 272
    iget v4, v2, Lcom/tencent/mna/base/d/b$c;->b:I

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v15, v4, v5}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 274
    iget v2, v2, Lcom/tencent/mna/base/d/b$c;->d:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_13

    .line 275
    add-int/lit8 v4, v11, 0x1

    move v2, v10

    goto :goto_3

    .line 267
    :cond_3
    add-int v10, v5, v7

    .line 268
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 333
    :catch_0
    move-exception v2

    .line 334
    :try_start_1
    new-instance v3, Lcom/tencent/mna/base/d/b$a;

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    const-wide/16 v8, -0x1

    invoke-direct/range {v3 .. v9}, Lcom/tencent/mna/base/d/b$a;-><init>(JJJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    sget-object v2, Lcom/tencent/mna/base/d/b;->n:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 279
    :cond_4
    const/4 v2, 0x0

    move v4, v2

    :goto_5
    if-ge v4, v13, :cond_6

    .line 280
    :try_start_2
    invoke-virtual {v15, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    .line 281
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_5
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_5

    .line 283
    :cond_6
    if-lez v13, :cond_7

    invoke-virtual {v14}, Ljava/util/Vector;->size()I

    move-result v2

    int-to-double v6, v2

    int-to-double v8, v13

    div-double/2addr v6, v8

    .line 285
    :cond_7
    sget v7, Lcom/tencent/mna/base/d/b;->i:I

    const/4 v6, 0x0

    .line 286
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 287
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 288
    const/4 v2, 0x0

    :goto_6
    if-ge v2, v7, :cond_8

    .line 289
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 288
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 291
    :cond_8
    sget-object v2, Lcom/tencent/mna/base/d/b;->c:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/mna/base/d/b$c;

    .line 292
    iget v4, v2, Lcom/tencent/mna/base/d/b$c;->d:I

    const/4 v11, 0x6

    if-ne v4, v11, :cond_12

    iget v4, v2, Lcom/tencent/mna/base/d/b$c;->b:I

    invoke-virtual {v9, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_12

    .line 293
    add-int/lit8 v4, v6, 0x1

    .line 295
    :goto_8
    iget v2, v2, Lcom/tencent/mna/base/d/b$c;->b:I

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v9, v2, v6}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v6, v4

    .line 296
    goto :goto_7

    .line 298
    :cond_9
    const/4 v2, 0x0

    move v4, v2

    :goto_9
    if-ge v4, v7, :cond_b

    .line 299
    invoke-virtual {v9, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_a

    .line 300
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 301
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v6, 0x2c

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 298
    :cond_a
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_9

    .line 305
    :cond_b
    const/4 v6, 0x0

    .line 306
    invoke-virtual/range {v16 .. v16}, Ljava/util/Vector;->size()I

    move-result v9

    .line 307
    const/4 v2, 0x1

    move v7, v2

    :goto_a
    if-ge v7, v9, :cond_c

    .line 308
    add-int/lit8 v2, v7, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/mna/base/d/b$c;

    .line 309
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/mna/base/d/b$c;

    .line 310
    iget v10, v4, Lcom/tencent/mna/base/d/b$c;->b:I

    iget v11, v2, Lcom/tencent/mna/base/d/b$c;->b:I

    add-int/lit8 v11, v11, 0x1

    if-ne v10, v11, :cond_11

    .line 311
    iget-wide v10, v4, Lcom/tencent/mna/base/d/b$c;->c:J

    sget v12, Lcom/tencent/mna/base/d/b;->k:I

    int-to-long v0, v12

    move-wide/from16 v20, v0

    cmp-long v10, v10, v20

    if-lez v10, :cond_11

    iget-wide v10, v2, Lcom/tencent/mna/base/d/b$c;->c:J

    sget v12, Lcom/tencent/mna/base/d/b;->j:I

    int-to-long v0, v12

    move-wide/from16 v20, v0

    cmp-long v10, v10, v20

    if-gez v10, :cond_11

    iget-wide v10, v4, Lcom/tencent/mna/base/d/b$c;->c:J

    iget-wide v0, v2, Lcom/tencent/mna/base/d/b$c;->c:J

    move-wide/from16 v20, v0

    sub-long v10, v10, v20

    sget v2, Lcom/tencent/mna/base/d/b;->l:I

    int-to-long v0, v2

    move-wide/from16 v20, v0

    cmp-long v2, v10, v20

    if-lez v2, :cond_11

    .line 312
    add-int/lit8 v2, v6, 0x1

    .line 307
    :goto_b
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    move v6, v2

    goto :goto_a

    .line 317
    :cond_c
    invoke-virtual {v14}, Ljava/util/Vector;->size()I

    move-result v2

    int-to-long v10, v2

    iput-wide v10, v3, Lcom/tencent/mna/base/d/b$a;->a:J

    .line 318
    int-to-long v6, v6

    iput-wide v6, v3, Lcom/tencent/mna/base/d/b$a;->b:J

    .line 319
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v2

    int-to-long v6, v2

    iput-wide v6, v3, Lcom/tencent/mna/base/d/b$a;->c:J

    .line 320
    sget-boolean v2, Lcom/tencent/mna/base/d/b;->m:Z

    if-nez v2, :cond_d

    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "neg fail, set push 0, orig:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v6, v3, Lcom/tencent/mna/base/d/b$a;->c:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 322
    const-wide/16 v6, 0x0

    iput-wide v6, v3, Lcom/tencent/mna/base/d/b$a;->c:J

    .line 324
    :cond_d
    sget-object v2, Lcom/tencent/mna/base/d/b;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_10

    .line 326
    if-lez v13, :cond_f

    int-to-long v4, v5

    const-wide/16 v6, 0x1f4

    iget-wide v8, v3, Lcom/tencent/mna/base/d/b$a;->a:J

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    int-to-long v6, v13

    div-long/2addr v4, v6

    long-to-int v2, v4

    :goto_c
    iput v2, v3, Lcom/tencent/mna/base/d/b$a;->d:I

    .line 330
    :goto_d
    const-string v2, ";"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/tencent/mna/base/d/b$a;->e:Ljava/lang/String;

    .line 331
    const-string v2, ";"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/tencent/mna/base/d/b$a;->f:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 336
    :cond_e
    sget-object v2, Lcom/tencent/mna/base/d/b;->n:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 326
    :cond_f
    const/4 v2, -0x1

    goto :goto_c

    .line 328
    :cond_10
    const/16 v2, 0x1f5

    :try_start_3
    iput v2, v3, Lcom/tencent/mna/base/d/b$a;->d:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_d

    .line 336
    :catchall_0
    move-exception v2

    sget-object v3, Lcom/tencent/mna/base/d/b;->n:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    :cond_11
    move v2, v6

    goto :goto_b

    :cond_12
    move v4, v6

    goto/16 :goto_8

    :cond_13
    move v2, v10

    move v4, v11

    goto/16 :goto_3
.end method

.method static synthetic d()I
    .locals 1

    .prologue
    .line 22
    sget v0, Lcom/tencent/mna/base/d/b;->f:I

    return v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/tencent/mna/base/d/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f()I
    .locals 1

    .prologue
    .line 22
    sget v0, Lcom/tencent/mna/base/d/b;->h:I

    return v0
.end method

.method static synthetic g()I
    .locals 1

    .prologue
    .line 22
    sget v0, Lcom/tencent/mna/base/d/b;->e:I

    return v0
.end method
