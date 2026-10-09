.class Lcom/tencent/pandora/webview/WebViewService$CommandHandler;
.super Landroid/os/Handler;
.source "WebViewService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/pandora/webview/WebViewService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CommandHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/pandora/webview/WebViewService;


# direct methods
.method constructor <init>(Lcom/tencent/pandora/webview/WebViewService;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/tencent/pandora/webview/WebViewService$CommandHandler;->this$0:Lcom/tencent/pandora/webview/WebViewService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 32
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    .line 33
    .local v9, "data":Landroid/os/Bundle;
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 34
    .local v11, "replyTo":Landroid/os/Messenger;
    if-eqz v11, :cond_0

    .line 35
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/pandora/webview/WebViewService$CommandHandler;->this$0:Lcom/tencent/pandora/webview/WebViewService;

    iput-object v11, v1, Lcom/tencent/pandora/webview/WebViewService;->mClient:Landroid/os/Messenger;

    .line 37
    :cond_0
    const-string v1, "Pandora WebView"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Service Got Message "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v1, v15}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 82
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 84
    :goto_0
    return-void

    .line 40
    :pswitch_0
    const-string/jumbo v1, "width"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 41
    .local v2, "width":I
    const-string v1, "height"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 42
    .local v3, "height":I
    const-string v1, "left"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 43
    .local v4, "left":I
    const-string/jumbo v1, "top"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 44
    .local v5, "top":I
    const-string/jumbo v1, "url"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 45
    .local v6, "url":Ljava/lang/String;
    const-string v1, "color"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 46
    .local v7, "color":Ljava/lang/String;
    const-string v1, "delayShow"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 47
    .local v8, "delayShow":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/pandora/webview/WebViewService$CommandHandler;->this$0:Lcom/tencent/pandora/webview/WebViewService;

    invoke-virtual/range {v1 .. v8}, Lcom/tencent/pandora/webview/WebViewService;->showUrl(IIIILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 50
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v4    # "left":I
    .end local v5    # "top":I
    .end local v6    # "url":Ljava/lang/String;
    .end local v7    # "color":Ljava/lang/String;
    .end local v8    # "delayShow":Z
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/pandora/webview/WebViewService$CommandHandler;->this$0:Lcom/tencent/pandora/webview/WebViewService;

    invoke-virtual {v1}, Lcom/tencent/pandora/webview/WebViewService;->close()V

    goto :goto_0

    .line 53
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/pandora/webview/WebViewService$CommandHandler;->this$0:Lcom/tencent/pandora/webview/WebViewService;

    const-string v15, "info"

    invoke-virtual {v9, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Lcom/tencent/pandora/webview/WebViewService;->setInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/pandora/webview/WebViewService$CommandHandler;->this$0:Lcom/tencent/pandora/webview/WebViewService;

    invoke-virtual {v1}, Lcom/tencent/pandora/webview/WebViewService;->uninitiated()V

    goto :goto_0

    .line 59
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/pandora/webview/WebViewService$CommandHandler;->this$0:Lcom/tencent/pandora/webview/WebViewService;

    const-string v15, "message"

    invoke-virtual {v9, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Lcom/tencent/pandora/webview/WebViewService;->writeMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/pandora/webview/WebViewService$CommandHandler;->this$0:Lcom/tencent/pandora/webview/WebViewService;

    invoke-virtual {v1}, Lcom/tencent/pandora/webview/WebViewService;->goBack()V

    goto :goto_0

    .line 65
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/pandora/webview/WebViewService$CommandHandler;->this$0:Lcom/tencent/pandora/webview/WebViewService;

    invoke-virtual {v1}, Lcom/tencent/pandora/webview/WebViewService;->isShow()Z

    move-result v10

    .line 66
    .local v10, "isShow":Z
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 67
    .local v12, "retData":Landroid/os/Bundle;
    const-string v1, "isShow"

    invoke-virtual {v12, v1, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 68
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/pandora/webview/WebViewService$CommandHandler;->this$0:Lcom/tencent/pandora/webview/WebViewService;

    const/4 v15, -0x3

    invoke-static {v1, v15, v12}, Lcom/tencent/pandora/webview/WebViewService;->access$0(Lcom/tencent/pandora/webview/WebViewService;ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/tencent/pandora/webview/WebViewService$CommandHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 71
    .end local v10    # "isShow":Z
    .end local v12    # "retData":Landroid/os/Bundle;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/pandora/webview/WebViewService$CommandHandler;->this$0:Lcom/tencent/pandora/webview/WebViewService;

    invoke-virtual {v1}, Lcom/tencent/pandora/webview/WebViewService;->show()V

    goto/16 :goto_0

    .line 74
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/pandora/webview/WebViewService$CommandHandler;->this$0:Lcom/tencent/pandora/webview/WebViewService;

    invoke-virtual {v1}, Lcom/tencent/pandora/webview/WebViewService;->hide()V

    goto/16 :goto_0

    .line 77
    :pswitch_9
    const-string/jumbo v1, "width"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 78
    .local v14, "screenWidth":I
    const-string v1, "height"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 79
    .local v13, "screenHeight":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/pandora/webview/WebViewService$CommandHandler;->this$0:Lcom/tencent/pandora/webview/WebViewService;

    invoke-virtual {v1, v14, v13}, Lcom/tencent/pandora/webview/WebViewService;->setScreenDimension(II)V

    goto/16 :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
