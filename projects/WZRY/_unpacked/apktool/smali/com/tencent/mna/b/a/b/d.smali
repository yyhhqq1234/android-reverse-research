.class public Lcom/tencent/mna/b/a/b/d;
.super Ljava/lang/Object;
.source "LRSpeedComparator.java"

# interfaces
.implements Lcom/tencent/mna/b/a/b/b;


# instance fields
.field private a:Lcom/tencent/mna/b/a/d;

.field private b:Lcom/tencent/mna/base/c/a;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/tencent/mna/b/a/d;Lcom/tencent/mna/base/c/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/tencent/mna/b/a/b/d;->a:Lcom/tencent/mna/b/a/d;

    .line 34
    iput-object p2, p0, Lcom/tencent/mna/b/a/b/d;->b:Lcom/tencent/mna/base/c/a;

    .line 35
    iput-object p3, p0, Lcom/tencent/mna/b/a/b/d;->f:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/tencent/mna/b/a/b/d;->c:Ljava/lang/String;

    .line 37
    iput-object p5, p0, Lcom/tencent/mna/b/a/b/d;->e:Ljava/lang/String;

    .line 38
    iput-object p6, p0, Lcom/tencent/mna/b/a/b/d;->d:Ljava/lang/String;

    .line 39
    iput-boolean p7, p0, Lcom/tencent/mna/b/a/b/d;->g:Z

    .line 40
    return-void
.end method

.method private a(ILjava/lang/String;Lcom/tencent/mna/b/a/b/f$a;)V
    .locals 6

    .prologue
    .line 140
    sget-object v0, Lcom/tencent/mna/base/c/c;->c:Lcom/tencent/mna/base/c/c;

    invoke-static {v0}, Lcom/tencent/mna/base/c/f;->a(Lcom/tencent/mna/base/c/c;)Lcom/tencent/mna/base/c/d;

    move-result-object v0

    .line 141
    const-string v1, "errno"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string v2, "errmsg"

    .line 142
    invoke-interface {v1, v2, p2}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string/jumbo v2, "xmlver"

    iget-object v3, p0, Lcom/tencent/mna/b/a/b/d;->f:Ljava/lang/String;

    .line 143
    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string v2, "openid"

    sget-object v3, Lcom/tencent/mna/a/b;->f:Ljava/lang/String;

    .line 144
    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string v2, "pvpid"

    sget-object v3, Lcom/tencent/mna/a/b;->a:Ljava/lang/String;

    .line 145
    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string v2, "origtime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/tencent/mna/b;->a:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 146
    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    .line 147
    if-eqz p3, :cond_0

    .line 148
    const-string v1, "params"

    iget-object v2, p3, Lcom/tencent/mna/b/a/b/f$a;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string v2, "iadirect"

    iget-object v3, p3, Lcom/tencent/mna/b/a/b/f$a;->c:Ljava/lang/String;

    .line 149
    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string v2, "iaforward"

    iget-object v3, p3, Lcom/tencent/mna/b/a/b/f$a;->d:Ljava/lang/String;

    .line 150
    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string v2, "sProbMin"

    iget-object v3, p3, Lcom/tencent/mna/b/a/b/f$a;->e:Ljava/lang/String;

    .line 151
    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string v2, "prob"

    iget-object v3, p3, Lcom/tencent/mna/b/a/b/f$a;->f:Ljava/lang/String;

    .line 152
    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    .line 154
    :cond_0
    invoke-interface {v0}, Lcom/tencent/mna/base/c/d;->g()V

    .line 155
    return-void
.end method

