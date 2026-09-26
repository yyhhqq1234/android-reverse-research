.class public Lcom/netease/mpay/bu;
.super Lcom/netease/mpay/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/bu$a;,
        Lcom/netease/mpay/bu$b;
    }
.end annotation


# instance fields
.field private d:Lcom/netease/mpay/b/e;

.field private e:Lcom/netease/mpay/e/b;

.field private f:Lcom/netease/mpay/widget/s;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netease/mpay/a;-><init>(Landroid/support/v4/app/FragmentActivity;)V

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

.method static synthetic a(Lcom/netease/mpay/bu;)Lcom/netease/mpay/b/e;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/bu;->d:Lcom/netease/mpay/b/e;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/mpay/bu;Lcom/netease/mpay/e/b;Lcom/netease/mpay/e/b/o;Ljava/lang/String;Lcom/netease/mpay/AuthenticationCallback;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/netease/mpay/bu;->a(Lcom/netease/mpay/e/b;Lcom/netease/mpay/e/b/o;Ljava/lang/String;Lcom/netease/mpay/AuthenticationCallback;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/bu;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/bu;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/bu;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/bu;->a(ZZ)V

    return-void
.end method

.method private a(Lcom/netease/mpay/e/b/o;Ljava/lang/Integer;Lcom/netease/mpay/AuthenticationCallback;)V
    .locals 7

    new-instance v0, Lcom/netease/mpay/f/bm;

    iget-object v1, p0, Lcom/netease/mpay/bu;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/bu;->d:Lcom/netease/mpay/b/e;

    invoke-virtual {v2}, Lcom/netease/mpay/b/e;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/bu;->d:Lcom/netease/mpay/b/e;

    invoke-virtual {v3}, Lcom/netease/mpay/b/e;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    new-instance v6, Lcom/netease/mpay/bw;

    invoke-direct {v6, p0, p1, p3, p2}, Lcom/netease/mpay/bw;-><init>(Lcom/netease/mpay/bu;Lcom/netease/mpay/e/b/o;Lcom/netease/mpay/AuthenticationCallback;Ljava/lang/Integer;)V

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/f/bm;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/e/b/o;ZLcom/netease/mpay/f/au$a;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/bm;->h()V

    return-void
.end method

.method private a(Lcom/netease/mpay/e/b;Lcom/netease/mpay/e/b/o;Ljava/lang/String;Lcom/netease/mpay/AuthenticationCallback;Ljava/lang/Integer;)V
    .locals 3

    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/bu;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/netease/mpay/bu;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->K:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netease/mpay/bx;

    invoke-direct {v2, p0, p1, p2}, Lcom/netease/mpay/bx;-><init>(Lcom/netease/mpay/bu;Lcom/netease/mpay/e/b;Lcom/netease/mpay/e/b/o;)V

    invoke-virtual {v0, p3, v1, v2}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private a(ZZ)V
    .locals 11

    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/netease/mpay/bu;->d:Lcom/netease/mpay/b/e;

    iget v0, v0, Lcom/netease/mpay/b/e;->c:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/bu;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/bu;->d:Lcom/netease/mpay/b/e;

    invoke-virtual {v2}, Lcom/netease/mpay/b/e;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/bu;->d:Lcom/netease/mpay/b/e;

    iget v3, v3, Lcom/netease/mpay/b/e;->c:I

    iget-object v4, p0, Lcom/netease/mpay/bu;->d:Lcom/netease/mpay/b/e;

    iget-object v4, v4, Lcom/netease/mpay/b/e;->a:Ljava/lang/String;

    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;ILjava/lang/String;Ljava/lang/Integer;)Z

    :goto_0
    return-void

    :pswitch_1
    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/bu;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/bu;->d:Lcom/netease/mpay/b/e;

    invoke-virtual {v2}, Lcom/netease/mpay/b/e;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v2

    iget-object v4, p0, Lcom/netease/mpay/bu;->d:Lcom/netease/mpay/b/e;

    iget-object v4, v4, Lcom/netease/mpay/b/e;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/netease/mpay/bu;->d:Lcom/netease/mpay/b/e;

    iget-object v6, v6, Lcom/netease/mpay/b/e;->a:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v7, v5

    invoke-virtual/range {v0 .. v8}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/AuthenticationCallback;Ljava/lang/Integer;)V

    goto :goto_0

    :pswitch_2
    new-instance v4, Lcom/netease/mpay/cw;

    iget-object v5, p0, Lcom/netease/mpay/bu;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, p0, Lcom/netease/mpay/bu;->d:Lcom/netease/mpay/b/e;

    invoke-virtual {v0}, Lcom/netease/mpay/b/e;->a()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/netease/mpay/bu;->d:Lcom/netease/mpay/b/e;

    invoke-virtual {v0}, Lcom/netease/mpay/b/e;->b()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/netease/mpay/bv;

    invoke-direct {v9, p0}, Lcom/netease/mpay/bv;-><init>(Lcom/netease/mpay/bu;)V

    move v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/netease/mpay/cw;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/f/au$a;)V

    invoke-virtual {v4}, Lcom/netease/mpay/cw;->a()V

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/mpay/bu;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, p0, Lcom/netease/mpay/bu;->d:Lcom/netease/mpay/b/e;

    invoke-virtual {v0}, Lcom/netease/mpay/b/e;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v6

    iget-object v0, p0, Lcom/netease/mpay/bu;->d:Lcom/netease/mpay/b/e;

    iget-object v7, v0, Lcom/netease/mpay/b/e;->a:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move v9, v3

    invoke-virtual/range {v4 .. v10}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;Ljava/lang/String;ZZLjava/lang/Integer;)V

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/bu;->a:Landroid/support/v4/app/FragmentActivity;

    new-instance v2, Lcom/netease/mpay/b/m$f;

    iget-object v3, p0, Lcom/netease/mpay/bu;->d:Lcom/netease/mpay/b/e;

    invoke-virtual {v3}, Lcom/netease/mpay/b/e;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/bu;->d:Lcom/netease/mpay/b/e;

    iget-object v4, v4, Lcom/netease/mpay/b/e;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v5}, Lcom/netease/mpay/b/m$f;-><init>(Lcom/netease/mpay/b/a$a;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/AuthenticationCallback;)V

    iget-object v3, p0, Lcom/netease/mpay/bu;->d:Lcom/netease/mpay/b/e;

    iget-object v3, v3, Lcom/netease/mpay/b/e;->a:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/m;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :pswitch_5
    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/bu;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/bu;->d:Lcom/netease/mpay/b/e;

    invoke-virtual {v2}, Lcom/netease/mpay/b/e;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/bu;->d:Lcom/netease/mpay/b/e;

    iget-object v3, v3, Lcom/netease/mpay/b/e;->a:Ljava/lang/String;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    :pswitch_6
    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/bu;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/bu;->d:Lcom/netease/mpay/b/e;

    invoke-virtual {v2}, Lcom/netease/mpay/b/e;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/bu;->d:Lcom/netease/mpay/b/e;

    iget-object v3, v3, Lcom/netease/mpay/b/e;->a:Ljava/lang/String;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netease/mpay/hi;->b(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    :pswitch_7
    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/bu;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/bu;->d:Lcom/netease/mpay/b/e;

    invoke-virtual {v2}, Lcom/netease/mpay/b/e;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/bu;->d:Lcom/netease/mpay/b/e;

    iget-object v5, v3, Lcom/netease/mpay/b/e;->a:Ljava/lang/String;

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;ZZLjava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    :pswitch_8
    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/bu;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/bu;->d:Lcom/netease/mpay/b/e;

    invoke-virtual {v2}, Lcom/netease/mpay/b/e;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/e/b;

    iget-object v4, p0, Lcom/netease/mpay/bu;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v5, p0, Lcom/netease/mpay/bu;->d:Lcom/netease/mpay/b/e;

    invoke-virtual {v5}, Lcom/netease/mpay/b/e;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/bu;->d:Lcom/netease/mpay/b/e;

    iget-object v4, v4, Lcom/netease/mpay/b/e;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/netease/mpay/e/c/k;->a(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v3

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netease/mpay/hi;->b(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/e/b/o;Ljava/lang/Integer;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic b(Lcom/netease/mpay/bu;)Lcom/netease/mpay/e/b;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/bu;->e:Lcom/netease/mpay/e/b;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/bu;->f:Lcom/netease/mpay/widget/s;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/bu;->d:Lcom/netease/mpay/b/e;

    iget-object v0, v0, Lcom/netease/mpay/b/e;->d:Lcom/netease/mpay/bu$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/bu;->d:Lcom/netease/mpay/b/e;

    iget-object v0, v0, Lcom/netease/mpay/b/e;->d:Lcom/netease/mpay/bu$b;

    invoke-interface {v0}, Lcom/netease/mpay/bu$b;->b()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)Lcom/netease/mpay/b/a;
    .locals 1

    new-instance v0, Lcom/netease/mpay/b/e;

    invoke-direct {v0, p1}, Lcom/netease/mpay/b/e;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/netease/mpay/bu;->d:Lcom/netease/mpay/b/e;

    iget-object v0, p0, Lcom/netease/mpay/bu;->d:Lcom/netease/mpay/b/e;

    return-object v0
.end method

.method public a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/netease/mpay/a;->a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V

    iget-object v0, p0, Lcom/netease/mpay/bu;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    :cond_0
    instance-of v0, p4, Lcom/netease/mpay/b/ao;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/bu;->d:Lcom/netease/mpay/b/e;

    iget-object v0, v0, Lcom/netease/mpay/b/e;->d:Lcom/netease/mpay/bu$b;

    invoke-interface {v0}, Lcom/netease/mpay/bu$b;->a()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/bu;->d:Lcom/netease/mpay/b/e;

    iget-object v0, v0, Lcom/netease/mpay/b/e;->d:Lcom/netease/mpay/bu$b;

    invoke-interface {v0}, Lcom/netease/mpay/bu$b;->b()V

    goto :goto_0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->b(Landroid/os/Bundle;)V

    new-instance v2, Lcom/netease/mpay/widget/s;

    iget-object v3, p0, Lcom/netease/mpay/bu;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v2, v3}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/netease/mpay/bu;->f:Lcom/netease/mpay/widget/s;

    new-instance v2, Lcom/netease/mpay/e/b;

    iget-object v3, p0, Lcom/netease/mpay/bu;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v4, p0, Lcom/netease/mpay/bu;->d:Lcom/netease/mpay/b/e;

    invoke-virtual {v4}, Lcom/netease/mpay/b/e;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/netease/mpay/bu;->e:Lcom/netease/mpay/e/b;

    iget-object v2, p0, Lcom/netease/mpay/bu;->e:Lcom/netease/mpay/e/b;

    invoke-virtual {v2}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/bu;->d:Lcom/netease/mpay/b/e;

    iget-object v3, v3, Lcom/netease/mpay/b/e;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/netease/mpay/e/c/k;->a(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v0, Lcom/netease/mpay/bu$a;

    invoke-direct {v0, p0, v5}, Lcom/netease/mpay/bu$a;-><init>(Lcom/netease/mpay/bu;Lcom/netease/mpay/bv;)V

    invoke-direct {p0, v2, v5, v0}, Lcom/netease/mpay/bu;->a(Lcom/netease/mpay/e/b/o;Ljava/lang/Integer;Lcom/netease/mpay/AuthenticationCallback;)V

    :goto_0
    return-void

    :cond_0
    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v0

    :goto_1
    if-nez v2, :cond_2

    :goto_2
    invoke-direct {p0, v0, v2}, Lcom/netease/mpay/bu;->a(ZZ)V

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method
