.class public Lcom/subao/common/a/d;
.super Ljava/lang/Object;
.source "JniCallbackImpl.java"

# interfaces
.implements Lcom/subao/vpn/JniCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/a/d$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/subao/common/a/c;

.field private final b:Lcom/subao/common/g/c;

.field private final c:Lcom/subao/common/j/j;

.field private final d:Lcom/subao/common/b/b$c;

.field private final e:Lcom/subao/common/e/al;

.field private final f:Lcom/subao/common/e/u$a;


# direct methods
.method public constructor <init>(Lcom/subao/common/a/c;Lcom/subao/common/g/c;Lcom/subao/common/j/j;Lcom/subao/common/a/c$a;Lcom/subao/common/e/al;Lcom/subao/common/e/u$a;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/subao/common/a/d;->a:Lcom/subao/common/a/c;

    .line 58
    iput-object p2, p0, Lcom/subao/common/a/d;->b:Lcom/subao/common/g/c;

    .line 59
    iput-object p3, p0, Lcom/subao/common/a/d;->c:Lcom/subao/common/j/j;

    .line 60
    iput-object p4, p0, Lcom/subao/common/a/d;->d:Lcom/subao/common/b/b$c;

    .line 61
    iput-object p5, p0, Lcom/subao/common/a/d;->e:Lcom/subao/common/e/al;

    .line 62
    iput-object p6, p0, Lcom/subao/common/a/d;->f:Lcom/subao/common/e/u$a;

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/subao/common/a/d;)Lcom/subao/common/b/b$c;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/subao/common/a/d;->d:Lcom/subao/common/b/b$c;

    return-object v0
.end method

.method private a()Lcom/subao/common/b/d;
    .locals 8

    .prologue
    .line 71
    iget-object v0, p0, Lcom/subao/common/a/d;->a:Lcom/subao/common/a/c;

    invoke-virtual {v0}, Lcom/subao/common/a/c;->e()Lcom/subao/common/e/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/subao/common/e/ak;->i()Lcom/subao/common/e/al;

    move-result-object v0

    .line 72
    new-instance v4, Lcom/subao/common/e/u$a;

    iget-object v1, p0, Lcom/subao/common/a/d;->a:Lcom/subao/common/a/c;

    .line 73
    invoke-virtual {v1}, Lcom/subao/common/a/c;->l()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/subao/common/a/d;->a:Lcom/subao/common/a/c;

    iget-object v2, v2, Lcom/subao/common/a/c;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/subao/common/a/d;->a:Lcom/subao/common/a/c;

    iget-object v3, v3, Lcom/subao/common/a/c;->d:Lcom/subao/common/j/h;

    invoke-direct {v4, v1, v2, v0, v3}, Lcom/subao/common/e/u$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/subao/common/e/al;Lcom/subao/common/j/j;)V

    .line 75
    new-instance v0, Lcom/subao/common/b/d;

    iget-object v1, p0, Lcom/subao/common/a/d;->a:Lcom/subao/common/a/c;

    iget-object v2, p0, Lcom/subao/common/a/d;->a:Lcom/subao/common/a/c;

    iget-object v2, v2, Lcom/subao/common/a/c;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/subao/common/a/d;->b:Lcom/subao/common/g/c;

    iget-object v5, p0, Lcom/subao/common/a/d;->e:Lcom/subao/common/e/al;

    iget-object v6, p0, Lcom/subao/common/a/d;->a:Lcom/subao/common/a/c;

    iget-object v6, v6, Lcom/subao/common/a/c;->g:Lcom/subao/common/b/q;

    iget-object v7, p0, Lcom/subao/common/a/d;->a:Lcom/subao/common/a/c;

    invoke-direct/range {v0 .. v7}, Lcom/subao/common/b/d;-><init>(Lcom/subao/common/b/d$a;Ljava/lang/String;Lcom/subao/common/g/c;Lcom/subao/common/e/u$a;Lcom/subao/common/e/al;Lcom/subao/common/b/q;Lcom/subao/common/b/d$c;)V

    return-object v0
.end method

