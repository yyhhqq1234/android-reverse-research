.class Lcom/netease/mpay/codescanner/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/a/b;


# instance fields
.field final synthetic a:Lcom/netease/mpay/codescanner/f;


# direct methods
.method constructor <init>(Lcom/netease/mpay/codescanner/f;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/codescanner/h;->a:Lcom/netease/mpay/codescanner/f;

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
.method public a(Lcom/netease/mpay/f/a/b$a;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/codescanner/h;->a:Lcom/netease/mpay/codescanner/f;

    iget-object v0, v0, Lcom/netease/mpay/codescanner/f;->a:Lcom/netease/mpay/codescanner/e;

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcom/netease/mpay/codescanner/e;->a(Lcom/netease/mpay/codescanner/e;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Lcom/netease/mpay/server/response/aa;)V
    .locals 7

    sget-object v0, Lcom/netease/mpay/codescanner/l;->a:[I

    iget-object v1, p1, Lcom/netease/mpay/server/response/aa;->b:Lcom/netease/mpay/server/response/aa$a;

    invoke-virtual {v1}, Lcom/netease/mpay/server/response/aa$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/netease/mpay/codescanner/h;->a:Lcom/netease/mpay/codescanner/f;

    iget-object v0, v0, Lcom/netease/mpay/codescanner/f;->a:Lcom/netease/mpay/codescanner/e;

    invoke-static {v0, p1}, Lcom/netease/mpay/codescanner/e;->a(Lcom/netease/mpay/codescanner/e;Lcom/netease/mpay/server/response/aa;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/netease/mpay/codescanner/h;->a:Lcom/netease/mpay/codescanner/f;

    iget-object v0, v0, Lcom/netease/mpay/codescanner/f;->a:Lcom/netease/mpay/codescanner/e;

    iget-object v0, v0, Lcom/netease/mpay/codescanner/e;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/netease/mpay/b$a;->H:Lcom/netease/mpay/b$a;

    new-instance v2, Lcom/netease/mpay/b/x;

    new-instance v3, Lcom/netease/mpay/b/a$a;

    iget-object v4, p0, Lcom/netease/mpay/codescanner/h;->a:Lcom/netease/mpay/codescanner/f;

    iget-object v4, v4, Lcom/netease/mpay/codescanner/f;->a:Lcom/netease/mpay/codescanner/e;

    invoke-static {v4}, Lcom/netease/mpay/codescanner/e;->d(Lcom/netease/mpay/codescanner/e;)Lcom/netease/mpay/b/v;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/mpay/b/v;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "webPay"

    iget-object v6, p0, Lcom/netease/mpay/codescanner/h;->a:Lcom/netease/mpay/codescanner/f;

    iget-object v6, v6, Lcom/netease/mpay/codescanner/f;->a:Lcom/netease/mpay/codescanner/e;

    invoke-static {v6}, Lcom/netease/mpay/codescanner/e;->d(Lcom/netease/mpay/codescanner/e;)Lcom/netease/mpay/b/v;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/mpay/b/v;->c()Lcom/netease/mpay/MpayConfig;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/netease/mpay/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/MpayConfig;)V

    new-instance v4, Lcom/netease/mpay/b/x$b;

    invoke-direct {v4, p1}, Lcom/netease/mpay/b/x$b;-><init>(Lcom/netease/mpay/server/response/aa;)V

    invoke-direct {v2, v3, v4}, Lcom/netease/mpay/b/x;-><init>(Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/b/x$c;)V

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/netease/mpay/server/response/aa;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/codescanner/h;->a(Lcom/netease/mpay/server/response/aa;)V

    return-void
.end method