.method private b(ILjava/lang/String;Lcom/tencent/mna/b/a/b/f$a;)V
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/tencent/mna/b/a/b/d;->b:Lcom/tencent/mna/base/c/a;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/tencent/mna/b/a/b/d;->b:Lcom/tencent/mna/base/c/a;

    sget-object v1, Lcom/tencent/mna/base/c/a$a;->G:Lcom/tencent/mna/base/c/a$a;

    iget-object v2, p0, Lcom/tencent/mna/b/a/b/d;->f:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mna/base/c/a;->a(Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/c/a;

    .line 160
    iget-object v0, p0, Lcom/tencent/mna/b/a/b/d;->b:Lcom/tencent/mna/base/c/a;

    sget-object v1, Lcom/tencent/mna/base/c/a$a;->H:Lcom/tencent/mna/base/c/a$a;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mna/base/c/a;->a(Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/c/a;

    .line 161
    iget-object v0, p0, Lcom/tencent/mna/b/a/b/d;->b:Lcom/tencent/mna/base/c/a;

    sget-object v1, Lcom/tencent/mna/base/c/a$a;->I:Lcom/tencent/mna/base/c/a$a;

    invoke-virtual {v0, v1, p2}, Lcom/tencent/mna/base/c/a;->a(Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/c/a;

    .line 162
    iget-object v1, p0, Lcom/tencent/mna/b/a/b/d;->b:Lcom/tencent/mna/base/c/a;

    sget-object v2, Lcom/tencent/mna/base/c/a$a;->J:Lcom/tencent/mna/base/c/a$a;

    if-eqz p3, :cond_1

    iget-object v0, p3, Lcom/tencent/mna/b/a/b/f$a;->f:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/tencent/mna/base/c/a;->a(Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/c/a;

    .line 164
    :cond_0
    return-void

    .line 162
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/tencent/mna/b/a/c/c;Lcom/tencent/mna/b/a/c/c;)I
    .locals 29

    .prologue
    .line 47
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 48
    :cond_0
    const-string v4, "compare input is null"

    invoke-static {v4}, Lcom/tencent/mna/base/f/h;->d(Ljava/lang/String;)V

    .line 49
    const/4 v4, 0x0

    .line 136
    :goto_0
    return v4

    .line 51
    :cond_1
    const/16 v28, 0x0

    .line 52
    const-string v27, ""

    .line 53
    const/16 v26, 0x0

    .line 56
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mna/b/a/b/d;->f:Ljava/lang/String;

    sget-object v5, Lcom/tencent/mna/a/b;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/mna/b/a/b/d;->f:Ljava/lang/String;

    .line 57
    invoke-static {v5, v6}, Lcom/tencent/mna/base/a/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 56
    invoke-static {v4, v5}, Lcom/tencent/mna/base/a/e;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 58
    if-nez v4, :cond_7

    .line 59
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v6

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 63
    invoke-static {}, Lcom/tencent/mna/base/f/n;->a()Ljava/lang/String;

    move-result-object v20

    .line 64
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Android "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/tencent/mna/base/f/n;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 65
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "level "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/tencent/mna/base/f/n;->c()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 67
    const/4 v9, 0x0

    .line 68
    const/4 v10, 0x0

    .line 69
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/mna/b/a/b/d;->a:Lcom/tencent/mna/b/a/d;

    if-eqz v7, :cond_2

    .line 70
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/mna/b/a/b/d;->a:Lcom/tencent/mna/b/a/d;

    invoke-virtual {v7}, Lcom/tencent/mna/b/a/d;->d()I

    move-result v10

    .line 74
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/tencent/mna/b/a/b/d;->g:Z

    if-eqz v7, :cond_4

    .line 75
    const/4 v8, 0x4

    .line 76
    invoke-static {v6}, Lcom/tencent/mna/base/f/r;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    .line 78
    invoke-static {v6}, Lcom/tencent/mna/base/f/r;->e(Landroid/content/Context;)I

    move-result v7

    int-to-float v12, v7

    .line 79
    invoke-static {v6}, Lcom/tencent/mna/base/f/r;->a(Landroid/content/Context;)I

    move-result v13

    .line 80
    invoke-static {v6}, Lcom/tencent/mna/base/f/r;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const-string v11, "_"

    invoke-virtual {v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 81
    const/4 v11, 0x0

    aget-object v11, v7, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 82
    const/4 v11, 0x1

    aget-object v11, v7, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 83
    const/4 v11, 0x2

    aget-object v11, v7, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 84
    const/4 v11, 0x3

    aget-object v7, v7, v11

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 85
    const/16 v18, 0x0

    .line 87
    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/tencent/mna/base/f/r;->a(Landroid/content/Context;I)I

    move-result v11

    .line 90
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/mna/b/a/c/c;->g()Ljava/util/Vector;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/tencent/mna/b/a/c/c;->g()Ljava/util/Vector;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mna/b/a/b/d;->c:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mna/b/a/b/d;->e:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mna/b/a/b/d;->d:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 89
    invoke-static/range {v4 .. v25}, Lcom/tencent/mna/b/a/b/f;->a(JLjava/util/Vector;Ljava/util/Vector;IIIIFIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/b/a/b/f$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 110
    :goto_1
    :try_start_1
    iget-wide v8, v5, Lcom/tencent/mna/b/a/b/f$a;->a:D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 111
    const-wide/16 v6, 0x0

    cmpg-double v4, v8, v6

    if-ltz v4, :cond_3

    const-wide v6, 0x3ff000010c6f7a0bL    # 1.000001

    cmpl-double v4, v8, v6

    if-lez v4, :cond_5

    .line 112
    :cond_3
    const/4 v6, -0x3

    .line 113
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "predict "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v4

    .line 132
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4, v5}, Lcom/tencent/mna/b/a/b/d;->a(ILjava/lang/String;Lcom/tencent/mna/b/a/b/f$a;)V

    .line 133
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4, v5}, Lcom/tencent/mna/b/a/b/d;->b(ILjava/lang/String;Lcom/tencent/mna/b/a/b/f$a;)V

    .line 135
    :goto_2
    const-string v4, "LRSpeedComparator return 0"

    invoke-static {v4}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 136
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 97
    :cond_4
    const/4 v8, 0x3

    .line 98
    :try_start_3
    invoke-static {v6}, Lcom/tencent/mna/base/f/i;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 99
    invoke-static {}, Lcom/tencent/mna/base/f/i;->a()I

    move-result v12

    .line 100
    const/4 v11, 0x0

    .line 103
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/mna/b/a/c/c;->g()Ljava/util/Vector;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/tencent/mna/b/a/c/c;->g()Ljava/util/Vector;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mna/b/a/b/d;->c:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mna/b/a/b/d;->e:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mna/b/a/b/d;->d:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v14, v20

    move-object/from16 v15, v21

    move-object/from16 v16, v22

    .line 102
    invoke-static/range {v4 .. v19}, Lcom/tencent/mna/b/a/b/f;->a(JLjava/util/Vector;Ljava/util/Vector;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/b/a/b/f$a;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    goto :goto_1

    .line 114
    :cond_5
    :try_start_4
    invoke-static {}, Lcom/tencent/mna/base/a/a;->P()D

    move-result-wide v6

    cmpl-double v4, v8, v6

    if-lez v4, :cond_6

    .line 115
    const-string v4, "LRSpeedComparator return 1, forward is better"

    invoke-static {v4}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 116
    const/4 v4, 0x1

    .line 132
    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2, v5}, Lcom/tencent/mna/b/a/b/d;->a(ILjava/lang/String;Lcom/tencent/mna/b/a/b/f$a;)V

    .line 133
    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2, v5}, Lcom/tencent/mna/b/a/b/d;->b(ILjava/lang/String;Lcom/tencent/mna/b/a/b/f$a;)V

    goto/16 :goto_0

    .line 118
    :cond_6
    :try_start_5
    const-string v4, "LRSpeedComparator return -1, direct is better"

    invoke-static {v4}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 119
    const/4 v4, -0x1

    .line 132
    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2, v5}, Lcom/tencent/mna/b/a/b/d;->a(ILjava/lang/String;Lcom/tencent/mna/b/a/b/f$a;)V

    .line 133
    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2, v5}, Lcom/tencent/mna/b/a/b/d;->b(ILjava/lang/String;Lcom/tencent/mna/b/a/b/f$a;)V

    goto/16 :goto_0

    .line 122
    :cond_7
    const/4 v5, -0x2

    .line 123
    :try_start_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateConfig "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result-object v6

    .line 125
    :try_start_7
    const-string v4, "LRSpeedComparator return 0, direct is better"

    invoke-static {v4}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 126
    const/4 v4, 0x0

    .line 132
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v5, v6, v1}, Lcom/tencent/mna/b/a/b/d;->a(ILjava/lang/String;Lcom/tencent/mna/b/a/b/f$a;)V

    .line 133
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v5, v6, v1}, Lcom/tencent/mna/b/a/b/d;->b(ILjava/lang/String;Lcom/tencent/mna/b/a/b/f$a;)V

    goto/16 :goto_0

    .line 128
    :catch_0
    move-exception v4

    move-object/from16 v5, v26

    move-object/from16 v6, v27

    .line 129
    :goto_3
    const/4 v7, -0x4

    .line 130
    :try_start_8
    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-result-object v4

    .line 132
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v4, v5}, Lcom/tencent/mna/b/a/b/d;->a(ILjava/lang/String;Lcom/tencent/mna/b/a/b/f$a;)V

    .line 133
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v4, v5}, Lcom/tencent/mna/b/a/b/d;->b(ILjava/lang/String;Lcom/tencent/mna/b/a/b/f$a;)V

    goto/16 :goto_2

    .line 132
    :catchall_0
    move-exception v4

    move/from16 v7, v28

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    invoke-direct {v0, v7, v1, v2}, Lcom/tencent/mna/b/a/b/d;->a(ILjava/lang/String;Lcom/tencent/mna/b/a/b/f$a;)V

    .line 133
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    invoke-direct {v0, v7, v1, v2}, Lcom/tencent/mna/b/a/b/d;->b(ILjava/lang/String;Lcom/tencent/mna/b/a/b/f$a;)V

    throw v4

    .line 132
    :catchall_1
    move-exception v4

    move-object/from16 v26, v5

    move/from16 v7, v28

    goto :goto_4

    :catchall_2
    move-exception v4

    move-object/from16 v26, v5

    move v7, v6

    goto :goto_4

    :catchall_3
    move-exception v4

    move v7, v5

    goto :goto_4

    :catchall_4
    move-exception v4

    move-object/from16 v27, v6

    move v7, v5

    goto :goto_4

    :catchall_5
    move-exception v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    goto :goto_4

    .line 128
    :catch_1
    move-exception v4

    move-object/from16 v6, v27

    goto :goto_3

    :catch_2
    move-exception v4

    move-object/from16 v5, v26

    goto :goto_3
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 22
    check-cast p1, Lcom/tencent/mna/b/a/c/c;

    check-cast p2, Lcom/tencent/mna/b/a/c/c;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/mna/b/a/b/d;->a(Lcom/tencent/mna/b/a/c/c;Lcom/tencent/mna/b/a/c/c;)I

    move-result v0

    return v0
.end method
