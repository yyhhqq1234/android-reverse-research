.class public Lcom/netease/mpay/f/an;
.super Lcom/netease/mpay/f/a/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/f/an$a;
    }
.end annotation


# instance fields
.field private a:Lcom/netease/mpay/f/an$a;

.field private b:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/an$a;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/netease/mpay/f/a/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V

    iput-object p4, p0, Lcom/netease/mpay/f/an;->a:Lcom/netease/mpay/f/an$a;

    invoke-super {p0}, Lcom/netease/mpay/f/a/d;->f()V

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

.method private c(Lcom/netease/mpay/f/a/d$d;)Lcom/netease/mpay/e/b/o;
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/f/an;->c:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->u:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/f/an;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v1, Lcom/netease/mpay/server/a$f;

    invoke-direct {v1, v0}, Lcom/netease/mpay/server/a$f;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-object v1
.end method


# virtual methods
.method public a(Lcom/netease/mpay/f/a/b;)Lcom/netease/mpay/f/an;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/f/an;->f:Lcom/netease/mpay/f/a/b;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/netease/mpay/f/an;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/f/an;->k:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/f/an;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/netease/mpay/f/an;->m:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mpay/f/an;->n:Ljava/lang/String;

    return-object p0
.end method

.method protected a(Lcom/netease/mpay/f/a/d$d;)Lcom/netease/mpay/server/response/ae;
    .locals 8

    new-instance v7, Lcom/netease/mpay/server/d;

    iget-object v0, p0, Lcom/netease/mpay/f/an;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/f/an;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/f/an;->e:Ljava/lang/String;

    invoke-direct {v7, v0, v1, v2}, Lcom/netease/mpay/server/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/netease/mpay/f/ao;->a:[I

    iget-object v1, p0, Lcom/netease/mpay/f/an;->a:Lcom/netease/mpay/f/an$a;

    invoke-virtual {v1}, Lcom/netease/mpay/f/an$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/netease/mpay/server/response/ae;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/netease/mpay/server/response/ae;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/netease/mpay/server/a/b/o;

    iget-object v1, p0, Lcom/netease/mpay/f/an;->j:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/netease/mpay/server/a/b/o;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/netease/mpay/server/d;->b(Lcom/netease/mpay/server/a/ax;)Lcom/netease/mpay/server/response/ae;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/netease/mpay/server/a/b/o;

    const-string v1, "https://aq.reg.163.com/yd/agreement"

    invoke-direct {v0, v1}, Lcom/netease/mpay/server/a/b/o;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/netease/mpay/server/d;->b(Lcom/netease/mpay/server/a/ax;)Lcom/netease/mpay/server/response/ae;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/netease/mpay/server/a/b/o;

    const-string v1, "https://aq.reg.163.com/yd/agreementGame"

    invoke-direct {v0, v1}, Lcom/netease/mpay/server/a/b/o;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/netease/mpay/server/d;->b(Lcom/netease/mpay/server/a/ax;)Lcom/netease/mpay/server/response/ae;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/netease/mpay/server/a/b/e;

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/d$d;->a()Lcom/netease/mpay/e/b/f;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    iget-object v2, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v2}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/f/an;->c:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/netease/mpay/e/c/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/netease/mpay/f/an;->c(Lcom/netease/mpay/f/a/d$d;)Lcom/netease/mpay/e/b/o;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/f/an;->a:Lcom/netease/mpay/f/an$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netease/mpay/server/a/b/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/an$a;)V

    invoke-virtual {v7, v0}, Lcom/netease/mpay/server/d;->b(Lcom/netease/mpay/server/a/ax;)Lcom/netease/mpay/server/response/ae;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/netease/mpay/server/a/b/e;

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/d$d;->a()Lcom/netease/mpay/e/b/f;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    iget-object v2, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v2}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/f/an;->c:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/netease/mpay/e/c/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/f/an;->a:Lcom/netease/mpay/f/an$a;

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/mpay/server/a/b/e;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/an$a;)V

    invoke-virtual {v7, v0}, Lcom/netease/mpay/server/d;->b(Lcom/netease/mpay/server/a/ax;)Lcom/netease/mpay/server/response/ae;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/netease/mpay/server/a/b/d;

    invoke-direct {v0}, Lcom/netease/mpay/server/a/b/d;-><init>()V

    invoke-virtual {v7, v0}, Lcom/netease/mpay/server/d;->b(Lcom/netease/mpay/server/a/ax;)Lcom/netease/mpay/server/response/ae;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    new-instance v0, Lcom/netease/mpay/server/a/b/c;

    invoke-direct {v0}, Lcom/netease/mpay/server/a/b/c;-><init>()V

    invoke-virtual {v7, v0}, Lcom/netease/mpay/server/d;->b(Lcom/netease/mpay/server/a/ax;)Lcom/netease/mpay/server/response/ae;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    new-instance v0, Lcom/netease/mpay/server/a/b/i;

    iget-object v1, p0, Lcom/netease/mpay/f/an;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/netease/mpay/server/a/b/i;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/netease/mpay/server/d;->b(Lcom/netease/mpay/server/a/ax;)Lcom/netease/mpay/server/response/ae;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_8
    invoke-direct {p0, p1}, Lcom/netease/mpay/f/an;->c(Lcom/netease/mpay/f/a/d$d;)Lcom/netease/mpay/e/b/o;

    move-result-object v5

    new-instance v0, Lcom/netease/mpay/server/a/am;

    iget-object v1, p0, Lcom/netease/mpay/f/an;->d:Ljava/lang/String;

    iget-object v2, v5, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/d$d;->a()Lcom/netease/mpay/e/b/f;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    iget-object v4, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v4}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v4

    iget-object v6, p0, Lcom/netease/mpay/f/an;->c:Landroid/app/Activity;

    invoke-virtual {v4, v6}, Lcom/netease/mpay/e/c/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v5, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/netease/mpay/f/an;->b:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/server/a/am;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/netease/mpay/server/d;->a(Lcom/netease/mpay/server/a/ax;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/ae;

    goto/16 :goto_0

    :pswitch_9
    invoke-direct {p0, p1}, Lcom/netease/mpay/f/an;->c(Lcom/netease/mpay/f/a/d$d;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/server/a/b/a;

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/d$d;->a()Lcom/netease/mpay/e/b/f;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    iget-object v3, v0, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/netease/mpay/server/a/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Lcom/netease/mpay/server/d;->b(Lcom/netease/mpay/server/a/ax;)Lcom/netease/mpay/server/response/ae;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_a
    new-instance v0, Lcom/netease/mpay/server/a/b/k;

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/d$d;->b()Lcom/netease/mpay/e/b/f;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/netease/mpay/server/a/b/k;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/netease/mpay/server/d;->b(Lcom/netease/mpay/server/a/ax;)Lcom/netease/mpay/server/response/ae;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_b
    new-instance v0, Lcom/netease/mpay/server/a/b/r;

    iget-object v1, p0, Lcom/netease/mpay/f/an;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/d$d;->b()Lcom/netease/mpay/e/b/f;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/d$d;->b()Lcom/netease/mpay/e/b/f;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/mpay/e/b/f;->i:[B

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/mpay/server/a/b/r;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {v7, v0}, Lcom/netease/mpay/server/d;->b(Lcom/netease/mpay/server/a/ax;)Lcom/netease/mpay/server/response/ae;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_c
    new-instance v0, Lcom/netease/mpay/server/a/b/b;

    iget-object v1, p0, Lcom/netease/mpay/f/an;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/d$d;->a()Lcom/netease/mpay/e/b/f;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/netease/mpay/f/an;->c(Lcom/netease/mpay/f/a/d$d;)Lcom/netease/mpay/e/b/o;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/f/an;->k:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netease/mpay/server/a/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/netease/mpay/server/d;->b(Lcom/netease/mpay/server/a/ax;)Lcom/netease/mpay/server/response/ae;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_d
    new-instance v0, Lcom/netease/mpay/server/a/b/h;

    iget-object v1, p0, Lcom/netease/mpay/f/an;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/d$d;->a()Lcom/netease/mpay/e/b/f;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/netease/mpay/f/an;->c(Lcom/netease/mpay/f/a/d$d;)Lcom/netease/mpay/e/b/o;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/f/an;->k:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netease/mpay/server/a/b/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/netease/mpay/server/d;->b(Lcom/netease/mpay/server/a/ax;)Lcom/netease/mpay/server/response/ae;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_e
    new-instance v0, Lcom/netease/mpay/server/a/b/j;

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/d$d;->a()Lcom/netease/mpay/e/b/f;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/netease/mpay/f/an;->c(Lcom/netease/mpay/f/a/d$d;)Lcom/netease/mpay/e/b/o;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/f/an;->l:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/mpay/server/a/b/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/netease/mpay/server/d;->b(Lcom/netease/mpay/server/a/ax;)Lcom/netease/mpay/server/response/ae;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_f
    iget-object v0, p0, Lcom/netease/mpay/f/an;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netease/mpay/server/a;

    iget-object v1, p0, Lcom/netease/mpay/f/an;->c:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->ci:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/mpay/server/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/netease/mpay/server/a/b/q;

    iget-object v1, p0, Lcom/netease/mpay/f/an;->m:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/d$d;->b()Lcom/netease/mpay/e/b/f;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v3}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/f/an;->c:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Lcom/netease/mpay/e/c/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/f/an;->n:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netease/mpay/server/a/b/q;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/netease/mpay/server/d;->b(Lcom/netease/mpay/server/a/ax;)Lcom/netease/mpay/server/response/ae;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_10
    new-instance v0, Lcom/netease/mpay/server/a/b/l;

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/d$d;->b()Lcom/netease/mpay/e/b/f;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/netease/mpay/f/an;->c(Lcom/netease/mpay/f/a/d$d;)Lcom/netease/mpay/e/b/o;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/server/a/b/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/netease/mpay/server/d;->b(Lcom/netease/mpay/server/a/ax;)Lcom/netease/mpay/server/response/ae;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_11
    new-instance v0, Lcom/netease/mpay/server/a/b/m;

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/d$d;->b()Lcom/netease/mpay/e/b/f;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/netease/mpay/f/an;->c(Lcom/netease/mpay/f/a/d$d;)Lcom/netease/mpay/e/b/o;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/server/a/b/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/netease/mpay/server/d;->b(Lcom/netease/mpay/server/a/ax;)Lcom/netease/mpay/server/response/ae;

    move-result-object v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public b(Ljava/lang/String;)Lcom/netease/mpay/f/an;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/f/an;->l:Ljava/lang/String;

    return-object p0
.end method

.method protected synthetic b(Lcom/netease/mpay/f/a/d$d;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netease/mpay/f/an;->a(Lcom/netease/mpay/f/a/d$d;)Lcom/netease/mpay/server/response/ae;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/netease/mpay/f/an;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/f/an;->b:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/netease/mpay/f/an;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/f/an;->j:Ljava/lang/String;

    return-object p0
.end method