.method private a(ILcom/subao/common/j/d$c;)V
    .locals 5

    .prologue
    .line 152
    if-eqz p2, :cond_0

    .line 153
    invoke-virtual {p2}, Lcom/subao/common/j/d$c;->a()Lcom/subao/common/e/j;

    move-result-object v0

    .line 154
    if-nez v0, :cond_1

    const-string v0, "1"

    .line 155
    :goto_0
    iget-object v1, p0, Lcom/subao/common/a/d;->b:Lcom/subao/common/g/c;

    const-string v2, "key_isp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p2, Lcom/subao/common/j/d$c;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v2, v0}, Lcom/subao/common/g/c;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_0
    return-void

    .line 154
    :cond_1
    iget v0, v0, Lcom/subao/common/e/j;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/subao/common/a/d;ILcom/subao/common/j/d$c;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/subao/common/a/d;->a(ILcom/subao/common/j/d$c;)V

    return-void
.end method

.method static synthetic b(Lcom/subao/common/a/d;)Lcom/subao/common/b/d;
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/subao/common/a/d;->a()Lcom/subao/common/b/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/subao/common/a/d;)Lcom/subao/common/g/c;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/subao/common/a/d;->b:Lcom/subao/common/g/c;

    return-object v0
.end method

.method static synthetic d(Lcom/subao/common/a/d;)Lcom/subao/common/a/c;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/subao/common/a/d;->a:Lcom/subao/common/a/c;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 5

    .prologue
    .line 127
    const-string v0, "SubaoParallel"

    const-string v1, "Proxy request mobile fd ..."

    invoke-static {v0, v1}, Lcom/subao/common/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-static {}, Lcom/subao/common/m/b;->a()Lcom/subao/common/m/a;

    move-result-object v0

    new-instance v1, Lcom/subao/common/a/c$u;

    iget-object v2, p0, Lcom/subao/common/a/d;->a:Lcom/subao/common/a/c;

    iget-object v3, p0, Lcom/subao/common/a/d;->b:Lcom/subao/common/g/c;

    .line 131
    invoke-static {}, Lcom/subao/common/m/b;->a()Lcom/subao/common/m/a;

    move-result-object v4

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/subao/common/a/c$u;-><init>(Lcom/subao/common/a/c;Lcom/subao/common/g/c;ILcom/subao/common/m/a;)V

    .line 128
    invoke-interface {v0, v1}, Lcom/subao/common/m/a;->a(Ljava/lang/Runnable;)Z

    .line 132
    return-void
.end method

