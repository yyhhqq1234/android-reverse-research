.class public Lcom/netease/mpay/server/a/an;
.super Lcom/netease/mpay/server/a/ax;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/init"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/server/a/ax;-><init>(ILjava/lang/String;)V

    iput-object p2, p0, Lcom/netease/mpay/server/a/an;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/server/a/an;->b:Ljava/lang/String;

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

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "ecard"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ecard"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "alipay"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "alipay"

    goto :goto_0

    :cond_1
    const-string v0, "mobilecard"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "mcard"

    goto :goto_0

    :cond_2
    const-string v0, "unionpay"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "uppay"

    goto :goto_0

    :cond_3
    const-string v0, "bankcard"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "bankcard"

    goto :goto_0

    :cond_4
    const-string v0, "epay"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "epay"

    goto :goto_0

    :cond_5
    const-string v0, "weixinpay"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "weixinpay"

    goto :goto_0

    :cond_6
    const-string v0, "weixinpayqr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "weixinpayqr"

    goto :goto_0

    :cond_7
    const-string v0, "alipayqr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "alipayqr"

    goto :goto_0

    :cond_8
    const-string v0, "tenpay"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "tenpay"

    goto :goto_0

    :cond_9
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/server/response/OrderInit;
    .locals 8

    new-instance v1, Lcom/netease/mpay/server/response/OrderInit;

    invoke-direct {v1}, Lcom/netease/mpay/server/response/OrderInit;-><init>()V

    const-string v0, "game"

    invoke-static {p2, v0}, Lcom/netease/mpay/server/a/an;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "name"

    invoke-static {v0, v2}, Lcom/netease/mpay/server/a/an;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/netease/mpay/server/response/OrderInit;->a:Ljava/lang/String;

    const-string v0, "order"

    invoke-static {p2, v0}, Lcom/netease/mpay/server/a/an;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "goods_name"

    invoke-static {v0, v2}, Lcom/netease/mpay/server/a/an;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/netease/mpay/server/response/OrderInit;->b:Ljava/lang/String;

    const-string v2, "price"

    invoke-static {v0, v2}, Lcom/netease/mpay/server/a/an;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/netease/mpay/server/response/OrderInit;->c:Ljava/lang/String;

    const-string v2, "discount_price"

    invoke-static {v0, v2}, Lcom/netease/mpay/server/a/an;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/netease/mpay/server/response/OrderInit;->d:Ljava/lang/String;

    const-string v2, "discount_reason"

    invoke-static {v0, v2}, Lcom/netease/mpay/server/a/an;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/netease/mpay/server/response/OrderInit;->e:Ljava/lang/String;

    const-string v0, "pay_methods"

    invoke-static {p2, v0}, Lcom/netease/mpay/server/a/an;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/netease/mpay/server/response/OrderInit;->f:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_4

    invoke-static {v2, v0}, Lcom/netease/mpay/server/a/an;->a(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Lcom/netease/mpay/server/response/OrderInit$PayChannel;

    invoke-direct {v4}, Lcom/netease/mpay/server/response/OrderInit$PayChannel;-><init>()V

    const-string v5, "key"

    invoke-static {v3, v5}, Lcom/netease/mpay/server/a/an;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/netease/mpay/server/a/an;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/netease/mpay/server/response/OrderInit$PayChannel;->a:Ljava/lang/String;

    iget-object v6, v4, Lcom/netease/mpay/server/response/OrderInit$PayChannel;->a:Ljava/lang/String;

    if-nez v6, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v6, "name"

    invoke-static {v3, v6}, Lcom/netease/mpay/server/a/an;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/netease/mpay/server/response/OrderInit$PayChannel;->b:Ljava/lang/String;

    const-string v6, "description"

    invoke-static {v3, v6}, Lcom/netease/mpay/server/a/an;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/netease/mpay/server/response/OrderInit$PayChannel;->c:Ljava/lang/String;

    const-string v6, "icon_url"

    invoke-static {v3, v6}, Lcom/netease/mpay/server/a/an;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/netease/mpay/server/response/OrderInit$PayChannel;->d:Ljava/lang/String;

    iget-object v6, v1, Lcom/netease/mpay/server/response/OrderInit;->c:Ljava/lang/String;

    iput-object v6, v4, Lcom/netease/mpay/server/response/OrderInit$PayChannel;->g:Ljava/lang/String;

    const-string v6, "enabled"

    invoke-static {v3, v6}, Lcom/netease/mpay/server/a/an;->k(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v4, Lcom/netease/mpay/server/response/OrderInit$PayChannel;->e:Z

    iget-boolean v6, v4, Lcom/netease/mpay/server/response/OrderInit$PayChannel;->e:Z

    if-eqz v6, :cond_2

    const-string v6, "discount_price"

    iget-object v7, v1, Lcom/netease/mpay/server/response/OrderInit;->c:Ljava/lang/String;

    invoke-static {v3, v6, v7}, Lcom/netease/mpay/server/a/an;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/netease/mpay/server/response/OrderInit$PayChannel;->h:Ljava/lang/String;

    const-string v6, "discount_reason"

    invoke-static {v3, v6}, Lcom/netease/mpay/server/a/an;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/netease/mpay/server/response/OrderInit$PayChannel;->i:Ljava/lang/String;

    :goto_2
    const-string v6, "hot"

    invoke-static {v3, v6}, Lcom/netease/mpay/server/a/an;->l(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v4, Lcom/netease/mpay/server/response/OrderInit$PayChannel;->j:Z

    const-string v6, "status"

    invoke-static {v3, v6}, Lcom/netease/mpay/server/a/an;->h(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v6

    iput v6, v4, Lcom/netease/mpay/server/response/OrderInit$PayChannel;->k:I

    iget-boolean v6, v4, Lcom/netease/mpay/server/response/OrderInit$PayChannel;->e:Z

    if-eqz v6, :cond_1

    const-string v6, "ecard"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v5, "balance"

    invoke-static {v3, v5}, Lcom/netease/mpay/server/a/an;->h(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v3

    iput v3, v4, Lcom/netease/mpay/server/response/OrderInit$PayChannel;->l:I

    :cond_1
    :goto_3
    iget-object v3, v1, Lcom/netease/mpay/server/response/OrderInit;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string v6, "reason"

    invoke-static {v3, v6}, Lcom/netease/mpay/server/a/an;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/netease/mpay/server/response/OrderInit$PayChannel;->f:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const-string v6, "mobilecard"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "select_amounts"

    invoke-static {v3, v5}, Lcom/netease/mpay/server/a/an;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/netease/mpay/server/response/OrderInit$PayChannel;->m:Ljava/lang/String;

    goto :goto_3

    :cond_4
    return-object v1
.end method

.method protected a(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/netease/mpay/widget/a/a;

    const-string v2, "id"

    iget-object v3, p0, Lcom/netease/mpay/server/a/an;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/netease/mpay/widget/a/a;

    const-string v2, "token"

    iget-object v3, p0, Lcom/netease/mpay/server/a/an;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected synthetic b(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/server/a/an;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/server/response/OrderInit;

    move-result-object v0

    return-object v0
.end method
