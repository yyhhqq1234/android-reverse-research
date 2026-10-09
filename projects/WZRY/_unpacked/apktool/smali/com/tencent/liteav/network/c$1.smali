.class Lcom/tencent/liteav/network/c$1;
.super Ljava/lang/Thread;
.source "TXCIntelligentRoute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/network/c;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/tencent/liteav/network/c;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/network/c;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/tencent/liteav/network/c$1;->c:Lcom/tencent/liteav/network/c;

    iput-object p3, p0, Lcom/tencent/liteav/network/c$1;->a:Ljava/lang/String;

    iput p4, p0, Lcom/tencent/liteav/network/c$1;->b:I

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 65
    iget-object v0, p0, Lcom/tencent/liteav/network/c$1;->c:Lcom/tencent/liteav/network/c;

    iget-object v0, v0, Lcom/tencent/liteav/network/c;->a:Lcom/tencent/liteav/network/b;

    if-nez v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 69
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    .line 70
    :goto_1
    const/4 v1, 0x5

    if-ge v2, v1, :cond_1

    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/network/c$1;->c:Lcom/tencent/liteav/network/c;

    iget-object v4, p0, Lcom/tencent/liteav/network/c$1;->a:Ljava/lang/String;

    iget v5, p0, Lcom/tencent/liteav/network/c$1;->b:I

    invoke-static {v1, v4, v5}, Lcom/tencent/liteav/network/c;->a(Lcom/tencent/liteav/network/c;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 75
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 76
    const-string/jumbo v5, "use"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "use"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-nez v1, :cond_2

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/tencent/liteav/network/c$1;->c:Lcom/tencent/liteav/network/c;

    iget-object v1, v1, Lcom/tencent/liteav/network/c;->a:Lcom/tencent/liteav/network/b;

    invoke-interface {v1, v3, v0}, Lcom/tencent/liteav/network/b;->onFetchDone(ILjava/util/ArrayList;)V

    goto :goto_0

    .line 80
    :catch_0
    move-exception v1

    .line 81
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    :cond_2
    iget-object v1, p0, Lcom/tencent/liteav/network/c$1;->c:Lcom/tencent/liteav/network/c;

    invoke-static {v1, v4}, Lcom/tencent/liteav/network/c;->a(Lcom/tencent/liteav/network/c;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 89
    :cond_3
    const-wide/16 v4, 0x3e8

    const/4 v1, 0x0

    invoke-static {v4, v5, v1}, Lcom/tencent/liteav/network/c$1;->sleep(JI)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 70
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 91
    :catch_1
    move-exception v1

    .line 92
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
