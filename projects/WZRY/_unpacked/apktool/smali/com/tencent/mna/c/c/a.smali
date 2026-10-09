.class public Lcom/tencent/mna/c/c/a;
.super Ljava/lang/Object;
.source "InoAccelerator.java"

# interfaces
.implements Lcom/tencent/mna/b/a/f;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Lcom/tencent/mna/b/a/c/a;

.field private i:Lcom/tencent/mna/b/a/h;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "0.0.0.0"

    iput-object v0, p0, Lcom/tencent/mna/c/c/a;->a:Ljava/lang/String;

    .line 27
    iput v1, p0, Lcom/tencent/mna/c/c/a;->b:I

    .line 28
    const-string v0, "0.0.0.0"

    iput-object v0, p0, Lcom/tencent/mna/c/c/a;->c:Ljava/lang/String;

    .line 29
    iput v1, p0, Lcom/tencent/mna/c/c/a;->d:I

    .line 30
    const-string v0, "0.0.0.0"

    iput-object v0, p0, Lcom/tencent/mna/c/c/a;->e:Ljava/lang/String;

    .line 31
    const-string v0, "0.0.0.0"

    iput-object v0, p0, Lcom/tencent/mna/c/c/a;->f:Ljava/lang/String;

    .line 32
    iput v1, p0, Lcom/tencent/mna/c/c/a;->g:I

    .line 34
    new-instance v0, Lcom/tencent/mna/b/a/c/a;

    invoke-direct {v0}, Lcom/tencent/mna/b/a/c/a;-><init>()V

    iput-object v0, p0, Lcom/tencent/mna/c/c/a;->h:Lcom/tencent/mna/b/a/c/a;

    .line 149
    new-instance v0, Lcom/tencent/mna/c/c/a$1;

    invoke-direct {v0, p0}, Lcom/tencent/mna/c/c/a$1;-><init>(Lcom/tencent/mna/c/c/a;)V

    iput-object v0, p0, Lcom/tencent/mna/c/c/a;->i:Lcom/tencent/mna/b/a/h;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mna/c/c/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tencent/mna/c/c/a;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 101
    invoke-static {}, Lcom/tencent/mna/base/jni/c;->h()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;I)I
    .locals 8

    .prologue
    .line 42
    invoke-static {}, Lcom/tencent/mna/base/a/a;->am()Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-static {}, Lcom/tencent/mna/base/a/a;->ap()I

    move-result v2

    .line 44
    invoke-static {}, Lcom/tencent/mna/base/a/a;->an()Ljava/lang/String;

    move-result-object v3

    .line 45
    invoke-static {}, Lcom/tencent/mna/base/a/a;->aq()I

    move-result v4

    .line 46
    invoke-static {}, Lcom/tencent/mna/base/a/a;->e()Ljava/lang/String;

    move-result-object v6

    .line 47
    invoke-static {}, Lcom/tencent/mna/base/a/a;->f()I

    move-result v7

    .line 48
    invoke-static {}, Lcom/tencent/mna/base/a/a;->ao()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    .line 50
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/mna/c/c/a;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)I

    move-result v5

    .line 51
    new-instance v0, Lcom/tencent/mna/b/a/c/a;

    const-string v1, "0.0.0.0"

    const-string v2, "0.0.0.0"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tencent/mna/c/c/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mna/c/c/a;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mna/c/c/a;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mna/c/c/a;->f:Ljava/lang/String;

    const-string v6, ""

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mna/b/a/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mna/c/c/a;->h:Lcom/tencent/mna/b/a/c/a;

    .line 57
    sget-object v0, Lcom/tencent/mna/a/a;->a:Ljava/util/Locale;

    const-string v1, "[N]Ino\u8c03\u5ea6\u534f\u5546\u9519\u8bef\u7801:%d, proxyIp1:[%s], proxyIp2:[%s], proxyIp3:[%s]"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/mna/c/c/a;->h:Lcom/tencent/mna/b/a/c/a;

    iget v4, v4, Lcom/tencent/mna/b/a/c/a;->f:I

    .line 59
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/tencent/mna/c/c/a;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/tencent/mna/c/c/a;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/tencent/mna/c/c/a;->e:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 57
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 63
    return v5
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)I
    .locals 11

    .prologue
    .line 68
    const v1, 0xfded

    .line 69
    iput-object p1, p0, Lcom/tencent/mna/c/c/a;->a:Ljava/lang/String;

    .line 70
    iput p2, p0, Lcom/tencent/mna/c/c/a;->b:I

    .line 71
    iput-object p3, p0, Lcom/tencent/mna/c/c/a;->c:Ljava/lang/String;

    .line 72
    iput p4, p0, Lcom/tencent/mna/c/c/a;->d:I

    .line 73
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/tencent/mna/c/c/a;->e:Ljava/lang/String;

    .line 74
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/tencent/mna/c/c/a;->f:Ljava/lang/String;

    .line 75
    move/from16 v0, p7

    iput v0, p0, Lcom/tencent/mna/c/c/a;->g:I

    .line 77
    if-lez p2, :cond_3

    invoke-static {p1}, Lcom/tencent/mna/base/f/f;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    move v10, v2

    .line 78
    :goto_0
    if-lez p7, :cond_4

    invoke-static/range {p6 .. p6}, Lcom/tencent/mna/base/f/f;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    move v9, v2

    .line 80
    :goto_1
    if-nez v10, :cond_0

    if-eqz v9, :cond_1

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/tencent/mna/c/c/a;->a:Ljava/lang/String;

    iget v2, p0, Lcom/tencent/mna/c/c/a;->b:I

    iget-object v3, p0, Lcom/tencent/mna/c/c/a;->c:Ljava/lang/String;

    iget v4, p0, Lcom/tencent/mna/c/c/a;->d:I

    iget-object v5, p0, Lcom/tencent/mna/c/c/a;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/mna/c/c/a;->f:Ljava/lang/String;

    iget v7, p0, Lcom/tencent/mna/c/c/a;->g:I

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/tencent/mna/base/jni/c;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I

    move-result v1

    .line 85
    :cond_1
    if-nez v10, :cond_2

    .line 86
    if-eqz v9, :cond_5

    const v1, 0xfde9

    .line 88
    :cond_2
    :goto_2
    return v1

    .line 77
    :cond_3
    const/4 v2, 0x0

    move v10, v2

    goto :goto_0

    .line 78
    :cond_4
    const/4 v2, 0x0

    move v9, v2

    goto :goto_1

    .line 86
    :cond_5
    const v1, 0xfdea

    goto :goto_2
