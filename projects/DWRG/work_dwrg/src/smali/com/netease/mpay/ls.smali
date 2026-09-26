.class Lcom/netease/mpay/ls;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/a/b;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/mpay/lq;


# direct methods
.method constructor <init>(Lcom/netease/mpay/lq;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/ls;->b:Lcom/netease/mpay/lq;

    iput-object p2, p0, Lcom/netease/mpay/ls;->a:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/netease/mpay/ls;->b:Lcom/netease/mpay/lq;

    invoke-static {v0}, Lcom/netease/mpay/lq;->l(Lcom/netease/mpay/lq;)Lcom/netease/mpay/widget/s;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/netease/mpay/server/response/urslogin/a;)V
    .locals 5

    iget-object v0, p1, Lcom/netease/mpay/server/response/urslogin/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/netease/mpay/ls;->b:Lcom/netease/mpay/lq;

    iget-object v2, p0, Lcom/netease/mpay/ls;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/netease/mpay/server/response/urslogin/a;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/netease/mpay/server/response/urslogin/a;->b:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/urslogin/EmailRelatedMobile;

    invoke-static {v1, v2, v3, v0}, Lcom/netease/mpay/lq;->a(Lcom/netease/mpay/lq;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/server/response/urslogin/EmailRelatedMobile;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/ls;->b:Lcom/netease/mpay/lq;

    iget-object v1, p0, Lcom/netease/mpay/ls;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/lq;->a(Lcom/netease/mpay/lq;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/netease/mpay/server/response/urslogin/a;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/ls;->a(Lcom/netease/mpay/server/response/urslogin/a;)V

    return-void
.end method
