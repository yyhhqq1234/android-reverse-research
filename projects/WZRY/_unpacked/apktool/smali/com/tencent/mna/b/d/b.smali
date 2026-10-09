.class public Lcom/tencent/mna/b/d/b;
.super Ljava/lang/Object;
.source "DiagnoseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mna/b/d/b$b;,
        Lcom/tencent/mna/b/d/b$a;,
        Lcom/tencent/mna/b/d/b$c;,
        Lcom/tencent/mna/b/d/b$e;,
        Lcom/tencent/mna/b/d/b$d;
    }
.end annotation


# direct methods
.method public static a(ILjava/lang/String;)I
    .locals 12

    .prologue
    .line 159
    add-int/lit8 v10, p0, 0x1

    .line 160
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mna/base/a/c;->I()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mna/base/f/n;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v4

    .line 161
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/r;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 162
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/n;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 163
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/l;->a(Landroid/content/Context;)I

    move-result v8

    .line 164
    sget v0, Lcom/tencent/mna/a/b;->h:I

    sget-object v1, Lcom/tencent/mna/a/b;->f:Ljava/lang/String;

    const-string v2, "2000"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v9, Lcom/tencent/mna/a/b;->e:Ljava/lang/String;

    move-object v7, p1

    invoke-static/range {v0 .. v9}, Lcom/tencent/mna/base/a/c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 166
    sget v0, Lcom/tencent/mna/a/b;->h:I

    sget-object v1, Lcom/tencent/mna/a/b;->f:Ljava/lang/String;

    const-string v2, "3000"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v9, Lcom/tencent/mna/a/b;->e:Ljava/lang/String;

    move-object v7, p1

    invoke-static/range {v0 .. v9}, Lcom/tencent/mna/base/a/c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " dgn reqJson = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 170
    const/4 v0, -0x1

    move v1, v10

    .line 171
    :goto_0
    if-eqz v0, :cond_0

    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_0

    .line 172
    invoke-static {v11, v3}, Lcom/tencent/mna/base/a/c;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)I

    move-result v0

    move v1, v2

    goto :goto_0

    .line 175
    :cond_0
    return v0
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/tencent/mna/b/d/b$1;

    invoke-direct {v0}, Lcom/tencent/mna/b/d/b$1;-><init>()V

    invoke-static {v0}, Lcom/tencent/mna/a;->c(Ljava/lang/Runnable;)V

    .line 71
    return-void
.end method