.end method

.method public b()Lcom/tencent/mna/b/a/e;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 106
    new-instance v0, Lcom/tencent/mna/b/a/e;

    invoke-direct {v0}, Lcom/tencent/mna/b/a/e;-><init>()V

    .line 107
    invoke-static {}, Lcom/tencent/mna/base/jni/c;->a()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/mna/b/a/e;->a:J

    .line 108
    invoke-static {}, Lcom/tencent/mna/base/jni/c;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/mna/b/a/e;->b:J

    .line 110
    invoke-static {}, Lcom/tencent/mna/base/jni/c;->c()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/mna/b/a/e;->c:J

    .line 111
    invoke-static {}, Lcom/tencent/mna/base/jni/c;->d()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/mna/b/a/e;->d:J

    .line 113
    invoke-static {}, Lcom/tencent/mna/base/jni/c;->e()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/mna/b/a/e;->e:J

    .line 114
    invoke-static {}, Lcom/tencent/mna/base/jni/c;->f()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/mna/b/a/e;->f:J

    .line 115
    invoke-static {}, Lcom/tencent/mna/base/jni/c;->g()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/mna/b/a/e;->g:J

    .line 116
    iget-wide v2, v0, Lcom/tencent/mna/b/a/e;->a:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, v0, Lcom/tencent/mna/b/a/e;->b:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, v0, Lcom/tencent/mna/b/a/e;->c:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, v0, Lcom/tencent/mna/b/a/e;->d:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, v0, Lcom/tencent/mna/b/a/e;->e:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, v0, Lcom/tencent/mna/b/a/e;->f:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, v0, Lcom/tencent/mna/b/a/e;->g:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 119
    :cond_0
    const/4 v0, 0x0

    .line 121
    :cond_1
    return-object v0
.end method

.method public c()Lcom/tencent/mna/b/a/h;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/tencent/mna/c/c/a;->i:Lcom/tencent/mna/b/a/h;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/tencent/mna/c/c/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/tencent/mna/c/c/a;->b:I

    return v0
.end method

.method public f()Lcom/tencent/mna/b/a/c/a;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/tencent/mna/c/c/a;->h:Lcom/tencent/mna/b/a/c/a;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    const-string v0, "InoAccelerator"

    return-object v0
.end method
