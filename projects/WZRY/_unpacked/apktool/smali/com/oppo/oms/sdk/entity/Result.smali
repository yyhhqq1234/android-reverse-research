.class public Lcom/oppo/oms/sdk/entity/Result;
.super Ljava/lang/Object;
.source "Result.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private error:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    .local p0, "this":Lcom/oppo/oms/sdk/entity/Result;, "Lcom/oppo/oms/sdk/entity/Result<TE;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lcom/oppo/oms/sdk/entity/Result;, "Lcom/oppo/oms/sdk/entity/Result<TE;TT;>;"
    iget-object v0, p0, Lcom/oppo/oms/sdk/entity/Result;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getError()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lcom/oppo/oms/sdk/entity/Result;, "Lcom/oppo/oms/sdk/entity/Result<TE;TT;>;"
    iget-object v0, p0, Lcom/oppo/oms/sdk/entity/Result;->error:Ljava/lang/Object;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 21
    .local p0, "this":Lcom/oppo/oms/sdk/entity/Result;, "Lcom/oppo/oms/sdk/entity/Result<TE;TT;>;"
    iget-boolean v0, p0, Lcom/oppo/oms/sdk/entity/Result;->success:Z

    return v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/oppo/oms/sdk/entity/Result;, "Lcom/oppo/oms/sdk/entity/Result<TE;TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/oppo/oms/sdk/entity/Result;->data:Ljava/lang/Object;

    .line 34
    return-void
.end method

.method public setError(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/oppo/oms/sdk/entity/Result;, "Lcom/oppo/oms/sdk/entity/Result<TE;TT;>;"
    .local p1, "error":Ljava/lang/Object;, "TE;"
    iput-object p1, p0, Lcom/oppo/oms/sdk/entity/Result;->error:Ljava/lang/Object;

    .line 38
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 41
    .local p0, "this":Lcom/oppo/oms/sdk/entity/Result;, "Lcom/oppo/oms/sdk/entity/Result<TE;TT;>;"
    iput-boolean p1, p0, Lcom/oppo/oms/sdk/entity/Result;->success:Z

    .line 42
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 47
    .local p0, "this":Lcom/oppo/oms/sdk/entity/Result;, "Lcom/oppo/oms/sdk/entity/Result<TE;TT;>;"
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 48
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v2, "success"

    iget-boolean v3, p0, Lcom/oppo/oms/sdk/entity/Result;->success:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 49
    iget-object v2, p0, Lcom/oppo/oms/sdk/entity/Result;->error:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 50
    const-string v2, "error"

    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/oppo/oms/sdk/entity/Result;->error:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    :cond_0
    iget-object v2, p0, Lcom/oppo/oms/sdk/entity/Result;->data:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 53
    const-string v2, "data"

    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/oppo/oms/sdk/entity/Result;->data:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 59
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
