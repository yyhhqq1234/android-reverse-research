.class Lcom/netease/mpay/fw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/MpayApi$a;


# instance fields
.field final synthetic a:Ljava/lang/Integer;

.field final synthetic b:Lcom/netease/mpay/MpayApi;


# direct methods
.method constructor <init>(Lcom/netease/mpay/MpayApi;Ljava/lang/Integer;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/fw;->b:Lcom/netease/mpay/MpayApi;

    iput-object p2, p0, Lcom/netease/mpay/fw;->a:Ljava/lang/Integer;

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
    .locals 6

    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v1, p0, Lcom/netease/mpay/fw;->b:Lcom/netease/mpay/MpayApi;

    iget-object v1, v1, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/fw;->b:Lcom/netease/mpay/MpayApi;

    iget-object v2, v2, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/k;->a()Lcom/netease/mpay/e/b/q;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/e/b/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/fw;->b:Lcom/netease/mpay/MpayApi;

    iget-object v0, v0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/fw;->b:Lcom/netease/mpay/MpayApi;

    iget-object v1, v1, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/server/response/u;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/server/response/u;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/netease/mpay/server/response/u;->a(I)Lcom/netease/mpay/server/response/s;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netease/mpay/server/response/s;->b:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/fw;->b:Lcom/netease/mpay/MpayApi;

    iget-object v1, p0, Lcom/netease/mpay/fw;->a:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/netease/mpay/MpayApi;->a(Lcom/netease/mpay/MpayApi;Ljava/lang/Integer;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/netease/mpay/cw;

    iget-object v1, p0, Lcom/netease/mpay/fw;->b:Lcom/netease/mpay/MpayApi;

    iget-object v1, v1, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/fw;->b:Lcom/netease/mpay/MpayApi;

    iget-object v2, v2, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/fw;->b:Lcom/netease/mpay/MpayApi;

    iget-object v3, v3, Lcom/netease/mpay/MpayApi;->d:Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Lcom/netease/mpay/fx;

    invoke-direct {v5, p0}, Lcom/netease/mpay/fx;-><init>(Lcom/netease/mpay/fw;)V

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/cw;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/f/au$a;)V

    invoke-virtual {v0}, Lcom/netease/mpay/cw;->a()V

    goto :goto_0
.end method
