.class Lcom/tencent/msdk/notice/AlertMsgActivity$1;
.super Lcom/tencent/smtt/sdk/WebViewClient;
.source "AlertMsgActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/notice/AlertMsgActivity;->displayWebNotice(Lcom/tencent/msdk/notice/NoticeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isFailed:Z

.field final synthetic this$0:Lcom/tencent/msdk/notice/AlertMsgActivity;

.field final synthetic val$noticeContent:Lcom/tencent/smtt/sdk/WebView;

.field final synthetic val$noticeContentLine:Landroid/widget/LinearLayout;

.field final synthetic val$tempLoadFailed:Landroid/widget/LinearLayout;

.field final synthetic val$tempLoadLayer:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/notice/AlertMsgActivity;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/tencent/smtt/sdk/WebView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/tencent/msdk/notice/AlertMsgActivity;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/tencent/msdk/notice/AlertMsgActivity$1;->this$0:Lcom/tencent/msdk/notice/AlertMsgActivity;

    iput-object p2, p0, Lcom/tencent/msdk/notice/AlertMsgActivity$1;->val$tempLoadLayer:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/tencent/msdk/notice/AlertMsgActivity$1;->val$noticeContentLine:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lcom/tencent/msdk/notice/AlertMsgActivity$1;->val$tempLoadFailed:Landroid/widget/LinearLayout;

    iput-object p5, p0, Lcom/tencent/msdk/notice/AlertMsgActivity$1;->val$noticeContent:Lcom/tencent/smtt/sdk/WebView;

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/WebViewClient;-><init>()V

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/msdk/notice/AlertMsgActivity$1;->isFailed:Z

    return-void
.end method


# virtual methods
.method public onPageFinished(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 294
    const-string v0, "onPageFinished"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 295
    iget-boolean v0, p0, Lcom/tencent/msdk/notice/AlertMsgActivity$1;->isFailed:Z

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/tencent/msdk/notice/AlertMsgActivity$1;->showError()V

    .line 300
    :goto_0
    return-void

    .line 298
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/msdk/notice/AlertMsgActivity$1;->showContent()V

    goto :goto_0
.end method

.method public onPageStarted(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 304
    const-string v0, "onPageStart"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0}, Lcom/tencent/msdk/notice/AlertMsgActivity$1;->showLoading()V

    .line 306
    return-void
.end method

.method public onReceivedError(Lcom/tencent/smtt/sdk/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 310
    const-string v0, "onReceivedError"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0}, Lcom/tencent/msdk/notice/AlertMsgActivity$1;->showError()V

    .line 312
    return-void
.end method

.method public shouldOverrideUrlLoading(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)Z
    .locals 2
    .param p1, "view"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldOverrideUrlLoading url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p1, p2}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    .line 289
    const/4 v0, 0x1

    return v0
.end method

.method public showContent()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 338
    const-string v0, "showError"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/tencent/msdk/notice/AlertMsgActivity$1;->val$tempLoadLayer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lcom/tencent/msdk/notice/AlertMsgActivity$1;->val$noticeContentLine:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/tencent/msdk/notice/AlertMsgActivity$1;->val$tempLoadFailed:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 342
    return-void
.end method

.method public showError()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 322
    const-string v0, "showError"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/tencent/msdk/notice/AlertMsgActivity$1;->val$noticeContent:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->stopLoading()V

    .line 324
    iget-object v0, p0, Lcom/tencent/msdk/notice/AlertMsgActivity$1;->val$tempLoadLayer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lcom/tencent/msdk/notice/AlertMsgActivity$1;->val$noticeContentLine:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcom/tencent/msdk/notice/AlertMsgActivity$1;->val$tempLoadFailed:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/msdk/notice/AlertMsgActivity$1;->isFailed:Z

    .line 328
    iget-object v0, p0, Lcom/tencent/msdk/notice/AlertMsgActivity$1;->val$tempLoadFailed:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/tencent/msdk/notice/AlertMsgActivity$1$1;

    invoke-direct {v1, p0}, Lcom/tencent/msdk/notice/AlertMsgActivity$1$1;-><init>(Lcom/tencent/msdk/notice/AlertMsgActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    return-void
.end method

.method public showLoading()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 315
    const-string v0, "showLoading"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/tencent/msdk/notice/AlertMsgActivity$1;->val$tempLoadLayer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/tencent/msdk/notice/AlertMsgActivity$1;->val$noticeContentLine:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/tencent/msdk/notice/AlertMsgActivity$1;->val$tempLoadFailed:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 319
    return-void
.end method
