.class Lcom/tencent/msdk/webviewx/core/WebViewX$1;
.super Ljava/lang/Object;
.source "WebViewX.java"

# interfaces
.implements Lcom/tencent/msdk/webviewx/api/MSDKWeb$WebEventLisenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/webviewx/core/WebViewX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/webviewx/core/WebViewX;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/webviewx/core/WebViewX;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/webviewx/core/WebViewX;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX$1;->this$0:Lcom/tencent/msdk/webviewx/core/WebViewX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnClick(I)V
    .locals 1
    .param p1, "actionId"    # I

    .prologue
    .line 233
    packed-switch p1, :pswitch_data_0

    .line 251
    invoke-static {}, Lcom/tencent/msdk/webviewx/api/MSDKWeb;->closeWeb()I

    .line 254
    :goto_0
    return-void

    .line 235
    :pswitch_0
    invoke-static {}, Lcom/tencent/msdk/webviewx/api/MSDKWeb;->closeWeb()I

    goto :goto_0

    .line 238
    :pswitch_1
    invoke-static {}, Lcom/tencent/msdk/webviewx/api/MSDKWeb;->getCloseMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    const-string/jumbo v0, "{\"flag\":-3,\"desc\":\"real name auth user cancel\"}"

    invoke-static {v0}, Lcom/tencent/msdk/webviewx/api/MSDKWeb;->setCloseMsg(Ljava/lang/String;)V

    .line 242
    :cond_0
    invoke-static {}, Lcom/tencent/msdk/webviewx/api/MSDKWeb;->closeWeb()I

    goto :goto_0

    .line 245
    :pswitch_2
    invoke-static {}, Lcom/tencent/msdk/webviewx/api/MSDKWeb;->getCloseMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    const-string/jumbo v0, "{\"flag\":0}"

    invoke-static {v0}, Lcom/tencent/msdk/webviewx/api/MSDKWeb;->setCloseMsg(Ljava/lang/String;)V

    .line 248
    :cond_1
    invoke-static {}, Lcom/tencent/msdk/webviewx/api/MSDKWeb;->closeWeb()I

    goto :goto_0

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public OnClose(Ljava/lang/String;)V
    .locals 0
    .param p1, "closeMsg"    # Ljava/lang/String;

    .prologue
    .line 259
    return-void
.end method
