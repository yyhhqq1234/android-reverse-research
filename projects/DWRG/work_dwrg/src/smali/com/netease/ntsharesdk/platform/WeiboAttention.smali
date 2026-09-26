.class Lcom/netease/ntsharesdk/platform/WeiboAttention;
.super Ljava/lang/Object;
.source "WeiboAttention.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntsharesdk/platform/WeiboAttention$AttentionCallback;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static attention(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntsharesdk/platform/WeiboAttention$AttentionCallback;)V
    .locals 0
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "viaApi"    # Z
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "uid"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/netease/ntsharesdk/platform/WeiboAttention$AttentionCallback;

    .prologue
    .line 30
    if-eqz p1, :cond_0

    .line 31
    invoke-static {p3, p4, p5}, Lcom/netease/ntsharesdk/platform/WeiboAttention;->attentionViaApi(Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntsharesdk/platform/WeiboAttention$AttentionCallback;)V

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    invoke-static {p0, p2, p3, p4, p5}, Lcom/netease/ntsharesdk/platform/WeiboAttention;->attentionViaView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntsharesdk/platform/WeiboAttention$AttentionCallback;)V

    goto :goto_0
.end method

.method private static attentionViaApi(Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntsharesdk/platform/WeiboAttention$AttentionCallback;)V
    .locals 3
    .param p0, "token"    # Ljava/lang/String;
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/netease/ntsharesdk/platform/WeiboAttention$AttentionCallback;

    .prologue
    .line 71
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 72
    .local v0, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lcom/netease/ntsharesdk/platform/WeiboAttention$2;

    invoke-direct {v1, p0}, Lcom/netease/ntsharesdk/platform/WeiboAttention$2;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v1, Lcom/netease/ntsharesdk/platform/WeiboAttention$3;

    invoke-direct {v1, p1}, Lcom/netease/ntsharesdk/platform/WeiboAttention$3;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    const-string v1, "https://api.weibo.com/2/friendships/create.json"

    new-instance v2, Lcom/netease/ntsharesdk/platform/WeiboAttention$4;

    invoke-direct {v2, p2}, Lcom/netease/ntsharesdk/platform/WeiboAttention$4;-><init>(Lcom/netease/ntsharesdk/platform/WeiboAttention$AttentionCallback;)V

    invoke-static {v1, v0, v2}, Lcom/netease/ntsharesdk/platform/HttpReqUtil;->wpost(Ljava/lang/String;Ljava/util/List;Lcom/netease/ntsharesdk/platform/HttpReqUtil$WgetDoneCallback;)V

    .line 112
    return-void
.end method

.method private static attentionViaView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntsharesdk/platform/WeiboAttention$AttentionCallback;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/netease/ntsharesdk/platform/WeiboAttention$AttentionCallback;

    .prologue
    .line 38
    new-instance v2, Lcom/sina/weibo/sdk/component/WidgetRequestParam;

    invoke-direct {v2, p0}, Lcom/sina/weibo/sdk/component/WidgetRequestParam;-><init>(Landroid/content/Context;)V

    .line 39
    .local v2, "req":Lcom/sina/weibo/sdk/component/WidgetRequestParam;
    const-string v3, "http://widget.weibo.com/relationship/followsdk.php"

    invoke-virtual {v2, v3}, Lcom/sina/weibo/sdk/component/WidgetRequestParam;->setUrl(Ljava/lang/String;)V

    .line 40
    const-string v3, "\ufffd\ufffd\u05e2"

    invoke-virtual {v2, v3}, Lcom/sina/weibo/sdk/component/WidgetRequestParam;->setSpecifyTitle(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v2, p1}, Lcom/sina/weibo/sdk/component/WidgetRequestParam;->setAppKey(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v2, p3}, Lcom/sina/weibo/sdk/component/WidgetRequestParam;->setAttentionFuid(Ljava/lang/String;)V

    .line 43
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sina/weibo/sdk/component/WidgetRequestParam;->setAuthListener(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V

    .line 44
    invoke-virtual {v2, p2}, Lcom/sina/weibo/sdk/component/WidgetRequestParam;->setToken(Ljava/lang/String;)V

    .line 45
    new-instance v3, Lcom/netease/ntsharesdk/platform/WeiboAttention$1;

    invoke-direct {v3, p4}, Lcom/netease/ntsharesdk/platform/WeiboAttention$1;-><init>(Lcom/netease/ntsharesdk/platform/WeiboAttention$AttentionCallback;)V

    invoke-virtual {v2, v3}, Lcom/sina/weibo/sdk/component/WidgetRequestParam;->setWidgetRequestCallback(Lcom/sina/weibo/sdk/component/WidgetRequestParam$WidgetRequestCallback;)V

    .line 64
    invoke-virtual {v2}, Lcom/sina/weibo/sdk/component/WidgetRequestParam;->createRequestParamBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 65
    .local v0, "data":Landroid/os/Bundle;
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 68
    return-void
.end method
