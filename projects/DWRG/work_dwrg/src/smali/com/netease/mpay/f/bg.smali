.class public Lcom/netease/mpay/f/bg;
.super Lcom/netease/mpay/f/au;


# instance fields
.field private j:Lcom/netease/mpay/auth/a$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/auth/a$a;ZLcom/netease/mpay/f/au$a;)V
    .locals 7

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/f/au;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZLcom/netease/mpay/f/au$a;)V

    iput-object p4, p0, Lcom/netease/mpay/f/bg;->j:Lcom/netease/mpay/auth/a$a;

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
    .locals 5

    iget-object v0, p0, Lcom/netease/mpay/f/bg;->c:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->aw:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/f/bg;->j:Lcom/netease/mpay/auth/a$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/mpay/f/bg;->j:Lcom/netease/mpay/auth/a$a;

    iget-object v1, v1, Lcom/netease/mpay/auth/a$a;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netease/mpay/f/bg;->j:Lcom/netease/mpay/auth/a$a;

    iget-object v1, v1, Lcom/netease/mpay/auth/a$a;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Lcom/netease/mpay/server/a$f;

    invoke-direct {v1, v0}, Lcom/netease/mpay/server/a$f;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v0, p1, Lcom/netease/mpay/f/au$b;->b:Lcom/netease/mpay/server/d;

    new-instance v1, Lcom/netease/mpay/server/a/aq;

    iget-object v2, p1, Lcom/netease/mpay/f/au$b;->c:Lcom/netease/mpay/e/b/f;

    iget-object v2, v2, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/f/bg;->j:Lcom/netease/mpay/auth/a$a;

    iget-object v3, v3, Lcom/netease/mpay/auth/a$a;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/f/bg;->j:Lcom/netease/mpay/auth/a$a;

    iget-object v4, v4, Lcom/netease/mpay/auth/a$a;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/netease/mpay/server/a/aq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netease/mpay/server/d;->a(Lcom/netease/mpay/server/a/ax;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/m;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/netease/mpay/f/bg;->a(Lcom/netease/mpay/f/au$b;Lcom/netease/mpay/server/response/m;Lcom/netease/mpay/e/b/o$a;Z)V

    return-object v0
.end method
