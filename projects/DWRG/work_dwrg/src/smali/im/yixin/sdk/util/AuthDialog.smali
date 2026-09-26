.class Lim/yixin/sdk/util/AuthDialog;
.super Landroid/app/Dialog;
.source "AuthDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/yixin/sdk/util/AuthDialog$AuthWebViewClient;
    }
.end annotation


# static fields
.field private static final WEBVIEW_CONTAINER_MARGIN_TOP:I = 0x19

.field private static final WEBVIEW_MARGIN:I = 0xa

.field private static theme:I


# instance fields
.field private mAuthUrl:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIsDetached:Z

.field private mLoadingDlg:Landroid/app/ProgressDialog;

.field private mRootContainer:Landroid/widget/RelativeLayout;

.field private mWebView:Landroid/webkit/WebView;

.field private mWebViewContainer:Landroid/widget/RelativeLayout;

.field private req:Lim/yixin/sdk/api/SendAuthToYX$Req;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 219
    const v0, 0x1030010

    sput v0, Lim/yixin/sdk/util/AuthDialog;->theme:I

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lim/yixin/sdk/api/SendAuthToYX$Req;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "authUrl"    # Ljava/lang/String;
    .param p3, "req"    # Lim/yixin/sdk/api/SendAuthToYX$Req;

    .prologue
    .line 79
    sget v0, Lim/yixin/sdk/util/AuthDialog;->theme:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/yixin/sdk/util/AuthDialog;->mIsDetached:Z

    .line 81
    iput-object p2, p0, Lim/yixin/sdk/util/AuthDialog;->mAuthUrl:Ljava/lang/String;

    .line 82
    iput-object p1, p0, Lim/yixin/sdk/util/AuthDialog;->mContext:Landroid/content/Context;

    .line 83
    iput-object p3, p0, Lim/yixin/sdk/util/AuthDialog;->req:Lim/yixin/sdk/api/SendAuthToYX$Req;

    .line 84
    return-void
.end method

.method static synthetic access$0(Lim/yixin/sdk/util/AuthDialog;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lim/yixin/sdk/util/AuthDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lim/yixin/sdk/util/AuthDialog;)Lim/yixin/sdk/api/SendAuthToYX$Req;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lim/yixin/sdk/util/AuthDialog;->req:Lim/yixin/sdk/api/SendAuthToYX$Req;

    return-object v0
.end method

