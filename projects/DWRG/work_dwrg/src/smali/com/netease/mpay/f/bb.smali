.class public Lcom/netease/mpay/f/bb;
.super Lcom/netease/mpay/f/au;


# instance fields
.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/au$a;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/f/au;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZLcom/netease/mpay/f/au$a;)V

    iput-object p4, p0, Lcom/netease/mpay/f/bb;->j:Ljava/lang/String;

    iput-object p5, p0, Lcom/netease/mpay/f/bb;->k:Ljava/lang/String;

    iput-object p6, p0, Lcom/netease/mpay/f/bb;->l:Ljava/lang/String;

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
    .locals 10

    const/4 v7, 0x1

    new-instance v8, Lcom/netease/mpay/server/d;

    iget-object v0, p0, Lcom/netease/mpay/f/bb;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/f/bb;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/f/bb;->e:Ljava/lang/String;

    invoke-direct {v8, v0, v1, v2}, Lcom/netease/mpay/server/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/netease/mpay/server/a/ag;

    iget-object v1, p1, Lcom/netease/mpay/f/au$b;->c:Lcom/netease/mpay/e/b/f;

    iget-object v1, v1, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/f/bb;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/f/bb;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/f/bb;->k:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/f/bb;->l:Ljava/lang/String;

    iget-object v6, p1, Lcom/netease/mpay/f/au$b;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v6}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v6

    iget-object v9, p0, Lcom/netease/mpay/f/bb;->c:Landroid/app/Activity;

    invoke-virtual {v6, v9}, Lcom/netease/mpay/e/c/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/server/a/ag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lcom/netease/mpay/server/d;->a(Lcom/netease/mpay/server/a/ax;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/m;

    iget-object v1, p0, Lcom/netease/mpay/f/bb;->l:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v2, Lcom/netease/mpay/e/b/x;

    invoke-direct {v2, v7}, Lcom/netease/mpay/e/b/x;-><init>(Z)V

    iget-object v1, v0, Lcom/netease/mpay/server/response/m;->u:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v7

    :goto_0
    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/netease/mpay/f/bb;->a(Lcom/netease/mpay/f/au$b;Lcom/netease/mpay/server/response/m;Lcom/netease/mpay/e/b/o$a;Z)V

    :goto_1
    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/netease/mpay/e/b/ah;

    invoke-direct {v1, v7}, Lcom/netease/mpay/e/b/ah;-><init>(Z)V

    invoke-virtual {p0, p1, v0, v1, v7}, Lcom/netease/mpay/f/bb;->a(Lcom/netease/mpay/f/au$b;Lcom/netease/mpay/server/response/m;Lcom/netease/mpay/e/b/o$a;Z)V

    goto :goto_1
.end method
