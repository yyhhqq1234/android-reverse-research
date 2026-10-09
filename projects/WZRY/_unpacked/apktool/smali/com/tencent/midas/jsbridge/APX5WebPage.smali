.class public Lcom/tencent/midas/jsbridge/APX5WebPage;
.super Ljava/lang/Object;
.source "APX5WebPage.java"

# interfaces
.implements Lcom/tencent/midas/jsbridge/IAPWebPage;


# instance fields
.field private activity:Landroid/app/Activity;

.field protected waitDialog:Landroid/app/ProgressDialog;

.field protected webView:Lcom/tencent/midas/jsbridge/APX5WebView;

.field private webviewCallback:Lcom/tencent/midas/jsbridge/IAPX5WebViewCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/midas/jsbridge/APX5WebPage;->webView:Lcom/tencent/midas/jsbridge/APX5WebView;

    .line 30
    new-instance v0, Lcom/tencent/midas/jsbridge/APX5WebPage$1;

    invoke-direct {v0, p0}, Lcom/tencent/midas/jsbridge/APX5WebPage$1;-><init>(Lcom/tencent/midas/jsbridge/APX5WebPage;)V

    iput-object v0, p0, Lcom/tencent/midas/jsbridge/APX5WebPage;->webviewCallback:Lcom/tencent/midas/jsbridge/IAPX5WebViewCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/midas/jsbridge/APX5WebPage;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/midas/jsbridge/APX5WebPage;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tencent/midas/jsbridge/APX5WebPage;->activity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method protected createDialog()Lcom/tencent/midas/comm/APProgressDialog;
    .locals 2

    .prologue
    .line 148
    new-instance v0, Lcom/tencent/midas/comm/APProgressDialog;

    iget-object v1, p0, Lcom/tencent/midas/jsbridge/APX5WebPage;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/tencent/midas/comm/APProgressDialog;-><init>(Landroid/content/Context;)V

    .line 149
    .local v0, "dlg":Lcom/tencent/midas/comm/APProgressDialog;
    const-string/jumbo v1, "\u8bf7\u7a0d\u5019..."

    invoke-virtual {v0, v1}, Lcom/tencent/midas/comm/APProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 150
    return-object v0
.end method

