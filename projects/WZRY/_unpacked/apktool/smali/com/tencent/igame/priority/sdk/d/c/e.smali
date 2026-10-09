.class public Lcom/tencent/igame/priority/sdk/d/c/e;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)Lcom/tencent/igame/priority/sdk/d/b/f;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/tencent/igame/priority/sdk/d/b/f;

    invoke-direct {v1}, Lcom/tencent/igame/priority/sdk/d/b/f;-><init>()V

    const-string v2, "result"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/igame/priority/sdk/d/b/f;->a(I)V

    new-instance v2, Lcom/tencent/igame/priority/sdk/a/b;

    invoke-direct {v2}, Lcom/tencent/igame/priority/sdk/a/b;-><init>()V

    const-string/jumbo v3, "token"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/igame/priority/sdk/a/b;->a(Ljava/lang/String;)V

    const-string v3, "expire"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/tencent/igame/priority/sdk/a/b;->a(I)V

    invoke-virtual {v1, v2}, Lcom/tencent/igame/priority/sdk/d/b/f;->a(Lcom/tencent/igame/priority/sdk/a/b;)V

    return-object v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "deviceid"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "detail"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "gid"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
