.class Lcom/netease/mpay/gx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/ja$b;


# instance fields
.field final synthetic a:Lcom/netease/mpay/MpayApi$a;

.field final synthetic b:Ljava/lang/Integer;

.field final synthetic c:Lcom/netease/mpay/MpayApi;


# direct methods
.method constructor <init>(Lcom/netease/mpay/MpayApi;Lcom/netease/mpay/MpayApi$a;Ljava/lang/Integer;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/gx;->c:Lcom/netease/mpay/MpayApi;

    iput-object p2, p0, Lcom/netease/mpay/gx;->a:Lcom/netease/mpay/MpayApi$a;

    iput-object p3, p0, Lcom/netease/mpay/gx;->b:Ljava/lang/Integer;

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
.method public a(Lcom/netease/mpay/ja$a;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netease/mpay/ja$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/gx;->c:Lcom/netease/mpay/MpayApi;

    iget-object v1, v1, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/netease/mpay/gx;->c:Lcom/netease/mpay/MpayApi;

    iget-object v1, v1, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->ds:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/gx;->c:Lcom/netease/mpay/MpayApi;

    iget-object v2, v2, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->j:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/gy;

    invoke-direct {v3, p0}, Lcom/netease/mpay/gy;-><init>(Lcom/netease/mpay/gx;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/gx;->c:Lcom/netease/mpay/MpayApi;

    iget-object v1, p0, Lcom/netease/mpay/gx;->a:Lcom/netease/mpay/MpayApi$a;

    iget-object v2, p0, Lcom/netease/mpay/gx;->b:Ljava/lang/Integer;

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/MpayApi;->a(Lcom/netease/mpay/MpayApi;Lcom/netease/mpay/MpayApi$a;Ljava/lang/Integer;)V

    goto :goto_0
.end method
