.class public Lcom/tencent/mna/b/f/a;
.super Ljava/lang/Object;
.source "QosHelper.java"


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Lcom/tencent/mna/b/f/d$c;

.field private static l:Lcom/tencent/mna/b/f/d$d;

.field private static m:Lcom/tencent/mna/b/f/d$e;

.field private static volatile n:Z

.field private static volatile o:Z

.field private static p:Z

.field private static q:Lcom/tencent/mna/b/f/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 22
    const-string v0, "http://qos.game.qq.com:8080/qos/register/?version=100"

    sput-object v0, Lcom/tencent/mna/b/f/a;->i:Ljava/lang/String;

    .line 24
    sput-object v1, Lcom/tencent/mna/b/f/a;->k:Lcom/tencent/mna/b/f/d$c;

    .line 25
    sput-object v1, Lcom/tencent/mna/b/f/a;->l:Lcom/tencent/mna/b/f/d$d;

    .line 26
    sput-object v1, Lcom/tencent/mna/b/f/a;->m:Lcom/tencent/mna/b/f/d$e;

    .line 27
    sput-boolean v2, Lcom/tencent/mna/b/f/a;->n:Z

    .line 28
    sput-boolean v2, Lcom/tencent/mna/b/f/a;->o:Z

    .line 29
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/mna/b/f/a;->p:Z

    .line 30
    sput-object v1, Lcom/tencent/mna/b/f/a;->q:Lcom/tencent/mna/b/f/c;

    .line 46
    sput v2, Lcom/tencent/mna/b/f/a;->a:I

    .line 49
    const/4 v0, -0x8

    sput v0, Lcom/tencent/mna/b/f/a;->b:I

    .line 53
    const/4 v0, 0x2

    sput v0, Lcom/tencent/mna/b/f/a;->c:I

    .line 59
    const-string v0, "-2"

    sput-object v0, Lcom/tencent/mna/b/f/a;->d:Ljava/lang/String;

    .line 62
    const-string v0, "-1"

    sput-object v0, Lcom/tencent/mna/b/f/a;->e:Ljava/lang/String;

    .line 63
    const-string v0, "0"

    sput-object v0, Lcom/tencent/mna/b/f/a;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mna/b/f/d$e;)Lcom/tencent/mna/b/f/d$e;
    .locals 0

    .prologue
    .line 18
    sput-object p0, Lcom/tencent/mna/b/f/a;->m:Lcom/tencent/mna/b/f/d$e;

    return-object p0
.end method