.method public a(IILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 117
    invoke-static {}, Lcom/subao/common/m/b;->a()Lcom/subao/common/m/a;

    move-result-object v6

    new-instance v0, Lcom/subao/common/a/d$4;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/subao/common/a/d$4;-><init>(Lcom/subao/common/a/d;IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Lcom/subao/common/m/a;->a(Ljava/lang/Runnable;)Z

    .line 123
    return-void
.end method

.method public a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 87
    invoke-static {}, Lcom/subao/common/m/b;->a()Lcom/subao/common/m/a;

    move-result-object v7

    new-instance v0, Lcom/subao/common/a/d$1;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/subao/common/a/d$1;-><init>(Lcom/subao/common/a/d;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v0}, Lcom/subao/common/m/a;->a(Ljava/lang/Runnable;)Z

    .line 93
    return-void
.end method

.method public a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 313
    new-instance v0, Lcom/subao/common/j/b;

    iget-object v1, p0, Lcom/subao/common/a/d;->b:Lcom/subao/common/g/c;

    invoke-direct {v0, v1, p1}, Lcom/subao/common/j/b;-><init>(Lcom/subao/common/g/c;I)V

    .line 315
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v4, 0x0

    :goto_0
    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v5, p6

    .line 314
    invoke-virtual/range {v0 .. v5}, Lcom/subao/common/j/b;->a(ILjava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    .line 317
    return-void

    .line 315
    :cond_0
    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    goto :goto_0
.end method

.method public a(ILjava/lang/String;)V
    .locals 7

    .prologue
    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/subao/common/a/d;->a:Lcom/subao/common/a/c;

    iget-object v0, v0, Lcom/subao/common/a/c;->e:Lcom/subao/common/e/aa;

    invoke-virtual {v0, p2}, Lcom/subao/common/e/aa;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 263
    iget-object v1, p0, Lcom/subao/common/a/d;->b:Lcom/subao/common/g/c;

    invoke-virtual {v1, p1, v0}, Lcom/subao/common/g/c;->a(I[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v0

    .line 265
    const-string v1, "SubaoProxy"

    sget-object v2, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v3, "onLoadData(%d, \"%s\") throw %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 266
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 265
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(ILjava/lang/String;III)V
    .locals 0

    .prologue
    .line 293
    return-void
.end method

.method public a(ILjava/lang/String;ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 307
    new-instance v0, Lcom/subao/common/a/c$o;

    const/4 v1, 0x0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/subao/common/a/c$o;-><init>(Lcom/subao/common/i/d$b;ILjava/lang/String;ILjava/lang/String;)V

    invoke-static {p2, p3, p4, v0}, Lcom/subao/common/b/b;->a(Ljava/lang/String;ILjava/lang/String;Lcom/subao/common/j/n;)V

    .line 309
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 97
    invoke-static {}, Lcom/subao/common/m/b;->a()Lcom/subao/common/m/a;

    move-result-object v0

    new-instance v1, Lcom/subao/common/a/d$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/subao/common/a/d$2;-><init>(Lcom/subao/common/a/d;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/subao/common/m/a;->a(Ljava/lang/Runnable;)Z

    .line 103
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 206
    new-instance v0, Lcom/subao/common/l/c$e;

    invoke-direct {v0, p1, p3, p4}, Lcom/subao/common/l/c$e;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 207
    new-instance v1, Lcom/subao/common/l/b$c;

    new-instance v2, Lcom/subao/common/a/d$7;

    invoke-direct {v2, p0}, Lcom/subao/common/a/d$7;-><init>(Lcom/subao/common/a/d;)V

    invoke-direct {v1, v0, p2, v2}, Lcom/subao/common/l/b$c;-><init>(Lcom/subao/common/l/c$e;Ljava/lang/String;Lcom/subao/common/l/b$a;)V

    .line 213
    invoke-static {}, Lcom/subao/common/m/b;->a()Lcom/subao/common/m/a;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/subao/common/m/a;->a(Ljava/lang/Runnable;)Z

    .line 214
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 218
    new-instance v0, Lcom/subao/common/l/c$e;

    invoke-direct {v0, p1, p3, p4}, Lcom/subao/common/l/c$e;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 219
    new-instance v1, Lcom/subao/common/l/b$d;

    new-instance v2, Lcom/subao/common/a/d$8;

    invoke-direct {v2, p0}, Lcom/subao/common/a/d$8;-><init>(Lcom/subao/common/a/d;)V

    invoke-direct {v1, v0, p2, v2, p5}, Lcom/subao/common/l/b$d;-><init>(Lcom/subao/common/l/c$e;Ljava/lang/String;Lcom/subao/common/l/b$a;I)V

    .line 230
    invoke-static {}, Lcom/subao/common/m/b;->a()Lcom/subao/common/m/a;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/subao/common/m/a;->a(Ljava/lang/Runnable;)Z

    .line 231
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V
    .locals 10

    .prologue
    .line 176
    new-instance v9, Lcom/subao/common/l/c$e;

    invoke-direct {v9, p1, p2, p3}, Lcom/subao/common/l/c$e;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 177
    new-instance v1, Lcom/subao/common/l/c$d;

    const-string v2, "TCP"

    .line 180
    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v6, Lcom/subao/common/j/l;->b:Lcom/subao/common/j/l;

    :goto_0
    move-object v2, p4

    move v3, p5

    move-object/from16 v4, p6

    move/from16 v5, p7

    invoke-direct/range {v1 .. v6}, Lcom/subao/common/l/c$d;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/subao/common/j/l;)V

    .line 182
    new-instance v2, Lcom/subao/common/l/b$e;

    iget-object v3, p0, Lcom/subao/common/a/d;->a:Lcom/subao/common/a/c;

    iget-object v4, v3, Lcom/subao/common/a/c;->d:Lcom/subao/common/j/h;

    new-instance v7, Lcom/subao/common/a/c$t;

    iget-object v3, p0, Lcom/subao/common/a/d;->a:Lcom/subao/common/a/c;

    iget-object v3, v3, Lcom/subao/common/a/c;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/subao/common/a/d;->a:Lcom/subao/common/a/c;

    iget-object v5, v5, Lcom/subao/common/a/c;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/subao/common/a/d;->a:Lcom/subao/common/a/c;

    iget-object v6, v6, Lcom/subao/common/a/c;->d:Lcom/subao/common/j/h;

    iget-object v8, p0, Lcom/subao/common/a/d;->a:Lcom/subao/common/a/c;

    iget-object v8, v8, Lcom/subao/common/a/c;->c:Ljava/lang/String;

    invoke-direct {v7, v3, v5, v6, v8}, Lcom/subao/common/a/c$t;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/subao/common/j/j;Ljava/lang/String;)V

    new-instance v8, Lcom/subao/common/a/d$6;

    invoke-direct {v8, p0}, Lcom/subao/common/a/d$6;-><init>(Lcom/subao/common/a/d;)V

    move-object v3, v9

    move-object v5, v1

    move/from16 v6, p9

    invoke-direct/range {v2 .. v8}, Lcom/subao/common/l/b$e;-><init>(Lcom/subao/common/l/c$e;Lcom/subao/common/j/j;Lcom/subao/common/l/c$d;ILcom/subao/common/l/b$g;Lcom/subao/common/l/b$a;)V

    .line 201
    invoke-static {}, Lcom/subao/common/m/b;->a()Lcom/subao/common/m/a;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/subao/common/m/a;->a(Ljava/lang/Runnable;)Z

    .line 202
    return-void

    .line 180
    :cond_0
    sget-object v6, Lcom/subao/common/j/l;->a:Lcom/subao/common/j/l;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/subao/common/a/d;->a:Lcom/subao/common/a/c;

    iget-object v0, v0, Lcom/subao/common/a/c;->f:Lcom/subao/common/i/g;

    invoke-interface {v0, p1}, Lcom/subao/common/i/g;->a(Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 298
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/subao/common/a/d;->a:Lcom/subao/common/a/c;

    iget-object v1, v0, Lcom/subao/common/a/c;->e:Lcom/subao/common/e/aa;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, p1, v0}, Lcom/subao/common/e/aa;->a(Ljava/lang/String;[B)V

    .line 257
    :goto_1
    return-void

    .line 252
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    const-string v1, "SubaoProxy"

    const-string v2, "onCacheData(%s, ...) throw %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    .line 255
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    .line 254
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 240
    const-string v0, "SubaoData"

    invoke-static {v0}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    const-string v0, "SubaoData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accel-Info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/subao/common/a/d;->f:Lcom/subao/common/e/u$a;

    new-instance v1, Lcom/subao/common/e/u$d;

    invoke-direct {v1, p2, p3}, Lcom/subao/common/e/u$d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 243
    invoke-static {v0, v1, v2}, Lcom/subao/common/e/ap;->a(Lcom/subao/common/e/u$a;Lcom/subao/common/e/u$d;[B)V

    .line 247
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/subao/common/a/d;->a:Lcom/subao/common/a/c;

    iget-object v0, v0, Lcom/subao/common/a/c;->f:Lcom/subao/common/i/g;

    invoke-interface {v0, p1, p2, p3}, Lcom/subao/common/i/g;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 162
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/subao/common/a/d;->a:Lcom/subao/common/a/c;

    invoke-virtual {v0, p1}, Lcom/subao/common/a/c;->a(Z)V

    .line 68
    return-void
.end method

.method public b(I)V
    .locals 3

    .prologue
    .line 136
    const-string v0, "SubaoData"

    const-string v1, "Proxy request region and isp ..."

    invoke-static {v0, v1}, Lcom/subao/common/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {}, Lcom/subao/common/j/d;->b()Lcom/subao/common/j/d$c;

    move-result-object v0

    .line 138
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/subao/common/a/d;->c:Lcom/subao/common/j/j;

    invoke-interface {v1}, Lcom/subao/common/j/j;->a()Lcom/subao/common/j/j$a;

    move-result-object v1

    sget-object v2, Lcom/subao/common/j/j$a;->a:Lcom/subao/common/j/j$a;

    if-ne v1, v2, :cond_1

    .line 139
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/subao/common/a/d;->a(ILcom/subao/common/j/d$c;)V

    .line 148
    :goto_0
    return-void

    .line 141
    :cond_1
    const/4 v0, 0x0

    new-instance v1, Lcom/subao/common/a/d$5;

    invoke-direct {v1, p0}, Lcom/subao/common/a/d$5;-><init>(Lcom/subao/common/a/d;)V

    .line 146
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 141
    invoke-static {v0, v1, v2}, Lcom/subao/common/j/d;->a(Ljava/lang/String;Lcom/subao/common/j/d$a;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public b(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 272
    iget-object v0, p0, Lcom/subao/common/a/d;->f:Lcom/subao/common/e/u$a;

    iget-object v0, v0, Lcom/subao/common/e/u$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/subao/common/a/d;->f:Lcom/subao/common/e/u$a;

    iget-object v1, v1, Lcom/subao/common/e/u$a;->c:Lcom/subao/common/e/al;

    new-instance v2, Lcom/subao/common/a/d$9;

    invoke-direct {v2, p0, p1}, Lcom/subao/common/a/d$9;-><init>(Lcom/subao/common/a/d;I)V

    invoke-static {v0, v1, p2, v2}, Lcom/subao/common/e/h;->a(Ljava/lang/String;Lcom/subao/common/e/al;Ljava/lang/String;Lcom/subao/common/e/h$a;)V

    .line 283
    return-void
.end method

.method public b(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 107
    invoke-static {}, Lcom/subao/common/m/b;->a()Lcom/subao/common/m/a;

    move-result-object v0

    new-instance v1, Lcom/subao/common/a/d$3;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/subao/common/a/d$3;-><init>(Lcom/subao/common/a/d;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/subao/common/m/a;->a(Ljava/lang/Runnable;)Z

    .line 113
    return-void
.end method

.method public b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    .prologue
    .line 321
    new-instance v0, Lcom/subao/common/a/d$a;

    iget-object v1, p0, Lcom/subao/common/a/d;->b:Lcom/subao/common/g/c;

    const/4 v7, 0x0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/subao/common/a/d$a;-><init>(Lcom/subao/common/g/c;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/subao/common/a/d$1;)V

    .line 322
    invoke-static {}, Lcom/subao/common/m/b;->a()Lcom/subao/common/m/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/subao/common/m/a;->a(Ljava/lang/Runnable;)Z

    .line 323
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/subao/common/a/d;->a:Lcom/subao/common/a/c;

    iget-object v0, v0, Lcom/subao/common/a/c;->f:Lcom/subao/common/i/g;

    const-string v1, "lua_error"

    invoke-interface {v0, v1, p1}, Lcom/subao/common/i/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/subao/common/a/d;->f:Lcom/subao/common/e/u$a;

    new-instance v1, Lcom/subao/common/e/u$d;

    invoke-direct {v1, p1, p2}, Lcom/subao/common/e/u$d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1, p3}, Lcom/subao/common/e/s;->a(Lcom/subao/common/e/u$a;Lcom/subao/common/e/u$d;Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method public c(I)I
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/subao/common/a/d;->a:Lcom/subao/common/a/c;

    invoke-virtual {v0, p1}, Lcom/subao/common/a/c;->b(I)I

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/subao/common/a/d;->a:Lcom/subao/common/a/c;

    iget-object v0, v0, Lcom/subao/common/a/c;->f:Lcom/subao/common/i/g;

    invoke-interface {v0, p1}, Lcom/subao/common/i/g;->b(Ljava/lang/String;)V

    .line 236
    return-void
.end method
