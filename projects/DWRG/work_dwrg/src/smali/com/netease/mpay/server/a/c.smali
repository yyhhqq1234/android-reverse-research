.class public Lcom/netease/mpay/server/a/c;
.super Lcom/netease/mpay/server/a/ax;


# instance fields
.field a:Ljava/lang/String;

.field b:[B

.field c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/games/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/orders/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/payments/bankcard"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/server/a/ax;-><init>(ILjava/lang/String;)V

    iput-object p2, p0, Lcom/netease/mpay/server/a/c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/server/a/c;->b:[B

    iput-object p4, p0, Lcom/netease/mpay/server/a/c;->c:Ljava/lang/String;

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
.method protected a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/server/response/b;
    .locals 4

    new-instance v1, Lcom/netease/mpay/server/response/b;

    invoke-direct {v1}, Lcom/netease/mpay/server/response/b;-><init>()V

    const-string v0, "epay_params"

    invoke-static {p2, v0}, Lcom/netease/mpay/server/a/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "clientLoginId"

    invoke-static {v0, v2}, Lcom/netease/mpay/server/a/c;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/netease/mpay/server/response/b;->a:Ljava/lang/String;

    const-string v2, "clientLoginToken"

    invoke-static {v0, v2}, Lcom/netease/mpay/server/a/c;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/netease/mpay/server/response/b;->c:Ljava/lang/String;

    const-string v2, "epayClientId"

    invoke-static {v0, v2}, Lcom/netease/mpay/server/a/c;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/netease/mpay/server/response/b;->d:Ljava/lang/String;

    const-string v2, "platformSign"

    invoke-static {v0, v2}, Lcom/netease/mpay/server/a/c;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/netease/mpay/server/response/b;->e:Ljava/lang/String;

    const-string v2, "appPlatformId"

    invoke-static {v0, v2}, Lcom/netease/mpay/server/a/c;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/netease/mpay/server/response/b;->g:Ljava/lang/String;

    const-string v2, "orderPlatformId"

    invoke-static {v0, v2}, Lcom/netease/mpay/server/a/c;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/netease/mpay/server/response/b;->h:Ljava/lang/String;

    const-string v2, "platformSignExpireTime"

    invoke-static {v0, v2}, Lcom/netease/mpay/server/a/c;->j(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/netease/mpay/server/response/b;->f:J

    const-string v2, "clientTimeStamp"

    invoke-static {v0, v2}, Lcom/netease/mpay/server/a/c;->j(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/netease/mpay/server/response/b;->i:J

    const-string v2, "clientOrderId"

    invoke-static {v0, v2}, Lcom/netease/mpay/server/a/c;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/netease/mpay/server/response/b;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/server/a/c;->b:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/server/a/c;->b:[B

    invoke-static {v0}, Lcom/netease/mpay/widget/bd;->b([B)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, v1, Lcom/netease/mpay/server/response/b;->j:Ljava/lang/String;

    return-object v1

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method protected a(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/netease/mpay/widget/a/a;

    const-string v2, "id"

    iget-object v3, p0, Lcom/netease/mpay/server/a/c;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/netease/mpay/widget/a/a;

    const-string v2, "token"

    iget-object v3, p0, Lcom/netease/mpay/server/a/c;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected synthetic b(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/server/a/c;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/server/response/b;

    move-result-object v0

    return-object v0
.end method