.method public static declared-synchronized a()V
    .locals 2

    .prologue
    .line 80
    const-class v1, Lcom/tencent/mna/b/f/a;

    monitor-enter v1

    const/4 v0, 0x2

    :try_start_0
    sput v0, Lcom/tencent/mna/b/f/a;->c:I

    .line 81
    const-string v0, "-2"

    sput-object v0, Lcom/tencent/mna/b/f/a;->d:Ljava/lang/String;

    .line 82
    const-string v0, "-1"

    sput-object v0, Lcom/tencent/mna/b/f/a;->e:Ljava/lang/String;

    .line 83
    const-string v0, "0"

    sput-object v0, Lcom/tencent/mna/b/f/a;->f:Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    sput v0, Lcom/tencent/mna/b/f/a;->a:I

    .line 85
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mna/b/f/a;->k:Lcom/tencent/mna/b/f/d$c;

    .line 86
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mna/b/f/a;->l:Lcom/tencent/mna/b/f/d$d;

    .line 87
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mna/b/f/a;->m:Lcom/tencent/mna/b/f/d$e;

    .line 88
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/mna/b/f/a;->p:Z

    .line 89
    const/4 v0, -0x8

    sput v0, Lcom/tencent/mna/b/f/a;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit v1

    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(IILjava/util/List;Lcom/tencent/mna/b/a/d$b;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/mna/b/a/d$b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 94
    const-class v1, Lcom/tencent/mna/b/f/a;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/tencent/mna/b/f/a;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 180
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 97
    :cond_1
    :try_start_1
    sget-boolean v0, Lcom/tencent/mna/b/f/a;->p:Z

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Lcom/tencent/mna/b/f/a;->m:Lcom/tencent/mna/b/f/d$e;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/mna/b/f/a;->m:Lcom/tencent/mna/b/f/d$e;

    iget v0, v0, Lcom/tencent/mna/b/f/d$e;->e:I

    int-to-long v2, v0

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v0, Lcom/tencent/mna/b/f/a;->m:Lcom/tencent/mna/b/f/d$e;

    iget-wide v6, v0, Lcom/tencent/mna/b/f/d$e;->f:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 104
    const-string v0, "session\u5b58\u5728\u4e14\u6ca1\u6709\u8d85\u65f6\uff0c\u4e0d\u518d\u91cd\u590d\u8bf7\u6c42\u4fdd\u969c"

    invoke-static {v0}, Lcom/tencent/mna/b/f/a;->c(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 109
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/l;->a(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    .line 110
    const-string/jumbo v0, "\u5f53\u524d\u7f51\u7edc\u4e0d\u4e3a4G\uff0c\u4e0d\u6ee1\u8db3\u4fdd\u969c\u6761\u4ef6"

    invoke-static {v0}, Lcom/tencent/mna/b/f/a;->c(Ljava/lang/String;)V

    .line 111
    const/4 v0, -0x1

    sput v0, Lcom/tencent/mna/b/f/a;->a:I

    .line 112
    const/4 v0, 0x0

    sput v0, Lcom/tencent/mna/b/f/a;->c:I

    .line 113
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/mna/b/f/a;->p:Z

    goto :goto_0

    .line 119
    :cond_3
    sget-object v0, Lcom/tencent/mna/b/f/a;->k:Lcom/tencent/mna/b/f/d$c;

    if-eqz v0, :cond_6

    .line 120
    sget-object v0, Lcom/tencent/mna/b/f/a;->k:Lcom/tencent/mna/b/f/d$c;

    iget v0, v0, Lcom/tencent/mna/b/f/d$c;->c:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    .line 121
    const/4 v0, -0x3

    sput v0, Lcom/tencent/mna/b/f/a;->a:I

    goto :goto_0

    .line 124
    :cond_4
    sget-object v0, Lcom/tencent/mna/b/f/a;->k:Lcom/tencent/mna/b/f/d$c;

    invoke-static {v0, p0, p1}, Lcom/tencent/mna/b/f/a;->b(Lcom/tencent/mna/b/f/d$c;II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 125
    const/4 v0, -0x2

    sput v0, Lcom/tencent/mna/b/f/a;->a:I

    goto :goto_0

    .line 128
    :cond_5
    sget-object v0, Lcom/tencent/mna/b/f/a;->k:Lcom/tencent/mna/b/f/d$c;

    iget v0, v0, Lcom/tencent/mna/b/f/d$c;->l:I

    if-lez v0, :cond_7

    .line 129
    sget-object v0, Lcom/tencent/mna/b/f/a;->k:Lcom/tencent/mna/b/f/d$c;

    iget v2, v0, Lcom/tencent/mna/b/f/d$c;->l:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/tencent/mna/b/f/d$c;->l:I

    .line 137
    :cond_6
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/tencent/mna/b/f/a$1;

    invoke-direct {v2, p0, p3, p1, p2}, Lcom/tencent/mna/b/f/a$1;-><init>(ILcom/tencent/mna/b/a/d$b;ILjava/util/List;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 179
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 131
    :cond_7
    const-string/jumbo v0, "\u53d1\u8d77\u4fdd\u969c\u6b21\u6570\u5927\u4e8e\u9608\u503c\uff0c\u4e0d\u518d\u8bf7\u6c42\u4fdd\u969c"

    invoke-static {v0}, Lcom/tencent/mna/b/f/a;->c(Ljava/lang/String;)V

    .line 132
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/mna/b/f/a;->p:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    sput-object p0, Lcom/tencent/mna/b/f/a;->j:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    sput-object p0, Lcom/tencent/mna/b/f/a;->g:Ljava/lang/String;

    .line 68
    sput-object p1, Lcom/tencent/mna/b/f/a;->h:Ljava/lang/String;

    .line 69
    return-void
.end method

.method static synthetic a(III)Z
    .locals 1

    .prologue
    .line 18
    invoke-static {p0, p1, p2}, Lcom/tencent/mna/b/f/a;->b(III)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/tencent/mna/b/f/d$c;II)Z
    .locals 1

    .prologue
    .line 18
    invoke-static {p0, p1, p2}, Lcom/tencent/mna/b/f/a;->b(Lcom/tencent/mna/b/f/d$c;II)Z

    move-result v0

    return v0
.end method

.method static a(Ljava/util/List;Z)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 301
    const-string v0, "\n\u542f\u52a8QOS\u4fdd\u969c..."

    invoke-static {v0}, Lcom/tencent/mna/b/f/a;->c(Ljava/lang/String;)V

    .line 303
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 305
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 306
    const/16 v2, 0x2c

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 308
    :cond_0
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 311
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[N]4G QOS vip: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 312
    sget-object v0, Lcom/tencent/mna/b/f/a;->l:Lcom/tencent/mna/b/f/d$d;

    if-nez v0, :cond_3

    const-string v6, ""

    .line 315
    :goto_1
    sget-object v0, Lcom/tencent/mna/b/f/a;->l:Lcom/tencent/mna/b/f/d$d;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/tencent/mna/b/f/a;->l:Lcom/tencent/mna/b/f/d$d;

    iget-object v0, v0, Lcom/tencent/mna/b/f/d$d;->d:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/tencent/mna/b/f/a;->l:Lcom/tencent/mna/b/f/d$d;

    iget-object v0, v0, Lcom/tencent/mna/b/f/d$d;->d:Ljava/lang/String;

    .line 316
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    sget-object v0, Lcom/tencent/mna/b/f/a;->l:Lcom/tencent/mna/b/f/d$d;

    iget-object v0, v0, Lcom/tencent/mna/b/f/d$d;->d:Ljava/lang/String;

    .line 317
    invoke-static {v0}, Lcom/tencent/mna/b/f/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 318
    sget-object v0, Lcom/tencent/mna/b/f/a;->l:Lcom/tencent/mna/b/f/d$d;

    iget-object v4, v0, Lcom/tencent/mna/b/f/d$d;->d:Ljava/lang/String;

    .line 323
    :goto_2
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_5

    .line 324
    :cond_2
    const-string/jumbo v0, "\u83b7\u53d6\u672c\u5730ip\u5931\u8d25"

    invoke-static {v0}, Lcom/tencent/mna/b/f/a;->c(Ljava/lang/String;)V

    .line 325
    const/4 v0, -0x6

    sput v0, Lcom/tencent/mna/b/f/a;->a:I

    move v0, v9

    .line 354
    :goto_3
    return v0

    .line 312
    :cond_3
    sget-object v0, Lcom/tencent/mna/b/f/a;->l:Lcom/tencent/mna/b/f/d$d;

    iget-object v6, v0, Lcom/tencent/mna/b/f/d$d;->c:Ljava/lang/String;

    goto :goto_1

    .line 320
    :cond_4
    invoke-static {}, Lcom/tencent/mna/b/f/b;->a()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 329
    :cond_5
    sput-object v4, Lcom/tencent/mna/b/f/a;->f:Ljava/lang/String;

    .line 331
    new-instance v0, Lcom/tencent/mna/b/f/d$b;

    sget-object v1, Lcom/tencent/mna/b/f/a;->g:Ljava/lang/String;

    sget-object v2, Lcom/tencent/mna/b/f/a;->h:Ljava/lang/String;

    sget-object v5, Lcom/tencent/mna/b/f/a;->j:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/tencent/mna/b/f/d$b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    sget-object v1, Lcom/tencent/mna/b/f/a;->i:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/mna/b/f/d$b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mna/b/f/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u8bf7\u6c42\u7ed3\u679cP\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/b/f/a;->c(Ljava/lang/String;)V

    .line 336
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/tencent/mna/b/f/d$e;->a(Lorg/json/JSONObject;)Lcom/tencent/mna/b/f/d$e;

    move-result-object v1

    sput-object v1, Lcom/tencent/mna/b/f/a;->m:Lcom/tencent/mna/b/f/d$e;

    .line 337
    sget-object v1, Lcom/tencent/mna/b/f/a;->m:Lcom/tencent/mna/b/f/d$e;

    iget v1, v1, Lcom/tencent/mna/b/f/d$e;->a:I

    if-nez v1, :cond_7

    .line 338
    const/4 v1, 0x1

    sput v1, Lcom/tencent/mna/b/f/a;->c:I

    .line 340
    if-eqz p1, :cond_6

    const/4 v3, 0x3

    :cond_6
    sput v3, Lcom/tencent/mna/b/f/a;->a:I

    .line 341
    sget-object v1, Lcom/tencent/mna/b/f/a;->m:Lcom/tencent/mna/b/f/d$e;

    iget-object v1, v1, Lcom/tencent/mna/b/f/d$e;->d:Ljava/lang/String;

    sput-object v1, Lcom/tencent/mna/b/f/a;->e:Ljava/lang/String;

    .line 342
    const-string/jumbo v1, "\u542f\u52a8QOS\u4fdd\u969c\u6210\u529f"

    invoke-static {v1}, Lcom/tencent/mna/b/f/a;->c(Ljava/lang/String;)V

    move v0, v8

    .line 343
    goto :goto_3

    .line 345
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u542f\u52a8QOS\u4fdd\u969c\u5931\u8d25 errno:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/mna/b/f/a;->m:Lcom/tencent/mna/b/f/d$e;

    iget v2, v2, Lcom/tencent/mna/b/f/d$e;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errmsg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/mna/b/f/a;->m:Lcom/tencent/mna/b/f/d$e;

    iget-object v2, v2, Lcom/tencent/mna/b/f/d$e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/b/f/a;->c(Ljava/lang/String;)V

    .line 346
    const/4 v1, -0x7

    sput v1, Lcom/tencent/mna/b/f/a;->a:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    move v0, v9

    .line 354
    goto/16 :goto_3

    .line 349
    :catch_0
    move-exception v1

    .line 350
    const/4 v1, -0x8

    sput v1, Lcom/tencent/mna/b/f/a;->a:I

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u8bf7\u6c42\u7ed3\u679c\u89e3\u6790\u4e3aJSON\u683c\u5f0f\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/b/f/a;->c(Ljava/lang/String;)V

    goto :goto_4
.end method

.method static synthetic a(Z)Z
    .locals 0

    .prologue
    .line 18
    sput-boolean p0, Lcom/tencent/mna/b/f/a;->n:Z

    return p0
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 199
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/mna/b/f/a$2;

    invoke-direct {v1}, Lcom/tencent/mna/b/f/a$2;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 233
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 234
    return-void
.end method

.method static synthetic b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    invoke-static {p0}, Lcom/tencent/mna/b/f/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method private static b(III)Z
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 238
    const-string v0, "\n\u5f00\u59cb\u8bf7\u6c42URL..."

    invoke-static {v0}, Lcom/tencent/mna/b/f/a;->c(Ljava/lang/String;)V

    .line 240
    new-instance v0, Lcom/tencent/mna/b/f/d$a;

    sget-object v1, Lcom/tencent/mna/b/f/a;->g:Ljava/lang/String;

    sget-object v2, Lcom/tencent/mna/b/f/a;->h:Ljava/lang/String;

    sget-object v4, Lcom/tencent/mna/b/f/a;->j:Ljava/lang/String;

    move v5, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/tencent/mna/b/f/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    .line 241
    sget-object v1, Lcom/tencent/mna/b/f/a;->i:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/mna/b/f/d$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mna/b/f/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u8bf7\u6c42\u7ed3\u679c\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/b/f/a;->c(Ljava/lang/String;)V

    .line 246
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/tencent/mna/b/f/d$c;->a(Lorg/json/JSONObject;)Lcom/tencent/mna/b/f/d$c;

    move-result-object v1

    sput-object v1, Lcom/tencent/mna/b/f/a;->k:Lcom/tencent/mna/b/f/d$c;

    .line 247
    sget-object v1, Lcom/tencent/mna/b/f/a;->k:Lcom/tencent/mna/b/f/d$c;

    iget v1, v1, Lcom/tencent/mna/b/f/d$c;->a:I

    if-eqz v1, :cond_1

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u8bf7\u6c42URL\u5931\u8d25\uff0cerrno: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/mna/b/f/a;->k:Lcom/tencent/mna/b/f/d$c;

    iget v2, v2, Lcom/tencent/mna/b/f/d$c;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errmsg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/mna/b/f/a;->k:Lcom/tencent/mna/b/f/d$c;

    iget-object v2, v2, Lcom/tencent/mna/b/f/d$c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/b/f/a;->c(Ljava/lang/String;)V

    .line 250
    const/4 v1, -0x4

    sput v1, Lcom/tencent/mna/b/f/a;->a:I

    move v3, v8

    .line 266
    :cond_0
    :goto_0
    return v3

    .line 253
    :cond_1
    sget-object v1, Lcom/tencent/mna/b/f/a;->k:Lcom/tencent/mna/b/f/d$c;

    iget v1, v1, Lcom/tencent/mna/b/f/d$c;->c:I

    if-eq v1, v3, :cond_0

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u8bf7\u6c42URL\u5931\u8d25\uff0c\u539f\u56e0\uff1a\u4e0d\u6ee1\u8db3\u4fdd\u969c\u6761\u4ef6\uff0cisQos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/mna/b/f/a;->k:Lcom/tencent/mna/b/f/d$c;

    iget v2, v2, Lcom/tencent/mna/b/f/d$c;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/b/f/a;->c(Ljava/lang/String;)V

    .line 255
    const/4 v1, -0x3

    sput v1, Lcom/tencent/mna/b/f/a;->a:I

    .line 256
    const/4 v1, 0x0

    sput v1, Lcom/tencent/mna/b/f/a;->c:I

    .line 257
    const-string v1, "-1"

    sput-object v1, Lcom/tencent/mna/b/f/a;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v8

    .line 258
    goto :goto_0

    .line 262
    :catch_0
    move-exception v1

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u8bf7\u6c42\u7ed3\u679c\u89e3\u6790\u4e3aJSON\u683c\u5f0f\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/b/f/a;->c(Ljava/lang/String;)V

    .line 264
    const/4 v0, -0x5

    sput v0, Lcom/tencent/mna/b/f/a;->a:I

    move v3, v8

    .line 266
    goto :goto_0
.end method

.method private static b(Lcom/tencent/mna/b/f/d$c;II)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 184
    sput p1, Lcom/tencent/mna/b/f/a;->b:I

    .line 185
    iget v2, p0, Lcom/tencent/mna/b/f/d$c;->h:I

    if-ne v2, v0, :cond_0

    const/4 v2, 0x4

    if-ge p2, v2, :cond_1

    .line 195
    :cond_0
    :goto_0
    return v1

    .line 190
    :cond_1
    iget v2, p0, Lcom/tencent/mna/b/f/d$c;->j:I

    if-lez v2, :cond_2

    iget v2, p0, Lcom/tencent/mna/b/f/d$c;->j:I

    iget v3, p0, Lcom/tencent/mna/b/f/d$c;->i:I

    if-gt v2, v3, :cond_4

    .line 192
    :cond_2
    iget v2, p0, Lcom/tencent/mna/b/f/d$c;->i:I

    if-ge p1, v2, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    .line 195
    :cond_4
    iget v2, p0, Lcom/tencent/mna/b/f/d$c;->i:I

    if-lt p1, v2, :cond_5

    iget v2, p0, Lcom/tencent/mna/b/f/d$c;->j:I

    if-le p1, v2, :cond_0

    :cond_5
    move v1, v0

    goto :goto_0
.end method

.method static synthetic b(Z)Z
    .locals 0

    .prologue
    .line 18
    sput-boolean p0, Lcom/tencent/mna/b/f/a;->o:Z

    return p0
.end method

.method private static c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "4G QOS:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 360
    sget-object v0, Lcom/tencent/mna/b/f/a;->q:Lcom/tencent/mna/b/f/c;

    if-eqz v0, :cond_0

    .line 361
    sget-object v0, Lcom/tencent/mna/b/f/a;->q:Lcom/tencent/mna/b/f/c;

    invoke-interface {v0, p0}, Lcom/tencent/mna/b/f/c;->a(Ljava/lang/String;)V

    .line 363
    :cond_0
    return-void
.end method

.method static synthetic c()Z
    .locals 1

    .prologue
    .line 18
    sget-boolean v0, Lcom/tencent/mna/b/f/a;->n:Z

    return v0
.end method

.method static synthetic d()Lcom/tencent/mna/b/f/d$c;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/tencent/mna/b/f/a;->k:Lcom/tencent/mna/b/f/d$c;

    return-object v0
.end method

.method static synthetic e()Z
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcom/tencent/mna/b/f/a;->l()Z

    move-result v0

    return v0
.end method

.method static synthetic f()Z
    .locals 1

    .prologue
    .line 18
    sget-boolean v0, Lcom/tencent/mna/b/f/a;->o:Z

    return v0
.end method

.method static synthetic g()Lcom/tencent/mna/b/f/d$e;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/tencent/mna/b/f/a;->m:Lcom/tencent/mna/b/f/d$e;

    return-object v0
.end method

.method static synthetic h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/tencent/mna/b/f/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/tencent/mna/b/f/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/tencent/mna/b/f/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/tencent/mna/b/f/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method private static l()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 271
    const-string v1, "\n\u8bf7\u6c42\u624b\u673a\u53f7\u7801..."

    invoke-static {v1}, Lcom/tencent/mna/b/f/a;->c(Ljava/lang/String;)V

    .line 273
    sget-object v1, Lcom/tencent/mna/b/f/a;->k:Lcom/tencent/mna/b/f/d$c;

    if-nez v1, :cond_0

    .line 274
    const-string v1, "\n\u8bf7\u6c42\u624b\u673a\u53f7\u7801\u5931\u8d25\uff0c\u65e0req1\u8fd4\u56de\u503c..."

    invoke-static {v1}, Lcom/tencent/mna/b/f/a;->c(Ljava/lang/String;)V

    .line 296
    :goto_0
    return v0

    .line 278
    :cond_0
    sget-object v1, Lcom/tencent/mna/b/f/a;->k:Lcom/tencent/mna/b/f/d$c;

    iget-object v1, v1, Lcom/tencent/mna/b/f/d$c;->e:Ljava/lang/String;

    .line 279
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 280
    :cond_1
    const-string/jumbo v1, "\u8bf7\u6c42\u624b\u673a\u53f7\u7801\u5931\u8d25\uff0curl\u4e3a\u7a7a..."

    invoke-static {v1}, Lcom/tencent/mna/b/f/a;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 283
    :cond_2
    invoke-static {v1}, Lcom/tencent/mna/b/f/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u8bf7\u6c42\u7ed3\u679cG\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/b/f/a;->c(Ljava/lang/String;)V

    .line 287
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/tencent/mna/b/f/d$d;->a(Lorg/json/JSONObject;)Lcom/tencent/mna/b/f/d$d;

    move-result-object v1

    sput-object v1, Lcom/tencent/mna/b/f/a;->l:Lcom/tencent/mna/b/f/d$d;

    .line 288
    sget-object v1, Lcom/tencent/mna/b/f/a;->l:Lcom/tencent/mna/b/f/d$d;

    iget-object v1, v1, Lcom/tencent/mna/b/f/d$d;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u8bf7\u6c42\u624b\u673a\u53f7\u7801\u6210\u529f, result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/mna/b/f/a;->l:Lcom/tencent/mna/b/f/d$d;

    iget-object v2, v2, Lcom/tencent/mna/b/f/d$d;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/b/f/a;->c(Ljava/lang/String;)V

    .line 296
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 291
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u8bf7\u6c42\u624b\u673a\u53f7\u7801\u5931\u8d25, error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/mna/b/f/a;->l:Lcom/tencent/mna/b/f/d$d;

    iget v2, v2, Lcom/tencent/mna/b/f/d$d;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errmsg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/mna/b/f/a;->l:Lcom/tencent/mna/b/f/d$d;

    iget-object v2, v2, Lcom/tencent/mna/b/f/d$d;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/b/f/a;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 293
    :catch_0
    move-exception v1

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u8bf7\u6c42\u7ed3\u679c\u89e3\u6790\u4e3aJSON\u683c\u5f0f\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/b/f/a;->c(Ljava/lang/String;)V

    goto :goto_1
.end method
