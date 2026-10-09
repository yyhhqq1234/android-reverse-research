.class public Lcom/tencent/igame/priority/sdk/b/b;
.super Lcom/tencent/igame/priority/sdk/d/a/a;


# instance fields
.field private a:I

.field private a:Ljava/lang/String;

.field private a:Lorg/json/JSONArray;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/igame/priority/sdk/d/a/a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/tencent/igame/priority/sdk/b/b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/igame/priority/sdk/b/b;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/igame/priority/sdk/b/b;->c:Ljava/lang/String;

    iput p5, p0, Lcom/tencent/igame/priority/sdk/b/b;->a:I

    iput-object p6, p0, Lcom/tencent/igame/priority/sdk/b/b;->d:Ljava/lang/String;

    iput-object p7, p0, Lcom/tencent/igame/priority/sdk/b/b;->a:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/igame/priority/sdk/d/b/a;
    .locals 3

    new-instance v1, Lcom/tencent/igame/priority/sdk/d/b/a;

    invoke-direct {v1}, Lcom/tencent/igame/priority/sdk/d/b/a;-><init>()V

    :try_start_0
    const-string v0, "https://netbar.qq.com/LogCollection"

    invoke-virtual {p0, v0}, Lcom/tencent/igame/priority/sdk/b/b;->a(Ljava/lang/String;)Lcom/tencent/igame/priority/sdk/d/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/d/b/a;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/igame/priority/sdk/d/b/a;->a(I)V

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/d/b/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/igame/priority/sdk/d/b/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/g/b;->a(Ljava/lang/Exception;)V

    const/16 v0, 0x22

    invoke-virtual {v1, v0}, Lcom/tencent/igame/priority/sdk/d/b/a;->a(I)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/g/b;->a(Ljava/lang/Exception;)V

    const/16 v0, 0x24

    invoke-virtual {v1, v0}, Lcom/tencent/igame/priority/sdk/d/b/a;->a(I)V

    goto :goto_0
.end method

.method protected a([B)Lcom/tencent/igame/priority/sdk/d/b/a;
    .locals 3

    new-instance v0, Lcom/tencent/igame/priority/sdk/d/b/a;

    invoke-direct {v0}, Lcom/tencent/igame/priority/sdk/d/b/a;-><init>()V

    if-nez p1, :cond_0

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Lcom/tencent/igame/priority/sdk/d/b/a;->a(I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upload Log Result Body:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/igame/priority/sdk/g/b;->c(Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "r"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/igame/priority/sdk/d/b/a;->a(I)V

    const-string v2, "msg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/igame/priority/sdk/d/b/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a()[B
    .locals 3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "gid"

    iget-object v2, p0, Lcom/tencent/igame/priority/sdk/b/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "deviceid"

    iget-object v2, p0, Lcom/tencent/igame/priority/sdk/b/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "platform"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "uid"

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/b/b;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "utype"

    iget v2, p0, Lcom/tencent/igame/priority/sdk/b/b;->a:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "ip"

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/b/b;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "array"

    iget-object v2, p0, Lcom/tencent/igame/priority/sdk/b/b;->a:Lorg/json/JSONArray;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upload Log Request Body:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/g/b;->c(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/igame/a/a/a/b;->a([B)[B

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/b/b;->c:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/b/b;->d:Ljava/lang/String;

    goto :goto_1
.end method
