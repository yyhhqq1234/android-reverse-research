.class public Lcom/netease/mpay/f/h;
.super Lcom/netease/mpay/f/a/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/f/h$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Lcom/netease/mpay/f/h$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/h$a;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/netease/mpay/f/a/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V

    iput-object p4, p0, Lcom/netease/mpay/f/h;->b:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/netease/mpay/f/h;->a:Z

    iput p6, p0, Lcom/netease/mpay/f/h;->k:I

    iput-object p7, p0, Lcom/netease/mpay/f/h;->l:Ljava/lang/String;

    iput-object p8, p0, Lcom/netease/mpay/f/h;->j:Ljava/lang/String;

    iput-object p9, p0, Lcom/netease/mpay/f/h;->m:Ljava/lang/String;

    iput-object p10, p0, Lcom/netease/mpay/f/h;->n:Ljava/lang/String;

    iput-object p11, p0, Lcom/netease/mpay/f/h;->o:Ljava/lang/String;

    iput-object p12, p0, Lcom/netease/mpay/f/h;->p:Lcom/netease/mpay/f/h$a;

    invoke-super {p0}, Lcom/netease/mpay/f/a/d;->c()Lcom/netease/mpay/f/a/d;

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

.method static synthetic a(Lcom/netease/mpay/f/h;)Lcom/netease/mpay/f/h$a;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/f/h;->p:Lcom/netease/mpay/f/h$a;

    return-object v0
.end method

.method static synthetic b(Lcom/netease/mpay/f/h;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/f/h;->j:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/netease/mpay/f/a/d$d;)Ljava/lang/Void;
    .locals 9

    iget-boolean v0, p0, Lcom/netease/mpay/f/h;->a:Z

    if-eqz v0, :cond_0

    new-instance v7, Lcom/netease/mpay/server/d;

    iget-object v0, p0, Lcom/netease/mpay/f/h;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/f/h;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/f/h;->e:Ljava/lang/String;

    invoke-direct {v7, v0, v1, v2}, Lcom/netease/mpay/server/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/netease/mpay/server/a/i;

    iget-object v1, p0, Lcom/netease/mpay/f/h;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/d$d;->a()Lcom/netease/mpay/e/b/f;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/f/h;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/f/h;->m:Ljava/lang/String;

    iget v5, p0, Lcom/netease/mpay/f/h;->k:I

    iget-object v6, p0, Lcom/netease/mpay/f/h;->l:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/server/a/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/netease/mpay/server/d;->a(Lcom/netease/mpay/server/a/ax;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/ae;

    iget-object v0, v0, Lcom/netease/mpay/server/response/ae;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/mpay/f/h;->j:Ljava/lang/String;

    :cond_0
    new-instance v8, Lcom/netease/mpay/server/d;

    iget-object v0, p0, Lcom/netease/mpay/f/h;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/f/h;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/f/h;->e:Ljava/lang/String;

    invoke-direct {v8, v0, v1, v2}, Lcom/netease/mpay/server/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/netease/mpay/server/a/ae;

    iget-object v1, p0, Lcom/netease/mpay/f/h;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/d$d;->a()Lcom/netease/mpay/e/b/f;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/f/h;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/f/h;->j:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/f/h;->m:Ljava/lang/String;

    iget-object v6, p0, Lcom/netease/mpay/f/h;->n:Ljava/lang/String;

    iget-object v7, p0, Lcom/netease/mpay/f/h;->o:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcom/netease/mpay/server/a/ae;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lcom/netease/mpay/server/d;->a(Lcom/netease/mpay/server/a/ax;)Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Lcom/netease/mpay/f/a/a$b;Lcom/netease/mpay/f/a/b;)V
    .locals 1

    new-instance v0, Lcom/netease/mpay/f/i;

    invoke-direct {v0, p0}, Lcom/netease/mpay/f/i;-><init>(Lcom/netease/mpay/f/h;)V

    invoke-super {p0, p1, v0}, Lcom/netease/mpay/f/a/d;->a(Lcom/netease/mpay/f/a/a$b;Lcom/netease/mpay/f/a/b;)V

    return-void
.end method

.method protected synthetic b(Lcom/netease/mpay/f/a/d$d;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netease/mpay/f/h;->a(Lcom/netease/mpay/f/a/d$d;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