.method public initUI(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/tencent/midas/jsbridge/APX5WebPage;->activity:Landroid/app/Activity;

    .line 107
    const-string/jumbo v1, "unipay_layout_activity_web_x5"

    invoke-static {p1, v1}, Lcom/pay/tool/APMidasCommMethod;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 108
    const-string/jumbo v1, "unipay_id_WebView"

    invoke-static {p1, v1}, Lcom/pay/tool/APMidasCommMethod;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/smtt/sdk/WebView;

    .line 109
    .local v0, "view":Lcom/tencent/smtt/sdk/WebView;
    new-instance v1, Lcom/tencent/midas/jsbridge/APX5WebView;

    iget-object v2, p0, Lcom/tencent/midas/jsbridge/APX5WebPage;->webviewCallback:Lcom/tencent/midas/jsbridge/IAPX5WebViewCallback;

    invoke-direct {v1, p1, v0, v2}, Lcom/tencent/midas/jsbridge/APX5WebView;-><init>(Landroid/app/Activity;Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/midas/jsbridge/IAPX5WebViewCallback;)V

    iput-object v1, p0, Lcom/tencent/midas/jsbridge/APX5WebPage;->webView:Lcom/tencent/midas/jsbridge/APX5WebView;

    .line 111
    invoke-virtual {p0}, Lcom/tencent/midas/jsbridge/APX5WebPage;->createDialog()Lcom/tencent/midas/comm/APProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/midas/jsbridge/APX5WebPage;->waitDialog:Landroid/app/ProgressDialog;

    .line 112
    iget-object v1, p0, Lcom/tencent/midas/jsbridge/APX5WebPage;->waitDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/tencent/midas/jsbridge/APX5WebPage$3;

    invoke-direct {v2, p0}, Lcom/tencent/midas/jsbridge/APX5WebPage$3;-><init>(Lcom/tencent/midas/jsbridge/APX5WebPage;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 118
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/tencent/midas/jsbridge/APX5WebPage;->webView:Lcom/tencent/midas/jsbridge/APX5WebView;

    invoke-virtual {v0, p1}, Lcom/tencent/midas/jsbridge/APX5WebView;->loadUrl(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public toPureH5Pay(Landroid/app/Activity;Lcom/tencent/midas/api/request/APMidasBaseRequest;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "request"    # Lcom/tencent/midas/api/request/APMidasBaseRequest;

    .prologue
    const v4, 0x3f59999a    # 0.85f

    .line 74
    iput-object p1, p0, Lcom/tencent/midas/jsbridge/APX5WebPage;->activity:Landroid/app/Activity;

    .line 75
    const-string/jumbo v3, "unipay_layout_activity_web_x5"

    invoke-static {p1, v3}, Lcom/pay/tool/APMidasCommMethod;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 76
    const-string/jumbo v3, "unipay_id_WebView"

    invoke-static {p1, v3}, Lcom/pay/tool/APMidasCommMethod;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/tencent/smtt/sdk/WebView;

    .line 78
    .local v2, "view":Lcom/tencent/smtt/sdk/WebView;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 79
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 81
    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 82
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 83
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 84
    invoke-virtual {v2, v0}, Lcom/tencent/smtt/sdk/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    new-instance v3, Lcom/tencent/midas/jsbridge/APX5WebView;

    iget-object v4, p0, Lcom/tencent/midas/jsbridge/APX5WebPage;->webviewCallback:Lcom/tencent/midas/jsbridge/IAPX5WebViewCallback;

    invoke-direct {v3, p1, v2, v4}, Lcom/tencent/midas/jsbridge/APX5WebView;-><init>(Landroid/app/Activity;Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/midas/jsbridge/IAPX5WebViewCallback;)V

    iput-object v3, p0, Lcom/tencent/midas/jsbridge/APX5WebPage;->webView:Lcom/tencent/midas/jsbridge/APX5WebView;

    .line 88
    invoke-virtual {p0}, Lcom/tencent/midas/jsbridge/APX5WebPage;->createDialog()Lcom/tencent/midas/comm/APProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/midas/jsbridge/APX5WebPage;->waitDialog:Landroid/app/ProgressDialog;

    .line 89
    iget-object v3, p0, Lcom/tencent/midas/jsbridge/APX5WebPage;->waitDialog:Landroid/app/ProgressDialog;

    new-instance v4, Lcom/tencent/midas/jsbridge/APX5WebPage$2;

    invoke-direct {v4, p0}, Lcom/tencent/midas/jsbridge/APX5WebPage$2;-><init>(Lcom/tencent/midas/jsbridge/APX5WebPage;)V

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 95
    return-void
.end method

.method public updateWebViewSize(Ljava/lang/String;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 122
    iget-object v5, p0, Lcom/tencent/midas/jsbridge/APX5WebPage;->webView:Lcom/tencent/midas/jsbridge/APX5WebView;

    invoke-virtual {v5}, Lcom/tencent/midas/jsbridge/APX5WebView;->getWebView()Lcom/tencent/smtt/sdk/WebView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/smtt/sdk/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 124
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const-string/jumbo v5, "webviewclient == "

    const-string/jumbo v6, "updateWebViewSize "

    invoke-static {v5, v6}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const/4 v4, 0x0

    .line 128
    .local v4, "width":I
    const-string v5, "mpwidth"

    invoke-static {p1, v5}, Lcom/pay/tool/APMidasTools;->getUrlParamsValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, "sWidth":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 130
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 134
    :cond_0
    const/4 v0, 0x0

    .line 135
    .local v0, "height":I
    const-string v5, "mpheight"

    invoke-static {p1, v5}, Lcom/pay/tool/APMidasTools;->getUrlParamsValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "sHeight":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 137
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 140
    :cond_1
    if-eqz v0, :cond_2

    if-eqz v4, :cond_2

    .line 141
    iget-object v5, p0, Lcom/tencent/midas/jsbridge/APX5WebPage;->activity:Landroid/app/Activity;

    int-to-float v6, v4

    invoke-static {v5, v6}, Lcom/pay/tool/APMidasCommMethod;->dip2px(Landroid/content/Context;F)I

    move-result v5

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 142
    iget-object v5, p0, Lcom/tencent/midas/jsbridge/APX5WebPage;->activity:Landroid/app/Activity;

    int-to-float v6, v0

    invoke-static {v5, v6}, Lcom/pay/tool/APMidasCommMethod;->dip2px(Landroid/content/Context;F)I

    move-result v5

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 143
    iget-object v5, p0, Lcom/tencent/midas/jsbridge/APX5WebPage;->webView:Lcom/tencent/midas/jsbridge/APX5WebView;

    invoke-virtual {v5}, Lcom/tencent/midas/jsbridge/APX5WebView;->getWebView()Lcom/tencent/smtt/sdk/WebView;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/tencent/smtt/sdk/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    :cond_2
    return-void
.end method
