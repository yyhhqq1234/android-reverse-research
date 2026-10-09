.class public Lcom/tencent/igame/priority/sdk/d/c/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)Lcom/tencent/igame/priority/sdk/d/b/b;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/tencent/igame/priority/sdk/d/b/b;

    invoke-direct {v1}, Lcom/tencent/igame/priority/sdk/d/b/b;-><init>()V

    const-string v2, "result"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/igame/priority/sdk/d/b/b;->a(I)V

    new-instance v2, Lcom/tencent/igame/priority/sdk/a/c;

    invoke-direct {v2}, Lcom/tencent/igame/priority/sdk/a/c;-><init>()V

    const-string v3, "ip"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/igame/priority/sdk/a/c;->a(Ljava/lang/String;)V

    const-string v3, "port"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tencent/igame/priority/sdk/a/c;->a(I)V

    const-string v3, "signature"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/igame/priority/sdk/a/c;->b(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/tencent/igame/priority/sdk/d/b/b;->a(Lcom/tencent/igame/priority/sdk/a/c;)V

    new-instance v2, Lcom/tencent/igame/priority/sdk/a/a;

    invoke-direct {v2}, Lcom/tencent/igame/priority/sdk/a/a;-><init>()V

    const-string v3, "corpid"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/igame/priority/sdk/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/tencent/igame/priority/sdk/d/b/b;->a(Lcom/tencent/igame/priority/sdk/a/a;)V

    const-string v2, "rand"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/igame/priority/sdk/d/b/b;->b(Ljava/lang/String;)V

    return-object v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ip"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mac"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "rand"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
