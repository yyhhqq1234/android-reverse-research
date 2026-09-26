.class public Lcom/netease/mpay/f/bd;
.super Lcom/netease/mpay/f/au;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/f/bd$a;
    }
.end annotation


# instance fields
.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Lcom/netease/mpay/f/bd$a;

.field private n:Lcom/netease/mpay/server/response/w;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/f/bd$a;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p6

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/f/au;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZLcom/netease/mpay/f/au$a;)V

    iput-object p4, p0, Lcom/netease/mpay/f/bd;->j:Ljava/lang/String;

    iput-object p5, p0, Lcom/netease/mpay/f/bd;->k:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/netease/mpay/f/bd;->l:Z

    iput-object p7, p0, Lcom/netease/mpay/f/bd;->m:Lcom/netease/mpay/f/bd$a;

    iput-object v6, p0, Lcom/netease/mpay/f/bd;->n:Lcom/netease/mpay/server/response/w;

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

.method static synthetic a(Lcom/netease/mpay/f/bd;)Lcom/netease/mpay/f/bd$a;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/f/bd;->m:Lcom/netease/mpay/f/bd$a;

    return-object v0
.end method

.method static synthetic b(Lcom/netease/mpay/f/bd;)Lcom/netease/mpay/server/response/w;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/f/bd;->n:Lcom/netease/mpay/server/response/w;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/netease/mpay/f/au$b;)Lcom/netease/mpay/server/response/m;
    .locals 14

    const/4 v13, 0x1

    iget-object v0, p1, Lcom/netease/mpay/f/au$b;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/f/bd;->c:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/netease/mpay/server/d;

    iget-object v0, p0, Lcom/netease/mpay/f/bd;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/f/bd;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/f/bd;->e:Ljava/lang/String;

    invoke-direct {v7, v0, v1, v2}, Lcom/netease/mpay/server/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/netease/mpay/server/a/aj;

    iget-object v1, p1, Lcom/netease/mpay/f/au$b;->c:Lcom/netease/mpay/e/b/f;

    iget-object v1, v1, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/f/bd;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/f/bd;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/f/bd;->k:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/netease/mpay/f/bd;->l:Z

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/server/a/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v7, v0}, Lcom/netease/mpay/server/d;->a(Lcom/netease/mpay/server/a/ax;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/netease/mpay/server/response/w;

    iget-object v0, v4, Lcom/netease/mpay/server/response/w;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, v4, Lcom/netease/mpay/server/response/w;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v13, :cond_0

    iget-boolean v0, p0, Lcom/netease/mpay/f/bd;->l:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-boolean v0, p0, Lcom/netease/mpay/f/bd;->l:Z

    if-eqz v0, :cond_1

    new-instance v8, Lcom/netease/mpay/server/d;

    iget-object v0, p0, Lcom/netease/mpay/f/bd;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/f/bd;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/f/bd;->e:Ljava/lang/String;

    invoke-direct {v8, v0, v1, v2}, Lcom/netease/mpay/server/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/netease/mpay/server/a/y;

    iget-object v1, p1, Lcom/netease/mpay/f/au$b;->c:Lcom/netease/mpay/e/b/f;

    iget-object v1, v1, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/f/bd;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/f/bd;->j:Ljava/lang/String;

    iget-object v4, v4, Lcom/netease/mpay/server/response/w;->a:Ljava/lang/String;

    iget-object v6, p1, Lcom/netease/mpay/f/au$b;->d:Lcom/netease/mpay/e/b/o;

    iget-object v6, v6, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v7, p1, Lcom/netease/mpay/f/au$b;->d:Lcom/netease/mpay/e/b/o;

    iget-object v7, v7, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcom/netease/mpay/server/a/y;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lcom/netease/mpay/server/d;->a(Lcom/netease/mpay/server/a/ax;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/m;

    :goto_0
    new-instance v2, Lcom/netease/mpay/e/b/x;

    invoke-direct {v2, v13}, Lcom/netease/mpay/e/b/x;-><init>(Z)V

    iget-object v1, v0, Lcom/netease/mpay/server/response/m;->u:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v13

    :goto_1
    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/netease/mpay/f/bd;->a(Lcom/netease/mpay/f/au$b;Lcom/netease/mpay/server/response/m;Lcom/netease/mpay/e/b/o$a;Z)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/netease/mpay/server/d;

    iget-object v1, p0, Lcom/netease/mpay/f/bd;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/f/bd;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/f/bd;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/mpay/server/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/netease/mpay/server/a/ag;

    iget-object v1, p1, Lcom/netease/mpay/f/au$b;->c:Lcom/netease/mpay/e/b/f;

    iget-object v7, v1, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    iget-object v8, p0, Lcom/netease/mpay/f/bd;->e:Ljava/lang/String;

    iget-object v9, p0, Lcom/netease/mpay/f/bd;->j:Ljava/lang/String;

    iget-object v10, v4, Lcom/netease/mpay/server/response/w;->a:Ljava/lang/String;

    const/4 v11, 0x0

    move-object v12, v5

    invoke-direct/range {v6 .. v12}, Lcom/netease/mpay/server/a/ag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/netease/mpay/server/d;->a(Lcom/netease/mpay/server/a/ax;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/m;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    iput-object v4, p0, Lcom/netease/mpay/f/bd;->n:Lcom/netease/mpay/server/response/w;

    new-instance v0, Lcom/netease/mpay/server/a;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/netease/mpay/server/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected a(Lcom/netease/mpay/f/a/a$b;Lcom/netease/mpay/f/au$a;)V
    .locals 1

    new-instance v0, Lcom/netease/mpay/f/be;

    invoke-direct {v0, p0}, Lcom/netease/mpay/f/be;-><init>(Lcom/netease/mpay/f/bd;)V

    invoke-super {p0, p1, v0}, Lcom/netease/mpay/f/au;->a(Lcom/netease/mpay/f/a/a$b;Lcom/netease/mpay/f/au$a;)V

    return-void
.end method
