.class Lcom/netease/mpay/hg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/bm$a;


# instance fields
.field final synthetic a:Lcom/netease/mpay/MpayApi;


# direct methods
.method constructor <init>(Lcom/netease/mpay/MpayApi;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/hg;->a:Lcom/netease/mpay/MpayApi;

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
.method public a(Lcom/netease/mpay/EnterGameActivity$a;)V
    .locals 9

    iget-object v0, p0, Lcom/netease/mpay/hg;->a:Lcom/netease/mpay/MpayApi;

    iget-object v0, v0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/hg;->a:Lcom/netease/mpay/MpayApi;

    iget-object v0, v0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/hg;->a:Lcom/netease/mpay/MpayApi;

    invoke-virtual {v0}, Lcom/netease/mpay/MpayApi;->unregistEnterGame()V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/netease/mpay/bm;

    iget-object v1, p0, Lcom/netease/mpay/hg;->a:Lcom/netease/mpay/MpayApi;

    iget-object v1, v1, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/hg;->a:Lcom/netease/mpay/MpayApi;

    iget-object v2, v2, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/hg;->a:Lcom/netease/mpay/MpayApi;

    iget-object v3, v3, Lcom/netease/mpay/MpayApi;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/hg;->a:Lcom/netease/mpay/MpayApi;

    iget-object v4, v4, Lcom/netease/mpay/MpayApi;->f:Lcom/netease/mpay/MpayConfig;

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v5

    iget-object v5, v5, Lcom/netease/mpay/hi;->m:Ljava/lang/String;

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v6

    iget-object v6, v6, Lcom/netease/mpay/hi;->n:Ljava/lang/String;

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v7

    iget-boolean v7, v7, Lcom/netease/mpay/hi;->l:Z

    iget-object v8, p0, Lcom/netease/mpay/hg;->a:Lcom/netease/mpay/MpayApi;

    invoke-static {v8}, Lcom/netease/mpay/MpayApi;->d(Lcom/netease/mpay/MpayApi;)Lcom/netease/mpay/AuthenticationCallback;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/netease/mpay/bm;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/MpayConfig;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/AuthenticationCallback;)V

    invoke-virtual {v0, p1}, Lcom/netease/mpay/bm;->a(Lcom/netease/mpay/EnterGameActivity$a;)V

    goto :goto_0
.end method
