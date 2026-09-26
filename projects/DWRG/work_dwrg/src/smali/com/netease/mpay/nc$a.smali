.class Lcom/netease/mpay/nc$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/nn$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/nc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/nc;


# direct methods
.method private constructor <init>(Lcom/netease/mpay/nc;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/nc$a;->a:Lcom/netease/mpay/nc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

.method synthetic constructor <init>(Lcom/netease/mpay/nc;Lcom/netease/mpay/nd;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/nc$a;-><init>(Lcom/netease/mpay/nc;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/e/b/aj$a;)V
    .locals 13

    const/4 v10, 0x7

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v12, 0x0

    iget-object v0, p0, Lcom/netease/mpay/nc$a;->a:Lcom/netease/mpay/nc;

    invoke-static {v0}, Lcom/netease/mpay/nc;->d(Lcom/netease/mpay/nc;)Lcom/netease/mpay/e/b/af;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netease/mpay/e/b/af;->v:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/netease/mpay/e/b/aj$a;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/nc$a;->a:Lcom/netease/mpay/nc;

    iget-object v0, v0, Lcom/netease/mpay/nc;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/netease/mpay/bk;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/widget/ay;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/nc$a;->a:Lcom/netease/mpay/nc;

    iget-object v1, v1, Lcom/netease/mpay/nc;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/nc$a;->a:Lcom/netease/mpay/nc;

    invoke-static {v2}, Lcom/netease/mpay/nc;->d(Lcom/netease/mpay/nc;)Lcom/netease/mpay/e/b/af;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/e/b/af;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/nc$a;->a:Lcom/netease/mpay/nc;

    invoke-static {v3}, Lcom/netease/mpay/nc;->f(Lcom/netease/mpay/nc;)Lcom/netease/mpay/e/b/o;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/nc$a;->a:Lcom/netease/mpay/nc;

    invoke-static {v4}, Lcom/netease/mpay/nc;->f(Lcom/netease/mpay/nc;)Lcom/netease/mpay/e/b/o;

    move-result-object v4

    iget-object v4, v4, Lcom/netease/mpay/e/b/o;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/nc$a;->a:Lcom/netease/mpay/nc;

    invoke-static {v5}, Lcom/netease/mpay/nc;->f(Lcom/netease/mpay/nc;)Lcom/netease/mpay/e/b/o;

    move-result-object v5

    iget v5, v5, Lcom/netease/mpay/e/b/o;->f:I

    const-string v6, "user_index"

    iget-object v7, p1, Lcom/netease/mpay/e/b/aj$a;->e:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    const-string v0, "forum"

    iget-object v1, p1, Lcom/netease/mpay/e/b/aj$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/nc$a;->a:Lcom/netease/mpay/nc;

    invoke-static {v0}, Lcom/netease/mpay/nc;->d(Lcom/netease/mpay/nc;)Lcom/netease/mpay/e/b/af;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netease/mpay/e/b/af;->q:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/nc$a;->a:Lcom/netease/mpay/nc;

    iget-object v0, v0, Lcom/netease/mpay/nc;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/netease/mpay/cr;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/netease/mpay/cr;

    iget-object v1, p0, Lcom/netease/mpay/nc$a;->a:Lcom/netease/mpay/nc;

    iget-object v1, v1, Lcom/netease/mpay/nc;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/nc$a;->a:Lcom/netease/mpay/nc;

    invoke-static {v2}, Lcom/netease/mpay/nc;->b(Lcom/netease/mpay/nc;)Lcom/netease/mpay/b/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/b/k;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/nc$a;->a:Lcom/netease/mpay/nc;

    invoke-static {v3}, Lcom/netease/mpay/nc;->b(Lcom/netease/mpay/nc;)Lcom/netease/mpay/b/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/b/k;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/mpay/cr;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/mpay/nc$a;->a:Lcom/netease/mpay/nc;

    invoke-static {v1}, Lcom/netease/mpay/nc;->d(Lcom/netease/mpay/nc;)Lcom/netease/mpay/e/b/af;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/e/b/af;->r:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/nc$a;->a:Lcom/netease/mpay/nc;

    invoke-static {v2}, Lcom/netease/mpay/nc;->d(Lcom/netease/mpay/nc;)Lcom/netease/mpay/e/b/af;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/e/b/af;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/cr;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/nc$a;->a:Lcom/netease/mpay/nc;

    iget-object v0, v0, Lcom/netease/mpay/nc;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/netease/mpay/b$a;->L:Lcom/netease/mpay/b$a;

    new-instance v2, Lcom/netease/mpay/b/ah;

    iget-object v3, p0, Lcom/netease/mpay/nc$a;->a:Lcom/netease/mpay/nc;

    invoke-static {v3}, Lcom/netease/mpay/nc;->b(Lcom/netease/mpay/nc;)Lcom/netease/mpay/b/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/b/k;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v3

    sget-object v4, Lcom/netease/mpay/f/an$a;->b:Lcom/netease/mpay/f/an$a;

    invoke-direct {v2, v3, v4}, Lcom/netease/mpay/b/ah;-><init>(Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/f/an$a;)V

    iget-object v3, p0, Lcom/netease/mpay/nc$a;->a:Lcom/netease/mpay/nc;

    invoke-static {v3}, Lcom/netease/mpay/nc;->d(Lcom/netease/mpay/nc;)Lcom/netease/mpay/e/b/af;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/mpay/e/b/af;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/netease/mpay/b/ah;->a(Ljava/lang/String;)Lcom/netease/mpay/b/ah;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v9, v3}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_2
    const-string v0, "deposit"

    iget-object v1, p1, Lcom/netease/mpay/e/b/aj$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netease/mpay/nc$a;->a:Lcom/netease/mpay/nc;

    invoke-static {v0}, Lcom/netease/mpay/nc;->f(Lcom/netease/mpay/nc;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    iget v0, v0, Lcom/netease/mpay/e/b/o;->f:I

    if-ne v10, v0, :cond_3

    new-instance v0, Lcom/netease/mpay/f/ay;

    iget-object v1, p0, Lcom/netease/mpay/nc$a;->a:Lcom/netease/mpay/nc;

    iget-object v1, v1, Lcom/netease/mpay/nc;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/nc$a;->a:Lcom/netease/mpay/nc;

    invoke-static {v2}, Lcom/netease/mpay/nc;->b(Lcom/netease/mpay/nc;)Lcom/netease/mpay/b/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/b/k;->c()Lcom/netease/mpay/MpayConfig;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/nc$a;->a:Lcom/netease/mpay/nc;

    invoke-static {v3}, Lcom/netease/mpay/nc;->b(Lcom/netease/mpay/nc;)Lcom/netease/mpay/b/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/b/k;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/nc$a;->a:Lcom/netease/mpay/nc;

    invoke-static {v4}, Lcom/netease/mpay/nc;->b(Lcom/netease/mpay/nc;)Lcom/netease/mpay/b/k;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/mpay/b/k;->b()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/netease/mpay/nm;

    invoke-direct {v5, p0}, Lcom/netease/mpay/nm;-><init>(Lcom/netease/mpay/nc$a;)V

    iget-object v6, p0, Lcom/netease/mpay/nc$a;->a:Lcom/netease/mpay/nc;

    invoke-static {v6}, Lcom/netease/mpay/nc;->f(Lcom/netease/mpay/nc;)Lcom/netease/mpay/e/b/o;

    move-result-object v6

    const/16 v7, 0xd

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/netease/mpay/f/ay;-><init>(Landroid/app/Activity;Lcom/netease/mpay/MpayConfig;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/ay$a;Lcom/netease/mpay/e/b/o;Ljava/lang/Integer;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/ay;->h()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/netease/mpay/nc$a;->a:Lcom/netease/mpay/nc;

    invoke-static {v0}, Lcom/netease/mpay/nc;->g(Lcom/netease/mpay/nc;)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "guest_bind"

    iget-object v1, p1, Lcom/netease/mpay/e/b/aj$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/nc$a;->a:Lcom/netease/mpay/nc;

    iget-object v1, v1, Lcom/netease/mpay/nc;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/nc$a;->a:Lcom/netease/mpay/nc;

    invoke-static {v2}, Lcom/netease/mpay/nc;->b(Lcom/netease/mpay/nc;)Lcom/netease/mpay/b/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/b/k;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/nc$a;->a:Lcom/netease/mpay/nc;

    invoke-static {v3}, Lcom/netease/mpay/nc;->b(Lcom/netease/mpay/nc;)Lcom/netease/mpay/b/k;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/mpay/b/k;->e:Lcom/netease/mpay/AuthenticationCallback;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move v4, v12

    invoke-virtual/range {v0 .. v5}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/AuthenticationCallback;ZLjava/lang/Integer;)V

    iget-object v0, p0, Lcom/netease/mpay/nc$a;->a:Lcom/netease/mpay/nc;

    invoke-static {v0, v12}, Lcom/netease/mpay/nc;->a(Lcom/netease/mpay/nc;Z)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "mobile_manager"

    iget-object v1, p1, Lcom/netease/mpay/e/b/aj$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netease/mpay/nc$a;->a:Lcom/netease/mpay/nc;

    iget-object v0, v0, Lcom/netease/mpay/nc;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/netease/mpay/b$a;->y:Lcom/netease/mpay/b$a;

    new-instance v2, Lcom/netease/mpay/b/a;

    iget-object v3, p0, Lcom/netease/mpay/nc$a;->a:Lcom/netease/mpay/nc;

    invoke-static {v3}, Lcom/netease/mpay/nc;->b(Lcom/netease/mpay/nc;)Lcom/netease/mpay/b/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/b/k;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/netease/mpay/b/a;-><init>(Lcom/netease/mpay/b/a$a;)V

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v9, v3}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "mail"

    iget-object v1, p1, Lcom/netease/mpay/e/b/aj$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/netease/mpay/nc$a;->a:Lcom/netease/mpay/nc;

    iget-object v0, v0, Lcom/netease/mpay/nc;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/netease/mpay/b$a;->P:Lcom/netease/mpay/b$a;

    new-instance v2, Lcom/netease/mpay/b/a;

    iget-object v3, p0, Lcom/netease/mpay/nc$a;->a:Lcom/netease/mpay/nc;

    invoke-static {v3}, Lcom/netease/mpay/nc;->b(Lcom/netease/mpay/nc;)Lcom/netease/mpay/b/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/b/k;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/netease/mpay/b/a;-><init>(Lcom/netease/mpay/b/a$a;)V

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v9, v3}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    goto/16 :goto_0

    :cond_7
    const-string v0, "feedback"

    iget-object v1, p1, Lcom/netease/mpay/e/b/aj$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/netease/mpay/nc$a;->a:Lcom/netease/mpay/nc;

    iget-object v0, v0, Lcom/netease/mpay/nc;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/netease/mpay/b$a;->R:Lcom/netease/mpay/b$a;

    new-instance v2, Lcom/netease/mpay/b/a;

    iget-object v3, p0, Lcom/netease/mpay/nc$a;->a:Lcom/netease/mpay/nc;

    invoke-static {v3}, Lcom/netease/mpay/nc;->b(Lcom/netease/mpay/nc;)Lcom/netease/mpay/b/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/b/k;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/netease/mpay/b/a;-><init>(Lcom/netease/mpay/b/a$a;)V

    const/16 v3, 0xe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v9, v3}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "logout"

    iget-object v1, p1, Lcom/netease/mpay/e/b/aj$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v4

    iget-object v0, p0, Lcom/netease/mpay/nc$a;->a:Lcom/netease/mpay/nc;

    iget-object v5, v0, Lcom/netease/mpay/nc;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, p0, Lcom/netease/mpay/nc$a;->a:Lcom/netease/mpay/nc;

    invoke-static {v0}, Lcom/netease/mpay/nc;->b(Lcom/netease/mpay/nc;)Lcom/netease/mpay/b/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/b/k;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v6

    iget-object v0, p0, Lcom/netease/mpay/nc$a;->a:Lcom/netease/mpay/nc;

    invoke-static {v0}, Lcom/netease/mpay/nc;->b(Lcom/netease/mpay/nc;)Lcom/netease/mpay/b/k;

    move-result-object v0

    iget-object v10, v0, Lcom/netease/mpay/b/k;->e:Lcom/netease/mpay/AuthenticationCallback;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move v7, v12

    move v9, v12

    invoke-virtual/range {v4 .. v11}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;ZZZLcom/netease/mpay/AuthenticationCallback;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/netease/mpay/nc$a;->a:Lcom/netease/mpay/nc;

    invoke-static {v0, v12}, Lcom/netease/mpay/nc;->a(Lcom/netease/mpay/nc;Z)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/netease/mpay/nc$a;->a:Lcom/netease/mpay/nc;

    iget-object v0, v0, Lcom/netease/mpay/nc;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/netease/mpay/b$a;->L:Lcom/netease/mpay/b$a;

    new-instance v2, Lcom/netease/mpay/b/ah;

    iget-object v3, p0, Lcom/netease/mpay/nc$a;->a:Lcom/netease/mpay/nc;

    invoke-static {v3}, Lcom/netease/mpay/nc;->b(Lcom/netease/mpay/nc;)Lcom/netease/mpay/b/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/b/k;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v3

    sget-object v4, Lcom/netease/mpay/f/an$a;->a:Lcom/netease/mpay/f/an$a;

    invoke-direct {v2, v3, v4}, Lcom/netease/mpay/b/ah;-><init>(Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/f/an$a;)V

    iget-object v3, p1, Lcom/netease/mpay/e/b/aj$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/netease/mpay/b/ah;->b(Ljava/lang/String;)Lcom/netease/mpay/b/ah;

    move-result-object v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v9, v3}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    goto/16 :goto_0
.end method
