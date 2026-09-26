.class Lcom/netease/mpay/social/k$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sina/weibo/sdk/net/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/social/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/social/k;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/netease/mpay/social/k;I)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/social/k$b;->a:Lcom/netease/mpay/social/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/netease/mpay/social/k$b;->b:I

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
.method public onComplete(Ljava/lang/String;)V
    .locals 9

    const/4 v3, 0x1

    const/4 v2, 0x2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "users"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    iget v0, p0, Lcom/netease/mpay/social/k$b;->b:I

    packed-switch v0, :pswitch_data_0

    move v1, v2

    :goto_0
    const/4 v0, 0x0

    move v4, v0

    :goto_1
    if-ge v4, v6, :cond_2

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/social/i;->a(Lorg/json/JSONObject;)Lcom/netease/mpay/social/i;

    move-result-object v7

    iget-object v0, p0, Lcom/netease/mpay/social/k$b;->a:Lcom/netease/mpay/social/k;

    invoke-static {v0}, Lcom/netease/mpay/social/k;->b(Lcom/netease/mpay/social/k;)Lcom/netease/mpay/social/a$a;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/social/a$a;->d:Ljava/util/HashMap;

    iget-object v8, v7, Lcom/netease/mpay/social/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/social/m;

    if-nez v0, :cond_1

    new-instance v0, Lcom/netease/mpay/social/m;

    invoke-direct {v0}, Lcom/netease/mpay/social/m;-><init>()V

    iget-object v8, v7, Lcom/netease/mpay/social/i;->a:Ljava/lang/String;

    iput-object v8, v0, Lcom/netease/mpay/social/m;->a:Ljava/lang/String;

    iput v1, v0, Lcom/netease/mpay/social/m;->b:I

    iget-object v8, v7, Lcom/netease/mpay/social/i;->A:Ljava/lang/String;

    iput-object v8, v0, Lcom/netease/mpay/social/m;->e:Ljava/lang/String;

    iget-object v7, v7, Lcom/netease/mpay/social/i;->c:Ljava/lang/String;

    iput-object v7, v0, Lcom/netease/mpay/social/m;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/netease/mpay/social/k$b;->a:Lcom/netease/mpay/social/k;

    invoke-static {v7}, Lcom/netease/mpay/social/k;->b(Lcom/netease/mpay/social/k;)Lcom/netease/mpay/social/a$a;

    move-result-object v7

    iget-object v7, v7, Lcom/netease/mpay/social/a$a;->d:Ljava/util/HashMap;

    iget-object v8, v0, Lcom/netease/mpay/social/m;->a:Ljava/lang/String;

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :pswitch_0
    move v1, v2

    goto :goto_0

    :pswitch_1
    move v1, v3

    goto :goto_0

    :cond_1
    iget v7, v0, Lcom/netease/mpay/social/m;->b:I

    if-eq v7, v3, :cond_0

    if-ne v1, v2, :cond_0

    iput v1, v0, Lcom/netease/mpay/social/m;->b:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/social/k$b;->a:Lcom/netease/mpay/social/k;

    invoke-static {v0}, Lcom/netease/mpay/social/k;->c(Lcom/netease/mpay/social/k;)I

    move-result v0

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/social/k$b;->a:Lcom/netease/mpay/social/k;

    invoke-static {v0}, Lcom/netease/mpay/social/k;->a(Lcom/netease/mpay/social/k;)Lcom/netease/mpay/social/k$a;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/social/k$b;->a:Lcom/netease/mpay/social/k;

    invoke-static {v1}, Lcom/netease/mpay/social/k;->b(Lcom/netease/mpay/social/k;)Lcom/netease/mpay/social/a$a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/mpay/social/k$a;->a(Lcom/netease/mpay/social/a$a;)V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/social/k$b;->a:Lcom/netease/mpay/social/k;

    invoke-static {v0}, Lcom/netease/mpay/social/k;->c(Lcom/netease/mpay/social/k;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/social/k$b;->a:Lcom/netease/mpay/social/k;

    invoke-static {v0}, Lcom/netease/mpay/social/k;->a(Lcom/netease/mpay/social/k;)Lcom/netease/mpay/social/k$a;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/social/k$b;->a:Lcom/netease/mpay/social/k;

    invoke-static {v1}, Lcom/netease/mpay/social/k;->b(Lcom/netease/mpay/social/k;)Lcom/netease/mpay/social/a$a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/mpay/social/k$a;->a(Lcom/netease/mpay/social/a$a;)V

    :cond_0
    return-void
.end method
