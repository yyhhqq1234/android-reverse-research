.class public Lcom/netease/mpay/f/bp;
.super Lcom/netease/mpay/f/a/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/f/bp$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/HashMap;

.field private b:Lcom/netease/mpay/f/bp$a;

.field private j:Lcom/netease/mpay/e/b/o;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/e/b/o;Ljava/util/Map;Lcom/netease/mpay/f/bp$a;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/netease/mpay/f/a/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V

    if-eqz p5, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    :cond_0
    iput-object v0, p0, Lcom/netease/mpay/f/bp;->a:Ljava/util/HashMap;

    iput-object p6, p0, Lcom/netease/mpay/f/bp;->b:Lcom/netease/mpay/f/bp$a;

    iput-object p4, p0, Lcom/netease/mpay/f/bp;->j:Lcom/netease/mpay/e/b/o;

    iget-object v0, p0, Lcom/netease/mpay/f/bp;->c:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->dZ:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/f/bp;->k:Ljava/lang/String;

    invoke-super {p0}, Lcom/netease/mpay/f/a/d;->f()V

    invoke-super {p0}, Lcom/netease/mpay/f/a/d;->g()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/f/bp;)Lcom/netease/mpay/f/bp$a;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/f/bp;->b:Lcom/netease/mpay/f/bp$a;

    return-object v0
.end method

.method static synthetic b(Lcom/netease/mpay/f/bp;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/f/bp;->k:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/netease/mpay/f/a/d$d;)Lcom/netease/mpay/server/response/af;
    .locals 7

    iget-object v0, p0, Lcom/netease/mpay/f/bp;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mpay/server/a;

    iget-object v1, p0, Lcom/netease/mpay/f/bp;->c:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->cL:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/mpay/server/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/f/bp;->a:Ljava/util/HashMap;

    const-string v1, "role_id"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/netease/mpay/server/a;

    iget-object v1, p0, Lcom/netease/mpay/f/bp;->c:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->cK:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/mpay/server/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/f/bp;->a:Ljava/util/HashMap;

    const-string v1, "role_id"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mpay/f/bp;->a:Ljava/util/HashMap;

    const-string v2, "host_id"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/hy;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/mpay/ck$a;->a()Lcom/netease/mpay/ck$a;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/f/bp;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/f/bp;->a:Ljava/util/HashMap;

    const-string v1, "role_id"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mpay/f/bp;->a:Ljava/util/HashMap;

    const-string v4, "host_id"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lcom/netease/mpay/ck$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/b;->a()Lcom/netease/mpay/e/b/af;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netease/mpay/e/b/af;->y:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->i()Lcom/netease/mpay/e/c/t;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/f/bp;->j:Lcom/netease/mpay/e/b/o;

    iget-object v1, v1, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/f/bp;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/e/c/t;->a(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/f/bp;->c:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->cM:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/f/bp;->j:Lcom/netease/mpay/e/b/o;

    iget-object v1, v1, Lcom/netease/mpay/e/b/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/f/bp;->k:Ljava/lang/String;

    new-instance v0, Lcom/netease/mpay/server/response/af;

    iget-object v1, p0, Lcom/netease/mpay/f/bp;->a:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Lcom/netease/mpay/server/response/af;-><init>(Ljava/util/HashMap;)V

    goto :goto_0

    :cond_3
    :try_start_0
    new-instance v6, Lcom/netease/mpay/server/d;

    iget-object v0, p0, Lcom/netease/mpay/f/bp;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/f/bp;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/f/bp;->e:Ljava/lang/String;

    invoke-direct {v6, v0, v1, v2}, Lcom/netease/mpay/server/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/netease/mpay/server/a/bc;

    iget-object v1, p0, Lcom/netease/mpay/f/bp;->j:Lcom/netease/mpay/e/b/o;

    iget-object v1, v1, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/d$d;->a()Lcom/netease/mpay/e/b/f;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/d$d;->a()Lcom/netease/mpay/e/b/f;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/mpay/e/b/f;->i:[B

    iget-object v4, p0, Lcom/netease/mpay/f/bp;->j:Lcom/netease/mpay/e/b/o;

    iget-object v4, v4, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/f/bp;->a:Ljava/util/HashMap;

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/server/a/bc;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v6, v0}, Lcom/netease/mpay/server/d;->a(Lcom/netease/mpay/server/a/ax;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/af;

    iget-object v1, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->i()Lcom/netease/mpay/e/c/t;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/f/bp;->j:Lcom/netease/mpay/e/b/o;

    iget-object v2, v2, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/f/bp;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Lcom/netease/mpay/e/c/t;->b(Ljava/lang/String;Ljava/util/HashMap;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netease/mpay/f/bp;->c:Landroid/app/Activity;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->cN:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/f/bp;->j:Lcom/netease/mpay/e/b/o;

    iget-object v2, v2, Lcom/netease/mpay/e/b/o;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/mpay/f/bp;->k:Ljava/lang/String;
    :try_end_0
    .catch Lcom/netease/mpay/server/a; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/netease/mpay/server/a;

    invoke-virtual {v0}, Lcom/netease/mpay/server/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/netease/mpay/server/a;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected a(Lcom/netease/mpay/f/a/a$b;Lcom/netease/mpay/f/a/b;)V
    .locals 1

    new-instance v0, Lcom/netease/mpay/f/bq;

    invoke-direct {v0, p0}, Lcom/netease/mpay/f/bq;-><init>(Lcom/netease/mpay/f/bp;)V

    invoke-super {p0, p1, v0}, Lcom/netease/mpay/f/a/d;->a(Lcom/netease/mpay/f/a/a$b;Lcom/netease/mpay/f/a/b;)V

    return-void
.end method

.method protected synthetic b(Lcom/netease/mpay/f/a/d$d;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netease/mpay/f/bp;->a(Lcom/netease/mpay/f/a/d$d;)Lcom/netease/mpay/server/response/af;

    move-result-object v0

    return-object v0
.end method
