.class Lcom/tencent/msdk/realnameauth/RealNameAuthManager$1;
.super Ljava/lang/Object;
.source "RealNameAuthManager.java"

# interfaces
.implements Lcom/tencent/msdk/webviewx/api/MSDKWeb$WebEventLisenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/realnameauth/RealNameAuthManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/realnameauth/RealNameAuthManager;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/realnameauth/RealNameAuthManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/realnameauth/RealNameAuthManager;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager$1;->this$0:Lcom/tencent/msdk/realnameauth/RealNameAuthManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnClick(I)V
    .locals 2
    .param p1, "actionId"    # I

    .prologue
    .line 182
    iget-object v0, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager$1;->this$0:Lcom/tencent/msdk/realnameauth/RealNameAuthManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->access$002(Lcom/tencent/msdk/realnameauth/RealNameAuthManager;Z)Z

    .line 183
    packed-switch p1, :pswitch_data_0

    .line 202
    invoke-static {}, Lcom/tencent/msdk/webviewx/api/MSDKWeb;->closeWeb()I

    .line 205
    :goto_0
    return-void

    .line 185
    :pswitch_0
    const-string v0, ""

    invoke-static {v0}, Lcom/tencent/msdk/webviewx/api/MSDKWeb;->setCloseMsg(Ljava/lang/String;)V

    .line 186
    invoke-static {}, Lcom/tencent/msdk/webviewx/api/MSDKWeb;->closeWeb()I

    goto :goto_0

    .line 189
    :pswitch_1
    invoke-static {}, Lcom/tencent/msdk/webviewx/api/MSDKWeb;->getCloseMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    const-string/jumbo v0, "{\"flag\":-3,\"desc\":\"real name auth user cancel\"}"

    invoke-static {v0}, Lcom/tencent/msdk/webviewx/api/MSDKWeb;->setCloseMsg(Ljava/lang/String;)V

    .line 193
    :cond_0
    invoke-static {}, Lcom/tencent/msdk/webviewx/api/MSDKWeb;->closeWeb()I

    goto :goto_0

    .line 196
    :pswitch_2
    invoke-static {}, Lcom/tencent/msdk/webviewx/api/MSDKWeb;->getCloseMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    const-string/jumbo v0, "{\"flag\":0}"

    invoke-static {v0}, Lcom/tencent/msdk/webviewx/api/MSDKWeb;->setCloseMsg(Ljava/lang/String;)V

    .line 199
    :cond_1
    invoke-static {}, Lcom/tencent/msdk/webviewx/api/MSDKWeb;->closeWeb()I

    goto :goto_0

    .line 183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public OnClose(Ljava/lang/String;)V
    .locals 1
    .param p1, "closeMsg"    # Ljava/lang/String;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager$1;->this$0:Lcom/tencent/msdk/realnameauth/RealNameAuthManager;

    invoke-virtual {v0, p1}, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->OnWebRealNameAuthNotify(Ljava/lang/String;)V

    .line 210
    return-void
.end method
