.class Lcom/netease/mpay/fz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/MpayApi$a;


# instance fields
.field final synthetic a:Lcom/netease/mpay/MpayApi;


# direct methods
.method constructor <init>(Lcom/netease/mpay/MpayApi;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/fz;->a:Lcom/netease/mpay/MpayApi;

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
    .locals 8

    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v1, p0, Lcom/netease/mpay/fz;->a:Lcom/netease/mpay/MpayApi;

    iget-object v1, v1, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/fz;->a:Lcom/netease/mpay/MpayApi;

    iget-object v2, v2, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/b;->a()Lcom/netease/mpay/e/b/af;

    move-result-object v0

    iget-boolean v1, v0, Lcom/netease/mpay/e/b/af;->m:Z

    if-nez v1, :cond_0

    new-instance v1, Lcom/netease/mpay/widget/s;

    iget-object v2, p0, Lcom/netease/mpay/fz;->a:Lcom/netease/mpay/MpayApi;

    iget-object v2, v2, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iget-object v0, v0, Lcom/netease/mpay/e/b/af;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/fz;->a:Lcom/netease/mpay/MpayApi;

    iget-object v2, v2, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->cJ:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, v0, Lcom/netease/mpay/e/b/af;->q:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netease/mpay/fz;->a:Lcom/netease/mpay/MpayApi;

    iget-object v1, v1, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/netease/mpay/cr;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/netease/mpay/cr;

    iget-object v2, p0, Lcom/netease/mpay/fz;->a:Lcom/netease/mpay/MpayApi;

    iget-object v2, v2, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/netease/mpay/fz;->a:Lcom/netease/mpay/MpayApi;

    iget-object v3, v3, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/fz;->a:Lcom/netease/mpay/MpayApi;

    iget-object v4, v4, Lcom/netease/mpay/MpayApi;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/netease/mpay/cr;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/netease/mpay/e/b/af;->r:Ljava/lang/String;

    iget-object v0, v0, Lcom/netease/mpay/e/b/af;->p:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/netease/mpay/cr;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/netease/mpay/fz;->a:Lcom/netease/mpay/MpayApi;

    iget-object v1, v1, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    sget-object v2, Lcom/netease/mpay/b$a;->L:Lcom/netease/mpay/b$a;

    new-instance v3, Lcom/netease/mpay/b/ah;

    new-instance v4, Lcom/netease/mpay/b/a$a;

    iget-object v5, p0, Lcom/netease/mpay/fz;->a:Lcom/netease/mpay/MpayApi;

    iget-object v5, v5, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/netease/mpay/fz;->a:Lcom/netease/mpay/MpayApi;

    iget-object v6, v6, Lcom/netease/mpay/MpayApi;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/netease/mpay/fz;->a:Lcom/netease/mpay/MpayApi;

    iget-object v7, v7, Lcom/netease/mpay/MpayApi;->f:Lcom/netease/mpay/MpayConfig;

    invoke-direct {v4, v5, v6, v7}, Lcom/netease/mpay/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/MpayConfig;)V

    sget-object v5, Lcom/netease/mpay/f/an$a;->b:Lcom/netease/mpay/f/an$a;

    invoke-direct {v3, v4, v5}, Lcom/netease/mpay/b/ah;-><init>(Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/f/an$a;)V

    iget-object v0, v0, Lcom/netease/mpay/e/b/af;->o:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/netease/mpay/b/ah;->a(Ljava/lang/String;)Lcom/netease/mpay/b/ah;

    move-result-object v0

    const/4 v3, 0x0

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v0, v3, v4}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    goto :goto_0
.end method
