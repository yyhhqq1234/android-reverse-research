.class Lcom/netease/ntsharesdk/platform/WeiboAttention$4;
.super Ljava/lang/Object;
.source "WeiboAttention.java"

# interfaces
.implements Lcom/netease/ntsharesdk/platform/HttpReqUtil$WgetDoneCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntsharesdk/platform/WeiboAttention;->attentionViaApi(Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntsharesdk/platform/WeiboAttention$AttentionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$callback:Lcom/netease/ntsharesdk/platform/WeiboAttention$AttentionCallback;


# direct methods
.method constructor <init>(Lcom/netease/ntsharesdk/platform/WeiboAttention$AttentionCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netease/ntsharesdk/platform/WeiboAttention$4;->val$callback:Lcom/netease/ntsharesdk/platform/WeiboAttention$AttentionCallback;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ProcessResult(Ljava/lang/String;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    .line 98
    .local v2, "suc":Z
    :goto_0
    if-eqz v2, :cond_0

    .line 100
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 101
    .local v1, "object":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/ntsharesdk/Platform;->dLog(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v1    # "object":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/netease/ntsharesdk/platform/WeiboAttention$4;->val$callback:Lcom/netease/ntsharesdk/platform/WeiboAttention$AttentionCallback;

    if-eqz v3, :cond_1

    .line 108
    iget-object v3, p0, Lcom/netease/ntsharesdk/platform/WeiboAttention$4;->val$callback:Lcom/netease/ntsharesdk/platform/WeiboAttention$AttentionCallback;

    invoke-interface {v3, v2}, Lcom/netease/ntsharesdk/platform/WeiboAttention$AttentionCallback;->attentResult(Z)V

    .line 110
    :cond_1
    return-void

    .line 97
    .end local v2    # "suc":Z
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 102
    .restart local v2    # "suc":Z
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/ntsharesdk/Platform;->dLog(Ljava/lang/String;)V

    .line 104
    const/4 v2, 0x0

    goto :goto_1
.end method
