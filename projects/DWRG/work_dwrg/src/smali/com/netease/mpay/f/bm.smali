.class public Lcom/netease/mpay/f/bm;
.super Lcom/netease/mpay/f/au;


# instance fields
.field private j:Lcom/netease/mpay/e/b/o;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/e/b/o;ZLcom/netease/mpay/f/au$a;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/f/au;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZLcom/netease/mpay/f/au$a;)V

    iput-object p4, p0, Lcom/netease/mpay/f/bm;->j:Lcom/netease/mpay/e/b/o;

    iput-object p6, p0, Lcom/netease/mpay/f/bm;->a:Lcom/netease/mpay/f/au$a;

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


# virtual methods
.method protected a(Lcom/netease/mpay/f/au$b;)Lcom/netease/mpay/server/response/m;
    .locals 9

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/netease/mpay/f/bm;->j:Lcom/netease/mpay/e/b/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/f/bm;->j:Lcom/netease/mpay/e/b/o;

    iget-object v0, v0, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/f/bm;->j:Lcom/netease/mpay/e/b/o;

    iget-object v0, v0, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/netease/mpay/server/a$f;

    iget-object v1, p0, Lcom/netease/mpay/f/bm;->c:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->u:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/mpay/server/a$f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/f/bm;->j:Lcom/netease/mpay/e/b/o;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/f/au$b;->a(Lcom/netease/mpay/e/b/o;)V

    iget-object v0, p0, Lcom/netease/mpay/f/bm;->j:Lcom/netease/mpay/e/b/o;

    iget v0, v0, Lcom/netease/mpay/e/b/o;->f:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    new-instance v0, Lcom/netease/mpay/server/a/ba;

    iget-object v1, p0, Lcom/netease/mpay/f/bm;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/f/bm;->j:Lcom/netease/mpay/e/b/o;

    iget-object v2, v2, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/netease/mpay/f/au$b;->c:Lcom/netease/mpay/e/b/f;

    iget-object v3, v3, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/f/bm;->j:Lcom/netease/mpay/e/b/o;

    iget-object v4, v4, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/f/bm;->e:Ljava/lang/String;

    const/4 v6, 0x7

    iget-object v8, p0, Lcom/netease/mpay/f/bm;->j:Lcom/netease/mpay/e/b/o;

    iget v8, v8, Lcom/netease/mpay/e/b/o;->f:I

    if-eq v6, v8, :cond_2

    iget-object v6, p0, Lcom/netease/mpay/f/bm;->j:Lcom/netease/mpay/e/b/o;

    invoke-static {v6}, Lcom/netease/mpay/e/b/ah;->c(Lcom/netease/mpay/e/b/o;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_2
    move v6, v7

    :goto_1
    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/server/a/ba;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/netease/mpay/f/bm;->j:Lcom/netease/mpay/e/b/o;

    iget v1, v1, Lcom/netease/mpay/e/b/o;->f:I

    if-ne v7, v1, :cond_3

    iget-object v1, p0, Lcom/netease/mpay/f/bm;->j:Lcom/netease/mpay/e/b/o;

    invoke-virtual {v1, v7}, Lcom/netease/mpay/e/b/o;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/server/a/ba;->c(Ljava/lang/String;)Lcom/netease/mpay/server/a/ba;

    :cond_3
    new-instance v1, Lcom/netease/mpay/server/d;

    iget-object v2, p0, Lcom/netease/mpay/f/bm;->c:Landroid/app/Activity;

    iget-object v3, p0, Lcom/netease/mpay/f/bm;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/f/bm;->e:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/netease/mpay/server/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/netease/mpay/server/d;->a(Lcom/netease/mpay/server/a/ax;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/mpay/server/response/m;

    iget-object v3, p0, Lcom/netease/mpay/f/bm;->j:Lcom/netease/mpay/e/b/o;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/netease/mpay/f/bm;->a(Lcom/netease/mpay/f/au$b;Lcom/netease/mpay/server/response/m;Lcom/netease/mpay/e/b/o;Lcom/netease/mpay/e/b/o$a;Z)V

    return-object v2

    :pswitch_0
    iget-object v0, p0, Lcom/netease/mpay/f/bm;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/f/bm;->j:Lcom/netease/mpay/e/b/o;

    invoke-static {v0, v1}, Lcom/netease/mpay/a/a;->a(Landroid/content/Context;Lcom/netease/mpay/e/b/o;)V

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
