.class Lcom/netease/mpay/gt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/bp$a;


# instance fields
.field final synthetic a:Lcom/netease/mpay/MpayApi;


# direct methods
.method constructor <init>(Lcom/netease/mpay/MpayApi;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/gt;->a:Lcom/netease/mpay/MpayApi;

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

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "*****************"

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/gt;->a:Lcom/netease/mpay/MpayApi;

    iget-object v0, v0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    new-instance v1, Lcom/netease/mpay/e/b;

    iget-object v2, p0, Lcom/netease/mpay/gt;->a:Lcom/netease/mpay/MpayApi;

    iget-object v2, v2, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/netease/mpay/gt;->a:Lcom/netease/mpay/MpayApi;

    iget-object v3, v3, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/e/c/b;->a()Lcom/netease/mpay/e/b/af;

    move-result-object v1

    iget-boolean v1, v1, Lcom/netease/mpay/e/b/af;->e:Z

    invoke-static {p1, p2, v0, v1}, Lcom/netease/mpay/do;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Z)V

    const-string v0, "*****************"

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/f/a/b$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3, p2}, Lcom/netease/mpay/gt;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/netease/mpay/server/response/af;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/gt;->a:Lcom/netease/mpay/MpayApi;

    iget-object v1, p1, Lcom/netease/mpay/server/response/af;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/netease/mpay/MpayApi;->a(Lcom/netease/mpay/MpayApi;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/netease/mpay/gt;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
