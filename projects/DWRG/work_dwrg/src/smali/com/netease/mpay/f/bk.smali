.class final Lcom/netease/mpay/f/bk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/widget/e$a;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/netease/mpay/widget/e;

.field final synthetic g:Lcom/netease/mpay/f/bj$a;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/widget/e;Lcom/netease/mpay/f/bj$a;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/f/bk;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/netease/mpay/f/bk;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/f/bk;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/mpay/f/bk;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/netease/mpay/f/bk;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/netease/mpay/f/bk;->f:Lcom/netease/mpay/widget/e;

    iput-object p7, p0, Lcom/netease/mpay/f/bk;->g:Lcom/netease/mpay/f/bj$a;

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

.method static synthetic a(Lcom/netease/mpay/f/bk;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/f/bk;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/f/bk;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x7d0

    const/4 v2, -0x1

    const/16 v3, 0x14

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;III)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/f/bk;->g:Lcom/netease/mpay/f/bj$a;

    invoke-interface {v0}, Lcom/netease/mpay/f/bj$a;->a()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/f/bk;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->I:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/mpay/f/bk;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netease/mpay/f/bj;

    iget-object v1, p0, Lcom/netease/mpay/f/bk;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/f/bk;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/f/bk;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/f/bk;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/f/bk;->e:Ljava/lang/String;

    const/4 v7, 0x1

    new-instance v8, Lcom/netease/mpay/f/bl;

    invoke-direct {v8, p0}, Lcom/netease/mpay/f/bl;-><init>(Lcom/netease/mpay/f/bk;)V

    move-object v6, p1

    invoke-direct/range {v0 .. v8}, Lcom/netease/mpay/f/bj;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/netease/mpay/f/a/b;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/bj;->h()V

    goto :goto_0
.end method
