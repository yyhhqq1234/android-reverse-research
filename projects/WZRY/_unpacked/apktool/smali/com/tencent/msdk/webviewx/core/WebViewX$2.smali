.class Lcom/tencent/msdk/webviewx/core/WebViewX$2;
.super Landroid/os/Handler;
.source "WebViewX.java"


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
.method constructor <init>(Lcom/tencent/msdk/webviewx/core/WebViewX;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/webviewx/core/WebViewX;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 405
    iput-object p1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX$2;->this$0:Lcom/tencent/msdk/webviewx/core/WebViewX;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 409
    if-eqz p1, :cond_0

    .line 410
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 494
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 412
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 413
    .local v8, "time":J
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX$2;->this$0:Lcom/tencent/msdk/webviewx/core/WebViewX;

    invoke-virtual {v0}, Lcom/tencent/msdk/webviewx/core/WebViewX;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/tencent/smtt/sdk/QbSdk;->initX5Environment(Landroid/content/Context;Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;)V

    .line 414
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX$2;->this$0:Lcom/tencent/msdk/webviewx/core/WebViewX;

    invoke-static {v0}, Lcom/tencent/msdk/webviewx/core/WebViewX;->access$000(Lcom/tencent/msdk/webviewx/core/WebViewX;)V

    .line 415
    const-string v0, "WebViewX"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init end:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 418
    .end local v8    # "time":J
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX$2;->this$0:Lcom/tencent/msdk/webviewx/core/WebViewX;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/tencent/msdk/webviewx/core/WebViewX;->access$102(Lcom/tencent/msdk/webviewx/core/WebViewX;Ljava/lang/String;)Ljava/lang/String;

    .line 422
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 423
    .local v7, "url":Ljava/lang/String;
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX$2;->this$0:Lcom/tencent/msdk/webviewx/core/WebViewX;

    invoke-static {v0}, Lcom/tencent/msdk/webviewx/core/WebViewX;->access$200(Lcom/tencent/msdk/webviewx/core/WebViewX;)V

    .line 424
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX$2;->this$0:Lcom/tencent/msdk/webviewx/core/WebViewX;

    invoke-static {v0}, Lcom/tencent/msdk/webviewx/core/WebViewX;->access$300(Lcom/tencent/msdk/webviewx/core/WebViewX;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    const-string v0, "WebViewX"

    const-string/jumbo v1, "web has showing so refresh url"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :goto_1
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX$2;->this$0:Lcom/tencent/msdk/webviewx/core/WebViewX;

    invoke-static {v0}, Lcom/tencent/msdk/webviewx/core/WebViewX;->access$500(Lcom/tencent/msdk/webviewx/core/WebViewX;)Lcom/tencent/smtt/sdk/WebView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 430
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX$2;->this$0:Lcom/tencent/msdk/webviewx/core/WebViewX;

    invoke-static {v0}, Lcom/tencent/msdk/webviewx/core/WebViewX;->access$500(Lcom/tencent/msdk/webviewx/core/WebViewX;)Lcom/tencent/smtt/sdk/WebView;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    .line 431
    const-string v0, "WebViewX"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadUrl:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX$2;->this$0:Lcom/tencent/msdk/webviewx/core/WebViewX;

    invoke-static {v0}, Lcom/tencent/msdk/webviewx/core/WebViewX;->access$400(Lcom/tencent/msdk/webviewx/core/WebViewX;)V

    goto :goto_1

    .line 433
    :cond_2
    const-string v0, "WebViewX"

    const-string v1, "WebView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 437
    .end local v7    # "url":Ljava/lang/String;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX$2;->this$0:Lcom/tencent/msdk/webviewx/core/WebViewX;

    const-string v3, ""

    invoke-static {v0, v3}, Lcom/tencent/msdk/webviewx/core/WebViewX;->access$102(Lcom/tencent/msdk/webviewx/core/WebViewX;Ljava/lang/String;)Ljava/lang/String;

    .line 441
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/tencent/msdk/webviewx/core/WebViewX$WebMessage;

    if-eqz v0, :cond_5

    .line 442
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/tencent/msdk/webviewx/core/WebViewX$WebMessage;

    .line 443
    .local v10, "webmsg":Lcom/tencent/msdk/webviewx/core/WebViewX$WebMessage;
    iget-object v4, v10, Lcom/tencent/msdk/webviewx/core/WebViewX$WebMessage;->msg1:Ljava/lang/String;

    .line 444
    .local v4, "charset":Ljava/lang/String;
    iget-object v2, v10, Lcom/tencent/msdk/webviewx/core/WebViewX$WebMessage;->msg2:Ljava/lang/String;

    .line 445
    .local v2, "urldata":Ljava/lang/String;
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX$2;->this$0:Lcom/tencent/msdk/webviewx/core/WebViewX;

    invoke-static {v0}, Lcom/tencent/msdk/webviewx/core/WebViewX;->access$200(Lcom/tencent/msdk/webviewx/core/WebViewX;)V

    .line 446
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX$2;->this$0:Lcom/tencent/msdk/webviewx/core/WebViewX;

    invoke-static {v0}, Lcom/tencent/msdk/webviewx/core/WebViewX;->access$300(Lcom/tencent/msdk/webviewx/core/WebViewX;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 447
    const-string v0, "WebViewX"

    const-string/jumbo v3, "web has showing so refresh data"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :goto_2
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX$2;->this$0:Lcom/tencent/msdk/webviewx/core/WebViewX;

    invoke-static {v0}, Lcom/tencent/msdk/webviewx/core/WebViewX;->access$500(Lcom/tencent/msdk/webviewx/core/WebViewX;)Lcom/tencent/smtt/sdk/WebView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 453
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX$2;->this$0:Lcom/tencent/msdk/webviewx/core/WebViewX;

    invoke-static {v0}, Lcom/tencent/msdk/webviewx/core/WebViewX;->access$500(Lcom/tencent/msdk/webviewx/core/WebViewX;)Lcom/tencent/smtt/sdk/WebView;

    move-result-object v0

    const-string/jumbo v3, "text/html"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/smtt/sdk/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const-string v0, "WebViewX"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openWebWithData:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 449
    :cond_3
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX$2;->this$0:Lcom/tencent/msdk/webviewx/core/WebViewX;

    invoke-static {v0}, Lcom/tencent/msdk/webviewx/core/WebViewX;->access$400(Lcom/tencent/msdk/webviewx/core/WebViewX;)V

    goto :goto_2

    .line 456
    :cond_4
    const-string v0, "WebViewX"

    const-string v1, "WebView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 459
    .end local v2    # "urldata":Ljava/lang/String;
    .end local v4    # "charset":Ljava/lang/String;
    .end local v10    # "webmsg":Lcom/tencent/msdk/webviewx/core/WebViewX$WebMessage;
    :cond_5
    const-string v0, "WebViewX"

    const-string v1, "Message is not WebMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 465
    :pswitch_4
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX$2;->this$0:Lcom/tencent/msdk/webviewx/core/WebViewX;

    invoke-static {v0}, Lcom/tencent/msdk/webviewx/core/WebViewX;->access$600(Lcom/tencent/msdk/webviewx/core/WebViewX;)V

    .line 466
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX$2;->this$0:Lcom/tencent/msdk/webviewx/core/WebViewX;

    invoke-static {v0}, Lcom/tencent/msdk/webviewx/core/WebViewX;->access$700(Lcom/tencent/msdk/webviewx/core/WebViewX;)V

    .line 467
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX$2;->this$0:Lcom/tencent/msdk/webviewx/core/WebViewX;

    invoke-static {v0}, Lcom/tencent/msdk/webviewx/core/WebViewX;->access$800(Lcom/tencent/msdk/webviewx/core/WebViewX;)Lcom/tencent/msdk/webviewx/api/MSDKWeb$WebEventLisenter;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX$2;->this$0:Lcom/tencent/msdk/webviewx/core/WebViewX;

    invoke-static {v1}, Lcom/tencent/msdk/webviewx/core/WebViewX;->access$100(Lcom/tencent/msdk/webviewx/core/WebViewX;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/msdk/webviewx/api/MSDKWeb$WebEventLisenter;->OnClose(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 471
    :pswitch_5
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX$2;->this$0:Lcom/tencent/msdk/webviewx/core/WebViewX;

    invoke-static {v0}, Lcom/tencent/msdk/webviewx/core/WebViewX;->access$900(Lcom/tencent/msdk/webviewx/core/WebViewX;)Lcom/tencent/msdk/webviewx/core/JsBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 472
    const-string v6, ""

    .line 473
    .local v6, "params":Ljava/lang/String;
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_6

    .line 474
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 476
    :cond_6
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX$2;->this$0:Lcom/tencent/msdk/webviewx/core/WebViewX;

    invoke-static {v0}, Lcom/tencent/msdk/webviewx/core/WebViewX;->access$900(Lcom/tencent/msdk/webviewx/core/WebViewX;)Lcom/tencent/msdk/webviewx/core/JsBridge;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/tencent/msdk/webviewx/core/JsBridge;->sendToJs(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 410
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
