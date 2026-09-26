.class Lcom/netease/mpay/gu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/Integer;

.field final synthetic b:Lcom/netease/mpay/MpayApi;


# direct methods
.method constructor <init>(Lcom/netease/mpay/MpayApi;Ljava/lang/Integer;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/gu;->b:Lcom/netease/mpay/MpayApi;

    iput-object p2, p0, Lcom/netease/mpay/gu;->a:Ljava/lang/Integer;

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
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    iget-object v0, p0, Lcom/netease/mpay/gu;->b:Lcom/netease/mpay/MpayApi;

    iget-object v0, v0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    sget-object v1, Lcom/netease/mpay/b$a;->a:Lcom/netease/mpay/b$a;

    new-instance v2, Lcom/netease/mpay/b/k;

    new-instance v3, Lcom/netease/mpay/b/a$a;

    iget-object v4, p0, Lcom/netease/mpay/gu;->b:Lcom/netease/mpay/MpayApi;

    iget-object v4, v4, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/gu;->b:Lcom/netease/mpay/MpayApi;

    iget-object v5, v5, Lcom/netease/mpay/MpayApi;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/netease/mpay/gu;->b:Lcom/netease/mpay/MpayApi;

    iget-object v6, v6, Lcom/netease/mpay/MpayApi;->f:Lcom/netease/mpay/MpayConfig;

    invoke-direct {v3, v4, v5, v6}, Lcom/netease/mpay/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/MpayConfig;)V

    iget-object v4, p0, Lcom/netease/mpay/gu;->b:Lcom/netease/mpay/MpayApi;

    invoke-static {v4}, Lcom/netease/mpay/MpayApi;->d(Lcom/netease/mpay/MpayApi;)Lcom/netease/mpay/AuthenticationCallback;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/netease/mpay/b/k;-><init>(Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/AuthenticationCallback;)V

    new-instance v3, Lcom/netease/mpay/b$b;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/netease/mpay/b$b;-><init>(Z)V

    iget-object v4, p0, Lcom/netease/mpay/gu;->a:Ljava/lang/Integer;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    return-void
.end method
