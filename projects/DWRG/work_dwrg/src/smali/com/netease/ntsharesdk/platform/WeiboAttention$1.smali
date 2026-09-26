.class Lcom/netease/ntsharesdk/platform/WeiboAttention$1;
.super Ljava/lang/Object;
.source "WeiboAttention.java"

# interfaces
.implements Lcom/sina/weibo/sdk/component/WidgetRequestParam$WidgetRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntsharesdk/platform/WeiboAttention;->attentionViaView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntsharesdk/platform/WeiboAttention$AttentionCallback;)V
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
    iput-object p1, p0, Lcom/netease/ntsharesdk/platform/WeiboAttention$1;->val$callback:Lcom/netease/ntsharesdk/platform/WeiboAttention$AttentionCallback;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWebViewResult(Ljava/lang/String;)V
    .locals 10
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 47
    invoke-static {p1}, Lcom/sina/weibo/sdk/utils/Utility;->parseUri(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 48
    .local v2, "b":Landroid/os/Bundle;
    const-string v8, "result"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, "result":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v4, v7

    .line 50
    .local v4, "suc":Z
    :goto_0
    if-eqz v4, :cond_0

    .line 52
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    int-to-long v0, v8

    .line 53
    .local v0, "attented":J
    const-wide/16 v8, 0x1

    cmp-long v8, v8, v0

    if-nez v8, :cond_3

    move v4, v6

    .line 59
    .end local v0    # "attented":J
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/netease/ntsharesdk/platform/WeiboAttention$1;->val$callback:Lcom/netease/ntsharesdk/platform/WeiboAttention$AttentionCallback;

    if-eqz v6, :cond_1

    .line 60
    iget-object v6, p0, Lcom/netease/ntsharesdk/platform/WeiboAttention$1;->val$callback:Lcom/netease/ntsharesdk/platform/WeiboAttention$AttentionCallback;

    invoke-interface {v6, v4}, Lcom/netease/ntsharesdk/platform/WeiboAttention$AttentionCallback;->attentResult(Z)V

    .line 62
    :cond_1
    return-void

    .end local v4    # "suc":Z
    :cond_2
    move v4, v6

    .line 49
    goto :goto_0

    .restart local v0    # "attented":J
    .restart local v4    # "suc":Z
    :cond_3
    move v4, v7

    .line 53
    goto :goto_1

    .line 54
    .end local v0    # "attented":J
    :catch_0
    move-exception v5

    .line 55
    .local v5, "var6":Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/netease/ntsharesdk/Platform;->dLog(Ljava/lang/String;)V

    .line 56
    const/4 v4, 0x0

    goto :goto_1
.end method
