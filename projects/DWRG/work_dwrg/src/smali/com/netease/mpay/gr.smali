.class Lcom/netease/mpay/gr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/a/b;


# instance fields
.field final synthetic a:Lcom/netease/mpay/PrepareAlitvpayCallback;

.field final synthetic b:Lcom/netease/mpay/MpayApi;


# direct methods
.method constructor <init>(Lcom/netease/mpay/MpayApi;Lcom/netease/mpay/PrepareAlitvpayCallback;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/gr;->b:Lcom/netease/mpay/MpayApi;

    iput-object p2, p0, Lcom/netease/mpay/gr;->a:Lcom/netease/mpay/PrepareAlitvpayCallback;

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
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/gr;->a:Lcom/netease/mpay/PrepareAlitvpayCallback;

    invoke-interface {v0, p2}, Lcom/netease/mpay/PrepareAlitvpayCallback;->onFailed(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/netease/mpay/server/response/a;)V
    .locals 5

    iget-object v0, p0, Lcom/netease/mpay/gr;->a:Lcom/netease/mpay/PrepareAlitvpayCallback;

    iget-object v1, p1, Lcom/netease/mpay/server/response/a;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/netease/mpay/server/response/a;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/netease/mpay/server/response/a;->a:Ljava/lang/String;

    iget-object v4, p1, Lcom/netease/mpay/server/response/a;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/netease/mpay/PrepareAlitvpayCallback;->onSucessed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/netease/mpay/server/response/a;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/gr;->a(Lcom/netease/mpay/server/response/a;)V

    return-void
.end method
