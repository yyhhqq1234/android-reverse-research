.class public Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity;
.super Landroid/app/Activity;
.source "WXQrCodeActivity.java"


# static fields
.field public static final ACTION_ON_QRCODE_AUTH:Ljava/lang/String; = "com.tencent.msdk.weixin.qrcode.HIDE_AUTH"

.field public static final ACTION_ON_QRCODE_READY:Ljava/lang/String; = "com.tencent.msdk.weixin.qrcode.QRCODE_READY"

.field public static final ACTION_ON_QRCODE_SCANNED:Ljava/lang/String; = "com.tencent.msdk.weixin.qrcode.QRCODE_SCANNED"


# instance fields
.field private mQrCode:Landroid/widget/ImageView;

.field private mQrCodeButton:Landroid/widget/Button;

.field private mQrCodePrompt:Landroid/widget/TextView;

.field private mQrCodeStatus:Landroid/widget/TextView;

.field private mQrCodeStatusReady:Ljava/lang/String;

.field private mQrCodeStatusScanned:Ljava/lang/String;

.field private mQrCodeStatusScannedImage:I

.field private mQrCodeStatusScannedPrompt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity;->cancel(Z)V

    return-void
.end method

.method private cancel(Z)V
    .locals 9
    .param p1, "notify"    # Z

    .prologue
    .line 127
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 130
    :try_start_0
    const-string v5, "com.tencent.msdk.sdkwrapper.wx.WXQrCodeLoginRefactor"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 132
    .local v3, "scanLoginClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "getInstance"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 133
    .local v2, "getInstance":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 134
    .local v4, "scanLoginObj":Ljava/lang/Object;
    const-string v5, "cancel"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 135
    .local v0, "cance":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v0    # "cance":Ljava/lang/reflect/Method;
    .end local v2    # "getInstance":Ljava/lang/reflect/Method;
    .end local v3    # "scanLoginClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "scanLoginObj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v1

    .line 137
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.tencent.msdk.weixin.qrcode.QRCODE_READY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    const-string v2, "qrcode_img"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "qrcodeImgPath":Ljava/lang/String;
    iget-object v2, p0, Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity;->mQrCodeStatusReady:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity;->updateView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .end local v1    # "qrcodeImgPath":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    const-string v2, "com.tencent.msdk.weixin.qrcode.QRCODE_SCANNED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 91
    const-string v2, "qrcode_img"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .restart local v1    # "qrcodeImgPath":Ljava/lang/String;
    iget-object v2, p0, Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity;->mQrCodeStatusScanned:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity;->mQrCodeStatusScannedPrompt:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity;->updateView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    .end local v1    # "qrcodeImgPath":Ljava/lang/String;
    :cond_2
    const-string v2, "com.tencent.msdk.weixin.qrcode.HIDE_AUTH"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity;->finish()V

    goto :goto_0
.end method

.method private initView()V
    .locals 12

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 37
    .local v9, "resources":Landroid/content/res/Resources;
    const-string v10, "com_tencent_msdk_qrcode_window"

    const-string v11, "layout"

    invoke-static {v9, v10, v11, v1}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 38
    .local v0, "layout_msdk_qrcode_window":I
    const-string v10, "qrcode_iv"

    const-string v11, "id"

    invoke-static {v9, v10, v11, v1}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 39
    .local v3, "qrcode_iv":I
    const-string v10, "qrcode_status_tv"

    const-string v11, "id"

    invoke-static {v9, v10, v11, v1}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 40
    .local v7, "qrcode_status_tv":I
    const-string v10, "qrcode_status_tv_prompt"

    const-string v11, "id"

    invoke-static {v9, v10, v11, v1}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 41
    .local v8, "qrcode_status_tv_prompt":I
    const-string v10, "qrcode_bt"

    const-string v11, "id"

    invoke-static {v9, v10, v11, v1}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 42
    .local v2, "qrcode_bt":I
    const-string/jumbo v10, "wx_qrcode_status_ready"

    const-string/jumbo v11, "string"

    invoke-static {v9, v10, v11, v1}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 43
    .local v4, "qrcode_status_ready":I
    const-string/jumbo v10, "wx_qrcode_status_scanned"

    const-string/jumbo v11, "string"

    invoke-static {v9, v10, v11, v1}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 44
    .local v5, "qrcode_status_scanned":I
    const-string/jumbo v10, "wx_qrcode_status_scanned_prompt"

    const-string/jumbo v11, "string"

    invoke-static {v9, v10, v11, v1}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 45
    .local v6, "qrcode_status_scanned_prompt":I
    invoke-virtual {p0, v4}, Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity;->mQrCodeStatusReady:Ljava/lang/String;

    .line 46
    invoke-virtual {p0, v5}, Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity;->mQrCodeStatusScanned:Ljava/lang/String;

    .line 47
    invoke-virtual {p0, v6}, Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity;->mQrCodeStatusScannedPrompt:Ljava/lang/String;

    .line 48
    const-string v10, "com_tencent_msdk_wxqrcode_scanned"

    const-string v11, "drawable"

    invoke-virtual {v9, v10, v11, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity;->mQrCodeStatusScannedImage:I

    .line 50
    invoke-virtual {p0, v0}, Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity;->setContentView(I)V

    .line 51
    invoke-virtual {p0, v3}, Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity;->mQrCode:Landroid/widget/ImageView;

    .line 52
    invoke-virtual {p0, v7}, Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity;->mQrCodeStatus:Landroid/widget/TextView;

    .line 53
    invoke-virtual {p0, v8}, Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity;->mQrCodePrompt:Landroid/widget/TextView;

    .line 54
    invoke-virtual {p0, v2}, Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, p0, Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity;->mQrCodeButton:Landroid/widget/Button;

    .line 55
    iget-object v10, p0, Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity;->mQrCodeButton:Landroid/widget/Button;

    new-instance v11, Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity$1;

    invoke-direct {v11, p0}, Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity$1;-><init>(Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    return-void
.end method

.method private updateView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "qrcodeImgPath"    # Ljava/lang/String;
    .param p2, "qrcodeStatus"    # Ljava/lang/String;
    .param p3, "qrcodePrompt"    # Ljava/lang/String;

    .prologue
    .line 66
    if-eqz p1, :cond_3

    .line 67
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 68
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity;->mQrCode:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 76
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 77
    iget-object v1, p0, Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity;->mQrCodeStatus:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :cond_1
    if-eqz p3, :cond_2

    .line 81
    iget-object v1, p0, Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity;->mQrCodePrompt:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :cond_2
    return-void

    .line 71
    :cond_3
    iget v1, p0, Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity;->mQrCodeStatusScannedImage:I

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity;->mQrCode:Landroid/widget/ImageView;

    iget v2, p0, Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity;->mQrCodeStatusScannedImage:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity;->cancel(Z)V

    .line 117
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 118
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-direct {p0}, Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity;->initView()V

    .line 103
    invoke-virtual {p0}, Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 104
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity;->handleIntent(Landroid/content/Intent;)V

    .line 105
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity;->cancel(Z)V

    .line 123
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 124
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 111
    invoke-direct {p0, p1}, Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity;->handleIntent(Landroid/content/Intent;)V

    .line 112
    return-void
.end method
