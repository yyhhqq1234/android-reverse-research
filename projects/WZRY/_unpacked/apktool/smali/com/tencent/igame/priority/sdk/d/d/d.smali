.class public Lcom/tencent/igame/priority/sdk/d/d/d;
.super Lcom/tencent/igame/priority/sdk/d/a/a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/igame/priority/sdk/d/a/a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/tencent/igame/priority/sdk/d/d/d;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/igame/priority/sdk/d/d/d;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/igame/priority/sdk/d/d/d;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/igame/priority/sdk/d/d/d;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([B)Lcom/tencent/igame/priority/sdk/d/b/a;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/tencent/igame/priority/sdk/d/d/d;->a([B)Lcom/tencent/igame/priority/sdk/d/b/e;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/tencent/igame/priority/sdk/d/b/e;
    .locals 3

    new-instance v1, Lcom/tencent/igame/priority/sdk/d/b/e;

    invoke-direct {v1}, Lcom/tencent/igame/priority/sdk/d/b/e;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/tencent/igame/priority/sdk/env/Env;->getHttpRequestUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/igame/priority/sdk/d/d/d;->a(Ljava/lang/String;)Lcom/tencent/igame/priority/sdk/d/b/a;

    move-result-object v0

    instance-of v2, v0, Lcom/tencent/igame/priority/sdk/d/b/e;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/tencent/igame/priority/sdk/d/b/e;

    :goto_0
    move-object v1, v0

    :goto_1
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/d/b/a;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/igame/priority/sdk/d/b/e;->a(I)V

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/d/b/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/igame/priority/sdk/d/b/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v0, 0x22

    invoke-virtual {v1, v0}, Lcom/tencent/igame/priority/sdk/d/b/e;->a(I)V

    goto :goto_1

    :catch_1
    move-exception v0

    const/16 v0, 0x24

    invoke-virtual {v1, v0}, Lcom/tencent/igame/priority/sdk/d/b/e;->a(I)V

    goto :goto_1
.end method

.method protected a([B)Lcom/tencent/igame/priority/sdk/d/b/e;
    .locals 2

    new-instance v0, Lcom/tencent/igame/priority/sdk/d/b/e;

    invoke-direct {v0}, Lcom/tencent/igame/priority/sdk/d/b/e;-><init>()V

    if-nez p1, :cond_0

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Lcom/tencent/igame/priority/sdk/d/b/e;->a(I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/d/c/d;->a(Ljava/lang/String;)Lcom/tencent/igame/priority/sdk/d/b/e;

    move-result-object v0

    goto :goto_0
.end method

.method protected a()[B
    .locals 4

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/d/d;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/d/d/d;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/igame/priority/sdk/d/d/d;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/igame/priority/sdk/d/d/d;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/igame/priority/sdk/d/c/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method