.method static synthetic a(Lcom/tencent/mna/b/d/c;)V
    .locals 0

    .prologue
    .line 38
    invoke-static {p0}, Lcom/tencent/mna/b/d/b;->b(Lcom/tencent/mna/b/d/c;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mna/b/d/c;Lcom/tencent/mna/KartinRet;)V
    .locals 0

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/tencent/mna/b/d/b;->b(Lcom/tencent/mna/b/d/c;Lcom/tencent/mna/KartinRet;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/tencent/mna/a/b;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/tencent/mna/a/b;->f:Ljava/lang/String;

    .line 75
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UNKNOWN"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    if-eqz p0, :cond_1

    const-string v1, "TESTVALUE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    invoke-static {v0, p0}, Lcom/tencent/mna/b/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :goto_1
    return-void

    .line 75
    :cond_0
    sget-object v0, Lcom/tencent/mna/a/b;->f:Ljava/lang/String;

    goto :goto_0

    .line 82
    :cond_1
    new-instance v1, Lcom/tencent/mna/b/d/b$2;

    invoke-direct {v1, v0, p0}, Lcom/tencent/mna/b/d/b$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/tencent/mna/a;->c(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DiagnoseManager queryKartin("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), queryKartin4test"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 143
    new-instance v0, Lcom/tencent/mna/b/d/b$3;

    invoke-direct {v0, p0, p1}, Lcom/tencent/mna/b/d/b$3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/mna/a;->c(Ljava/lang/Runnable;)V

    .line 156
    return-void
.end method

.method static synthetic a(Lcom/tencent/mna/b/d/c;I)Z
    .locals 1

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/tencent/mna/b/d/b;->b(Lcom/tencent/mna/b/d/c;I)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/tencent/mna/b/d/c;ILjava/lang/String;)Z
    .locals 1

    .prologue
    .line 38
    invoke-static {p0, p1, p2}, Lcom/tencent/mna/b/d/b;->b(Lcom/tencent/mna/b/d/c;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/tencent/mna/b/d/c;Lcom/tencent/mna/b/d/a;)Z
    .locals 1

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/tencent/mna/b/d/b;->b(Lcom/tencent/mna/b/d/c;Lcom/tencent/mna/b/d/a;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/tencent/mna/b/d/c;Lcom/tencent/mna/b/d/a;I)Z
    .locals 1

    .prologue
    .line 38
    invoke-static {p0, p1, p2}, Lcom/tencent/mna/b/d/b;->b(Lcom/tencent/mna/b/d/c;Lcom/tencent/mna/b/d/a;I)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/tencent/mna/b/d/c;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/tencent/mna/b/d/b;->b(Lcom/tencent/mna/b/d/c;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/tencent/mna/b/d/c;[Lcom/tencent/mna/b/d/a;)Z
    .locals 1

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/tencent/mna/b/d/b;->b(Lcom/tencent/mna/b/d/c;[Lcom/tencent/mna/b/d/a;)Z

    move-result v0

    return v0
.end method

.method private static b(Lcom/tencent/mna/b/d/c;)V
    .locals 10

    .prologue
    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DiagnoseManager queryKartin("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mna/b/d/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), prepareQueryResult"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 389
    invoke-static {}, Lcom/tencent/mna/base/a/c;->J()[Lcom/tencent/mna/b/d/g;

    move-result-object v3

    .line 390
    invoke-static {}, Lcom/tencent/mna/base/a/c;->L()[Lcom/tencent/mna/b/d/g;

    move-result-object v4

    .line 391
    invoke-static {}, Lcom/tencent/mna/base/a/c;->N()[Lcom/tencent/mna/b/d/g;

    move-result-object v5

    .line 392
    invoke-static {}, Lcom/tencent/mna/base/a/c;->K()[Lcom/tencent/mna/b/d/g;

    move-result-object v6

    .line 393
    invoke-static {}, Lcom/tencent/mna/base/a/c;->O()[Lcom/tencent/mna/b/d/g;

    move-result-object v7

    .line 394
    invoke-static {}, Lcom/tencent/mna/base/a/c;->M()[Lcom/tencent/mna/b/d/g;

    move-result-object v8

    .line 395
    invoke-static {}, Lcom/tencent/mna/base/a/c;->P()[Lcom/tencent/mna/b/d/g;

    move-result-object v9

    .line 397
    invoke-static {}, Lcom/tencent/mna/base/a/c;->x()Z

    move-result v1

    invoke-static {}, Lcom/tencent/mna/base/a/c;->B()I

    move-result v2

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/tencent/mna/b/d/c;->a(ZI[Lcom/tencent/mna/b/d/g;[Lcom/tencent/mna/b/d/g;[Lcom/tencent/mna/b/d/g;[Lcom/tencent/mna/b/d/g;[Lcom/tencent/mna/b/d/g;[Lcom/tencent/mna/b/d/g;[Lcom/tencent/mna/b/d/g;)Lcom/tencent/mna/KartinRet;

    move-result-object v0

    .line 400
    invoke-static {p0, v0}, Lcom/tencent/mna/b/d/b;->b(Lcom/tencent/mna/b/d/c;Lcom/tencent/mna/KartinRet;)V

    .line 401
    return-void
.end method

.method private static b(Lcom/tencent/mna/b/d/c;Lcom/tencent/mna/KartinRet;)V
    .locals 3

    .prologue
    .line 179
    if-nez p1, :cond_0

    .line 180
    const-string v0, "DiagnoseManager queryKartin result is null"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->d(Ljava/lang/String;)V

    .line 251
    :goto_0
    return-void

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DiagnoseManager queryKartin("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/mna/KartinRet;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), notifyQueryResult, result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 186
    iget v0, p1, Lcom/tencent/mna/KartinRet;->flag:I

    if-nez v0, :cond_2

    .line 187
    const-string v0, "GSDKQueryKartin succeed"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 193
    :goto_1
    invoke-static {}, Lcom/tencent/mna/base/a/c;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v0

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/tencent/mna/base/f/r;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/tencent/mna/base/f/r;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-static {v0}, Lcom/tencent/mna/base/f/i;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-virtual {p0, v1, v0}, Lcom/tencent/mna/b/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_1
    invoke-static {}, Lcom/tencent/mna/b;->b()Lcom/tencent/mna/MNAObserver;

    move-result-object v0

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DiagnoseManager queryKartin("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/tencent/mna/KartinRet;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), notifyQueryResult notify"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 202
    new-instance v1, Lcom/tencent/mna/b/d/b$4;

    invoke-direct {v1, v0, p1}, Lcom/tencent/mna/b/d/b$4;-><init>(Lcom/tencent/mna/MNAObserver;Lcom/tencent/mna/KartinRet;)V

    invoke-static {v1}, Lcom/tencent/mna/a;->b(Ljava/lang/Runnable;)V

    .line 230
    invoke-static {}, Lcom/tencent/mna/b;->c()Lcom/tencent/mna/GHObserver;

    move-result-object v0

    .line 231
    new-instance v1, Lcom/tencent/mna/b/d/b$5;

    invoke-direct {v1, v0, p1}, Lcom/tencent/mna/b/d/b$5;-><init>(Lcom/tencent/mna/GHObserver;Lcom/tencent/mna/KartinRet;)V

    invoke-static {v1}, Lcom/tencent/mna/a;->b(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 189
    :cond_2
    const-string v0, "GSDKQueryKartin fail"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static b(Lcom/tencent/mna/b/d/c;I)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DiagnoseManager queryKartin("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mna/b/d/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "), checkNetworkType"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 259
    invoke-static {p1}, Lcom/tencent/mna/base/f/l;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    const/4 v0, 0x0

    .line 272
    :goto_0
    return v0

    .line 263
    :cond_0
    if-nez p1, :cond_1

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DiagnoseManager queryKartin("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mna/b/d/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "), checkNetworkType no net"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/tencent/mna/b/d/c;->a()Lcom/tencent/mna/KartinRet;

    move-result-object v0

    .line 271
    :goto_1
    invoke-static {p0, v0}, Lcom/tencent/mna/b/d/b;->b(Lcom/tencent/mna/b/d/c;Lcom/tencent/mna/KartinRet;)V

    move v0, v1

    .line 272
    goto :goto_0

    .line 267
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DiagnoseManager queryKartin("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mna/b/d/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "), checkNetworkType 2g"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 268
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/tencent/mna/base/f/l;->a(Landroid/content/Context;I)I

    move-result v0

    .line 269
    invoke-virtual {p0, v0}, Lcom/tencent/mna/b/d/c;->b(I)Lcom/tencent/mna/KartinRet;

    move-result-object v0

    goto :goto_1
.end method

.method private static b(Lcom/tencent/mna/b/d/c;ILjava/lang/String;)Z
    .locals 2

    .prologue
    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DiagnoseManager queryKartin("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mna/b/d/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), checkNetworkChange"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 375
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/l;->a(Landroid/content/Context;)I

    move-result v0

    .line 376
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/r;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 377
    if-ne v0, p1, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DiagnoseManager queryKartin("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mna/b/d/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), checkNetworkChange network changeless"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 379
    const/4 v0, 0x0

    .line 383
    :goto_0
    return v0

    .line 381
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mna/b/d/c;->c()Lcom/tencent/mna/KartinRet;

    move-result-object v0

    .line 382
    invoke-static {p0, v0}, Lcom/tencent/mna/b/d/b;->b(Lcom/tencent/mna/b/d/c;Lcom/tencent/mna/KartinRet;)V

    .line 383
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b(Lcom/tencent/mna/b/d/c;Lcom/tencent/mna/b/d/a;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DiagnoseManager queryKartin("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mna/b/d/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), prepareForDiagnose"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 306
    invoke-interface {p1}, Lcom/tencent/mna/b/d/a;->a()I

    move-result v1

    .line 307
    invoke-virtual {p0, v1}, Lcom/tencent/mna/b/d/c;->a(I)V

    .line 308
    if-eqz v1, :cond_0

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DiagnoseManager queryKartin("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mna/b/d/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), prepareForDiagnose errno:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p0, v0}, Lcom/tencent/mna/b/d/c;->a(Z)Lcom/tencent/mna/KartinRet;

    move-result-object v1

    .line 311
    invoke-static {p0, v1}, Lcom/tencent/mna/b/d/b;->b(Lcom/tencent/mna/b/d/c;Lcom/tencent/mna/KartinRet;)V

    .line 314
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/tencent/mna/b/d/c;Lcom/tencent/mna/b/d/a;I)Z
    .locals 16

    .prologue
    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DiagnoseManager queryKartin("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mna/b/d/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), diagnose"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 321
    new-instance v3, Lcom/tencent/mna/b/d/b$d;

    move/from16 v0, p2

    invoke-direct {v3, v0}, Lcom/tencent/mna/b/d/b$d;-><init>(I)V

    .line 322
    new-instance v6, Lcom/tencent/mna/b/d/b$e;

    const/4 v2, 0x0

    invoke-direct {v6, v2}, Lcom/tencent/mna/b/d/b$e;-><init>(Lcom/tencent/mna/b/d/b$1;)V

    .line 323
    new-instance v7, Lcom/tencent/mna/b/d/b$c;

    const/4 v2, 0x0

    invoke-direct {v7, v2}, Lcom/tencent/mna/b/d/b$c;-><init>(Lcom/tencent/mna/b/d/b$1;)V

    .line 324
    new-instance v10, Lcom/tencent/mna/b/d/b$a;

    invoke-direct {v10}, Lcom/tencent/mna/b/d/b$a;-><init>()V

    .line 325
    new-instance v15, Lcom/tencent/mna/b/d/b$b;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v15, v0, v1}, Lcom/tencent/mna/b/d/b$b;-><init>(Lcom/tencent/mna/b/d/a;I)V

    .line 327
    invoke-virtual {v3}, Lcom/tencent/mna/b/d/b$d;->a()V

    .line 328
    const/4 v2, 0x4

    move/from16 v0, p2

    if-ne v0, v2, :cond_1

    .line 329
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 330
    invoke-interface {v2, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 331
    invoke-interface {v2, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 332
    invoke-interface {v2, v10}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 333
    invoke-interface {v2, v15}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 339
    :goto_0
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 342
    const-wide/16 v4, 0x14

    :try_start_0
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v5, v8}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 343
    if-nez v4, :cond_0

    .line 345
    :try_start_1
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 357
    :cond_0
    :goto_1
    invoke-virtual {v3}, Lcom/tencent/mna/b/d/b$d;->b()V

    .line 360
    invoke-virtual {v3}, Lcom/tencent/mna/b/d/b$d;->c()Lcom/tencent/mna/base/f/j$b;

    move-result-object v4

    iget v5, v6, Lcom/tencent/mna/b/d/b$e;->a:I

    iget v6, v6, Lcom/tencent/mna/b/d/b$e;->b:I

    .line 363
    invoke-virtual {v7}, Lcom/tencent/mna/b/d/b$c;->a()Lcom/tencent/mna/base/f/r$a;

    move-result-object v7

    .line 364
    invoke-virtual {v10}, Lcom/tencent/mna/b/d/b$a;->a()Lcom/tencent/mna/base/d/b$a;

    move-result-object v8

    invoke-virtual {v10}, Lcom/tencent/mna/b/d/b$a;->b()I

    move-result v9

    invoke-virtual {v10}, Lcom/tencent/mna/b/d/b$a;->c()I

    move-result v10

    iget v11, v15, Lcom/tencent/mna/b/d/b$b;->e:I

    iget v12, v15, Lcom/tencent/mna/b/d/b$b;->f:I

    .line 367
    invoke-virtual {v15}, Lcom/tencent/mna/b/d/b$b;->a()Ljava/lang/String;

    move-result-object v13

    iget v14, v15, Lcom/tencent/mna/b/d/b$b;->c:I

    iget-object v15, v15, Lcom/tencent/mna/b/d/b$b;->d:Ljava/lang/String;

    move-object/from16 v2, p0

    move/from16 v3, p2

    .line 359
    invoke-virtual/range {v2 .. v15}, Lcom/tencent/mna/b/d/c;->a(ILcom/tencent/mna/base/f/j$b;IILcom/tencent/mna/base/f/r$a;Lcom/tencent/mna/base/d/b$a;IIIILjava/lang/String;ILjava/lang/String;)V

    .line 369
    const/4 v2, 0x0

    return v2

    .line 335
    :cond_1
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 336
    invoke-interface {v2, v10}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 337
    invoke-interface {v2, v15}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 350
    :catch_0
    move-exception v4

    .line 352
    :try_start_2
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 353
    :catch_1
    move-exception v2

    goto :goto_1

    .line 346
    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method private static b(Lcom/tencent/mna/b/d/c;Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DiagnoseManager queryKartin("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mna/b/d/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), requestConfig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 277
    invoke-static {v8, p1}, Lcom/tencent/mna/b/d/b;->a(ILjava/lang/String;)I

    move-result v0

    .line 278
    if-eqz v0, :cond_0

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DiagnoseManager queryKartin("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mna/b/d/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), requestConfig errno:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0, v8}, Lcom/tencent/mna/b/d/c;->a(Z)Lcom/tencent/mna/KartinRet;

    move-result-object v0

    .line 281
    invoke-static {p0, v0}, Lcom/tencent/mna/b/d/b;->b(Lcom/tencent/mna/b/d/c;Lcom/tencent/mna/KartinRet;)V

    .line 282
    const/4 v0, 0x1

    .line 287
    :goto_0
    return v0

    .line 284
    :cond_0
    invoke-static {}, Lcom/tencent/mna/base/a/c;->H()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mna/base/a/c;->o()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tencent/mna/base/a/c;->p()I

    move-result v3

    .line 285
    invoke-static {}, Lcom/tencent/mna/base/a/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/tencent/mna/base/a/c;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/tencent/mna/base/a/c;->h()I

    move-result v6

    .line 286
    invoke-static {}, Lcom/tencent/mna/base/a/c;->C()I

    move-result v7

    move-object v0, p0

    .line 284
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/mna/b/d/c;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    move v0, v8

    .line 287
    goto :goto_0
.end method

.method private static b(Lcom/tencent/mna/b/d/c;[Lcom/tencent/mna/b/d/a;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DiagnoseManager queryKartin("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mna/b/d/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), createDgnSpeedTester"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 293
    invoke-static {}, Lcom/tencent/mna/base/a/c;->h()I

    move-result v1

    invoke-static {v1}, Lcom/tencent/mna/c/a;->b(I)Lcom/tencent/mna/b/d/a;

    move-result-object v1

    aput-object v1, p1, v0

    .line 294
    aget-object v1, p1, v0

    if-nez v1, :cond_0

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DiagnoseManager queryKartin("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mna/b/d/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), dgnSpeedTester is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Lcom/tencent/mna/b/d/c;->b()Lcom/tencent/mna/KartinRet;

    move-result-object v0

    .line 297
    invoke-static {p0, v0}, Lcom/tencent/mna/b/d/b;->b(Lcom/tencent/mna/b/d/c;Lcom/tencent/mna/KartinRet;)V

    .line 298
    const/4 v0, 0x1

    .line 300
    :cond_0
    return v0
.end method
