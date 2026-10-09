.class public Lcom/tencent/mna/b/a/a/c;
.super Ljava/lang/Object;
.source "ScheduledWorkerTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field private b:Lcom/tencent/mna/b/a/d;

.field private c:Lcom/tencent/mna/base/c/a;

.field private d:Lcom/tencent/mna/b/a/a/a;

.field private e:Lcom/tencent/mna/b/a/c/f;

.field private f:Lcom/tencent/mna/b/a/c/b;

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/tencent/mna/b/a/a/c;->a:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/mna/b/a/d;Lcom/tencent/mna/base/c/a;)V
    .locals 4

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mna/b/a/a/c;->g:I

    .line 42
    const/16 v0, -0x2710

    iput v0, p0, Lcom/tencent/mna/b/a/a/c;->h:I

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mna/b/a/a/c;->i:I

    .line 51
    iput-object p1, p0, Lcom/tencent/mna/b/a/a/c;->b:Lcom/tencent/mna/b/a/d;

    .line 52
    iput-object p2, p0, Lcom/tencent/mna/b/a/a/c;->c:Lcom/tencent/mna/base/c/a;

    .line 53
    new-instance v0, Lcom/tencent/mna/b/a/a/b;

    invoke-static {}, Lcom/tencent/mna/base/a/a;->h()I

    move-result v1

    invoke-static {}, Lcom/tencent/mna/base/a/a;->g()I

    move-result v2

    .line 54
    invoke-static {}, Lcom/tencent/mna/base/a/a;->i()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mna/b/a/a/b;-><init>(III)V

    iput-object v0, p0, Lcom/tencent/mna/b/a/a/c;->d:Lcom/tencent/mna/b/a/a/a;

    .line 55
    iget-object v0, p0, Lcom/tencent/mna/b/a/a/c;->c:Lcom/tencent/mna/base/c/a;

    invoke-virtual {v0}, Lcom/tencent/mna/base/c/a;->b()Lcom/tencent/mna/b/a/c/f;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mna/b/a/a/c;->e:Lcom/tencent/mna/b/a/c/f;

    .line 56
    iget-object v0, p0, Lcom/tencent/mna/b/a/a/c;->c:Lcom/tencent/mna/base/c/a;

    invoke-virtual {v0}, Lcom/tencent/mna/base/c/a;->c()Lcom/tencent/mna/b/a/c/b;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mna/b/a/a/c;->f:Lcom/tencent/mna/b/a/c/b;

    .line 57
    return-void
.end method

.method private a(ZII)I
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 243
    .line 245
    sget-object v2, Lcom/tencent/mna/b/a/d$b;->c:Lcom/tencent/mna/b/a/d$b;

    .line 246
    if-eqz p1, :cond_0

    .line 247
    sget-object v2, Lcom/tencent/mna/b/a/d$b;->b:Lcom/tencent/mna/b/a/d$b;

    move v3, p2

    move v4, v0

    .line 253
    :goto_0
    iget-object v0, p0, Lcom/tencent/mna/b/a/a/c;->b:Lcom/tencent/mna/b/a/d;

    iget-object v1, p0, Lcom/tencent/mna/b/a/a/c;->c:Lcom/tencent/mna/base/c/a;

    iget v6, p0, Lcom/tencent/mna/b/a/a/c;->h:I

    iget v7, p0, Lcom/tencent/mna/b/a/a/c;->i:I

    move v5, p3

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/mna/b/a/d;->a(Lcom/tencent/mna/base/c/a;Lcom/tencent/mna/b/a/d$b;IIIII)I

    move-result v0

    .line 256
    invoke-static {}, Lcom/tencent/mna/base/f/i;->a()I

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/tencent/mna/b/a/g;->a(IILcom/tencent/mna/b/a/d$b;)V

    .line 257
    return v0

    :cond_0
    move v3, v0

    move v4, p2

    .line 250
    goto :goto_0
.end method

