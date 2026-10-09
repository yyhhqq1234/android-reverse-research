.class final Lcom/tencent/mna/b/f/a$2;
.super Ljava/lang/Object;
.source "QosHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/b/f/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 202
    invoke-static {}, Lcom/tencent/mna/b/f/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    :goto_0
    return-void

    .line 206
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/tencent/mna/b/f/a;->b(Z)Z

    .line 207
    const-string/jumbo v0, "\u53d6\u6d88QOS\u4fdd\u969c..."

    invoke-static {v0}, Lcom/tencent/mna/b/f/a;->b(Ljava/lang/String;)V

    .line 208
    invoke-static {}, Lcom/tencent/mna/b/f/a;->g()Lcom/tencent/mna/b/f/d$e;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/mna/b/f/a;->g()Lcom/tencent/mna/b/f/d$e;

    move-result-object v0

    iget v0, v0, Lcom/tencent/mna/b/f/d$e;->a:I

    if-eqz v0, :cond_2

    .line 209
    :cond_1
    const-string/jumbo v0, "\u542f\u52a8\u4fdd\u969c\u4e0d\u6210\u529f\u6216\u5df2\u53d6\u6d88\u4fdd\u969c\uff0c\u65e0\u9700\u518d\u6b21\u53d6\u6d88QOS\u4fdd\u969c"

    invoke-static {v0}, Lcom/tencent/mna/b/f/a;->b(Ljava/lang/String;)V

    .line 210
    const-string v0, "[N]4G QOS\u53d6\u6d88\u4fdd\u969c: \u542f\u52a8\u4fdd\u969c\u4e0d\u6210\u529f\u6216\u5df2\u53d6\u6d88\u4fdd\u969c\uff0c\u65e0\u9700\u518d\u6b21\u53d6\u6d88QOS\u4fdd\u969c"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    invoke-static {v3}, Lcom/tencent/mna/b/f/a;->b(Z)Z

    goto :goto_0

    .line 213
    :cond_2
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    :try_start_2
    const-string v1, "appid"

    invoke-static {}, Lcom/tencent/mna/b/f/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    const-string v1, "sdkver"

    invoke-static {}, Lcom/tencent/mna/b/f/a;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    const-string/jumbo v1, "type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 218
    const-string v1, "sessionId"

    invoke-static {}, Lcom/tencent/mna/b/f/a;->g()Lcom/tencent/mna/b/f/d$e;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/mna/b/f/d$e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    const-string v1, "openid"

    invoke-static {}, Lcom/tencent/mna/b/f/a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    invoke-static {}, Lcom/tencent/mna/b/f/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mna/b/f/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u8bf7\u6c42\u7ed3\u679c\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/b/f/a;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 225
    :goto_1
    const/4 v0, 0x0

    :try_start_3
    invoke-static {v0}, Lcom/tencent/mna/b/f/a;->a(Lcom/tencent/mna/b/f/d$e;)Lcom/tencent/mna/b/f/d$e;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 229
    invoke-static {v3}, Lcom/tencent/mna/b/f/a;->b(Z)Z

    goto/16 :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    :try_start_4
    const-string v0, "doUnQos json exception"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 226
    :catch_1
    move-exception v0

    .line 227
    const/4 v0, 0x0

    :try_start_5
    invoke-static {v0}, Lcom/tencent/mna/b/f/a;->a(Lcom/tencent/mna/b/f/d$e;)Lcom/tencent/mna/b/f/d$e;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 229
    invoke-static {v3}, Lcom/tencent/mna/b/f/a;->b(Z)Z

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v3}, Lcom/tencent/mna/b/f/a;->b(Z)Z

    throw v0
.end method
