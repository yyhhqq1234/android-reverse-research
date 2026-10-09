.class Lcom/tencent/msdk/webview/X5WebViewActivity$5;
.super Lcom/tencent/smtt/sdk/WebChromeClient;
.source "X5WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/webview/X5WebViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/webview/X5WebViewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/webview/X5WebViewActivity;

    .prologue
    .line 868
    iput-object p1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$5;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/WebChromeClient;-><init>()V

    return-void
.end method

.method private startActivityForResult(I)V
    .locals 4
    .param p1, "requestCode"    # I

    .prologue
    .line 1247
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1248
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.category.OPENABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1249
    const-string v2, "*/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1250
    iget-object v2, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$5;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    const-string v3, "choose files"

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/tencent/msdk/webview/X5WebViewActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1256
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1252
    :catch_0
    move-exception v0

    .line 1254
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "--Exception--"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onConsoleMessage(Lcom/tencent/smtt/export/external/interfaces/ConsoleMessage;)Z
    .locals 3
    .param p1, "consoleMessage"    # Lcom/tencent/smtt/export/external/interfaces/ConsoleMessage;

    .prologue
    .line 872
    sget-object v0, Lcom/tencent/smtt/export/external/interfaces/ConsoleMessage$MessageLevel;->ERROR:Lcom/tencent/smtt/export/external/interfaces/ConsoleMessage$MessageLevel;

    invoke-interface {p1}, Lcom/tencent/smtt/export/external/interfaces/ConsoleMessage;->messageLevel()Lcom/tencent/smtt/export/external/interfaces/ConsoleMessage$MessageLevel;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 873
    const-string v0, "--Exception--"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/tencent/smtt/export/external/interfaces/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -- from line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/tencent/smtt/export/external/interfaces/ConsoleMessage;->lineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/tencent/smtt/export/external/interfaces/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    :cond_0
    invoke-super {p0, p1}, Lcom/tencent/smtt/sdk/WebChromeClient;->onConsoleMessage(Lcom/tencent/smtt/export/external/interfaces/ConsoleMessage;)Z

    move-result v0

    return v0
.end method

