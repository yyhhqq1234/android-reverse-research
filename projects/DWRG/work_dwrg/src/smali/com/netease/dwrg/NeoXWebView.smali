.class public Lcom/netease/dwrg/NeoXWebView;
.super Ljava/lang/Object;
.source "NeoXWebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/dwrg/NeoXWebView$NeoXWebViewClient;
    }
.end annotation


# instance fields
.field private m_activity:Landroid/app/Activity;

.field private m_clearHistory:Z

.field private m_dialog:Landroid/app/AlertDialog;

.field private m_layout:Landroid/widget/LinearLayout;

.field private m_title:Landroid/widget/TextView;

.field private m_webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/netease/dwrg/NeoXWebView;->m_dialog:Landroid/app/AlertDialog;

    .line 26
    iput-object v0, p0, Lcom/netease/dwrg/NeoXWebView;->m_activity:Landroid/app/Activity;

    .line 27
    iput-object v0, p0, Lcom/netease/dwrg/NeoXWebView;->m_layout:Landroid/widget/LinearLayout;

    .line 28
    iput-object v0, p0, Lcom/netease/dwrg/NeoXWebView;->m_webView:Landroid/webkit/WebView;

    .line 29
    iput-object v0, p0, Lcom/netease/dwrg/NeoXWebView;->m_title:Landroid/widget/TextView;

    .line 30
    iput-boolean v2, p0, Lcom/netease/dwrg/NeoXWebView;->m_clearHistory:Z

    .line 33
    iput-object p1, p0, Lcom/netease/dwrg/NeoXWebView;->m_activity:Landroid/app/Activity;

    .line 35
    invoke-direct {p0, p1}, Lcom/netease/dwrg/NeoXWebView;->createLayout(Landroid/app/Activity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/dwrg/NeoXWebView;->m_layout:Landroid/widget/LinearLayout;

    .line 36
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/dwrg/NeoXWebView;->m_dialog:Landroid/app/AlertDialog;

    .line 37
    iget-object v0, p0, Lcom/netease/dwrg/NeoXWebView;->m_dialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/netease/dwrg/NeoXWebView;->m_layout:Landroid/widget/LinearLayout;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 38
    iget-object v0, p0, Lcom/netease/dwrg/NeoXWebView;->m_dialog:Landroid/app/AlertDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/netease/dwrg/NeoXWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/netease/dwrg/NeoXWebView;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/netease/dwrg/NeoXWebView;->m_clearHistory:Z

    return v0
.end method

.method static synthetic access$002(Lcom/netease/dwrg/NeoXWebView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/netease/dwrg/NeoXWebView;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/netease/dwrg/NeoXWebView;->m_clearHistory:Z

    return p1
.end method

.method static synthetic access$100(Lcom/netease/dwrg/NeoXWebView;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/netease/dwrg/NeoXWebView;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/netease/dwrg/NeoXWebView;->m_webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private createLayout(Landroid/app/Activity;)Landroid/widget/LinearLayout;
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v6, -0x2

    const/4 v5, -0x1

    .line 95
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 96
    .local v2, "layout":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 97
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 100
    .local v1, "header":Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 102
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 103
    .local v0, "backButton":Landroid/widget/Button;
    const v3, 0x7f080010

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 104
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    new-instance v3, Lcom/netease/dwrg/NeoXWebView$1;

    invoke-direct {v3, p0}, Lcom/netease/dwrg/NeoXWebView$1;-><init>(Lcom/netease/dwrg/NeoXWebView;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/netease/dwrg/NeoXWebView;->m_title:Landroid/widget/TextView;

    .line 112
    iget-object v3, p0, Lcom/netease/dwrg/NeoXWebView;->m_title:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    iget-object v3, p0, Lcom/netease/dwrg/NeoXWebView;->m_title:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 115
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 116
    iget-object v3, p0, Lcom/netease/dwrg/NeoXWebView;->m_title:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 118
    invoke-direct {p0, p1}, Lcom/netease/dwrg/NeoXWebView;->createWebView(Landroid/app/Activity;)Landroid/webkit/WebView;

    move-result-object v3

    iput-object v3, p0, Lcom/netease/dwrg/NeoXWebView;->m_webView:Landroid/webkit/WebView;

    .line 119
    iget-object v3, p0, Lcom/netease/dwrg/NeoXWebView;->m_webView:Landroid/webkit/WebView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 122
    iget-object v3, p0, Lcom/netease/dwrg/NeoXWebView;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 124
    return-object v2
.end method

.method private createWebView(Landroid/app/Activity;)Landroid/webkit/WebView;
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 128
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 130
    .local v2, "webView":Landroid/webkit/WebView;
    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 131
    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 132
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 133
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 137
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "removeJavascriptInterface"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 138
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "searchBoxJavaBridge_"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    new-instance v3, Lcom/netease/dwrg/NeoXWebView$NeoXWebViewClient;

    invoke-direct {v3, p0}, Lcom/netease/dwrg/NeoXWebView$NeoXWebViewClient;-><init>(Lcom/netease/dwrg/NeoXWebView;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 144
    new-instance v3, Landroid/webkit/WebChromeClient;

    invoke-direct {v3}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 148
    new-instance v3, Lcom/netease/dwrg/NeoXWebView$2;

    invoke-direct {v3, p0}, Lcom/netease/dwrg/NeoXWebView$2;-><init>(Lcom/netease/dwrg/NeoXWebView;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 163
    return-object v2

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "NeoXWebView"

    const-string v4, "This API level do not support `removeJavascriptInterface`"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/netease/dwrg/NeoXWebView;->m_dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 61
    iget-object v0, p0, Lcom/netease/dwrg/NeoXWebView;->m_webView:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/netease/dwrg/NeoXWebView;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 63
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netease/dwrg/NeoXWebView;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 75
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 76
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 77
    iget-object v1, p0, Lcom/netease/dwrg/NeoXWebView;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    iget-object v1, p0, Lcom/netease/dwrg/NeoXWebView;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->goBack()V

    .line 85
    :cond_0
    :goto_0
    return v0

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/netease/dwrg/NeoXWebView;->hide()V

    goto :goto_0

    .line 85
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/netease/dwrg/NeoXWebView;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 92
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/netease/dwrg/NeoXWebView;->m_title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 43
    iget-object v2, p0, Lcom/netease/dwrg/NeoXWebView;->m_dialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 46
    iget-object v2, p0, Lcom/netease/dwrg/NeoXWebView;->m_dialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 47
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 48
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 49
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 50
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x700

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 51
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 53
    const/high16 v2, 0x20000

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 55
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/netease/dwrg/NeoXWebView;->m_clearHistory:Z

    .line 56
    return-void
.end method
