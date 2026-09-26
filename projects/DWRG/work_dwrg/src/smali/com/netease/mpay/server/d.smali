.class public Lcom/netease/mpay/server/d;
.super Ljava/lang/Object;


# static fields
.field private static d:Ljava/util/HashMap;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/server/d;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/netease/mpay/server/d;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/server/d;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/netease/mpay/server/d;->b()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private a(I)Ljava/lang/Integer;
    .locals 2

    sget-object v0, Lcom/netease/mpay/server/d;->d:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    sget v0, Lcom/netease/mpay/widget/RIdentifier$h;->bW:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/netease/mpay/server/d;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/netease/mpay/widget/aq;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v0, Lcom/netease/mpay/widget/RIdentifier$h;->bS:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "mpay"

    sget-object v2, Lcom/netease/mpay/bk;->f:Ljava/lang/String;

    const-string v3, "Mpay_Sandbox_Environment"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "mpay_sandbox"

    :cond_1
    :goto_1
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/netease/mpay/bk;->f:Ljava/lang/String;

    const-string v3, "Mpay_Test_Environment"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "mpay_test"

    goto :goto_1
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/netease/mpay/widget/aq;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netease/mpay/e/b;

    invoke-direct {v0, p0, p1}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/b;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/netease/mpay/bk;->g:Ljava/lang/String;

    sput-object v0, Lcom/netease/mpay/bk;->h:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/netease/mpay/e/b;

    invoke-direct {v0, p0, p1}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netease/mpay/e/c/b;->a(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/mpay/bk;->g:Ljava/lang/String;

    :goto_0
    sput-object v0, Lcom/netease/mpay/bk;->h:Ljava/lang/String;

    return-void

    :cond_0
    invoke-static {p2}, Lcom/netease/mpay/server/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    const-class v1, Lcom/netease/mpay/server/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/netease/mpay/server/d;->d:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/netease/mpay/server/d;->d:Ljava/util/HashMap;

    sget-object v0, Lcom/netease/mpay/server/d;->d:Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->bR:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/netease/mpay/server/d;->d:Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->cg:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/netease/mpay/server/d;->d:Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->ck:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/netease/mpay/server/d;->d:Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->cj:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/netease/mpay/server/d;->d:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->ce:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/netease/mpay/server/d;->d:Ljava/util/HashMap;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->cc:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/netease/mpay/server/d;->d:Ljava/util/HashMap;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->cd:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/netease/mpay/server/d;->d:Ljava/util/HashMap;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->bZ:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/netease/mpay/server/d;->d:Ljava/util/HashMap;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->bY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static b(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/netease/mpay/e/b;

    invoke-direct {v0, p0, p1}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/netease/mpay/bk;->g:Ljava/lang/String;

    :goto_0
    sput-object v0, Lcom/netease/mpay/bk;->h:Ljava/lang/String;

    return-void

    :cond_0
    invoke-static {v0}, Lcom/netease/mpay/server/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()J
    .locals 4

    invoke-static {}, Lcom/netease/mpay/widget/a/b;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    new-instance v0, Lcom/netease/mpay/server/a;

    iget-object v1, p0, Lcom/netease/mpay/server/d;->a:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->bV:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/mpay/server/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public a(Lcom/netease/mpay/server/a/ax;)Ljava/lang/Object;
    .locals 6

    :try_start_0
    invoke-virtual {p1}, Lcom/netease/mpay/server/a/ax;->c()I

    move-result v0

    iget-object v1, p0, Lcom/netease/mpay/server/d;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/server/d;->b:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/netease/mpay/server/a/ax;->a(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/server/d;->a:Landroid/app/Activity;

    invoke-virtual {p1, v2}, Lcom/netease/mpay/server/a/ax;->b(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/server/d;->a:Landroid/app/Activity;

    iget-object v4, p0, Lcom/netease/mpay/server/d;->b:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lcom/netease/mpay/server/a/ax;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const/16 v4, 0x3a98

    const/16 v5, 0x3a98

    invoke-static/range {v0 .. v5}, Lcom/netease/mpay/widget/a/b;->a(ILjava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;II)Lcom/netease/mpay/widget/a/b$b;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/server/d;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/server/d;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/server/d;->c:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/netease/mpay/server/a/ax;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/widget/a/b$b;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/netease/mpay/widget/a/b$a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/netease/mpay/server/d;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/server/d;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/netease/mpay/server/d;->a(Landroid/app/Activity;Ljava/lang/String;)V

    new-instance v1, Lcom/netease/mpay/server/a$i;

    invoke-virtual {v0}, Lcom/netease/mpay/widget/a/b$a;->a()I

    move-result v2

    iget-object v3, p0, Lcom/netease/mpay/server/d;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/netease/mpay/widget/a/b$a;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/netease/mpay/server/d;->a(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/netease/mpay/server/a$i;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public b(Lcom/netease/mpay/server/a/ax;)Lcom/netease/mpay/server/response/ae;
    .locals 4

    new-instance v0, Lcom/netease/mpay/server/response/ae;

    iget-object v1, p0, Lcom/netease/mpay/server/d;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/server/d;->b:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/netease/mpay/server/a/ax;->a(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/server/d;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/netease/mpay/server/d;->b:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/netease/mpay/server/a/ax;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/mpay/widget/a/b;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/mpay/server/response/ae;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
