.class Lcom/netease/mpay/gz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/cz$a;


# instance fields
.field final synthetic a:Ljava/lang/Integer;

.field final synthetic b:Lcom/netease/mpay/MpayApi$a;

.field final synthetic c:Lcom/netease/mpay/MpayApi;


# direct methods
.method constructor <init>(Lcom/netease/mpay/MpayApi;Ljava/lang/Integer;Lcom/netease/mpay/MpayApi$a;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/gz;->c:Lcom/netease/mpay/MpayApi;

    iput-object p2, p0, Lcom/netease/mpay/gz;->a:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/netease/mpay/gz;->b:Lcom/netease/mpay/MpayApi$a;

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


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/gz;->b:Lcom/netease/mpay/MpayApi$a;

    invoke-interface {v0}, Lcom/netease/mpay/MpayApi$a;->a()V

    return-void
.end method

.method public a(Lcom/netease/mpay/f/t$c;Ljava/lang/String;)V
    .locals 7

    sget-object v0, Lcom/netease/mpay/f/t$c;->a:Lcom/netease/mpay/f/t$c;

    if-ne v0, p1, :cond_0

    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v1, p0, Lcom/netease/mpay/gz;->c:Lcom/netease/mpay/MpayApi;

    iget-object v1, v1, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/gz;->c:Lcom/netease/mpay/MpayApi;

    iget-object v2, v2, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/e/c/b;->b()Lcom/netease/mpay/e/b/e;

    move-result-object v1

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->h()Lcom/netease/mpay/e/c/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/e/c/n;->b()Lcom/netease/mpay/e/b/p;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iget-wide v5, v1, Lcom/netease/mpay/e/b/e;->e:J

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/netease/mpay/e/b/p;->a(JJ)V

    iget v3, v2, Lcom/netease/mpay/e/b/p;->b:I

    iget v1, v1, Lcom/netease/mpay/e/b/e;->d:I

    if-ge v3, v1, :cond_2

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->h()Lcom/netease/mpay/e/c/n;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/netease/mpay/e/c/n;->a(Lcom/netease/mpay/e/b/p;)V

    :cond_0
    if-eqz p2, :cond_1

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/gz;->c:Lcom/netease/mpay/MpayApi;

    invoke-static {v0}, Lcom/netease/mpay/MpayApi;->d(Lcom/netease/mpay/MpayApi;)Lcom/netease/mpay/AuthenticationCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/mpay/AuthenticationCallback;->onDialogFinish()V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->h()Lcom/netease/mpay/e/c/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/n;->a()V

    iget-object v0, p0, Lcom/netease/mpay/gz;->c:Lcom/netease/mpay/MpayApi;

    iget-object v1, p0, Lcom/netease/mpay/gz;->a:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/netease/mpay/MpayApi;->b(Lcom/netease/mpay/MpayApi;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/gz;->c:Lcom/netease/mpay/MpayApi;

    iget-object v1, v1, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/netease/mpay/gz;->c:Lcom/netease/mpay/MpayApi;

    iget-object v1, v1, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->j:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netease/mpay/ha;

    invoke-direct {v2, p0}, Lcom/netease/mpay/ha;-><init>(Lcom/netease/mpay/gz;)V

    invoke-virtual {v0, p2, v1, v2}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method
