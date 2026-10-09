.class public Lcom/tencent/mna/c/b/a;
.super Ljava/lang/Object;
.source "DsAccelerator.java"

# interfaces
.implements Lcom/tencent/mna/b/a/f;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:I

.field private g:Lcom/tencent/mna/b/a/c/a;

.field private h:I

.field private i:I

.field private j:Lcom/tencent/mna/b/a/h;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "0.0.0.0"

    iput-object v0, p0, Lcom/tencent/mna/c/b/a;->a:Ljava/lang/String;

    .line 30
    iput v1, p0, Lcom/tencent/mna/c/b/a;->b:I

    .line 32
    const-string v0, "0.0.0.0"

    iput-object v0, p0, Lcom/tencent/mna/c/b/a;->c:Ljava/lang/String;

    .line 33
    iput v1, p0, Lcom/tencent/mna/c/b/a;->d:I

    .line 34
    iput v1, p0, Lcom/tencent/mna/c/b/a;->e:I

    .line 35
    iput v1, p0, Lcom/tencent/mna/c/b/a;->f:I

    .line 36
    new-instance v0, Lcom/tencent/mna/b/a/c/a;

    invoke-direct {v0}, Lcom/tencent/mna/b/a/c/a;-><init>()V

    iput-object v0, p0, Lcom/tencent/mna/c/b/a;->g:Lcom/tencent/mna/b/a/c/a;

    .line 37
    iput v1, p0, Lcom/tencent/mna/c/b/a;->h:I

    .line 38
    iput v1, p0, Lcom/tencent/mna/c/b/a;->i:I

    .line 189
    new-instance v0, Lcom/tencent/mna/c/b/a$1;

    invoke-direct {v0, p0}, Lcom/tencent/mna/c/b/a$1;-><init>(Lcom/tencent/mna/c/b/a;)V

    iput-object v0, p0, Lcom/tencent/mna/c/b/a;->j:Lcom/tencent/mna/b/a/h;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mna/c/b/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tencent/mna/c/b/a;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 141
    invoke-static {}, Lcom/tencent/mna/base/jni/b;->h()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;I)I
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 46
    invoke-static {}, Lcom/tencent/mna/base/a/a;->aS()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-static {}, Lcom/tencent/mna/base/a/a;->aT()I

    move-result v2

    .line 49
    invoke-static {}, Lcom/tencent/mna/base/a/a;->e()Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-static {}, Lcom/tencent/mna/base/a/a;->f()I

    move-result v4

    .line 53
    sget-object v0, Lcom/tencent/mna/a/b;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/mna/a/b;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 54
    sget-object v0, Lcom/tencent/mna/a/b;->f:Ljava/lang/String;

    .line 60
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    .line 61
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    .line 64
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mna/base/a/a;->aX()Z

    move-result v7

    invoke-static {v0, v7}, Lcom/tencent/mna/base/f/n;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    .line 66
    :goto_2
    invoke-static {}, Lcom/tencent/mna/base/a/a;->aR()I

    move-result v8

    move-object v0, p0

    .line 68
    invoke-virtual/range {v0 .. v9}, Lcom/tencent/mna/c/b/a;->a(Ljava/lang/String;ILjava/lang/String;IIIIIZ)I

    move-result v5

    .line 73
    new-instance v0, Lcom/tencent/mna/b/a/c/a;

    const-string v1, "0.0.0.0"

    const-string v2, "0.0.0.0"

    iget-object v3, p0, Lcom/tencent/mna/c/b/a;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/mna/c/b/a;->c:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mna/b/a/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mna/c/b/a;->g:Lcom/tencent/mna/b/a/c/a;

    .line 80
    iget-object v0, p0, Lcom/tencent/mna/c/b/a;->g:Lcom/tencent/mna/b/a/c/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mna/c/b/a;->h:I

    invoke-static {v2}, Lcom/tencent/mna/base/f/c;->a(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mna/c/b/a;->e:I

    invoke-static {v2}, Lcom/tencent/mna/base/f/c;->a(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mna/c/b/a;->f:I

    .line 81
    invoke-static {v2}, Lcom/tencent/mna/base/f/c;->a(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mna/c/b/a;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mna/b/a/c/a;->h:Ljava/lang/String;

    .line 83
    sget-object v0, Lcom/tencent/mna/a/a;->a:Ljava/util/Locale;

    const-string v1, "[N]Ds\u8c03\u5ea6\u534f\u5546\u9519\u8bef\u7801:%d, Proxy1IpMain:[%s], devkey:%d, clientkey:%d, delay_clientkey:%d, setId:%d"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/mna/c/b/a;->g:Lcom/tencent/mna/b/a/c/a;

    iget v3, v3, Lcom/tencent/mna/b/a/c/a;->f:I

    .line 84
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/tencent/mna/c/b/a;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/tencent/mna/c/b/a;->h:I

    .line 86
    invoke-static {v4}, Lcom/tencent/mna/base/f/c;->a(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/tencent/mna/c/b/a;->e:I

    .line 87
    invoke-static {v4}, Lcom/tencent/mna/base/f/c;->a(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget v4, p0, Lcom/tencent/mna/c/b/a;->f:I

    .line 88
    invoke-static {v4}, Lcom/tencent/mna/base/f/c;->a(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget v4, p0, Lcom/tencent/mna/c/b/a;->i:I

    .line 89
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 83
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 90
    return v5

    .line 57
    :cond_0
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mna/base/a/a;->aX()Z

    move-result v5

    invoke-static {v0, v5}, Lcom/tencent/mna/base/f/n;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    move v5, v9

    .line 60
    goto/16 :goto_1

    :cond_2
    move v7, v9

    .line 65
    goto/16 :goto_2
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;IIIIIZ)I
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 98
    .line 99
    iput-object p1, p0, Lcom/tencent/mna/c/b/a;->a:Ljava/lang/String;

    .line 100
    iput p2, p0, Lcom/tencent/mna/c/b/a;->b:I

    .line 102
    iput-object p3, p0, Lcom/tencent/mna/c/b/a;->c:Ljava/lang/String;

    .line 103
    iput p4, p0, Lcom/tencent/mna/c/b/a;->d:I

    .line 104
    iput p5, p0, Lcom/tencent/mna/c/b/a;->e:I

    .line 105
    iput p6, p0, Lcom/tencent/mna/c/b/a;->f:I

    .line 106
    iput p7, p0, Lcom/tencent/mna/c/b/a;->h:I

    .line 107
    iput p8, p0, Lcom/tencent/mna/c/b/a;->i:I

    .line 110
    if-lez p4, :cond_1

    invoke-static {p3}, Lcom/tencent/mna/base/f/f;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    .line 111
    :goto_0
    if-eqz v2, :cond_0

    .line 112
    invoke-static {p3, p4, v1}, Lcom/tencent/mna/base/jni/b;->a(Ljava/lang/String;IZ)I

    .line 116
    :cond_0
    if-lez p2, :cond_2

    invoke-static {p1}, Lcom/tencent/mna/base/f/f;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 118
    :goto_1
    if-nez v0, :cond_4

    .line 119
    if-eqz v2, :cond_3

    const v0, 0x13c69

    .line 128
    :goto_2
    return v0

    :cond_1
    move v2, v1

    .line 110
    goto :goto_0

    :cond_2
    move v0, v1

    .line 116
    goto :goto_1

    .line 119
    :cond_3
    const v0, 0x13c6a

    goto :goto_2

    .line 123
    :cond_4
    invoke-static/range {p1 .. p9}, Lcom/tencent/mna/base/jni/b;->a(Ljava/lang/String;ILjava/lang/String;IIIIIZ)I

    move-result v0

    goto :goto_2
.end method

.method public b()Lcom/tencent/mna/b/a/e;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 146
    new-instance v0, Lcom/tencent/mna/b/a/e;

    invoke-direct {v0}, Lcom/tencent/mna/b/a/e;-><init>()V

    .line 147
    invoke-static {}, Lcom/tencent/mna/base/jni/b;->a()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/mna/b/a/e;->a:J

    .line 148
    invoke-static {}, Lcom/tencent/mna/base/jni/b;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/mna/b/a/e;->b:J

    .line 150
    invoke-static {}, Lcom/tencent/mna/base/jni/b;->c()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/mna/b/a/e;->c:J

    .line 151
    invoke-static {}, Lcom/tencent/mna/base/jni/b;->d()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/mna/b/a/e;->d:J

    .line 153
    invoke-static {}, Lcom/tencent/mna/base/jni/b;->e()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/mna/b/a/e;->e:J

    .line 154
    invoke-static {}, Lcom/tencent/mna/base/jni/b;->f()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/mna/b/a/e;->f:J

    .line 155
    invoke-static {}, Lcom/tencent/mna/base/jni/b;->g()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/mna/b/a/e;->g:J

    .line 156
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

    .line 159
    :cond_0
    const/4 v0, 0x0

    .line 161
    :cond_1
    return-object v0
.end method

.method public c()Lcom/tencent/mna/b/a/h;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/tencent/mna/c/b/a;->j:Lcom/tencent/mna/b/a/h;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/tencent/mna/c/b/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/tencent/mna/c/b/a;->b:I

    return v0
.end method

.method public f()Lcom/tencent/mna/b/a/c/a;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/tencent/mna/c/b/a;->g:Lcom/tencent/mna/b/a/c/a;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    const-string v0, "DsAccelerator"

    return-object v0
.end method
