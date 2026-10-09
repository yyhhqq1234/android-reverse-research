.class public Loicq/wlogin_sdk/quicklogin/QuickLoginWebViewActivity;
.super Landroid/app/Activity;
.source "QuickLoginWebViewActivity.java"


# static fields
.field static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Loicq/wlogin_sdk/quicklogin/QuickLoginWebViewActivity;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    new-instance v2, Loicq/wlogin_sdk/quicklogin/QuikLoginJSInterface;

    invoke-direct {v2, p0}, Loicq/wlogin_sdk/quicklogin/QuikLoginJSInterface;-><init>(Landroid/app/Activity;)V

    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Loicq/wlogin_sdk/quicklogin/QuickLoginWebViewActivity;->a:Z

    .line 44
    invoke-virtual {p0}, Loicq/wlogin_sdk/quicklogin/QuickLoginWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 45
    const-string v0, "appid"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 46
    const-string v0, "account"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 47
    const/4 v0, 0x1

    const-string v3, "isUserAccountLocked"

    const/4 v7, 0x0

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    .line 48
    :goto_0
    const/4 v3, 0x1

    const-string v7, "forceWebLogin"

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-ne v3, v1, :cond_1

    const/4 v1, 0x1

    move v3, v1

    .line 49
    :goto_1
    const-wide/16 v8, 0x0

    cmp-long v1, v8, v4

    if-nez v1, :cond_2

    .line 50
    const-string v0, "QuickLoginWebViewActivity get appid failed"

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;)V

    .line 242
    :goto_2
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 48
    :cond_1
    const/4 v1, 0x0

    move v3, v1

    goto :goto_1

    .line 81
    :cond_2
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 83
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 84
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    invoke-virtual {p0}, Loicq/wlogin_sdk/quicklogin/QuickLoginWebViewActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v7

    .line 88
    const-wide v8, 0x3fb1eb851eb851ecL    # 0.07

    int-to-double v10, v7

    mul-double/2addr v8, v10

    double-to-int v8, v8

    .line 91
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 93
    const-string v10, "#3F51B5"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 94
    const-string v10, "#FFFFFF"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    const-string v10, ""

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v11, -0x1

    invoke-direct {v10, v11, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 97
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 101
    new-instance v9, Landroid/widget/Button;

    invoke-direct {v9, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 102
    const-string v10, "#3F51B5"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 103
    const-string v10, "#FFFFFF"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setTextColor(I)V

    .line 104
    const-string/jumbo v10, "\u5173\u95ed"

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 105
    invoke-virtual {v9}, Landroid/widget/Button;->getPaddingTop()I

    move-result v10

    .line 106
    invoke-virtual {v9}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v11

    .line 108
    const/16 v12, 0xf

    const/16 v13, 0xf

    invoke-virtual {v9, v12, v10, v13, v11}, Landroid/widget/Button;->setPadding(IIII)V

    .line 109
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v11, -0x2

    invoke-direct {v10, v11, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 110
    invoke-virtual {v9, v10}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 113
    new-instance v10, Loicq/wlogin_sdk/quicklogin/b;

    invoke-direct {v10, p0}, Loicq/wlogin_sdk/quicklogin/b;-><init>(Loicq/wlogin_sdk/quicklogin/QuickLoginWebViewActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    new-instance v9, Landroid/webkit/WebView;

    invoke-direct {v9, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 122
    sub-int/2addr v7, v8

    .line 123
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v11, -0x1

    invoke-direct {v10, v11, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 124
    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v7, v8, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 126
    invoke-virtual {v9, v10}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 129
    invoke-virtual {p0, v1}, Loicq/wlogin_sdk/quicklogin/QuickLoginWebViewActivity;->setContentView(Landroid/view/View;)V

    .line 130
    invoke-virtual {v9}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    .line 131
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 132
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 136
    const/16 v1, 0x11

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v8, :cond_5

    .line 138
    new-instance v1, Loicq/wlogin_sdk/quicklogin/QuikLoginJSInterface;

    invoke-direct {v1, p0}, Loicq/wlogin_sdk/quicklogin/QuikLoginJSInterface;-><init>(Landroid/app/Activity;)V

    const-string v8, "WTLogin"

    invoke-virtual {v9, v1, v8}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    const-string v1, "javascript:function wtCB(uin, sig) { WTLogin.ptloginCallBack(uin, sig); }"

    .line 144
    :goto_3
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 146
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-lt v7, v8, :cond_3

    .line 147
    const-string v7, "searchBoxJavaBridge_"

    invoke-virtual {v9, v7}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 148
    const-string v7, "accessibility"

    invoke-virtual {v9, v7}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 149
    const-string v7, "accessibilityTraversal"

    invoke-virtual {v9, v7}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 152
    :cond_3
    const/16 v7, 0x11

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v7, v8, :cond_4

    .line 153
    new-instance v7, Loicq/wlogin_sdk/quicklogin/c;

    invoke-direct {v7, p0, v2}, Loicq/wlogin_sdk/quicklogin/c;-><init>(Loicq/wlogin_sdk/quicklogin/QuickLoginWebViewActivity;Loicq/wlogin_sdk/quicklogin/QuikLoginJSInterface;)V

    invoke-virtual {v9, v7}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 172
    :cond_4
    new-instance v2, Loicq/wlogin_sdk/quicklogin/d;

    invoke-direct {v2, p0, v9}, Loicq/wlogin_sdk/quicklogin/d;-><init>(Loicq/wlogin_sdk/quicklogin/QuickLoginWebViewActivity;Landroid/webkit/WebView;)V

    invoke-virtual {v9, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 227
    const-string v2, ""

    .line 228
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_7

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "&default_uin="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "&pt_lock_uin="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://xui.ptlogin2.qq.com/cgi-bin/xlogin?appid="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "&style=42&s_url=http://wtlogin.qq.com/&pt_no_onekey=1&pt_no_auth=1&daid=499&wt_force_pwd="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 235
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_6

    .line 236
    invoke-virtual {v9, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 237
    const/4 v0, 0x0

    invoke-virtual {v9, v1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto/16 :goto_2

    .line 141
    :cond_5
    const-string v1, "javascript:function wtCB(uin, sig) { return prompt(JSON.stringify({ uin:\'\'+uin, sig:\'\'+sig})); }"

    goto/16 :goto_3

    .line 239
    :cond_6
    invoke-virtual {v9, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v9, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    move-object v0, v2

    goto :goto_4
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 246
    invoke-virtual {p0}, Loicq/wlogin_sdk/quicklogin/QuickLoginWebViewActivity;->finish()V

    .line 247
    const/4 v0, 0x0

    .line 249
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 255
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 261
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 257
    :pswitch_0
    invoke-virtual {p0}, Loicq/wlogin_sdk/quicklogin/QuickLoginWebViewActivity;->finish()V

    .line 258
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 255
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
