.class Lcom/tencent/msdk/realnameauth/RealNameAuthManager$2;
.super Ljava/lang/Object;
.source "RealNameAuthManager.java"

# interfaces
.implements Lcom/tencent/msdk/realnameauth/ImageDialog$EventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->highRiskAuth(Lcom/tencent/msdk/realnameauth/model/CloudParameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/realnameauth/RealNameAuthManager;

.field final synthetic val$parameters:Lcom/tencent/msdk/realnameauth/model/CloudParameters;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/realnameauth/RealNameAuthManager;Lcom/tencent/msdk/realnameauth/model/CloudParameters;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/realnameauth/RealNameAuthManager;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager$2;->this$0:Lcom/tencent/msdk/realnameauth/RealNameAuthManager;

    iput-object p2, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager$2;->val$parameters:Lcom/tencent/msdk/realnameauth/model/CloudParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;)V
    .locals 6
    .param p1, "flag"    # I
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "image dialog event flag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", desc:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/realnameauth/tool/PluginUtil;->logDebug(Ljava/lang/String;)V

    .line 218
    if-nez p1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager$2;->val$parameters:Lcom/tencent/msdk/realnameauth/model/CloudParameters;

    iget-object v1, v1, Lcom/tencent/msdk/realnameauth/model/CloudParameters;->webveiwFrameRet:Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;

    iget-object v1, v1, Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;->openurl:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager$2;->this$0:Lcom/tencent/msdk/realnameauth/RealNameAuthManager;

    invoke-static {v2}, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->access$100(Lcom/tencent/msdk/realnameauth/RealNameAuthManager;)I

    move-result v2

    iget-object v3, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager$2;->this$0:Lcom/tencent/msdk/realnameauth/RealNameAuthManager;

    invoke-static {v3}, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->access$200(Lcom/tencent/msdk/realnameauth/RealNameAuthManager;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager$2;->this$0:Lcom/tencent/msdk/realnameauth/RealNameAuthManager;

    .line 220
    invoke-static {v4}, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->access$300(Lcom/tencent/msdk/realnameauth/RealNameAuthManager;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager$2;->this$0:Lcom/tencent/msdk/realnameauth/RealNameAuthManager;

    invoke-static {v5}, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->access$400(Lcom/tencent/msdk/realnameauth/RealNameAuthManager;)Ljava/lang/String;

    move-result-object v5

    .line 219
    invoke-static {v1, v2, v3, v4, v5}, Lcom/tencent/msdk/realnameauth/tool/PluginUtil;->getEncodeUrl(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "msdkUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager$2;->this$0:Lcom/tencent/msdk/realnameauth/RealNameAuthManager;

    iget-object v1, v1, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/tencent/msdk/webviewx/api/MSDKWeb;->init(Landroid/app/Activity;)V

    .line 222
    iget-object v1, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager$2;->val$parameters:Lcom/tencent/msdk/realnameauth/model/CloudParameters;

    iget-object v1, v1, Lcom/tencent/msdk/realnameauth/model/CloudParameters;->webveiwFrameRet:Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;

    iget-object v2, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager$2;->this$0:Lcom/tencent/msdk/realnameauth/RealNameAuthManager;

    invoke-static {v2}, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->access$500(Lcom/tencent/msdk/realnameauth/RealNameAuthManager;)Lcom/tencent/msdk/webviewx/api/MSDKWeb$WebEventLisenter;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/msdk/webviewx/api/MSDKWeb;->openWebWithConfig(Ljava/lang/String;Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;Lcom/tencent/msdk/webviewx/api/MSDKWeb$WebEventLisenter;)I

    .line 223
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/tencent/msdk/sdkwrapper/realname/RealNameWrapper;->reportData(I)V

    .line 227
    .end local v0    # "msdkUrl":Ljava/lang/String;
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v1, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager$2;->this$0:Lcom/tencent/msdk/realnameauth/RealNameAuthManager;

    invoke-virtual {v1, p1, p2}, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->onRealNameAuthNotify(ILjava/lang/String;)V

    goto :goto_0
.end method
