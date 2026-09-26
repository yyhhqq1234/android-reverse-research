.class public Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;
.super Lcom/netease/epay/sdk/base/ui/SdkActivity;
.source "ManageRSAActivity.java"


# instance fields
.field a:Landroid/view/View$OnClickListener;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/netease/epay/sdk/base/view/LongCommonButton;

.field private d:Landroid/view/View;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/SdkActivity;-><init>()V

    .line 146
    new-instance v0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2;-><init>(Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->a:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;)Lcom/netease/epay/sdk/base/view/LongCommonButton;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->c:Lcom/netease/epay/sdk/base/view/LongCommonButton;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 71
    sget v0, Lcom/netease/epay/sdk/rsa/R$id;->tvTitle:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->b:Landroid/widget/TextView;

    .line 72
    sget v0, Lcom/netease/epay/sdk/rsa/R$id;->btnDel:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->d:Landroid/view/View;

    .line 73
    iget-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    sget v0, Lcom/netease/epay/sdk/rsa/R$id;->btnNext:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/LongCommonButton;

    iput-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->c:Lcom/netease/epay/sdk/base/view/LongCommonButton;

    .line 75
    iget-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->c:Lcom/netease/epay/sdk/base/view/LongCommonButton;

    iget-object v1, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/LongCommonButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->e:Z

    .line 77
    return-void
.end method

.method static synthetic a(Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->a(ZLjava/lang/String;)V

    return-void
.end method

.method private a(ZLjava/lang/String;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 106
    if-eqz p1, :cond_1

    .line 107
    iget-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->b:Landroid/widget/TextView;

    sget v1, Lcom/netease/epay/sdk/rsa/R$string;->epaysdk_already_verified:I

    invoke-virtual {p0, v1}, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    const-string v0, "activate"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->c:Lcom/netease/epay/sdk/base/view/LongCommonButton;

    invoke-virtual {v0, v3}, Lcom/netease/epay/sdk/base/view/LongCommonButton;->setVisibility(I)V

    .line 122
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->c:Lcom/netease/epay/sdk/base/view/LongCommonButton;

    sget v1, Lcom/netease/epay/sdk/rsa/R$string;->epaysdk_re_verified_cert:I

    invoke-virtual {p0, v1}, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/LongCommonButton;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->c:Lcom/netease/epay/sdk/base/view/LongCommonButton;

    invoke-virtual {v0, v2}, Lcom/netease/epay/sdk/base/view/LongCommonButton;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->b:Landroid/widget/TextView;

    sget v1, Lcom/netease/epay/sdk/rsa/R$string;->epaysdk_not_verified:I

    invoke-virtual {p0, v1}, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->c:Lcom/netease/epay/sdk/base/view/LongCommonButton;

    sget v1, Lcom/netease/epay/sdk/rsa/R$string;->epaysdk_verified_cert:I

    invoke-virtual {p0, v1}, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/LongCommonButton;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->c:Lcom/netease/epay/sdk/base/view/LongCommonButton;

    invoke-virtual {v0, v2}, Lcom/netease/epay/sdk/base/view/LongCommonButton;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;Ljava/util/ArrayList;)Z
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->a(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/epay/sdk/rsa/model/QueryBizPrecheck$PreCheck;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 231
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/rsa/model/QueryBizPrecheck$PreCheck;

    .line 232
    iget-object v0, v0, Lcom/netease/epay/sdk/rsa/model/QueryBizPrecheck$PreCheck;->checkType:Ljava/lang/String;

    const-string v2, "FACE_RECOGNITION"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    const/4 v0, 0x1

    .line 236
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->d:Landroid/view/View;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 81
    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->accountId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/netease/epay/sdk/rsa/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Lcom/netease/epay/sdk/model/JsonBuilder;

    invoke-direct {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    .line 83
    const-string v1, "query_user_certificate.htm"

    new-instance v2, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$1;

    invoke-direct {v2, p0}, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$1;-><init>(Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;)V

    invoke-static {v1, v0, v3, p0, v2}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v3, v0}, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->a(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 240
    new-instance v0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$3;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$3;-><init>(Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;)V

    .line 249
    const-string v1, "install_certificate.htm"

    const/4 v2, 0x0

    new-instance v3, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$4;

    invoke-direct {v3, p0}, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$4;-><init>(Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;)V

    invoke-static {v1, v0, v2, p0, v3}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lcom/netease/epay/sdk/base/network/IParamsCallback;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 263
    return-void
.end method


# virtual methods
.method public back(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 267
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/base/ui/SdkActivity;->back(Landroid/view/View;)V

    .line 269
    const-string v0, "rsa"

    invoke-static {v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->getController(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/rsa/ManageRSAController;

    .line 271
    sget-object v1, Lcom/netease/epay/sdk/base/core/BaseData;->accountId:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/netease/epay/sdk/rsa/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 272
    new-instance v1, Lcom/netease/epay/sdk/base/event/BaseEvent;

    const-string v2, "000000"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :goto_0
    if-eqz v0, :cond_0

    .line 277
    iput-object p0, v1, Lcom/netease/epay/sdk/base/event/BaseEvent;->activity:Landroid/support/v4/app/FragmentActivity;

    .line 278
    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/rsa/ManageRSAController;->deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    .line 280
    :cond_0
    return-void

    .line 274
    :cond_1
    new-instance v1, Lcom/netease/epay/sdk/base/event/BaseEvent;

    const-string v2, "-100"

    const-string v3, "\u7528\u6237\u624b\u52a8\u9000\u51fa\u8be5\u4e1a\u52a1"

    invoke-direct {v1, v2, v3}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 134
    invoke-super {p0, p1, p2, p3}, Lcom/netease/epay/sdk/base/ui/SdkActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 135
    packed-switch p1, :pswitch_data_0

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 137
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->e:Z

    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreateSdkActivity(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    sget v0, Lcom/netease/epay/sdk/rsa/R$layout;->epaysdk_act_rsa_verify:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->setContentView(I)V

    .line 64
    invoke-direct {p0}, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->a()V

    .line 65
    iget-boolean v0, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->e:Z

    if-nez v0, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->b()V

    .line 68
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/base/ui/SdkActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 127
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "keyStartInstall"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->e:Z

    .line 130
    :cond_0
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .prologue
    .line 223
    invoke-super {p0}, Lcom/netease/epay/sdk/base/ui/SdkActivity;->onPostResume()V

    .line 224
    iget-boolean v0, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->e:Z

    if-eqz v0, :cond_0

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->e:Z

    .line 226
    invoke-direct {p0}, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->c()V

    .line 228
    :cond_0
    return-void
.end method
