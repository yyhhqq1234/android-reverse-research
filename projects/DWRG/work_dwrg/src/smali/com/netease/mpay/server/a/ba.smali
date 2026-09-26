.class public Lcom/netease/mpay/server/a/ba;
.super Lcom/netease/mpay/server/a/d;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/games/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/devices/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/users/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/server/a/d;-><init>(ILjava/lang/String;)V

    iput-object p2, p0, Lcom/netease/mpay/server/a/ba;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/mpay/server/a/ba;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/mpay/server/a/ba;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/netease/mpay/server/a/ba;->d:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/netease/mpay/server/a/ba;->e:Z

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
.method protected a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/server/response/m;
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/netease/mpay/server/a/d;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/server/response/m;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/server/a/ba;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/mpay/server/response/m;->b:Ljava/lang/String;

    iget-object v1, v0, Lcom/netease/mpay/server/response/m;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/mpay/server/a/ba;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/mpay/server/response/m;->a:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method a(Ljava/util/ArrayList;)V
    .locals 3

    new-instance v0, Lcom/netease/mpay/widget/a/a;

    const-string v1, "token"

    iget-object v2, p0, Lcom/netease/mpay/server/a/ba;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/netease/mpay/server/a/ba;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mpay/widget/a/a;

    const-string v1, "username"

    iget-object v2, p0, Lcom/netease/mpay/server/a/ba;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, Lcom/netease/mpay/widget/a/a;

    const-string v2, "verify_status"

    iget-boolean v0, p0, Lcom/netease/mpay/server/a/ba;->e:Z

    if-eqz v0, :cond_1

    const-string v0, "1"

    :goto_0
    invoke-direct {v1, v2, v0}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/netease/mpay/widget/a/a;

    const-string v1, "login_for"

    iget-object v2, p0, Lcom/netease/mpay/server/a/ba;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/netease/mpay/server/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    const-string v0, "0"

    goto :goto_0
.end method

.method protected synthetic b(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/server/a/ba;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/server/response/m;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/netease/mpay/server/a/ba;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/server/a/ba;->c:Ljava/lang/String;

    return-object p0
.end method