.method private a()V
    .locals 11

    .prologue
    const/4 v7, 0x3

    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 261
    iget-object v0, p0, Lcom/tencent/mna/b/a/a/c;->f:Lcom/tencent/mna/b/a/c/b;

    if-nez v0, :cond_1

    .line 263
    const-string v0, "recordCpuMemGpu: sCpuMemGpusInfo is null"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->d(Ljava/lang/String;)V

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    invoke-static {}, Lcom/tencent/mna/base/a/a;->E()I

    move-result v0

    if-eqz v0, :cond_2

    .line 270
    iget-object v0, p0, Lcom/tencent/mna/b/a/a/c;->f:Lcom/tencent/mna/b/a/c/b;

    invoke-virtual {v0}, Lcom/tencent/mna/b/a/c/b;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 272
    invoke-static {}, Lcom/tencent/mna/base/f/m;->a()[J

    move-result-object v1

    .line 273
    invoke-static {}, Lcom/tencent/mna/base/f/m;->b()[J

    move-result-object v0

    move-object v9, v0

    move-object v4, v1

    .line 280
    :goto_1
    if-eqz v4, :cond_5

    array-length v0, v4

    if-lt v0, v7, :cond_5

    if-eqz v9, :cond_5

    array-length v0, v9

    if-lt v0, v7, :cond_5

    .line 281
    iget-object v0, p0, Lcom/tencent/mna/b/a/a/c;->f:Lcom/tencent/mna/b/a/c/b;

    aget-wide v2, v4, v6

    long-to-int v1, v2

    aget-wide v2, v4, v8

    aget-wide v4, v4, v10

    aget-wide v6, v9, v6

    long-to-int v6, v6

    aget-wide v7, v9, v8

    aget-wide v9, v9, v10

    invoke-virtual/range {v0 .. v10}, Lcom/tencent/mna/b/a/c/b;->a(IJJIJJ)V

    .line 288
    :cond_2
    :goto_2
    invoke-static {}, Lcom/tencent/mna/base/a/a;->F()I

    move-result v0

    if-eqz v0, :cond_3

    .line 289
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v0

    .line 290
    invoke-static {v0}, Lcom/tencent/mna/base/f/m;->a(Landroid/content/Context;)I

    move-result v1

    .line 291
    invoke-static {v0}, Lcom/tencent/mna/base/f/m;->b(Landroid/content/Context;)I

    move-result v0

    .line 293
    iget-object v2, p0, Lcom/tencent/mna/b/a/a/c;->f:Lcom/tencent/mna/b/a/c/b;

    invoke-virtual {v2, v1, v0}, Lcom/tencent/mna/b/a/c/b;->a(II)V

    .line 296
    :cond_3
    invoke-static {}, Lcom/tencent/mna/base/a/a;->G()I

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    invoke-static {}, Lcom/tencent/mna/base/f/m;->c()I

    move-result v0

    .line 299
    iget-object v1, p0, Lcom/tencent/mna/b/a/a/c;->f:Lcom/tencent/mna/b/a/c/b;

    invoke-virtual {v1, v0}, Lcom/tencent/mna/b/a/c/b;->a(I)V

    goto :goto_0

    .line 276
    :cond_4
    iget-object v0, p0, Lcom/tencent/mna/b/a/a/c;->f:Lcom/tencent/mna/b/a/c/b;

    iget-wide v0, v0, Lcom/tencent/mna/b/a/c/b;->a:J

    iget-object v2, p0, Lcom/tencent/mna/b/a/a/c;->f:Lcom/tencent/mna/b/a/c/b;

    iget-wide v2, v2, Lcom/tencent/mna/b/a/c/b;->b:J

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mna/base/f/m;->a(JJ)[J

    move-result-object v1

    .line 277
    iget-object v0, p0, Lcom/tencent/mna/b/a/a/c;->f:Lcom/tencent/mna/b/a/c/b;

    iget-wide v2, v0, Lcom/tencent/mna/b/a/c/b;->c:J

    iget-object v0, p0, Lcom/tencent/mna/b/a/a/c;->f:Lcom/tencent/mna/b/a/c/b;

    iget-wide v4, v0, Lcom/tencent/mna/b/a/c/b;->d:J

    invoke-static {v2, v3, v4, v5}, Lcom/tencent/mna/base/f/m;->b(JJ)[J

    move-result-object v0

    move-object v9, v0

    move-object v4, v1

    goto :goto_1

    .line 284
    :cond_5
    const-string v0, "recordCpuMemGpu: get cpu usage error"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->d(Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 62
    sget-object v0, Lcom/tencent/mna/b/a/a/c;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 64
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v2, "mna-scheduled-worker"

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/tencent/mna/b/a/b;->i()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 67
    iget-object v0, p0, Lcom/tencent/mna/b/a/a/c;->b:Lcom/tencent/mna/b/a/d;

    if-nez v0, :cond_0

    .line 69
    const-string v0, "Scheduled Work failed, testerFacade is null"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    sget-object v0, Lcom/tencent/mna/b/a/a/c;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 238
    :goto_0
    return-void

    .line 72
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/mna/base/a/a;->x()I

    move-result v0

    if-eq v0, v8, :cond_1

    .line 73
    invoke-static {}, Lcom/tencent/mna/base/a/a;->x()I

    move-result v0

    if-ne v0, v12, :cond_9

    :cond_1
    move v9, v8

    .line 75
    :goto_1
    invoke-static {}, Lcom/tencent/mna/base/a/a;->x()I

    move-result v0

    if-eq v0, v8, :cond_2

    .line 76
    invoke-static {}, Lcom/tencent/mna/base/a/a;->x()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_a

    :cond_2
    move v7, v8

    .line 80
    :goto_2
    invoke-static {}, Lcom/tencent/mna/b/a/b;->d()Z

    move-result v10

    .line 81
    if-eqz v10, :cond_c

    .line 83
    if-eqz v9, :cond_1b

    .line 84
    sget-boolean v0, Lcom/tencent/mna/a/b;->i:Z

    if-eqz v0, :cond_b

    .line 86
    iget-object v0, p0, Lcom/tencent/mna/b/a/a/c;->b:Lcom/tencent/mna/b/a/d;

    iget v2, p0, Lcom/tencent/mna/b/a/a/c;->h:I

    invoke-virtual {v0, v2}, Lcom/tencent/mna/b/a/d;->c(I)I

    move-result v0

    .line 90
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[N]\u8f6c\u53d1\u6d4b\u901f: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-static {v2}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 92
    invoke-static {v2}, Lcom/tencent/mna/base/f/h;->e(Ljava/lang/String;)V

    .line 97
    :goto_4
    if-eqz v7, :cond_1a

    sget-boolean v2, Lcom/tencent/mna/a/b;->i:Z

    if-nez v2, :cond_1a

    .line 98
    iget-object v2, p0, Lcom/tencent/mna/b/a/a/c;->b:Lcom/tencent/mna/b/a/d;

    invoke-virtual {v2}, Lcom/tencent/mna/b/a/d;->a()I

    move-result v2

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[N]\u76f4\u8fde\u6d4b\u901f: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-static {v3}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 101
    invoke-static {v3}, Lcom/tencent/mna/base/f/h;->e(Ljava/lang/String;)V

    .line 104
    :goto_5
    iget-object v3, p0, Lcom/tencent/mna/b/a/a/c;->e:Lcom/tencent/mna/b/a/c/f;

    if-eqz v3, :cond_3

    .line 105
    iget-object v3, p0, Lcom/tencent/mna/b/a/a/c;->e:Lcom/tencent/mna/b/a/c/f;

    invoke-virtual {v3, v0, v2}, Lcom/tencent/mna/b/a/c/f;->a(II)V

    :cond_3
    move v6, v0

    .line 126
    :goto_6
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v2

    .line 127
    invoke-static {v2}, Lcom/tencent/mna/base/f/l;->a(Landroid/content/Context;)I

    move-result v3

    .line 129
    iget v0, p0, Lcom/tencent/mna/b/a/a/c;->h:I

    const/16 v4, -0x2710

    if-eq v0, v4, :cond_18

    iget-object v0, p0, Lcom/tencent/mna/b/a/a/c;->d:Lcom/tencent/mna/b/a/a/a;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/tencent/mna/b/a/a/c;->d:Lcom/tencent/mna/b/a/a/a;

    iget v4, p0, Lcom/tencent/mna/b/a/a/c;->h:I

    .line 130
    invoke-interface {v0, v6, v4}, Lcom/tencent/mna/b/a/a/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 131
    invoke-direct {p0, v10, v6, v3}, Lcom/tencent/mna/b/a/a/c;->a(ZII)I

    move-result v0

    .line 134
    :goto_7
    iput v6, p0, Lcom/tencent/mna/b/a/a/c;->h:I

    .line 135
    iput v3, p0, Lcom/tencent/mna/b/a/a/c;->i:I

    .line 137
    invoke-static {}, Lcom/tencent/mna/b/a/b;->m()Lcom/tencent/mna/b/b/b;

    move-result-object v4

    .line 139
    invoke-static {}, Lcom/tencent/mna/base/a/a;->aD()Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v4, :cond_5

    .line 140
    invoke-static {}, Lcom/tencent/mna/base/a/a;->as()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    iget v3, p0, Lcom/tencent/mna/b/a/a/c;->g:I

    .line 141
    invoke-static {}, Lcom/tencent/mna/base/a/a;->aw()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 143
    invoke-static {}, Lcom/tencent/mna/b/a/b;->j()I

    move-result v11

    .line 149
    if-ne v11, v8, :cond_f

    .line 151
    invoke-static {v2}, Lcom/tencent/mna/base/f/r;->a(Landroid/content/Context;)I

    move-result v5

    .line 152
    invoke-static {}, Lcom/tencent/mna/base/a/a;->ay()I

    move-result v4

    .line 153
    invoke-static {}, Lcom/tencent/mna/base/a/a;->ax()I

    move-result v3

    .line 154
    invoke-static {}, Lcom/tencent/mna/base/a/a;->az()I

    move-result v2

    .line 162
    :goto_8
    if-le v6, v3, :cond_5

    if-le v5, v4, :cond_5

    .line 163
    if-gtz v0, :cond_4

    .line 164
    if-eqz v10, :cond_11

    .line 165
    if-eqz v9, :cond_10

    iget-object v0, p0, Lcom/tencent/mna/b/a/a/c;->b:Lcom/tencent/mna/b/a/d;

    invoke-virtual {v0}, Lcom/tencent/mna/b/a/d;->b()I

    move-result v0

    .line 170
    :cond_4
    :goto_9
    if-le v0, v3, :cond_5

    .line 171
    if-eqz v10, :cond_14

    .line 172
    if-eqz v9, :cond_13

    iget-object v0, p0, Lcom/tencent/mna/b/a/a/c;->b:Lcom/tencent/mna/b/a/d;

    invoke-virtual {v0}, Lcom/tencent/mna/b/a/d;->f()I

    move-result v0

    .line 176
    :goto_a
    if-lez v0, :cond_5

    if-gt v0, v2, :cond_5

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 179
    if-ne v11, v8, :cond_16

    .line 181
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/mna/b/a/b;->c(Z)I

    move-result v0

    .line 182
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[N]\u7f51\u7edc\u7ed1\u5b9a\u5230Wifi, \u7ed3\u679c\u4e3a: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 189
    :goto_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, -0x1

    .line 192
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, -0x1

    .line 193
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 194
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    iget-object v0, p0, Lcom/tencent/mna/b/a/a/c;->c:Lcom/tencent/mna/base/c/a;

    sget-object v2, Lcom/tencent/mna/base/c/a$a;->ap:Lcom/tencent/mna/base/c/a$a;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mna/base/c/a;->a(Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/c/a;

    .line 203
    :cond_5
    if-eqz v10, :cond_7

    invoke-static {}, Lcom/tencent/mna/base/a/a;->s()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 204
    invoke-static {}, Lcom/tencent/mna/base/a/a;->t()I

    move-result v0

    if-le v6, v0, :cond_7

    if-eqz v9, :cond_7

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    :goto_c
    if-ge v1, v12, :cond_6

    .line 211
    iget-object v2, p0, Lcom/tencent/mna/b/a/a/c;->b:Lcom/tencent/mna/b/a/d;

    invoke-virtual {v2}, Lcom/tencent/mna/b/a/d;->b()I

    move-result v2

    .line 212
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    invoke-static {}, Lcom/tencent/mna/base/a/a;->t()I

    move-result v3

    if-gt v2, v3, :cond_17

    .line 219
    :cond_6
    if-ne v1, v12, :cond_7

    .line 220
    const/4 v1, 0x3

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[N]\u8f6c\u53d1\u4e2d\u65ad\uff0c\u539f\u56e0\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u6b21\u8f6c\u53d1\u65f6\u5ef6\u5747\u5927\u4e8e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mna/base/a/a;->t()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\uff0c\u5373("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 222
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 223
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/mna/b/a/b;->a(Z)V

    .line 228
    :cond_7
    invoke-direct {p0}, Lcom/tencent/mna/b/a/a/c;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    :cond_8
    sget-object v0, Lcom/tencent/mna/b/a/a/c;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    :cond_9
    move v9, v1

    .line 73
    goto/16 :goto_1

    :cond_a
    move v7, v1

    .line 76
    goto/16 :goto_2

    .line 88
    :cond_b
    :try_start_2
    iget-object v0, p0, Lcom/tencent/mna/b/a/a/c;->b:Lcom/tencent/mna/b/a/d;

    invoke-virtual {v0}, Lcom/tencent/mna/b/a/d;->b()I

    move-result v0

    goto/16 :goto_3

    .line 109
    :cond_c
    if-eqz v7, :cond_19

    .line 110
    sget-boolean v0, Lcom/tencent/mna/a/b;->i:Z

    if-eqz v0, :cond_e

    .line 112
    iget-object v0, p0, Lcom/tencent/mna/b/a/a/c;->b:Lcom/tencent/mna/b/a/d;

    iget v2, p0, Lcom/tencent/mna/b/a/a/c;->h:I

    invoke-virtual {v0, v2}, Lcom/tencent/mna/b/a/d;->b(I)I

    move-result v0

    .line 116
    :goto_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[N]\u76f4\u8fde\u6d4b\u901f: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-static {v2}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 118
    invoke-static {v2}, Lcom/tencent/mna/base/f/h;->e(Ljava/lang/String;)V

    .line 120
    :goto_e
    iget-object v2, p0, Lcom/tencent/mna/b/a/a/c;->e:Lcom/tencent/mna/b/a/c/f;

    if-eqz v2, :cond_d

    .line 121
    iget-object v2, p0, Lcom/tencent/mna/b/a/a/c;->e:Lcom/tencent/mna/b/a/c/f;

    invoke-virtual {v2, v0}, Lcom/tencent/mna/b/a/c/f;->a(I)V

    :cond_d
    move v6, v0

    goto/16 :goto_6

    .line 114
    :cond_e
    iget-object v0, p0, Lcom/tencent/mna/b/a/a/c;->b:Lcom/tencent/mna/b/a/d;

    invoke-virtual {v0}, Lcom/tencent/mna/b/a/d;->a()I

    move-result v0

    goto :goto_d

    .line 157
    :cond_f
    invoke-static {}, Lcom/tencent/mna/base/f/i;->a()I

    move-result v5

    .line 158
    invoke-static {}, Lcom/tencent/mna/base/a/a;->au()I

    move-result v4

    .line 159
    invoke-static {}, Lcom/tencent/mna/base/a/a;->at()I

    move-result v3

    .line 160
    invoke-static {}, Lcom/tencent/mna/base/a/a;->av()I

    move-result v2

    goto/16 :goto_8

    :cond_10
    move v0, v1

    .line 165
    goto/16 :goto_9

    .line 167
    :cond_11
    if-eqz v7, :cond_12

    iget-object v0, p0, Lcom/tencent/mna/b/a/a/c;->b:Lcom/tencent/mna/b/a/d;

    invoke-virtual {v0}, Lcom/tencent/mna/b/a/d;->a()I

    move-result v0

    goto/16 :goto_9

    :cond_12
    move v0, v1

    goto/16 :goto_9

    :cond_13
    move v0, v1

    .line 172
    goto/16 :goto_a

    .line 174
    :cond_14
    if-eqz v7, :cond_15

    iget-object v0, p0, Lcom/tencent/mna/b/a/a/c;->b:Lcom/tencent/mna/b/a/d;

    invoke-virtual {v0}, Lcom/tencent/mna/b/a/d;->e()I

    move-result v0

    goto/16 :goto_a

    :cond_15
    move v0, v1

    goto/16 :goto_a

    .line 184
    :cond_16
    iget v0, p0, Lcom/tencent/mna/b/a/a/c;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mna/b/a/a/c;->g:I

    .line 186
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/mna/b/a/b;->c(Z)I

    move-result v0

    .line 187
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[N]\u7f51\u7edc\u7ed1\u5b9a\u52304G, \u7ed3\u679c\u4e3a: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_b

    .line 231
    :catch_0
    move-exception v0

    .line 232
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScheduledWorker exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 236
    sget-object v0, Lcom/tencent/mna/b/a/a/c;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 216
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_c

    .line 233
    :catch_1
    move-exception v0

    .line 234
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScheduledWorker throwable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 236
    sget-object v0, Lcom/tencent/mna/b/a/a/c;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/tencent/mna/b/a/a/c;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_18
    move v0, v1

    goto/16 :goto_7

    :cond_19
    move v0, v1

    goto/16 :goto_e

    :cond_1a
    move v2, v1

    goto/16 :goto_5

    :cond_1b
    move v0, v1

    goto/16 :goto_4
.end method
