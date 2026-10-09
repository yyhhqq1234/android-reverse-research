.class public Lcom/tencent/mna/c/d/a;
.super Ljava/lang/Object;
.source "McAccelerator.java"

# interfaces
.implements Lcom/tencent/mna/b/a/f;


# instance fields
.field private a:Lcom/tencent/mna/b/b/b;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:I

.field private j:Lcom/tencent/mna/b/a/c/a;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Lcom/tencent/mna/b/a/h;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "0.0.0.0"

    iput-object v0, p0, Lcom/tencent/mna/c/d/a;->b:Ljava/lang/String;

    .line 35
    const-string v0, "0.0.0.0"

    iput-object v0, p0, Lcom/tencent/mna/c/d/a;->c:Ljava/lang/String;

    .line 36
    iput v1, p0, Lcom/tencent/mna/c/d/a;->d:I

    .line 37
    iput v1, p0, Lcom/tencent/mna/c/d/a;->e:I

    .line 39
    const-string v0, "0.0.0.0"

    iput-object v0, p0, Lcom/tencent/mna/c/d/a;->f:Ljava/lang/String;

    .line 40
    iput v1, p0, Lcom/tencent/mna/c/d/a;->g:I

    .line 41
    iput v1, p0, Lcom/tencent/mna/c/d/a;->h:I

    .line 42
    iput v1, p0, Lcom/tencent/mna/c/d/a;->i:I

    .line 43
    new-instance v0, Lcom/tencent/mna/b/a/c/a;

    invoke-direct {v0}, Lcom/tencent/mna/b/a/c/a;-><init>()V

    iput-object v0, p0, Lcom/tencent/mna/c/d/a;->j:Lcom/tencent/mna/b/a/c/a;

    .line 44
    iput v1, p0, Lcom/tencent/mna/c/d/a;->k:I

    .line 45
    iput v1, p0, Lcom/tencent/mna/c/d/a;->l:I

    .line 46
    iput v1, p0, Lcom/tencent/mna/c/d/a;->m:I

    .line 47
    iput v1, p0, Lcom/tencent/mna/c/d/a;->n:I

    .line 281
    new-instance v0, Lcom/tencent/mna/c/d/a$2;

    invoke-direct {v0, p0}, Lcom/tencent/mna/c/d/a$2;-><init>(Lcom/tencent/mna/c/d/a;)V

    iput-object v0, p0, Lcom/tencent/mna/c/d/a;->o:Lcom/tencent/mna/b/a/h;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mna/c/d/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/tencent/mna/c/d/a;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 220
    iget-object v0, p0, Lcom/tencent/mna/c/d/a;->a:Lcom/tencent/mna/b/b/b;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/tencent/mna/c/d/a;->a:Lcom/tencent/mna/b/b/b;

    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mna/b/b/b;->b(Landroid/content/Context;)V

    .line 223
    :cond_0
    iget v0, p0, Lcom/tencent/mna/c/d/a;->k:I

    if-eqz v0, :cond_1

    .line 224
    iget v0, p0, Lcom/tencent/mna/c/d/a;->k:I

    invoke-static {v0}, Lcom/tencent/mna/base/jni/e;->d(I)V

    .line 225
    iput v2, p0, Lcom/tencent/mna/c/d/a;->k:I

    .line 227
    :cond_1
    iget v0, p0, Lcom/tencent/mna/c/d/a;->l:I

    if-eqz v0, :cond_2

    .line 228
    iget v0, p0, Lcom/tencent/mna/c/d/a;->l:I

    invoke-static {v0}, Lcom/tencent/mna/base/jni/e;->d(I)V

    .line 229
    iput v2, p0, Lcom/tencent/mna/c/d/a;->l:I

    .line 232
    :cond_2
    invoke-static {}, Lcom/tencent/mna/base/f/k;->a()V

    .line 233
    invoke-static {}, Lcom/tencent/mna/base/jni/d;->h()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;I)I
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 55
    invoke-static {}, Lcom/tencent/mna/base/a/a;->aJ()Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-static {}, Lcom/tencent/mna/base/a/a;->aK()Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-static {}, Lcom/tencent/mna/base/a/a;->aL()I

    move-result v3

    .line 59
    invoke-static {}, Lcom/tencent/mna/base/a/a;->e()Ljava/lang/String;

    move-result-object v4

    .line 60
    invoke-static {}, Lcom/tencent/mna/base/a/a;->f()I

    move-result v5

    .line 63
    sget-object v0, Lcom/tencent/mna/a/b;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/mna/a/b;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 64
    sget-object v0, Lcom/tencent/mna/a/b;->f:Ljava/lang/String;

    .line 70
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    .line 71
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    .line 74
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mna/base/a/a;->aX()Z

    move-result v8

    invoke-static {v0, v8}, Lcom/tencent/mna/base/f/n;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    .line 76
    :goto_2
    invoke-static {}, Lcom/tencent/mna/base/a/a;->aR()I

    move-result v9

    move-object v0, p0

    .line 78
    invoke-virtual/range {v0 .. v10}, Lcom/tencent/mna/c/d/a;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIIIZ)I

    move-result v5

    .line 83
    new-instance v0, Lcom/tencent/mna/b/a/c/a;

    const-string v1, "0.0.0.0"

    const-string v2, "0.0.0.0"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tencent/mna/c/d/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mna/c/d/a;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mna/c/d/a;->f:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mna/b/a/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mna/c/d/a;->j:Lcom/tencent/mna/b/a/c/a;

    .line 90
    iget-object v0, p0, Lcom/tencent/mna/c/d/a;->j:Lcom/tencent/mna/b/a/c/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mna/c/d/a;->m:I

    invoke-static {v2}, Lcom/tencent/mna/base/f/c;->a(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mna/c/d/a;->h:I

    invoke-static {v2}, Lcom/tencent/mna/base/f/c;->a(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mna/c/d/a;->i:I

    .line 91
    invoke-static {v2}, Lcom/tencent/mna/base/f/c;->a(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mna/c/d/a;->n:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mna/b/a/c/a;->h:Ljava/lang/String;

    .line 93
    sget-object v0, Lcom/tencent/mna/a/a;->a:Ljava/util/Locale;

    const-string v1, "[N]Mc\u8c03\u5ea6\u534f\u5546\u9519\u8bef\u7801:%d, Proxy1IpMain:[%s], Proxy1IpMobile:[%s], devkey:%d, clientkey:%d, delay_clientkey:%d, setId:%d"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/mna/c/d/a;->j:Lcom/tencent/mna/b/a/c/a;

    iget v3, v3, Lcom/tencent/mna/b/a/c/a;->f:I

    .line 94
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/tencent/mna/c/d/a;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/tencent/mna/c/d/a;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/tencent/mna/c/d/a;->m:I

    .line 97
    invoke-static {v4}, Lcom/tencent/mna/base/f/c;->a(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget v4, p0, Lcom/tencent/mna/c/d/a;->h:I

    .line 98
    invoke-static {v4}, Lcom/tencent/mna/base/f/c;->a(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget v4, p0, Lcom/tencent/mna/c/d/a;->i:I

    .line 99
    invoke-static {v4}, Lcom/tencent/mna/base/f/c;->a(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget v4, p0, Lcom/tencent/mna/c/d/a;->n:I

    .line 100
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 93
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 101
    return v5

    .line 67
    :cond_0
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mna/base/a/a;->aX()Z

    move-result v6

    invoke-static {v0, v6}, Lcom/tencent/mna/base/f/n;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    move v6, v10

    .line 70
    goto/16 :goto_1

    :cond_2
    move v8, v10

    .line 75
    goto/16 :goto_2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIIIZ)I
    .locals 15

    .prologue
    .line 109
    .line 110
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/tencent/mna/c/d/a;->b:Ljava/lang/String;

    .line 111
    move/from16 v0, p3

    iput v0, p0, Lcom/tencent/mna/c/d/a;->d:I

    .line 113
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/tencent/mna/c/d/a;->f:Ljava/lang/String;

    .line 114
    move/from16 v0, p5

    iput v0, p0, Lcom/tencent/mna/c/d/a;->g:I

    .line 115
    move/from16 v0, p6

    iput v0, p0, Lcom/tencent/mna/c/d/a;->h:I

    .line 116
    move/from16 v0, p7

    iput v0, p0, Lcom/tencent/mna/c/d/a;->i:I

    .line 117
    move/from16 v0, p8

    iput v0, p0, Lcom/tencent/mna/c/d/a;->m:I

    .line 118
    move/from16 v0, p9

    iput v0, p0, Lcom/tencent/mna/c/d/a;->n:I

    .line 121
    if-lez p5, :cond_2

    invoke-static/range {p4 .. p4}, Lcom/tencent/mna/base/f/f;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    move v3, v2

    .line 122
    :goto_0
    if-eqz v3, :cond_0

    .line 123
    const/4 v2, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v0, v1, v2}, Lcom/tencent/mna/base/jni/d;->a(Ljava/lang/String;IZ)I

    .line 127
    :cond_0
    if-lez p3, :cond_3

    invoke-static/range {p2 .. p2}, Lcom/tencent/mna/base/f/f;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    .line 129
    :goto_1
    if-nez v2, :cond_5

    .line 130
    if-eqz v3, :cond_4

    const v2, 0x13c69

    .line 206
    :cond_1
    :goto_2
    return v2

    .line 121
    :cond_2
    const/4 v2, 0x0

    move v3, v2

    goto :goto_0

    .line 127
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 130
    :cond_4
    const v2, 0x13c6a

    goto :goto_2

    .line 133
    :cond_5
    new-instance v2, Lcom/tencent/mna/b/b/b;

    invoke-direct {v2}, Lcom/tencent/mna/b/b/b;-><init>()V

    iput-object v2, p0, Lcom/tencent/mna/c/d/a;->a:Lcom/tencent/mna/b/b/b;

    .line 135
    iget-object v2, p0, Lcom/tencent/mna/c/d/a;->a:Lcom/tencent/mna/b/b/b;

    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mna/b/b/b;->a(Landroid/content/Context;)I

    move-result v2

    .line 136
    if-eqz v2, :cond_6

    .line 137
    const v3, 0x13880

    sub-int v2, v3, v2

    goto :goto_2

    .line 140
    :cond_6
    const/16 v2, 0x12c

    invoke-static {v2}, Lcom/tencent/mna/base/jni/e;->a(I)I

    move-result v2

    iput v2, p0, Lcom/tencent/mna/c/d/a;->k:I

    .line 142
    iget-object v2, p0, Lcom/tencent/mna/c/d/a;->a:Lcom/tencent/mna/b/b/b;

    iget v3, p0, Lcom/tencent/mna/c/d/a;->k:I

    invoke-virtual {v2, v3}, Lcom/tencent/mna/b/b/b;->a(I)I

    move-result v2

    if-eqz v2, :cond_7

    .line 143
    iget v2, p0, Lcom/tencent/mna/c/d/a;->k:I

    invoke-static {v2}, Lcom/tencent/mna/base/jni/e;->d(I)V

    .line 144
    const/4 v2, 0x0

    iput v2, p0, Lcom/tencent/mna/c/d/a;->k:I

    .line 145
    const v2, 0x13c6b

    goto :goto_2

    .line 148
    :cond_7
    const/16 v2, 0x12c

    invoke-static {v2}, Lcom/tencent/mna/base/jni/e;->a(I)I

    move-result v2

    iput v2, p0, Lcom/tencent/mna/c/d/a;->l:I

    .line 149
    iget-object v2, p0, Lcom/tencent/mna/c/d/a;->a:Lcom/tencent/mna/b/b/b;

    iget v3, p0, Lcom/tencent/mna/c/d/a;->l:I

    invoke-virtual {v2, v3}, Lcom/tencent/mna/b/b/b;->a(I)I

    move-result v2

    if-eqz v2, :cond_8

    .line 150
    iget v2, p0, Lcom/tencent/mna/c/d/a;->l:I

    invoke-static {v2}, Lcom/tencent/mna/base/jni/e;->d(I)V

    .line 151
    const/4 v2, 0x0

    iput v2, p0, Lcom/tencent/mna/c/d/a;->l:I

    .line 152
    const v2, 0x13c6c

    goto :goto_2

    .line 155
    :cond_8
    iget-object v2, p0, Lcom/tencent/mna/c/d/a;->a:Lcom/tencent/mna/b/b/b;

    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mna/b/b/b;->a(Landroid/content/Context;Z)I

    move-result v2

    .line 156
    if-eqz v2, :cond_9

    .line 157
    const v3, 0x14050

    sub-int v2, v3, v2

    goto :goto_2

    .line 160
    :cond_9
    iget-object v2, p0, Lcom/tencent/mna/c/d/a;->a:Lcom/tencent/mna/b/b/b;

    invoke-virtual {v2}, Lcom/tencent/mna/b/b/b;->c()Ljava/lang/String;

    move-result-object v5

    .line 161
    iget-object v2, p0, Lcom/tencent/mna/c/d/a;->a:Lcom/tencent/mna/b/b/b;

    invoke-virtual {v2}, Lcom/tencent/mna/b/b/b;->d()I

    move-result v7

    .line 176
    if-lez v7, :cond_a

    invoke-static {v5}, Lcom/tencent/mna/base/f/f;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 177
    :cond_a
    const v2, 0x13c6e

    goto/16 :goto_2

    .line 180
    :cond_b
    iput-object v5, p0, Lcom/tencent/mna/c/d/a;->c:Ljava/lang/String;

    .line 181
    iput v7, p0, Lcom/tencent/mna/c/d/a;->e:I

    .line 184
    iget v2, p0, Lcom/tencent/mna/c/d/a;->k:I

    iget v3, p0, Lcom/tencent/mna/c/d/a;->l:I

    move-object/from16 v4, p2

    move/from16 v6, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    invoke-static/range {v2 .. v14}, Lcom/tencent/mna/base/jni/d;->a(IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;IIIIIZ)I

    move-result v2

    .line 190
    if-nez v2, :cond_1

    .line 191
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/tencent/mna/base/jni/d;->a(Z)V

    .line 192
    new-instance v3, Lcom/tencent/mna/c/d/a$1;

    invoke-direct {v3, p0}, Lcom/tencent/mna/c/d/a$1;-><init>(Lcom/tencent/mna/c/d/a;)V

    invoke-static {v3}, Lcom/tencent/mna/base/f/k;->a(Lcom/tencent/mna/base/f/k$b;)V

    goto/16 :goto_2
.end method

.method public b()Lcom/tencent/mna/b/a/e;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 238
    new-instance v0, Lcom/tencent/mna/b/a/e;

    invoke-direct {v0}, Lcom/tencent/mna/b/a/e;-><init>()V

    .line 239
    invoke-static {}, Lcom/tencent/mna/base/jni/d;->a()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/mna/b/a/e;->a:J

    .line 240
    invoke-static {}, Lcom/tencent/mna/base/jni/d;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/mna/b/a/e;->b:J

    .line 242
    invoke-static {}, Lcom/tencent/mna/base/jni/d;->c()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/mna/b/a/e;->c:J

    .line 243
    invoke-static {}, Lcom/tencent/mna/base/jni/d;->d()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/mna/b/a/e;->d:J

    .line 245
    invoke-static {}, Lcom/tencent/mna/base/jni/d;->e()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/mna/b/a/e;->e:J

    .line 246
    invoke-static {}, Lcom/tencent/mna/base/jni/d;->f()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/mna/b/a/e;->f:J

    .line 247
    invoke-static {}, Lcom/tencent/mna/base/jni/d;->g()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/mna/b/a/e;->g:J

    .line 248
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

    .line 251
    :cond_0
    const/4 v0, 0x0

    .line 253
    :cond_1
    return-object v0
.end method

.method public c()Lcom/tencent/mna/b/a/h;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/tencent/mna/c/d/a;->o:Lcom/tencent/mna/b/a/h;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/tencent/mna/c/d/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lcom/tencent/mna/c/d/a;->d:I

    return v0
.end method

.method public f()Lcom/tencent/mna/b/a/c/a;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/tencent/mna/c/d/a;->j:Lcom/tencent/mna/b/a/c/a;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    const-string v0, "McAccelerator"

    return-object v0
.end method