.method static synthetic access$2(Landroid/content/Context;Lim/yixin/sdk/api/SendAuthToYX$Req;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 230
    invoke-static {p0, p1, p2, p3}, Lim/yixin/sdk/util/AuthDialog;->notifyThirdPartOAuth(Landroid/content/Context;Lim/yixin/sdk/api/SendAuthToYX$Req;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lim/yixin/sdk/util/AuthDialog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lim/yixin/sdk/util/AuthDialog;->handleRedirectUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lim/yixin/sdk/util/AuthDialog;)Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lim/yixin/sdk/util/AuthDialog;->mIsDetached:Z

    return v0
.end method

.method static synthetic access$5(Lim/yixin/sdk/util/AuthDialog;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lim/yixin/sdk/util/AuthDialog;->mLoadingDlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$6(Lim/yixin/sdk/util/AuthDialog;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lim/yixin/sdk/util/AuthDialog;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private handleRedirectUrl(Ljava/lang/String;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 187
    invoke-static {p1}, Lim/yixin/sdk/util/StringUtil;->parseUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 188
    .local v4, "values":Landroid/os/Bundle;
    const-string v5, "error"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, "errorType":Ljava/lang/String;
    const-string v5, "error_code"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "errorCode":Ljava/lang/String;
    const-string v5, "error_description"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "errorDescription":Ljava/lang/String;
    const-string v5, "code"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "code":Ljava/lang/String;
    if-nez v3, :cond_0

    if-nez v1, :cond_0

    .line 193
    iget-object v5, p0, Lim/yixin/sdk/util/AuthDialog;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lim/yixin/sdk/util/AuthDialog;->req:Lim/yixin/sdk/api/SendAuthToYX$Req;

    const/4 v7, 0x0

    invoke-static {v5, v6, v7, v0}, Lim/yixin/sdk/util/AuthDialog;->notifyThirdPartOAuth(Landroid/content/Context;Lim/yixin/sdk/api/SendAuthToYX$Req;ILjava/lang/String;)V

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v5, p0, Lim/yixin/sdk/util/AuthDialog;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lim/yixin/sdk/util/AuthDialog;->req:Lim/yixin/sdk/api/SendAuthToYX$Req;

    const/4 v7, -0x1

    invoke-static {v5, v6, v7, v0}, Lim/yixin/sdk/util/AuthDialog;->notifyThirdPartOAuth(Landroid/content/Context;Lim/yixin/sdk/api/SendAuthToYX$Req;ILjava/lang/String;)V

    goto :goto_0
.end method

.method private initCloseButton()V
    .locals 7

    .prologue
    const/4 v6, -0x2

    .line 168
    new-instance v0, Landroid/widget/ImageView;

    iget-object v4, p0, Lim/yixin/sdk/util/AuthDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 169
    .local v0, "closeImage":Landroid/widget/ImageView;
    iget-object v4, p0, Lim/yixin/sdk/util/AuthDialog;->mContext:Landroid/content/Context;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lim/yixin/sdk/util/ResourceManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 170
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 171
    new-instance v4, Lim/yixin/sdk/util/AuthDialog$1;

    invoke-direct {v4, p0}, Lim/yixin/sdk/util/AuthDialog$1;-><init>(Lim/yixin/sdk/util/AuthDialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 179
    .local v2, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lim/yixin/sdk/util/AuthDialog;->mWebViewContainer:Landroid/widget/RelativeLayout;

    .line 180
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 179
    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 181
    .local v3, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x5

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 182
    iget v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x5

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 183
    iget-object v4, p0, Lim/yixin/sdk/util/AuthDialog;->mRootContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    return-void
.end method

.method private initLoadingDlg()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 135
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lim/yixin/sdk/util/AuthDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lim/yixin/sdk/util/AuthDialog;->mLoadingDlg:Landroid/app/ProgressDialog;

    .line 136
    iget-object v0, p0, Lim/yixin/sdk/util/AuthDialog;->mLoadingDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 137
    iget-object v0, p0, Lim/yixin/sdk/util/AuthDialog;->mLoadingDlg:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lim/yixin/sdk/util/AuthDialog;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lim/yixin/sdk/util/ResourceManager;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 138
    return-void
.end method

.method private initWebView()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, -0x1

    .line 141
    new-instance v8, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lim/yixin/sdk/util/AuthDialog;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lim/yixin/sdk/util/AuthDialog;->mWebViewContainer:Landroid/widget/RelativeLayout;

    .line 142
    new-instance v8, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lim/yixin/sdk/util/AuthDialog;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lim/yixin/sdk/util/AuthDialog;->mWebView:Landroid/webkit/WebView;

    .line 143
    iget-object v8, p0, Lim/yixin/sdk/util/AuthDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 144
    iget-object v8, p0, Lim/yixin/sdk/util/AuthDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 145
    iget-object v8, p0, Lim/yixin/sdk/util/AuthDialog;->mWebView:Landroid/webkit/WebView;

    new-instance v9, Lim/yixin/sdk/util/AuthDialog$AuthWebViewClient;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lim/yixin/sdk/util/AuthDialog$AuthWebViewClient;-><init>(Lim/yixin/sdk/util/AuthDialog;Lim/yixin/sdk/util/AuthDialog$AuthWebViewClient;)V

    invoke-virtual {v8, v9}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 146
    iget-object v8, p0, Lim/yixin/sdk/util/AuthDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->requestFocus()Z

    .line 147
    iget-object v8, p0, Lim/yixin/sdk/util/AuthDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8, v12}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 148
    iget-object v8, p0, Lim/yixin/sdk/util/AuthDialog;->mWebView:Landroid/webkit/WebView;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 149
    iget-object v8, p0, Lim/yixin/sdk/util/AuthDialog;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lim/yixin/sdk/util/AuthDialog;->mAuthUrl:Ljava/lang/String;

    invoke-static {v8, v9}, Lim/yixin/sdk/util/SDKNetworkUtil;->clearCookies(Landroid/content/Context;Ljava/lang/String;)V

    .line 150
    iget-object v8, p0, Lim/yixin/sdk/util/AuthDialog;->mWebView:Landroid/webkit/WebView;

    iget-object v9, p0, Lim/yixin/sdk/util/AuthDialog;->mAuthUrl:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 151
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 152
    .local v5, "webViewContainerLayout":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 153
    .local v6, "webviewLayout":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lim/yixin/sdk/util/AuthDialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 154
    .local v2, "dm":Landroid/util/DisplayMetrics;
    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 155
    .local v1, "density":F
    const/high16 v8, 0x41200000    # 10.0f

    mul-float/2addr v8, v1

    float-to-int v4, v8

    .line 156
    .local v4, "margin":I
    invoke-virtual {v6, v4, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 157
    iget-object v8, p0, Lim/yixin/sdk/util/AuthDialog;->mContext:Landroid/content/Context;

    invoke-static {v8, v13}, Lim/yixin/sdk/util/ResourceManager;->getNinePatchDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 158
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lim/yixin/sdk/util/AuthDialog;->mWebViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    iget-object v8, p0, Lim/yixin/sdk/util/AuthDialog;->mWebViewContainer:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lim/yixin/sdk/util/AuthDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8, v9, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    iget-object v8, p0, Lim/yixin/sdk/util/AuthDialog;->mWebViewContainer:Landroid/widget/RelativeLayout;

    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 161
    iget-object v8, p0, Lim/yixin/sdk/util/AuthDialog;->mContext:Landroid/content/Context;

    const/4 v9, 0x2

    invoke-static {v8, v9}, Lim/yixin/sdk/util/ResourceManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 162
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/lit8 v7, v8, 0x1

    .line 163
    .local v7, "width":I
    const/high16 v8, 0x41c80000    # 25.0f

    iget v9, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v5, v7, v8, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 164
    iget-object v8, p0, Lim/yixin/sdk/util/AuthDialog;->mRootContainer:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lim/yixin/sdk/util/AuthDialog;->mWebViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v9, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    return-void
.end method

.method private initWindow()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 126
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/yixin/sdk/util/AuthDialog;->requestWindowFeature(I)Z

    .line 127
    invoke-virtual {p0}, Lim/yixin/sdk/util/AuthDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFeatureDrawableAlpha(II)V

    .line 128
    invoke-virtual {p0}, Lim/yixin/sdk/util/AuthDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 129
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lim/yixin/sdk/util/AuthDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lim/yixin/sdk/util/AuthDialog;->mRootContainer:Landroid/widget/RelativeLayout;

    .line 130
    iget-object v0, p0, Lim/yixin/sdk/util/AuthDialog;->mRootContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 131
    iget-object v0, p0, Lim/yixin/sdk/util/AuthDialog;->mRootContainer:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lim/yixin/sdk/util/AuthDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    return-void
.end method

.method private static notifyThirdPartApp(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v6, 0x2712

    .line 248
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 252
    .local v1, "localIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".yxapi.YXEntryActivity"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 254
    const-string v3, "_yxmessage_sdkVersion"

    invoke-virtual {v1, v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 255
    const-string v3, "_yxmessage_appPackage"

    const-string v4, "im.yixin"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    const-string v2, "yixin://resp?appid=99"

    .line 257
    .local v2, "protocolData":Ljava/lang/String;
    const-string v3, "_yxmessage_content"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    const-string v3, "_yxmessage_checksum"

    .line 259
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "im.yixin"

    invoke-static {v4, v5}, Lim/yixin/sdk/channel/YXMessageUtil;->generateCheckSum(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    .line 258
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 260
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 262
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "ex":Ljava/lang/Exception;
    const-class v3, Lim/yixin/sdk/util/AuthDialog;

    const-string v4, "notifyThirdPartApp - send fail"

    invoke-static {v3, v4, v0}, Lim/yixin/sdk/util/SDKLogger;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static notifyThirdPartOAuth(Landroid/content/Context;Lim/yixin/sdk/api/SendAuthToYX$Req;ILjava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "req"    # Lim/yixin/sdk/api/SendAuthToYX$Req;
    .param p2, "errorCode"    # I
    .param p3, "code"    # Ljava/lang/String;

    .prologue
    .line 231
    new-instance v1, Lim/yixin/sdk/api/SendAuthToYX$Resp;

    invoke-direct {v1}, Lim/yixin/sdk/api/SendAuthToYX$Resp;-><init>()V

    .line 232
    .local v1, "resp":Lim/yixin/sdk/api/SendAuthToYX$Resp;
    iput p2, v1, Lim/yixin/sdk/api/SendAuthToYX$Resp;->errCode:I

    .line 233
    iget-object v2, p1, Lim/yixin/sdk/api/SendAuthToYX$Req;->transaction:Ljava/lang/String;

    iput-object v2, v1, Lim/yixin/sdk/api/SendAuthToYX$Resp;->transaction:Ljava/lang/String;

    .line 234
    iget-object v2, p1, Lim/yixin/sdk/api/SendAuthToYX$Req;->state:Ljava/lang/String;

    iput-object v2, v1, Lim/yixin/sdk/api/SendAuthToYX$Resp;->state:Ljava/lang/String;

    .line 235
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 236
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lim/yixin/sdk/api/SendAuthToYX$Resp;->toBundle(Landroid/os/Bundle;)V

    .line 237
    iput-object p3, v1, Lim/yixin/sdk/api/SendAuthToYX$Resp;->code:Ljava/lang/String;

    .line 238
    invoke-static {p0, v0}, Lim/yixin/sdk/util/AuthDialog;->notifyThirdPartApp(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 239
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lim/yixin/sdk/util/AuthDialog;->mIsDetached:Z

    if-nez v0, :cond_1

    .line 93
    iget-object v0, p0, Lim/yixin/sdk/util/AuthDialog;->mLoadingDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lim/yixin/sdk/util/AuthDialog;->mLoadingDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lim/yixin/sdk/util/AuthDialog;->mLoadingDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 96
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 98
    :cond_1
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/yixin/sdk/util/AuthDialog;->mIsDetached:Z

    .line 102
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 103
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 88
    iget-object v0, p0, Lim/yixin/sdk/util/AuthDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lim/yixin/sdk/util/AuthDialog;->req:Lim/yixin/sdk/api/SendAuthToYX$Req;

    const/4 v2, -0x4

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lim/yixin/sdk/util/AuthDialog;->notifyThirdPartOAuth(Landroid/content/Context;Lim/yixin/sdk/api/SendAuthToYX$Req;ILjava/lang/String;)V

    .line 89
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 119
    invoke-direct {p0}, Lim/yixin/sdk/util/AuthDialog;->initWindow()V

    .line 120
    invoke-direct {p0}, Lim/yixin/sdk/util/AuthDialog;->initLoadingDlg()V

    .line 121
    invoke-direct {p0}, Lim/yixin/sdk/util/AuthDialog;->initWebView()V

    .line 122
    invoke-direct {p0}, Lim/yixin/sdk/util/AuthDialog;->initCloseButton()V

    .line 123
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lim/yixin/sdk/util/AuthDialog;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lim/yixin/sdk/util/AuthDialog;->mWebViewContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lim/yixin/sdk/util/AuthDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 108
    iget-object v0, p0, Lim/yixin/sdk/util/AuthDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 109
    iget-object v0, p0, Lim/yixin/sdk/util/AuthDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 110
    iget-object v0, p0, Lim/yixin/sdk/util/AuthDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lim/yixin/sdk/util/AuthDialog;->mWebView:Landroid/webkit/WebView;

    .line 113
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/yixin/sdk/util/AuthDialog;->mIsDetached:Z

    .line 114
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 115
    return-void
.end method
