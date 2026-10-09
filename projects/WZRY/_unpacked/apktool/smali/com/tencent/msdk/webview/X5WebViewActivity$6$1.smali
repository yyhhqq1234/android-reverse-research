.class Lcom/tencent/msdk/webview/X5WebViewActivity$6$1;
.super Ljava/lang/Object;
.source "X5WebViewActivity.java"

# interfaces
.implements Lcom/tencent/smtt/sdk/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/webview/X5WebViewActivity$6;->onPageFinished(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/smtt/sdk/ValueCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/msdk/webview/X5WebViewActivity$6;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/webview/X5WebViewActivity$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tencent/msdk/webview/X5WebViewActivity$6;

    .prologue
    .line 1332
    iput-object p1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$6$1;->this$1:Lcom/tencent/msdk/webview/X5WebViewActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1332
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tencent/msdk/webview/X5WebViewActivity$6$1;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 12
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v7, -0x1

    const/16 v11, 0xff

    .line 1338
    if-eqz p1, :cond_5

    .line 1340
    :try_start_0
    const-string v6, "("

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 1341
    .local v4, "leftParentheses":I
    const-string v6, ")"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 1342
    .local v5, "rightParentheses":I
    if-eq v7, v4, :cond_4

    if-eq v7, v5, :cond_4

    .line 1344
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1345
    .local v2, "color":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    .line 1347
    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1348
    .local v1, "array":[Ljava/lang/String;
    const/4 v6, 0x3

    array-length v7, v1

    if-ne v6, v7, :cond_0

    .line 1349
    iget-object v6, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$6$1;->this$1:Lcom/tencent/msdk/webview/X5WebViewActivity$6;

    iget-object v6, v6, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v6}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$300(Lcom/tencent/msdk/webview/X5WebViewActivity;)Lcom/tencent/smtt/sdk/WebView;

    move-result-object v6

    const/16 v7, 0xff

    const/4 v8, 0x0

    aget-object v8, v1, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    aget-object v9, v1, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x2

    aget-object v10, v1, v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/tencent/smtt/sdk/WebView;->setBackgroundColor(I)V

    .line 1374
    .end local v1    # "array":[Ljava/lang/String;
    .end local v2    # "color":Ljava/lang/String;
    .end local v4    # "leftParentheses":I
    .end local v5    # "rightParentheses":I
    :goto_0
    return-void

    .line 1350
    .restart local v1    # "array":[Ljava/lang/String;
    .restart local v2    # "color":Ljava/lang/String;
    .restart local v4    # "leftParentheses":I
    .restart local v5    # "rightParentheses":I
    :cond_0
    const/4 v6, 0x4

    array-length v7, v1

    if-ne v6, v7, :cond_2

    .line 1352
    const/4 v6, 0x3

    aget-object v6, v1, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 1353
    .local v0, "alpha":F
    const v6, 0x358637bd    # 1.0E-6f

    cmpg-float v6, v0, v6

    if-gez v6, :cond_1

    .line 1354
    iget-object v6, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$6$1;->this$1:Lcom/tencent/msdk/webview/X5WebViewActivity$6;

    iget-object v6, v6, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v6}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$300(Lcom/tencent/msdk/webview/X5WebViewActivity;)Lcom/tencent/smtt/sdk/WebView;

    move-result-object v6

    const/16 v7, 0xff

    const/16 v8, 0xff

    const/16 v9, 0xff

    const/16 v10, 0xff

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/tencent/smtt/sdk/WebView;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1370
    .end local v0    # "alpha":F
    .end local v1    # "array":[Ljava/lang/String;
    .end local v2    # "color":Ljava/lang/String;
    .end local v4    # "leftParentheses":I
    .end local v5    # "rightParentheses":I
    :catch_0
    move-exception v3

    .line 1372
    .local v3, "ex":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$6$1;->this$1:Lcom/tencent/msdk/webview/X5WebViewActivity$6;

    iget-object v6, v6, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v6}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$300(Lcom/tencent/msdk/webview/X5WebViewActivity;)Lcom/tencent/smtt/sdk/WebView;

    move-result-object v6

    invoke-static {v11, v11, v11, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/tencent/smtt/sdk/WebView;->setBackgroundColor(I)V

    goto :goto_0

    .line 1356
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v0    # "alpha":F
    .restart local v1    # "array":[Ljava/lang/String;
    .restart local v2    # "color":Ljava/lang/String;
    .restart local v4    # "leftParentheses":I
    .restart local v5    # "rightParentheses":I
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$6$1;->this$1:Lcom/tencent/msdk/webview/X5WebViewActivity$6;

    iget-object v6, v6, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v6}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$300(Lcom/tencent/msdk/webview/X5WebViewActivity;)Lcom/tencent/smtt/sdk/WebView;

    move-result-object v6

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v7, v0

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    const/4 v8, 0x0

    aget-object v8, v1, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    aget-object v9, v1, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x2

    aget-object v10, v1, v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/tencent/smtt/sdk/WebView;->setBackgroundColor(I)V

    goto :goto_0

    .line 1359
    .end local v0    # "alpha":F
    :cond_2
    iget-object v6, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$6$1;->this$1:Lcom/tencent/msdk/webview/X5WebViewActivity$6;

    iget-object v6, v6, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v6}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$300(Lcom/tencent/msdk/webview/X5WebViewActivity;)Lcom/tencent/smtt/sdk/WebView;

    move-result-object v6

    const/16 v7, 0xff

    const/16 v8, 0xff

    const/16 v9, 0xff

    const/16 v10, 0xff

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/tencent/smtt/sdk/WebView;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 1362
    .end local v1    # "array":[Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$6$1;->this$1:Lcom/tencent/msdk/webview/X5WebViewActivity$6;

    iget-object v6, v6, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v6}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$300(Lcom/tencent/msdk/webview/X5WebViewActivity;)Lcom/tencent/smtt/sdk/WebView;

    move-result-object v6

    const/16 v7, 0xff

    const/16 v8, 0xff

    const/16 v9, 0xff

    const/16 v10, 0xff

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/tencent/smtt/sdk/WebView;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 1365
    .end local v2    # "color":Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$6$1;->this$1:Lcom/tencent/msdk/webview/X5WebViewActivity$6;

    iget-object v6, v6, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v6}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$300(Lcom/tencent/msdk/webview/X5WebViewActivity;)Lcom/tencent/smtt/sdk/WebView;

    move-result-object v6

    const/16 v7, 0xff

    const/16 v8, 0xff

    const/16 v9, 0xff

    const/16 v10, 0xff

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/tencent/smtt/sdk/WebView;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 1368
    .end local v4    # "leftParentheses":I
    .end local v5    # "rightParentheses":I
    :cond_5
    iget-object v6, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$6$1;->this$1:Lcom/tencent/msdk/webview/X5WebViewActivity$6;

    iget-object v6, v6, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v6}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$300(Lcom/tencent/msdk/webview/X5WebViewActivity;)Lcom/tencent/smtt/sdk/WebView;

    move-result-object v6

    const/16 v7, 0xff

    const/16 v8, 0xff

    const/16 v9, 0xff

    const/16 v10, 0xff

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/tencent/smtt/sdk/WebView;->setBackgroundColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
