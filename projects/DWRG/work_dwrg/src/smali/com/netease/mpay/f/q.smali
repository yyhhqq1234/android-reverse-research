.class public Lcom/netease/mpay/f/q;
.super Lcom/netease/mpay/f/au;


# instance fields
.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/au$a;)V
    .locals 7

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/f/au;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZLcom/netease/mpay/f/au$a;)V

    iput-object p4, p0, Lcom/netease/mpay/f/q;->j:Ljava/lang/String;

    iput-object p5, p0, Lcom/netease/mpay/f/q;->k:Ljava/lang/String;

    iput-object p6, p0, Lcom/netease/mpay/f/q;->l:Ljava/lang/String;

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
    .locals 8

    iget-object v0, p0, Lcom/netease/mpay/f/q;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/f/q;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/f/q;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/netease/mpay/server/a;

    iget-object v1, p0, Lcom/netease/mpay/f/q;->c:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->al:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/mpay/server/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v7, p1, Lcom/netease/mpay/f/au$b;->b:Lcom/netease/mpay/server/d;

    new-instance v0, Lcom/netease/mpay/server/a/r;

    iget-object v1, p0, Lcom/netease/mpay/f/q;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/netease/mpay/f/au$b;->c:Lcom/netease/mpay/e/b/f;

    iget-object v2, v2, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/netease/mpay/f/au$b;->c:Lcom/netease/mpay/e/b/f;

    iget-object v3, v3, Lcom/netease/mpay/e/b/f;->i:[B

    iget-object v4, p0, Lcom/netease/mpay/f/q;->j:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/f/q;->k:Ljava/lang/String;

    iget-object v6, p0, Lcom/netease/mpay/f/q;->l:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/server/a/r;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/netease/mpay/server/d;->a(Lcom/netease/mpay/server/a/ax;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/m;

    new-instance v1, Lcom/netease/mpay/e/b/j;

    iget-object v2, p0, Lcom/netease/mpay/f/q;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/f/q;->l:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/f/q;->k:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/netease/mpay/e/b/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/netease/mpay/f/q;->a(Lcom/netease/mpay/f/au$b;Lcom/netease/mpay/server/response/m;Lcom/netease/mpay/e/b/o$a;Z)V

    return-object v0
.end method
