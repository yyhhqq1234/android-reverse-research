.class public Lcom/netease/mpay/f/m;
.super Lcom/netease/mpay/f/au;


# instance fields
.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/f/au$a;)V
    .locals 7

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p7

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/f/au;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZLcom/netease/mpay/f/au$a;)V

    iput-object p4, p0, Lcom/netease/mpay/f/m;->j:Ljava/lang/String;

    iput-object p5, p0, Lcom/netease/mpay/f/m;->k:Ljava/lang/String;

    iput-object p6, p0, Lcom/netease/mpay/f/m;->l:Ljava/lang/String;

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

    const/4 v9, 0x1

    iget-object v8, p1, Lcom/netease/mpay/f/au$b;->b:Lcom/netease/mpay/server/d;

    new-instance v0, Lcom/netease/mpay/server/a/e;

    iget-object v1, p0, Lcom/netease/mpay/f/m;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/netease/mpay/f/au$b;->c:Lcom/netease/mpay/e/b/f;

    iget-object v2, v2, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/f/m;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/f/m;->k:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/f/m;->l:Ljava/lang/String;

    iget-object v6, p1, Lcom/netease/mpay/f/au$b;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v6}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v6

    iget-object v7, p0, Lcom/netease/mpay/f/m;->c:Landroid/app/Activity;

    invoke-virtual {v6, v7}, Lcom/netease/mpay/e/c/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/netease/mpay/f/m;->e:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcom/netease/mpay/server/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lcom/netease/mpay/server/d;->a(Lcom/netease/mpay/server/a/ax;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/m;

    new-instance v1, Lcom/netease/mpay/e/b/ah;

    invoke-direct {v1, v9}, Lcom/netease/mpay/e/b/ah;-><init>(Z)V

    invoke-virtual {p0, p1, v0, v1, v9}, Lcom/netease/mpay/f/m;->a(Lcom/netease/mpay/f/au$b;Lcom/netease/mpay/server/response/m;Lcom/netease/mpay/e/b/o$a;Z)V

    return-object v0
.end method