.method public onJsAlert(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsResult;)Z
    .locals 4
    .param p1, "view"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Lcom/tencent/smtt/export/external/interfaces/JsResult;

    .prologue
    .line 879
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 880
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/tencent/msdk/webview/X5WebViewActivity$5$1;

    invoke-direct {v3, p0, p4}, Lcom/tencent/msdk/webview/X5WebViewActivity$5$1;-><init>(Lcom/tencent/msdk/webview/X5WebViewActivity$5;Lcom/tencent/smtt/export/external/interfaces/JsResult;)V

    .line 881
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 888
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 889
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 890
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 893
    new-instance v1, Lcom/tencent/msdk/webview/X5WebViewActivity$5$2;

    invoke-direct {v1, p0}, Lcom/tencent/msdk/webview/X5WebViewActivity$5$2;-><init>(Lcom/tencent/msdk/webview/X5WebViewActivity$5;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 901
    const/4 v1, 0x1

    return v1
.end method

.method public onJsConfirm(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsResult;)Z
    .locals 4
    .param p1, "view"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Lcom/tencent/smtt/export/external/interfaces/JsResult;

    .prologue
    .line 907
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 908
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/tencent/msdk/webview/X5WebViewActivity$5$4;

    invoke-direct {v3, p0, p4}, Lcom/tencent/msdk/webview/X5WebViewActivity$5$4;-><init>(Lcom/tencent/msdk/webview/X5WebViewActivity$5;Lcom/tencent/smtt/export/external/interfaces/JsResult;)V

    .line 909
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/tencent/msdk/webview/X5WebViewActivity$5$3;

    invoke-direct {v3, p0, p4}, Lcom/tencent/msdk/webview/X5WebViewActivity$5$3;-><init>(Lcom/tencent/msdk/webview/X5WebViewActivity$5;Lcom/tencent/smtt/export/external/interfaces/JsResult;)V

    .line 916
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 921
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 922
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 923
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 925
    new-instance v1, Lcom/tencent/msdk/webview/X5WebViewActivity$5$5;

    invoke-direct {v1, p0}, Lcom/tencent/msdk/webview/X5WebViewActivity$5$5;-><init>(Lcom/tencent/msdk/webview/X5WebViewActivity$5;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 933
    const/4 v1, 0x1

    return v1
.end method

.method public onJsPrompt(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;)Z
    .locals 29
    .param p1, "view"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;

    .prologue
    .line 941
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$5;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$400(Lcom/tencent/msdk/webview/X5WebViewActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 943
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$5;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$400(Lcom/tencent/msdk/webview/X5WebViewActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 944
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$5;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$402(Lcom/tencent/msdk/webview/X5WebViewActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 947
    :cond_0
    new-instance v16, Lorg/json/JSONObject;

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 948
    .local v16, "json":Lorg/json/JSONObject;
    const-string v3, "method"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 949
    .local v20, "method":Ljava/lang/String;
    if-eqz v20, :cond_2

    .line 951
    const-string v3, "isAndroid"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 952
    const-string v3, "1"

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 1203
    :goto_0
    const/4 v3, 0x1

    .line 1240
    .end local v16    # "json":Lorg/json/JSONObject;
    .end local v20    # "method":Ljava/lang/String;
    :goto_1
    return v3

    .line 953
    .restart local v16    # "json":Lorg/json/JSONObject;
    .restart local v20    # "method":Ljava/lang/String;
    :cond_1
    const-string v3, "getAccountType"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 954
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$5;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-virtual {v3}, Lcom/tencent/msdk/webview/X5WebViewActivity;->getAccountType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;->confirm(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1206
    .end local v16    # "json":Lorg/json/JSONObject;
    .end local v20    # "method":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1210
    :cond_2
    new-instance v12, Landroid/widget/EditText;

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/smtt/sdk/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v12, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1211
    .local v12, "et":Landroid/widget/EditText;
    invoke-virtual {v12}, Landroid/widget/EditText;->setSingleLine()V

    .line 1212
    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1214
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/smtt/sdk/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v10, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1215
    .local v10, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "\u63d0\u793a"

    invoke-virtual {v10, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v27, Lcom/tencent/msdk/webview/X5WebViewActivity$5$7;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2, v12}, Lcom/tencent/msdk/webview/X5WebViewActivity$5$7;-><init>(Lcom/tencent/msdk/webview/X5WebViewActivity$5;Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;Landroid/widget/EditText;)V

    .line 1216
    move-object/from16 v0, v27

    invoke-virtual {v3, v4, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    new-instance v27, Lcom/tencent/msdk/webview/X5WebViewActivity$5$6;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/tencent/msdk/webview/X5WebViewActivity$5$6;-><init>(Lcom/tencent/msdk/webview/X5WebViewActivity$5;Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;)V

    .line 1223
    move-object/from16 v0, v27

    invoke-virtual {v3, v4, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    .line 1228
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1229
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 1230
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 1232
    new-instance v3, Lcom/tencent/msdk/webview/X5WebViewActivity$5$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/tencent/msdk/webview/X5WebViewActivity$5$8;-><init>(Lcom/tencent/msdk/webview/X5WebViewActivity$5;)V

    invoke-virtual {v10, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1240
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 955
    .end local v10    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v12    # "et":Landroid/widget/EditText;
    .restart local v16    # "json":Lorg/json/JSONObject;
    .restart local v20    # "method":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v3, "addShortcut"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 957
    const-string v3, "name"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 958
    .local v21, "name":Ljava/lang/String;
    const-string v3, "imgUrl"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 959
    .local v9, "imgUrl":Ljava/lang/String;
    const-string/jumbo v3, "url"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 960
    .local v8, "link":Ljava/lang/String;
    if-eqz v21, :cond_4

    if-eqz v9, :cond_4

    if-eqz v8, :cond_4

    .line 961
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$5;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0, v9, v8}, Lcom/tencent/msdk/webview/X5WebViewActivity;->addShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    :cond_4
    const-string v3, ""

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;->confirm(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 964
    .end local v8    # "link":Ljava/lang/String;
    .end local v9    # "imgUrl":Ljava/lang/String;
    .end local v21    # "name":Ljava/lang/String;
    :cond_5
    const-string v3, "getDeviceInfo"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 966
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$5;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-virtual {v3}, Lcom/tencent/msdk/webview/X5WebViewActivity;->getDeviceInfo()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;->confirm(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 968
    :cond_6
    const-string v3, "getNetworkType"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 969
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$5;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-virtual {v3}, Lcom/tencent/msdk/webview/X5WebViewActivity;->getNetworkType()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;->confirm(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 970
    :cond_7
    const-string v3, "closeWebview"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 972
    const-string v3, ""

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 973
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$5;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-virtual {v3}, Lcom/tencent/msdk/webview/X5WebViewActivity;->closeWebview()V

    goto/16 :goto_0

    .line 975
    :cond_8
    const-string v3, "isPlatformInstalled"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 977
    const-string v3, "platformType"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v22

    .line 978
    .local v22, "platformType":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$5;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/tencent/msdk/webview/X5WebViewActivity;->isPlatformInstalled(I)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "1"

    :goto_2
    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;->confirm(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string v3, "0"

    goto :goto_2

    .line 980
    .end local v22    # "platformType":I
    :cond_a
    const-string v3, "sendToQQ"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 982
    const-string v3, "scene"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 983
    .local v5, "scene":I
    const-string/jumbo v3, "title"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 984
    .local v6, "title":Ljava/lang/String;
    const-string v3, "desc"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 985
    .local v7, "desc":Ljava/lang/String;
    const-string/jumbo v3, "url"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 986
    .restart local v8    # "link":Ljava/lang/String;
    const-string v3, "imgUrl"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 987
    .restart local v9    # "imgUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$5;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$500(Lcom/tencent/msdk/webview/X5WebViewActivity;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$5;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$500(Lcom/tencent/msdk/webview/X5WebViewActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_b

    .line 988
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$5;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$5;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v4}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$500(Lcom/tencent/msdk/webview/X5WebViewActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v3 .. v9}, Lcom/tencent/msdk/webview/X5WebViewActivity;->sendToQQ(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    :goto_3
    const-string v3, ""

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;->confirm(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 990
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$5;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-virtual/range {v4 .. v9}, Lcom/tencent/msdk/webview/X5WebViewActivity;->sendToQQ(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 993
    .end local v5    # "scene":I
    .end local v6    # "title":Ljava/lang/String;
    .end local v7    # "desc":Ljava/lang/String;
    .end local v8    # "link":Ljava/lang/String;
    .end local v9    # "imgUrl":Ljava/lang/String;
    :cond_c
    const-string v3, "sendToWeixinWithUrl"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 995
    const-string v3, "scene"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 996
    .restart local v5    # "scene":I
    const-string/jumbo v3, "title"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 997
    .restart local v6    # "title":Ljava/lang/String;
    const-string v3, "desc"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 998
    .restart local v7    # "desc":Ljava/lang/String;
    const-string/jumbo v3, "url"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 999
    .restart local v8    # "link":Ljava/lang/String;
    const-string v3, "imgUrl"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1000
    .restart local v9    # "imgUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$5;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$600(Lcom/tencent/msdk/webview/X5WebViewActivity;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$5;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$600(Lcom/tencent/msdk/webview/X5WebViewActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_d

    .line 1001
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$5;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$5;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v4}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$600(Lcom/tencent/msdk/webview/X5WebViewActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v3 .. v9}, Lcom/tencent/msdk/webview/X5WebViewActivity;->sendToWeixinWithUrl(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    :goto_4
    const-string v3, ""

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;->confirm(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1003
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$5;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-virtual/range {v4 .. v9}, Lcom/tencent/msdk/webview/X5WebViewActivity;->sendToWeixinWithUrl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1006
    .end local v5    # "scene":I
    .end local v6    # "title":Ljava/lang/String;
    .end local v7    # "desc":Ljava/lang/String;
    .end local v8    # "link":Ljava/lang/String;
    .end local v9    # "imgUrl":Ljava/lang/String;
    :cond_e
    const-string v3, "hideUi"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1008
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$5;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-virtual {v3}, Lcom/tencent/msdk/webview/X5WebViewActivity;->hideUi()V

    .line 1009
    const-string v3, ""

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;->confirm(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1011
    :cond_f
    const-string v3, "encrypt"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1013
    const-string v3, "data"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1014
    .local v11, "data":Ljava/lang/String;
    const-string v3, "key"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1015
    .local v17, "key":Ljava/lang/String;
    if-eqz v11, :cond_10

    if-nez v17, :cond_11

    .line 1016
    :cond_10
    const-string v3, ""

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;->confirm(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1021
    :cond_11
    :try_start_2
    move-object/from16 v0, v17

    invoke-static {v11, v0}, Lcom/tencent/msdk/webview/RSA;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;->confirm(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1023
    :catch_1
    move-exception v13

    .line 1025
    .local v13, "ex":Ljava/lang/Exception;
    :try_start_3
    const-string v3, ""

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;->confirm(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1029
    .end local v11    # "data":Ljava/lang/String;
    .end local v13    # "ex":Ljava/lang/Exception;
    .end local v17    # "key":Ljava/lang/String;
    :cond_12
    const-string v3, "decrypt"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1031
    const-string v3, "data"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1032
    .restart local v11    # "data":Ljava/lang/String;
    const-string v3, "key"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1033
    .restart local v17    # "key":Ljava/lang/String;
    if-eqz v11, :cond_13

    if-nez v17, :cond_14

    .line 1034
    :cond_13
    const-string v3, ""

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;->confirm(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 1039
    :cond_14
    :try_start_4
    move-object/from16 v0, v17

    invoke-static {v11, v0}, Lcom/tencent/msdk/webview/RSA;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;->confirm(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 1041
    :catch_2
    move-exception v13

    .line 1043
    .restart local v13    # "ex":Ljava/lang/Exception;
    :try_start_5
    const-string v3, ""

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;->confirm(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1068
    .end local v11    # "data":Ljava/lang/String;
    .end local v13    # "ex":Ljava/lang/Exception;
    .end local v17    # "key":Ljava/lang/String;
    :cond_15
    const-string v3, "sendToGame"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1070
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$5;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$700(Lcom/tencent/msdk/webview/X5WebViewActivity;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 1072
    const-string v3, "data"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1073
    .restart local v11    # "data":Ljava/lang/String;
    if-eqz v11, :cond_16

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_16

    .line 1075
    new-instance v15, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$5;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$5;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v4}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$700(Lcom/tencent/msdk/webview/X5WebViewActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v15, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1076
    .local v15, "intent":Landroid/content/Intent;
    const-string v3, "routeInfo"

    invoke-virtual {v15, v3, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1077
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$5;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-virtual {v3, v15}, Lcom/tencent/msdk/webview/X5WebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 1078
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$5;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-virtual {v3}, Lcom/tencent/msdk/webview/X5WebViewActivity;->finish()V

    .line 1081
    .end local v11    # "data":Ljava/lang/String;
    .end local v15    # "intent":Landroid/content/Intent;
    :cond_16
    const-string v3, ""

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;->confirm(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1083
    :cond_17
    const-string v3, "enterPictureInPictureMode"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1095
    const-string v3, ""

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;->confirm(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1097
    :cond_18
    const-string/jumbo v3, "supportVideoPlayer"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result v3

    if-eqz v3, :cond_1a

    .line 1101
    const/4 v3, 0x6

    :try_start_6
    invoke-static {v3}, Lcom/tencent/tga/livesdk/TGAPluginManager;->available(I)Z

    move-result v3

    if-eqz v3, :cond_19

    const-string v3, "1"

    :goto_5
    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;->confirm(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 1103
    :catch_3
    move-exception v13

    .line 1105
    .restart local v13    # "ex":Ljava/lang/Exception;
    :try_start_7
    const-string v3, "0"

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 1106
    const-string v3, "--Exception--"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "supportVideoPlayer: "

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 1101
    .end local v13    # "ex":Ljava/lang/Exception;
    :cond_19
    :try_start_8
    const-string v3, "0"
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_5

    .line 1109
    :cond_1a
    :try_start_9
    const-string v3, "fullScreenPlay"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1111
    const-string/jumbo v3, "vid"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1112
    .local v25, "vid":Ljava/lang/String;
    if-eqz v25, :cond_1c

    .line 1114
    const-string/jumbo v3, "title"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1115
    .restart local v6    # "title":Ljava/lang/String;
    if-nez v6, :cond_1b

    .line 1116
    const-string v6, ""
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 1120
    :cond_1b
    :try_start_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$5;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$5;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-virtual {v3}, Lcom/tencent/msdk/webview/X5WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const/16 v27, 0x1

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-static {v3, v0, v6, v1, v2}, Lcom/tencent/tga/livesdk/TGAPluginManager;->getNativeVideoView(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/WindowManager$LayoutParams;)Lcom/ryg/dynamicload/internal/DLNativeView;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$802(Lcom/tencent/msdk/webview/X5WebViewActivity;Lcom/ryg/dynamicload/internal/DLNativeView;)Lcom/ryg/dynamicload/internal/DLNativeView;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 1129
    .end local v6    # "title":Ljava/lang/String;
    :cond_1c
    :try_start_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$5;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$800(Lcom/tencent/msdk/webview/X5WebViewActivity;)Lcom/ryg/dynamicload/internal/DLNativeView;

    move-result-object v3

    if-nez v3, :cond_1d

    const-string v3, "0"

    :goto_6
    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;->confirm(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1122
    .restart local v6    # "title":Ljava/lang/String;
    :catch_4
    move-exception v13

    .line 1124
    .restart local v13    # "ex":Ljava/lang/Exception;
    const-string v3, "--Exception--"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "fullScreenPlay: "

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    const-string v3, "0"

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 1126
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 1129
    .end local v6    # "title":Ljava/lang/String;
    .end local v13    # "ex":Ljava/lang/Exception;
    :cond_1d
    const-string v3, "1"

    goto :goto_6

    .line 1131
    .end local v25    # "vid":Ljava/lang/String;
    :cond_1e
    const-string v3, "customPlay"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1133
    const-string/jumbo v3, "vid"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1134
    .restart local v25    # "vid":Ljava/lang/String;
    if-eqz v25, :cond_20

    .line 1136
    const-string/jumbo v3, "title"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1137
    .restart local v6    # "title":Ljava/lang/String;
    if-nez v6, :cond_1f

    .line 1138
    const-string v6, ""
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 1141
    :cond_1f
    :try_start_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$5;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$900(Lcom/tencent/msdk/webview/X5WebViewActivity;)Lcom/ryg/dynamicload/internal/DLNativeView;

    move-result-object v3

    if-eqz v3, :cond_21

    .line 1142
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$5;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$900(Lcom/tencent/msdk/webview/X5WebViewActivity;)Lcom/ryg/dynamicload/internal/DLNativeView;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-interface {v3, v0, v6}, Lcom/ryg/dynamicload/internal/DLNativeView;->reload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    .line 1165
    .end local v6    # "title":Ljava/lang/String;
    :cond_20
    :goto_7
    :try_start_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$5;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$900(Lcom/tencent/msdk/webview/X5WebViewActivity;)Lcom/ryg/dynamicload/internal/DLNativeView;

    move-result-object v3

    if-nez v3, :cond_22

    const-string v3, "0"

    :goto_8
    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;->confirm(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    goto/16 :goto_0

    .line 1145
    .restart local v6    # "title":Ljava/lang/String;
    :cond_21
    :try_start_e
    const-string v3, "left"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v19

    .line 1146
    .local v19, "left":I
    const-string/jumbo v3, "top"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v24

    .line 1147
    .local v24, "top":I
    const-string/jumbo v3, "width"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v26

    .line 1148
    .local v26, "width":I
    const-string v3, "height"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 1149
    .local v14, "height":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$5;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-virtual {v3}, Lcom/tencent/msdk/webview/X5WebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    move/from16 v23, v0

    .line 1150
    .local v23, "scale":F
    new-instance v18, Landroid/view/WindowManager$LayoutParams;

    invoke-direct/range {v18 .. v18}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1151
    .local v18, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    move/from16 v0, v19

    int-to-float v3, v0

    mul-float v3, v3, v23

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$5;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v4}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$1000(Lcom/tencent/msdk/webview/X5WebViewActivity;)I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, v18

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1152
    move/from16 v0, v24

    int-to-float v3, v0

    mul-float v3, v3, v23

    float-to-int v3, v3

    move-object/from16 v0, v18

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1153
    move/from16 v0, v26

    int-to-float v3, v0

    mul-float v3, v3, v23

    float-to-int v3, v3

    move-object/from16 v0, v18

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1154
    int-to-float v3, v14

    mul-float v3, v3, v23

    float-to-int v3, v3

    move-object/from16 v0, v18

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1155
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$5;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$5;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-virtual {v3}, Lcom/tencent/msdk/webview/X5WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v27

    move-object/from16 v2, v18

    invoke-static {v3, v0, v6, v1, v2}, Lcom/tencent/tga/livesdk/TGAPluginManager;->getNativeVideoView(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/WindowManager$LayoutParams;)Lcom/ryg/dynamicload/internal/DLNativeView;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$902(Lcom/tencent/msdk/webview/X5WebViewActivity;Lcom/ryg/dynamicload/internal/DLNativeView;)Lcom/ryg/dynamicload/internal/DLNativeView;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    goto/16 :goto_7

    .line 1158
    .end local v14    # "height":I
    .end local v18    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .end local v19    # "left":I
    .end local v23    # "scale":F
    .end local v24    # "top":I
    .end local v26    # "width":I
    :catch_5
    move-exception v13

    .line 1160
    .restart local v13    # "ex":Ljava/lang/Exception;
    :try_start_f
    const-string v3, "--Exception--"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "customPlay: "

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    const-string v3, "0"

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 1162
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 1165
    .end local v6    # "title":Ljava/lang/String;
    .end local v13    # "ex":Ljava/lang/Exception;
    :cond_22
    const-string v3, "1"

    goto/16 :goto_8

    .line 1167
    .end local v25    # "vid":Ljava/lang/String;
    :cond_23
    const-string v3, "resizeCustomPlayer"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    move-result v3

    if-eqz v3, :cond_26

    .line 1171
    :try_start_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$5;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$900(Lcom/tencent/msdk/webview/X5WebViewActivity;)Lcom/ryg/dynamicload/internal/DLNativeView;

    move-result-object v3

    if-eqz v3, :cond_24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$5;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$900(Lcom/tencent/msdk/webview/X5WebViewActivity;)Lcom/ryg/dynamicload/internal/DLNativeView;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_24

    .line 1173
    const-string v3, "left"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v19

    .line 1174
    .restart local v19    # "left":I
    const-string/jumbo v3, "top"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v24

    .line 1175
    .restart local v24    # "top":I
    const-string/jumbo v3, "width"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v26

    .line 1176
    .restart local v26    # "width":I
    const-string v3, "height"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 1177
    .restart local v14    # "height":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$5;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-virtual {v3}, Lcom/tencent/msdk/webview/X5WebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    move/from16 v23, v0

    .line 1178
    .restart local v23    # "scale":F
    new-instance v18, Landroid/widget/FrameLayout$LayoutParams;

    move/from16 v0, v26

    int-to-float v3, v0

    mul-float v3, v3, v23

    float-to-int v3, v3

    int-to-float v4, v14

    mul-float v4, v4, v23

    float-to-int v4, v4

    move-object/from16 v0, v18

    invoke-direct {v0, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1179
    .local v18, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move/from16 v0, v19

    int-to-float v3, v0

    mul-float v3, v3, v23

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$5;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v4}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$1000(Lcom/tencent/msdk/webview/X5WebViewActivity;)I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, v18

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1180
    move/from16 v0, v24

    int-to-float v3, v0

    mul-float v3, v3, v23

    float-to-int v3, v3

    move-object/from16 v0, v18

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1181
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$5;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$900(Lcom/tencent/msdk/webview/X5WebViewActivity;)Lcom/ryg/dynamicload/internal/DLNativeView;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6

    .line 1190
    .end local v14    # "height":I
    .end local v18    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v19    # "left":I
    .end local v23    # "scale":F
    .end local v24    # "top":I
    .end local v26    # "width":I
    :cond_24
    :try_start_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$5;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$900(Lcom/tencent/msdk/webview/X5WebViewActivity;)Lcom/ryg/dynamicload/internal/DLNativeView;

    move-result-object v3

    if-nez v3, :cond_25

    const-string v3, "0"

    :goto_9
    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;->confirm(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1184
    :catch_6
    move-exception v13

    .line 1186
    .restart local v13    # "ex":Ljava/lang/Exception;
    const-string v3, "--Exception--"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "resizeCustomPlayer: "

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    const-string v3, "0"

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 1188
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 1190
    .end local v13    # "ex":Ljava/lang/Exception;
    :cond_25
    const-string v3, "1"

    goto :goto_9

    .line 1192
    :cond_26
    const-string v3, "hideVideoPlayer"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1194
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$5;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$1100(Lcom/tencent/msdk/webview/X5WebViewActivity;)V

    .line 1195
    const-string v3, ""

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;->confirm(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1197
    :cond_27
    const-string v3, "hasNotchScreen"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1199
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$5;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/AndroidNotchScreen;->hasNotchScreen(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_28

    const-string v3, "1"

    :goto_a
    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;->confirm(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_28
    const-string v3, "0"

    goto :goto_a

    .line 1202
    :cond_29
    const-string v3, ""

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;->confirm(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    goto/16 :goto_0
.end method

.method public onShowFileChooser(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/sdk/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 1
    .param p1, "webView"    # Lcom/tencent/smtt/sdk/WebView;
    .param p3, "fileChooserParams"    # Landroid/webkit/WebChromeClient$FileChooserParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/smtt/sdk/WebView;",
            "Lcom/tencent/smtt/sdk/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1268
    .local p2, "filePathCallback":Lcom/tencent/smtt/sdk/ValueCallback;, "Lcom/tencent/smtt/sdk/ValueCallback<[Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$5;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v0, p2}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$1302(Lcom/tencent/msdk/webview/X5WebViewActivity;Lcom/tencent/smtt/sdk/ValueCallback;)Lcom/tencent/smtt/sdk/ValueCallback;

    .line 1269
    const/16 v0, 0x6f

    invoke-direct {p0, v0}, Lcom/tencent/msdk/webview/X5WebViewActivity$5;->startActivityForResult(I)V

    .line 1270
    const/4 v0, 0x1

    return v0
.end method

.method public openFileChooser(Lcom/tencent/smtt/sdk/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "acceptType"    # Ljava/lang/String;
    .param p3, "captureType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/smtt/sdk/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1261
    .local p1, "uploadFile":Lcom/tencent/smtt/sdk/ValueCallback;, "Lcom/tencent/smtt/sdk/ValueCallback<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$5;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v0, p1}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$1202(Lcom/tencent/msdk/webview/X5WebViewActivity;Lcom/tencent/smtt/sdk/ValueCallback;)Lcom/tencent/smtt/sdk/ValueCallback;

    .line 1262
    const/16 v0, 0x6e

    invoke-direct {p0, v0}, Lcom/tencent/msdk/webview/X5WebViewActivity$5;->startActivityForResult(I)V

    .line 1263
    return-void
.end method
