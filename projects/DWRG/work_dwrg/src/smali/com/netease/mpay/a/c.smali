.class Lcom/netease/mpay/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/GraphRequest$GraphJSONObjectCallback;


# instance fields
.field final synthetic a:Lcom/facebook/AccessToken;

.field final synthetic b:Lcom/netease/mpay/a/a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/a/a;Lcom/facebook/AccessToken;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/a/c;->b:Lcom/netease/mpay/a/a;

    iput-object p2, p0, Lcom/netease/mpay/a/c;->a:Lcom/facebook/AccessToken;

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
.method public onCompleted(Lorg/json/JSONObject;Lcom/facebook/GraphResponse;)V
    .locals 9

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/a/c;->b:Lcom/netease/mpay/a/a;

    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/mpay/a/a;->a(Lcom/netease/mpay/a/a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/a/c;->b:Lcom/netease/mpay/a/a;

    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/mpay/a/a;->b(Lcom/netease/mpay/a/a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/a/c;->b:Lcom/netease/mpay/a/a;

    const-string v1, "email"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/mpay/a/a;->c(Lcom/netease/mpay/a/a;Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Lcom/netease/mpay/f/r;

    iget-object v1, p0, Lcom/netease/mpay/a/c;->b:Lcom/netease/mpay/a/a;

    invoke-static {v1}, Lcom/netease/mpay/a/a;->b(Lcom/netease/mpay/a/a;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/a/c;->b:Lcom/netease/mpay/a/a;

    invoke-static {v2}, Lcom/netease/mpay/a/a;->c(Lcom/netease/mpay/a/a;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/a/c;->b:Lcom/netease/mpay/a/a;

    invoke-static {v3}, Lcom/netease/mpay/a/a;->d(Lcom/netease/mpay/a/a;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/a/c;->b:Lcom/netease/mpay/a/a;

    invoke-static {v4}, Lcom/netease/mpay/a/a;->e(Lcom/netease/mpay/a/a;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/mpay/a/c;->b:Lcom/netease/mpay/a/a;

    invoke-static {v5}, Lcom/netease/mpay/a/a;->f(Lcom/netease/mpay/a/a;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/netease/mpay/a/c;->a:Lcom/facebook/AccessToken;

    iget-object v7, p0, Lcom/netease/mpay/a/c;->b:Lcom/netease/mpay/a/a;

    invoke-static {v7}, Lcom/netease/mpay/a/a;->g(Lcom/netease/mpay/a/a;)Z

    move-result v7

    new-instance v8, Lcom/netease/mpay/a/d;

    invoke-direct {v8, p0}, Lcom/netease/mpay/a/d;-><init>(Lcom/netease/mpay/a/c;)V

    invoke-direct/range {v0 .. v8}, Lcom/netease/mpay/f/r;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;ZLcom/netease/mpay/f/au$a;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/r;->h()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netease/mpay/b/an;

    iget-object v1, p0, Lcom/netease/mpay/a/c;->b:Lcom/netease/mpay/a/a;

    invoke-static {v1}, Lcom/netease/mpay/a/a;->b(Lcom/netease/mpay/a/a;)Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->t:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/b/an;-><init>(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/netease/mpay/a/c;->b:Lcom/netease/mpay/a/a;

    invoke-static {v1}, Lcom/netease/mpay/a/a;->b(Lcom/netease/mpay/a/a;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/an;->a(Landroid/app/Activity;)V

    goto :goto_0
.end method
