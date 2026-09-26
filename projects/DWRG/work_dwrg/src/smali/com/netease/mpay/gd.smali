.class Lcom/netease/mpay/gd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/MpayApi$a;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/netease/mpay/MobileBindCallback;

.field final synthetic c:Ljava/lang/Integer;

.field final synthetic d:Lcom/netease/mpay/MpayApi;


# direct methods
.method constructor <init>(Lcom/netease/mpay/MpayApi;Landroid/os/Handler;Lcom/netease/mpay/MobileBindCallback;Ljava/lang/Integer;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/gd;->d:Lcom/netease/mpay/MpayApi;

    iput-object p2, p0, Lcom/netease/mpay/gd;->a:Landroid/os/Handler;

    iput-object p3, p0, Lcom/netease/mpay/gd;->b:Lcom/netease/mpay/MobileBindCallback;

    iput-object p4, p0, Lcom/netease/mpay/gd;->c:Ljava/lang/Integer;

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

    new-instance v0, Lcom/netease/mpay/ge;

    invoke-direct {v0, p0}, Lcom/netease/mpay/ge;-><init>(Lcom/netease/mpay/gd;)V

    iget-object v1, p0, Lcom/netease/mpay/gd;->d:Lcom/netease/mpay/MpayApi;

    iget-object v1, v1, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    sget-object v2, Lcom/netease/mpay/b$a;->T:Lcom/netease/mpay/b$a;

    new-instance v3, Lcom/netease/mpay/b/aa;

    new-instance v4, Lcom/netease/mpay/b/a$a;

    iget-object v5, p0, Lcom/netease/mpay/gd;->d:Lcom/netease/mpay/MpayApi;

    iget-object v5, v5, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/netease/mpay/gd;->d:Lcom/netease/mpay/MpayApi;

    iget-object v6, v6, Lcom/netease/mpay/MpayApi;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/netease/mpay/gd;->d:Lcom/netease/mpay/MpayApi;

    iget-object v7, v7, Lcom/netease/mpay/MpayApi;->f:Lcom/netease/mpay/MpayConfig;

    invoke-direct {v4, v5, v6, v7}, Lcom/netease/mpay/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/MpayConfig;)V

    invoke-direct {v3, v4, v0}, Lcom/netease/mpay/b/aa;-><init>(Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/MobileBindCallback;)V

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/netease/mpay/gd;->c:Ljava/lang/Integer;

    invoke-static {v1, v2, v3, v0, v4}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    return-void
.end method
