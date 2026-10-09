.class public Lcom/tencent/msdk/NameAuthActivity;
.super Lcom/tencent/msdk/framework/msdkview/MSDKViewPanel;
.source "NameAuthActivity.java"


# instance fields
.field private dialogView:Landroid/view/View;

.field private drawable_correct:I

.field private drawable_error:I

.field private drawable_fail:I

.field private drawable_must:I

.field private drawable_success:I

.field private hasShow:Z

.field private id_agreement:I

.field private id_back:I

.field private id_commit:I

.field private id_dialog_close:I

.field private id_dialog_confirm:I

.field private id_dialog_tips_qq:I

.field private id_identity_type:I

.field private id_province:I

.field private id_web_dialog_close:I

.field private isRealAuth:Z

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCity:Landroid/widget/EditText;

.field private mConfirm:Landroid/widget/Button;

.field private mDes1:Landroid/widget/TextView;

.field private mDialogViewLayout:Landroid/view/View;

.field private mIdentityNum:Landroid/widget/EditText;

.field private mIdentityNumMust:Landroid/widget/ImageView;

.field private mIdentityNumTextWatcher:Landroid/text/TextWatcher;

.field private mIdentityType:Landroid/widget/TextView;

.field private mIdentityTypeItems:[Ljava/lang/String;

.field private mIdentityTypeMust:Landroid/widget/ImageView;

.field private mImgTips:Landroid/widget/ImageView;

.field private mName:Landroid/widget/EditText;

.field private mNameMust:Landroid/widget/ImageView;

.field private mNameTextWatcher:Landroid/text/TextWatcher;

.field private mNickName:Ljava/lang/String;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mProgressMsg:Ljava/lang/String;

.field private mProvince:Landroid/widget/TextView;

.field private mProvinceIDs:[I

.field private mProvinceItems:[Ljava/lang/String;

.field private mProvinceMust:Landroid/widget/ImageView;

.field private mQQUrl:Ljava/lang/String;

.field private mResultDialog:Landroid/app/Dialog;

.field private mTips:Landroid/widget/TextView;

.field private mTipsDes:Landroid/widget/TextView;

.field private mTipsQQ:Landroid/view/View;

.field private mWebDialog:Landroid/app/Dialog;

.field private platform:I

.field private string_check_identity:I

.field private string_check_identity_type:I

.field private string_check_name:I

.field private string_fail:I

.field private string_login:I

.field private string_qq:I

.field private string_sel_agreement:I

.field private string_success:I

.field private string_success_des:I

.field private string_tryagain:I

.field private string_wx:I

.field private style_dialog:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lcom/tencent/msdk/framework/msdkview/MSDKViewPanel;-><init>()V

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/NameAuthActivity;->mNickName:Ljava/lang/String;

    .line 94
    iput-boolean v1, p0, Lcom/tencent/msdk/NameAuthActivity;->isRealAuth:Z

    .line 106
    iput-boolean v1, p0, Lcom/tencent/msdk/NameAuthActivity;->hasShow:Z

    .line 376
    new-instance v0, Lcom/tencent/msdk/NameAuthActivity$1;

    invoke-direct {v0, p0}, Lcom/tencent/msdk/NameAuthActivity$1;-><init>(Lcom/tencent/msdk/NameAuthActivity;)V

    iput-object v0, p0, Lcom/tencent/msdk/NameAuthActivity;->mNameTextWatcher:Landroid/text/TextWatcher;

    .line 399
    new-instance v0, Lcom/tencent/msdk/NameAuthActivity$2;

    invoke-direct {v0, p0}, Lcom/tencent/msdk/NameAuthActivity$2;-><init>(Lcom/tencent/msdk/NameAuthActivity;)V

    iput-object v0, p0, Lcom/tencent/msdk/NameAuthActivity;->mIdentityNumTextWatcher:Landroid/text/TextWatcher;

    .line 423
    new-instance v0, Lcom/tencent/msdk/NameAuthActivity$3;

    invoke-direct {v0, p0}, Lcom/tencent/msdk/NameAuthActivity$3;-><init>(Lcom/tencent/msdk/NameAuthActivity;)V

    iput-object v0, p0, Lcom/tencent/msdk/NameAuthActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/msdk/NameAuthActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/NameAuthActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity;->mNameMust:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/msdk/NameAuthActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/NameAuthActivity;

    .prologue
    .line 49
    iget v0, p0, Lcom/tencent/msdk/NameAuthActivity;->drawable_must:I

    return v0
.end method

.method static synthetic access$1000(Lcom/tencent/msdk/NameAuthActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/NameAuthActivity;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/tencent/msdk/NameAuthActivity;->showWebDialog()V

    return-void
.end method

.method static synthetic access$1100(Lcom/tencent/msdk/NameAuthActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/NameAuthActivity;

    .prologue
    .line 49
    iget v0, p0, Lcom/tencent/msdk/NameAuthActivity;->id_web_dialog_close:I

    return v0
.end method

.method static synthetic access$1200(Lcom/tencent/msdk/NameAuthActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/NameAuthActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity;->mWebDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/tencent/msdk/NameAuthActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/NameAuthActivity;

    .prologue
    .line 49
    iget v0, p0, Lcom/tencent/msdk/NameAuthActivity;->id_dialog_tips_qq:I

    return v0
.end method

.method static synthetic access$1400(Lcom/tencent/msdk/NameAuthActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/NameAuthActivity;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/tencent/msdk/NameAuthActivity;->openCustomerService()V

    return-void
.end method

.method static synthetic access$1500(Lcom/tencent/msdk/NameAuthActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/NameAuthActivity;

    .prologue
    .line 49
    iget v0, p0, Lcom/tencent/msdk/NameAuthActivity;->id_identity_type:I

    return v0
.end method

.method static synthetic access$1600(Lcom/tencent/msdk/NameAuthActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/NameAuthActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity;->mIdentityType:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/tencent/msdk/NameAuthActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/NameAuthActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity;->mIdentityTypeItems:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/tencent/msdk/NameAuthActivity;Landroid/widget/TextView;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/NameAuthActivity;
    .param p1, "x1"    # Landroid/widget/TextView;
    .param p2, "x2"    # [Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/tencent/msdk/NameAuthActivity;->showSelectDialog(Landroid/widget/TextView;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/tencent/msdk/NameAuthActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/NameAuthActivity;

    .prologue
    .line 49
    iget v0, p0, Lcom/tencent/msdk/NameAuthActivity;->id_province:I

    return v0
.end method

.method static synthetic access$200(Lcom/tencent/msdk/NameAuthActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/NameAuthActivity;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/tencent/msdk/NameAuthActivity;->checkName()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/tencent/msdk/NameAuthActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/NameAuthActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity;->mProvince:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/tencent/msdk/NameAuthActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/NameAuthActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity;->mProvinceItems:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/tencent/msdk/NameAuthActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/NameAuthActivity;

    .prologue
    .line 49
    iget v0, p0, Lcom/tencent/msdk/NameAuthActivity;->id_dialog_close:I

    return v0
.end method

.method static synthetic access$2300(Lcom/tencent/msdk/NameAuthActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/NameAuthActivity;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/tencent/msdk/NameAuthActivity;->sendCloseResultDialog()V

    return-void
.end method

.method static synthetic access$2400(Lcom/tencent/msdk/NameAuthActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/NameAuthActivity;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/tencent/msdk/NameAuthActivity;->closeResultDialog()V

    return-void
.end method

.method static synthetic access$2500(Lcom/tencent/msdk/NameAuthActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/NameAuthActivity;

    .prologue
    .line 49
    iget v0, p0, Lcom/tencent/msdk/NameAuthActivity;->id_dialog_confirm:I

    return v0
.end method

.method static synthetic access$2600(Lcom/tencent/msdk/NameAuthActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/NameAuthActivity;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/tencent/msdk/NameAuthActivity;->checkIdentityType()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/tencent/msdk/NameAuthActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/NameAuthActivity;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/tencent/msdk/NameAuthActivity;->checkProvince()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/tencent/msdk/NameAuthActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/NameAuthActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity;->mIdentityNumMust:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tencent/msdk/NameAuthActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/NameAuthActivity;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/tencent/msdk/NameAuthActivity;->checkIdentityNum()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/tencent/msdk/NameAuthActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/NameAuthActivity;

    .prologue
    .line 49
    iget v0, p0, Lcom/tencent/msdk/NameAuthActivity;->id_back:I

    return v0
.end method

.method static synthetic access$600(Lcom/tencent/msdk/NameAuthActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/NameAuthActivity;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/tencent/msdk/NameAuthActivity;->sendReturnGame()V

    return-void
.end method

.method static synthetic access$700(Lcom/tencent/msdk/NameAuthActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/NameAuthActivity;

    .prologue
    .line 49
    iget v0, p0, Lcom/tencent/msdk/NameAuthActivity;->id_commit:I

    return v0
.end method

.method static synthetic access$800(Lcom/tencent/msdk/NameAuthActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/NameAuthActivity;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/tencent/msdk/NameAuthActivity;->commitNameAuth()V

    return-void
.end method

.method static synthetic access$900(Lcom/tencent/msdk/NameAuthActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/NameAuthActivity;

    .prologue
    .line 49
    iget v0, p0, Lcom/tencent/msdk/NameAuthActivity;->id_agreement:I

    return v0
.end method

.method private checkAgreement()Z
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    const/4 v0, 0x1

    .line 502
    :goto_0
    return v0

    .line 501
    :cond_0
    iget v0, p0, Lcom/tencent/msdk/NameAuthActivity;->string_sel_agreement:I

    invoke-direct {p0, v0}, Lcom/tencent/msdk/NameAuthActivity;->showToast(I)V

    .line 502
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkField()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 487
    iput-boolean v0, p0, Lcom/tencent/msdk/NameAuthActivity;->hasShow:Z

    .line 488
    invoke-direct {p0}, Lcom/tencent/msdk/NameAuthActivity;->checkAgreement()Z

    move-result v1

    .line 489
    invoke-direct {p0}, Lcom/tencent/msdk/NameAuthActivity;->checkName()Z

    move-result v2

    and-int/2addr v1, v2

    .line 490
    invoke-direct {p0}, Lcom/tencent/msdk/NameAuthActivity;->checkIdentityType()Z

    move-result v2

    and-int/2addr v1, v2

    .line 491
    invoke-direct {p0}, Lcom/tencent/msdk/NameAuthActivity;->checkIdentityNum()Z

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 492
    const/4 v0, 0x1

    .line 494
    :cond_0
    return v0
.end method

.method private checkIdentityNum()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 531
    const-string v0, ""

    .line 532
    .local v0, "identityNum":Ljava/lang/String;
    iget-object v2, p0, Lcom/tencent/msdk/NameAuthActivity;->mIdentityNum:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 533
    iget-object v2, p0, Lcom/tencent/msdk/NameAuthActivity;->mIdentityNum:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 535
    :cond_0
    iget-object v2, p0, Lcom/tencent/msdk/NameAuthActivity;->mIdentityNumMust:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 536
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 537
    :cond_1
    iget-object v2, p0, Lcom/tencent/msdk/NameAuthActivity;->mIdentityNumMust:Landroid/widget/ImageView;

    iget v3, p0, Lcom/tencent/msdk/NameAuthActivity;->drawable_error:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 538
    iget v2, p0, Lcom/tencent/msdk/NameAuthActivity;->string_check_identity:I

    invoke-direct {p0, v2}, Lcom/tencent/msdk/NameAuthActivity;->showToast(I)V

    .line 542
    :goto_0
    return v1

    .line 541
    :cond_2
    iget-object v1, p0, Lcom/tencent/msdk/NameAuthActivity;->mIdentityNumMust:Landroid/widget/ImageView;

    iget v2, p0, Lcom/tencent/msdk/NameAuthActivity;->drawable_correct:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 542
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private checkIdentityType()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 719
    iget-object v2, p0, Lcom/tencent/msdk/NameAuthActivity;->mIdentityType:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 720
    iget-object v2, p0, Lcom/tencent/msdk/NameAuthActivity;->mIdentityType:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 721
    .local v0, "identityType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 722
    iget-object v2, p0, Lcom/tencent/msdk/NameAuthActivity;->mIdentityTypeMust:Landroid/widget/ImageView;

    iget v3, p0, Lcom/tencent/msdk/NameAuthActivity;->drawable_error:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 723
    iget v2, p0, Lcom/tencent/msdk/NameAuthActivity;->string_check_identity_type:I

    invoke-direct {p0, v2}, Lcom/tencent/msdk/NameAuthActivity;->showToast(I)V

    .line 731
    .end local v0    # "identityType":Ljava/lang/String;
    :goto_0
    return v1

    .line 726
    .restart local v0    # "identityType":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/tencent/msdk/NameAuthActivity;->mIdentityTypeMust:Landroid/widget/ImageView;

    iget v2, p0, Lcom/tencent/msdk/NameAuthActivity;->drawable_correct:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 728
    const/4 v1, 0x1

    goto :goto_0

    .line 730
    .end local v0    # "identityType":Ljava/lang/String;
    :cond_1
    iget v2, p0, Lcom/tencent/msdk/NameAuthActivity;->string_check_identity_type:I

    invoke-direct {p0, v2}, Lcom/tencent/msdk/NameAuthActivity;->showToast(I)V

    goto :goto_0
.end method

.method private checkName()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 510
    const-string v0, ""

    .line 511
    .local v0, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/tencent/msdk/NameAuthActivity;->mName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 512
    iget-object v2, p0, Lcom/tencent/msdk/NameAuthActivity;->mName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 514
    :cond_0
    iget-object v2, p0, Lcom/tencent/msdk/NameAuthActivity;->mNameMust:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 515
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 516
    :cond_1
    iget-object v2, p0, Lcom/tencent/msdk/NameAuthActivity;->mNameMust:Landroid/widget/ImageView;

    iget v3, p0, Lcom/tencent/msdk/NameAuthActivity;->drawable_error:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 517
    iget v2, p0, Lcom/tencent/msdk/NameAuthActivity;->string_check_name:I

    invoke-direct {p0, v2}, Lcom/tencent/msdk/NameAuthActivity;->showToast(I)V

    .line 522
    :goto_0
    return v1

    .line 520
    :cond_2
    iget-object v1, p0, Lcom/tencent/msdk/NameAuthActivity;->mNameMust:Landroid/widget/ImageView;

    iget v2, p0, Lcom/tencent/msdk/NameAuthActivity;->drawable_correct:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 522
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private checkProvince()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 739
    iget-object v2, p0, Lcom/tencent/msdk/NameAuthActivity;->mProvince:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 740
    iget-object v2, p0, Lcom/tencent/msdk/NameAuthActivity;->mProvince:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 741
    .local v0, "province":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 742
    iget-object v2, p0, Lcom/tencent/msdk/NameAuthActivity;->mProvinceMust:Landroid/widget/ImageView;

    iget v3, p0, Lcom/tencent/msdk/NameAuthActivity;->drawable_correct:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 743
    iget-object v2, p0, Lcom/tencent/msdk/NameAuthActivity;->mProvinceMust:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 745
    :cond_0
    const/4 v1, 0x1

    .line 747
    .end local v0    # "province":Ljava/lang/String;
    :cond_1
    return v1
.end method

.method private closeResultDialog()V
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity;->mResultDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity;->mResultDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 656
    :cond_0
    return-void
.end method

.method private commitNameAuth()V
    .locals 4

    .prologue
    .line 458
    invoke-direct {p0}, Lcom/tencent/msdk/NameAuthActivity;->checkField()Z

    move-result v3

    if-nez v3, :cond_1

    .line 459
    const-string v3, "input params error"

    invoke-static {v3}, Lcom/tencent/msdk/framework/mlog/MLog;->w(Ljava/lang/String;)V

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    iget-object v3, p0, Lcom/tencent/msdk/NameAuthActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/tencent/msdk/NameAuthActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 466
    :cond_2
    invoke-direct {p0}, Lcom/tencent/msdk/NameAuthActivity;->showProgress()V

    .line 467
    iget-object v3, p0, Lcom/tencent/msdk/NameAuthActivity;->mName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 468
    .local v2, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 469
    .local v1, "identityType":I
    iget-object v3, p0, Lcom/tencent/msdk/NameAuthActivity;->mIdentityType:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 470
    iget-object v3, p0, Lcom/tencent/msdk/NameAuthActivity;->mIdentityType:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 472
    :cond_3
    iget-object v3, p0, Lcom/tencent/msdk/NameAuthActivity;->mIdentityNum:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, "identityNum":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 474
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 476
    :cond_4
    if-eqz v0, :cond_5

    .line 477
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 479
    :cond_5
    invoke-direct {p0, v2, v1, v0}, Lcom/tencent/msdk/NameAuthActivity;->sendCommit(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method private getFromAssets(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 595
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 596
    const-string v8, ""

    .line 636
    :cond_0
    :goto_0
    return-object v8

    .line 598
    :cond_1
    const/4 v4, 0x0

    .line 599
    .local v4, "inputReader":Ljava/io/InputStreamReader;
    const/4 v0, 0x0

    .line 602
    .local v0, "bufReader":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/msdk/NameAuthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "raw"

    invoke-virtual {p0}, Lcom/tencent/msdk/NameAuthActivity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, p1, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 603
    .local v7, "resId":I
    if-nez v7, :cond_4

    .line 604
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".txt is not add to MSDKLibrary project res/raw"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/msdk/framework/mlog/MLog;->w(Ljava/lang/String;)V

    .line 605
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/tencent/msdk/NameAuthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".txt"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .end local v4    # "inputReader":Ljava/io/InputStreamReader;
    .local v5, "inputReader":Ljava/io/InputStreamReader;
    move-object v4, v5

    .line 611
    .end local v5    # "inputReader":Ljava/io/InputStreamReader;
    .restart local v4    # "inputReader":Ljava/io/InputStreamReader;
    :goto_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 612
    .end local v0    # "bufReader":Ljava/io/BufferedReader;
    .local v1, "bufReader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 613
    .local v2, "builder":Ljava/lang/StringBuilder;
    const-string v6, ""

    .line 614
    .local v6, "line":Ljava/lang/String;
    :goto_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 615
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 617
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    .end local v6    # "line":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v1

    .line 618
    .end local v1    # "bufReader":Ljava/io/BufferedReader;
    .end local v7    # "resId":I
    .restart local v0    # "bufReader":Ljava/io/BufferedReader;
    .local v3, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 620
    if-eqz v4, :cond_2

    .line 622
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 627
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_4
    if-eqz v0, :cond_3

    .line 629
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 636
    :cond_3
    :goto_5
    const-string v8, ""

    goto :goto_0

    .line 607
    .restart local v7    # "resId":I
    :cond_4
    :try_start_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".txt ResId is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 608
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/tencent/msdk/NameAuthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v4    # "inputReader":Ljava/io/InputStreamReader;
    .restart local v5    # "inputReader":Ljava/io/InputStreamReader;
    move-object v4, v5

    .end local v5    # "inputReader":Ljava/io/InputStreamReader;
    .restart local v4    # "inputReader":Ljava/io/InputStreamReader;
    goto :goto_1

    .line 616
    .end local v0    # "bufReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufReader":Ljava/io/BufferedReader;
    .restart local v2    # "builder":Ljava/lang/StringBuilder;
    .restart local v6    # "line":Ljava/lang/String;
    :cond_5
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v8

    .line 620
    if-eqz v4, :cond_6

    .line 622
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 627
    :cond_6
    :goto_6
    if-eqz v1, :cond_0

    .line 629
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_0

    .line 630
    :catch_1
    move-exception v3

    .line 631
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 623
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 624
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 623
    .end local v1    # "bufReader":Ljava/io/BufferedReader;
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "resId":I
    .restart local v0    # "bufReader":Ljava/io/BufferedReader;
    .local v3, "e":Ljava/lang/Exception;
    :catch_3
    move-exception v3

    .line 624
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 630
    .end local v3    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 631
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 620
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_7
    if-eqz v4, :cond_7

    .line 622
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 627
    :cond_7
    :goto_8
    if-eqz v0, :cond_8

    .line 629
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 632
    :cond_8
    :goto_9
    throw v8

    .line 623
    :catch_5
    move-exception v3

    .line 624
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 630
    .end local v3    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v3

    .line 631
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 620
    .end local v0    # "bufReader":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "bufReader":Ljava/io/BufferedReader;
    .restart local v7    # "resId":I
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "bufReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufReader":Ljava/io/BufferedReader;
    goto :goto_7

    .line 617
    .end local v7    # "resId":I
    :catch_7
    move-exception v3

    goto :goto_3
.end method

.method private handlerIntent()V
    .locals 5

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/tencent/msdk/NameAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 226
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 227
    const-string v4, "Start NameAuthActivity error, without Intent data!"

    invoke-static {v4}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lcom/tencent/msdk/NameAuthActivity;->finish()V

    .line 245
    :goto_0
    return-void

    .line 231
    :cond_0
    const-string v4, "method_start_view"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 232
    .local v3, "startInfo":Ljava/lang/String;
    invoke-static {v3}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 233
    const-string v4, "Start NameAuthActivity error, start info is empty!"

    invoke-static {v4}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lcom/tencent/msdk/NameAuthActivity;->finish()V

    goto :goto_0

    .line 238
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 239
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v4, "user_name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/msdk/NameAuthActivity;->mNickName:Ljava/lang/String;

    .line 240
    const-string v4, "platform"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/tencent/msdk/NameAuthActivity;->platform:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 241
    .end local v2    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/Throwable;)V

    .line 243
    invoke-virtual {p0}, Lcom/tencent/msdk/NameAuthActivity;->finish()V

    goto :goto_0
.end method

.method private hideProgress()V
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 766
    :cond_0
    return-void
.end method

.method private openCustomerService()V
    .locals 4

    .prologue
    .line 640
    iget-object v3, p0, Lcom/tencent/msdk/NameAuthActivity;->mQQUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 650
    :goto_0
    return-void

    .line 644
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/tencent/msdk/NameAuthActivity;->mQQUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 645
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 646
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/tencent/msdk/NameAuthActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 647
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 648
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private openResultDialog(ZLjava/lang/String;)V
    .locals 3
    .param p1, "authResult"    # Z
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 660
    invoke-direct {p0}, Lcom/tencent/msdk/NameAuthActivity;->hideProgress()V

    .line 661
    if-eqz p1, :cond_2

    .line 662
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity;->mImgTips:Landroid/widget/ImageView;

    iget v1, p0, Lcom/tencent/msdk/NameAuthActivity;->drawable_success:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 663
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity;->mTips:Landroid/widget/TextView;

    iget v1, p0, Lcom/tencent/msdk/NameAuthActivity;->string_success:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 664
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity;->mTipsDes:Landroid/widget/TextView;

    iget v1, p0, Lcom/tencent/msdk/NameAuthActivity;->string_success_des:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 665
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity;->mTipsQQ:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 666
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity;->mConfirm:Landroid/widget/Button;

    iget v1, p0, Lcom/tencent/msdk/NameAuthActivity;->string_login:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 674
    :goto_0
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity;->mResultDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 675
    new-instance v0, Landroid/app/Dialog;

    iget v1, p0, Lcom/tencent/msdk/NameAuthActivity;->style_dialog:I

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/tencent/msdk/NameAuthActivity;->mResultDialog:Landroid/app/Dialog;

    .line 676
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity;->mResultDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/tencent/msdk/NameAuthActivity;->dialogView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 677
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity;->mResultDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 679
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/msdk/NameAuthActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 680
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity;->mResultDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 682
    :cond_1
    return-void

    .line 668
    :cond_2
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity;->mImgTips:Landroid/widget/ImageView;

    iget v1, p0, Lcom/tencent/msdk/NameAuthActivity;->drawable_fail:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 669
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity;->mTips:Landroid/widget/TextView;

    iget v1, p0, Lcom/tencent/msdk/NameAuthActivity;->string_fail:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 670
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity;->mTipsDes:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 671
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity;->mTipsQQ:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 672
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity;->mConfirm:Landroid/widget/Button;

    iget v1, p0, Lcom/tencent/msdk/NameAuthActivity;->string_tryagain:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private sendCloseResultDialog()V
    .locals 4

    .prologue
    .line 163
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 164
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "req_type"

    const-string v3, "close_result_dialog"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tencent/msdk/NameAuthActivity;->sendEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private sendCommit(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "idType"    # I
    .param p3, "idNum"    # Ljava/lang/String;

    .prologue
    .line 150
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 151
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "req_type"

    const-string v3, "commit"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    const-string/jumbo v2, "user_name"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    const-string v2, "identity_type"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 154
    const-string v2, "identity_number"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tencent/msdk/NameAuthActivity;->sendEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private sendReturnGame()V
    .locals 4

    .prologue
    .line 140
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 141
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "req_type"

    const-string v3, "return_game"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tencent/msdk/NameAuthActivity;->sendEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private showProgress()V
    .locals 2

    .prologue
    .line 751
    invoke-virtual {p0}, Lcom/tencent/msdk/NameAuthActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    :goto_0
    return-void

    .line 754
    :cond_0
    invoke-direct {p0}, Lcom/tencent/msdk/NameAuthActivity;->hideProgress()V

    .line 755
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_1

    .line 756
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/msdk/NameAuthActivity;->mProgressMsg:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/NameAuthActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 758
    :cond_1
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method

.method private showSelectDialog(Landroid/widget/TextView;[Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "items"    # [Ljava/lang/String;

    .prologue
    .line 690
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 691
    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    new-instance v1, Lcom/tencent/msdk/NameAuthActivity$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/msdk/NameAuthActivity$4;-><init>(Lcom/tencent/msdk/NameAuthActivity;Landroid/widget/TextView;[Ljava/lang/String;)V

    invoke-virtual {v0, p2, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 707
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 708
    invoke-virtual {p0}, Lcom/tencent/msdk/NameAuthActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 709
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 712
    :cond_0
    return-void
.end method

.method private showToast(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 548
    iget-boolean v1, p0, Lcom/tencent/msdk/NameAuthActivity;->hasShow:Z

    if-eqz v1, :cond_0

    .line 557
    :goto_0
    return-void

    .line 552
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/msdk/NameAuthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 553
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/msdk/NameAuthActivity;->hasShow:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 554
    :catch_0
    move-exception v0

    .line 555
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private showWebDialog()V
    .locals 14

    .prologue
    .line 563
    iget-object v10, p0, Lcom/tencent/msdk/NameAuthActivity;->mWebDialog:Landroid/app/Dialog;

    if-nez v10, :cond_1

    .line 564
    new-instance v10, Landroid/app/Dialog;

    iget v11, p0, Lcom/tencent/msdk/NameAuthActivity;->style_dialog:I

    invoke-direct {v10, p0, v11}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v10, p0, Lcom/tencent/msdk/NameAuthActivity;->mWebDialog:Landroid/app/Dialog;

    .line 565
    invoke-virtual {p0}, Lcom/tencent/msdk/NameAuthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v11, "msdk_name_auth_web_dialog"

    const-string v12, "layout"

    invoke-virtual {p0}, Lcom/tencent/msdk/NameAuthActivity;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v11, v12, v13}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 566
    .local v3, "layout_web_dialog":I
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 567
    .local v0, "dialogView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/tencent/msdk/NameAuthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v11, "msdk_name_auth_webview_close"

    const-string v12, "id"

    invoke-virtual {p0}, Lcom/tencent/msdk/NameAuthActivity;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v11, v12, v13}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/tencent/msdk/NameAuthActivity;->id_web_dialog_close:I

    .line 568
    invoke-virtual {p0}, Lcom/tencent/msdk/NameAuthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v11, "msdk_name_auth_agreementview"

    const-string v12, "id"

    invoke-virtual {p0}, Lcom/tencent/msdk/NameAuthActivity;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v11, v12, v13}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 569
    .local v2, "id_web_dialog_textview":I
    iget v10, p0, Lcom/tencent/msdk/NameAuthActivity;->id_web_dialog_close:I

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 570
    .local v9, "webclose":Landroid/view/View;
    iget-object v10, p0, Lcom/tencent/msdk/NameAuthActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 571
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 572
    .local v8, "textview":Landroid/widget/TextView;
    if-eqz v8, :cond_0

    .line 573
    invoke-virtual {v8}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    iput-object v10, p0, Lcom/tencent/msdk/NameAuthActivity;->mDialogViewLayout:Landroid/view/View;

    .line 574
    const-string v10, "msdk_agreement"

    invoke-direct {p0, v10}, Lcom/tencent/msdk/NameAuthActivity;->getFromAssets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 575
    .local v7, "text":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 576
    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    .end local v7    # "text":Ljava/lang/String;
    :cond_0
    iget-object v10, p0, Lcom/tencent/msdk/NameAuthActivity;->mWebDialog:Landroid/app/Dialog;

    invoke-virtual {v10, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 581
    invoke-virtual {p0}, Lcom/tencent/msdk/NameAuthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 582
    .local v1, "display":Landroid/util/DisplayMetrics;
    if-eqz v1, :cond_1

    iget-object v10, p0, Lcom/tencent/msdk/NameAuthActivity;->mDialogViewLayout:Landroid/view/View;

    if-eqz v10, :cond_1

    .line 583
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 584
    .local v4, "mHeightPixels":I
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 585
    .local v5, "mWidthPixels":I
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    mul-int/lit8 v10, v5, 0x3

    div-int/lit8 v10, v10, 0x4

    mul-int/lit8 v11, v4, 0x3

    div-int/lit8 v11, v11, 0x4

    invoke-direct {v6, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 586
    .local v6, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v10, p0, Lcom/tencent/msdk/NameAuthActivity;->mDialogViewLayout:Landroid/view/View;

    invoke-virtual {v10, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 589
    .end local v0    # "dialogView":Landroid/view/View;
    .end local v1    # "display":Landroid/util/DisplayMetrics;
    .end local v2    # "id_web_dialog_textview":I
    .end local v3    # "layout_web_dialog":I
    .end local v4    # "mHeightPixels":I
    .end local v5    # "mWidthPixels":I
    .end local v6    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "textview":Landroid/widget/TextView;
    .end local v9    # "webclose":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/msdk/NameAuthActivity;->isFinishing()Z

    move-result v10

    if-nez v10, :cond_2

    .line 590
    iget-object v10, p0, Lcom/tencent/msdk/NameAuthActivity;->mWebDialog:Landroid/app/Dialog;

    invoke-virtual {v10}, Landroid/app/Dialog;->show()V

    .line 592
    :cond_2
    return-void
.end method


# virtual methods
.method public finishView()V
    .locals 0

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/tencent/msdk/NameAuthActivity;->finish()V

    .line 117
    return-void
.end method

.method public getViewName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    const-string/jumbo v0, "view_name_real_name_auth"

    return-object v0
.end method

.method public initRes()V
    .locals 35

    .prologue
    .line 248
    const-string v31, "real name auth activity init Res start"

    invoke-static/range {v31 .. v31}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/msdk/NameAuthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    .line 250
    .local v27, "r":Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/msdk/NameAuthActivity;->getPackageName()Ljava/lang/String;

    move-result-object v25

    .line 251
    .local v25, "pkgName":Ljava/lang/String;
    const-string v31, "msdk_name_auth_id_name"

    const-string v32, "id"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    .line 252
    .local v20, "id_name":I
    const-string v31, "msdk_name_auth_id_identity_type"

    const-string v32, "id"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/msdk/NameAuthActivity;->id_identity_type:I

    .line 253
    const-string v31, "msdk_name_auth_id_identity_num"

    const-string v32, "id"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    .line 254
    .local v17, "id_identity_num":I
    const-string v31, "msdk_name_auth_id_province"

    const-string v32, "id"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/msdk/NameAuthActivity;->id_province:I

    .line 255
    const-string v31, "msdk_name_auth_id_city"

    const-string v32, "id"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 256
    .local v12, "id_city":I
    const-string v31, "msdk_name_auth_id_des1"

    const-string v32, "id"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 259
    .local v13, "id_des1":I
    const-string v31, "msdk_name_auth_id_name_must"

    const-string v32, "id"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    .line 260
    .local v21, "id_name_must":I
    const-string v31, "msdk_name_auth_id_identity_type_must"

    const-string v32, "id"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    .line 261
    .local v19, "id_identity_type_must":I
    const-string v31, "msdk_name_auth_id_identity_num_must"

    const-string v32, "id"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 262
    .local v18, "id_identity_num_must":I
    const-string v31, "msdk_name_auth_id_province_must"

    const-string v32, "id"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    .line 264
    .local v22, "id_province_must":I
    const-string v31, "msdk_name_auth_id_check_box"

    const-string v32, "id"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 266
    .local v11, "id_check_box":I
    const-string v31, "msdk_name_auth_correct"

    const-string v32, "drawable"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/msdk/NameAuthActivity;->drawable_correct:I

    .line 267
    const-string v31, "msdk_name_auth_error"

    const-string v32, "drawable"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/msdk/NameAuthActivity;->drawable_error:I

    .line 268
    const-string v31, "msdk_name_auth_must"

    const-string v32, "drawable"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/msdk/NameAuthActivity;->drawable_must:I

    .line 270
    const-string v31, "msdk_name_auth_success"

    const-string v32, "drawable"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/msdk/NameAuthActivity;->drawable_success:I

    .line 271
    const-string v31, "msdk_name_auth_warning"

    const-string v32, "drawable"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/msdk/NameAuthActivity;->drawable_fail:I

    .line 273
    const-string v31, "msdk_name_auth_id_agreement"

    const-string v32, "id"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/msdk/NameAuthActivity;->id_agreement:I

    .line 274
    const-string v31, "msdk_name_auth_id_back"

    const-string v32, "id"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/msdk/NameAuthActivity;->id_back:I

    .line 275
    const-string v31, "msdk_name_auth_id_commit"

    const-string v32, "id"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/msdk/NameAuthActivity;->id_commit:I

    .line 278
    const-string v31, "msdk_name_auth_dialog"

    const-string v32, "layout"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v23

    .line 279
    .local v23, "layout_dialog":I
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v23

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/msdk/NameAuthActivity;->dialogView:Landroid/view/View;

    .line 281
    const-string v31, "msdk_name_auth_id_close"

    const-string v32, "id"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/msdk/NameAuthActivity;->id_dialog_close:I

    .line 282
    const-string v31, "ADCustomDialog"

    const-string/jumbo v32, "style"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/msdk/NameAuthActivity;->style_dialog:I

    .line 283
    const-string v31, "msdk_name_auth_id_img_tips"

    const-string v32, "id"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 284
    .local v14, "id_dialog_img_tips":I
    const-string v31, "msdk_name_auth_id_tips"

    const-string v32, "id"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 285
    .local v15, "id_dialog_tips":I
    const-string v31, "msdk_name_auth_id_tips_des"

    const-string v32, "id"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 286
    .local v16, "id_dialog_tips_des":I
    const-string v31, "msdk_name_auth_id_tips_qq"

    const-string v32, "id"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/msdk/NameAuthActivity;->id_dialog_tips_qq:I

    .line 287
    const-string v31, "msdk_name_auth_id_confirm"

    const-string v32, "id"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/msdk/NameAuthActivity;->id_dialog_confirm:I

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/NameAuthActivity;->dialogView:Landroid/view/View;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/msdk/NameAuthActivity;->id_dialog_close:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 290
    .local v9, "close":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/NameAuthActivity;->dialogView:Landroid/view/View;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/msdk/NameAuthActivity;->id_dialog_tips_qq:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/msdk/NameAuthActivity;->mTipsQQ:Landroid/view/View;

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/NameAuthActivity;->dialogView:Landroid/view/View;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/ImageView;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/msdk/NameAuthActivity;->mImgTips:Landroid/widget/ImageView;

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/NameAuthActivity;->dialogView:Landroid/view/View;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/msdk/NameAuthActivity;->mTips:Landroid/widget/TextView;

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/NameAuthActivity;->dialogView:Landroid/view/View;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/msdk/NameAuthActivity;->mTipsDes:Landroid/widget/TextView;

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/NameAuthActivity;->dialogView:Landroid/view/View;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/msdk/NameAuthActivity;->id_dialog_confirm:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/Button;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/msdk/NameAuthActivity;->mConfirm:Landroid/widget/Button;

    .line 297
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/tencent/msdk/NameAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/CheckBox;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/msdk/NameAuthActivity;->mCheckBox:Landroid/widget/CheckBox;

    .line 298
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/NameAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/EditText;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/msdk/NameAuthActivity;->mName:Landroid/widget/EditText;

    .line 299
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/tencent/msdk/NameAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/msdk/NameAuthActivity;->mDes1:Landroid/widget/TextView;

    .line 300
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/msdk/NameAuthActivity;->id_identity_type:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/NameAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/msdk/NameAuthActivity;->mIdentityType:Landroid/widget/TextView;

    .line 301
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/NameAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/EditText;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/msdk/NameAuthActivity;->mIdentityNum:Landroid/widget/EditText;

    .line 302
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/msdk/NameAuthActivity;->id_province:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/NameAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/msdk/NameAuthActivity;->mProvince:Landroid/widget/TextView;

    .line 303
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/tencent/msdk/NameAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/EditText;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/msdk/NameAuthActivity;->mCity:Landroid/widget/EditText;

    .line 305
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/NameAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/ImageView;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/msdk/NameAuthActivity;->mNameMust:Landroid/widget/ImageView;

    .line 306
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/NameAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/ImageView;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/msdk/NameAuthActivity;->mIdentityTypeMust:Landroid/widget/ImageView;

    .line 307
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/NameAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/ImageView;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/msdk/NameAuthActivity;->mIdentityNumMust:Landroid/widget/ImageView;

    .line 308
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/NameAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/ImageView;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/msdk/NameAuthActivity;->mProvinceMust:Landroid/widget/ImageView;

    .line 310
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/msdk/NameAuthActivity;->id_agreement:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/NameAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 311
    .local v4, "agreement":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/msdk/NameAuthActivity;->id_back:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/NameAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 312
    .local v8, "back":Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/msdk/NameAuthActivity;->id_commit:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/NameAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 315
    .local v10, "commit":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/NameAuthActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/NameAuthActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/NameAuthActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v10, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/NameAuthActivity;->mIdentityType:Landroid/widget/TextView;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/NameAuthActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/NameAuthActivity;->mProvince:Landroid/widget/TextView;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/NameAuthActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/NameAuthActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/NameAuthActivity;->mConfirm:Landroid/widget/Button;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/NameAuthActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/NameAuthActivity;->mTipsQQ:Landroid/view/View;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/NameAuthActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/NameAuthActivity;->mName:Landroid/widget/EditText;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/NameAuthActivity;->mNameTextWatcher:Landroid/text/TextWatcher;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/NameAuthActivity;->mIdentityNum:Landroid/widget/EditText;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/NameAuthActivity;->mIdentityNumTextWatcher:Landroid/text/TextWatcher;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 330
    const-string v31, "name_auth_identity_type"

    const-string v32, "array"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 331
    .local v5, "array_identity_type":I
    const-string v31, "name_auth_province"

    const-string v32, "array"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 332
    .local v6, "array_province":I
    const-string v31, "name_auth_provinceid"

    const-string v32, "array"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 334
    .local v7, "array_provinceid":I
    const-string v31, "msdk_name_auth_success"

    const-string/jumbo v32, "string"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/msdk/NameAuthActivity;->string_success:I

    .line 335
    const-string v31, "msdk_name_auth_fail"

    const-string/jumbo v32, "string"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/msdk/NameAuthActivity;->string_fail:I

    .line 336
    const-string v31, "msdk_name_auth_success_des"

    const-string/jumbo v32, "string"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/msdk/NameAuthActivity;->string_success_des:I

    .line 337
    const-string v31, "msdk_name_auth_tryagain"

    const-string/jumbo v32, "string"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/msdk/NameAuthActivity;->string_tryagain:I

    .line 338
    const-string v31, "msdk_name_auth_login"

    const-string/jumbo v32, "string"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/msdk/NameAuthActivity;->string_login:I

    .line 339
    const-string v31, "msdk_name_auth_plat_qq"

    const-string/jumbo v32, "string"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/msdk/NameAuthActivity;->string_qq:I

    .line 340
    const-string v31, "msdk_name_auth_plat_wx"

    const-string/jumbo v32, "string"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/msdk/NameAuthActivity;->string_wx:I

    .line 341
    const-string v31, "msdk_name_auth_progress_msg"

    const-string/jumbo v32, "string"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v28

    .line 344
    .local v28, "string_progress_msg":I
    const-string v31, "msdk_name_auth_qq_url"

    const-string/jumbo v32, "string"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v29

    .line 345
    .local v29, "string_qq_url":I
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/msdk/NameAuthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/msdk/NameAuthActivity;->mQQUrl:Ljava/lang/String;

    .line 346
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/msdk/NameAuthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/msdk/NameAuthActivity;->mProgressMsg:Ljava/lang/String;

    .line 347
    const-string v31, "msdk_name_auth_sel_agreement"

    const-string/jumbo v32, "string"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/msdk/NameAuthActivity;->string_sel_agreement:I

    .line 348
    const-string v31, "msdk_name_auth_check_name"

    const-string/jumbo v32, "string"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/msdk/NameAuthActivity;->string_check_name:I

    .line 349
    const-string v31, "msdk_name_auth_check_name"

    const-string/jumbo v32, "string"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/msdk/NameAuthActivity;->string_check_identity:I

    .line 350
    const-string v31, "msdk_name_auth_check_identity_type"

    const-string/jumbo v32, "string"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/msdk/NameAuthActivity;->string_check_identity_type:I

    .line 351
    const-string v31, "msdk_name_auth_check_identity"

    const-string/jumbo v32, "string"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/msdk/NameAuthActivity;->string_check_identity:I

    .line 353
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/msdk/NameAuthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/msdk/NameAuthActivity;->mIdentityTypeItems:[Ljava/lang/String;

    .line 354
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/msdk/NameAuthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/msdk/NameAuthActivity;->mProvinceItems:[Ljava/lang/String;

    .line 355
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/msdk/NameAuthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/msdk/NameAuthActivity;->mProvinceIDs:[I

    .line 357
    const-string v26, ""

    .line 358
    .local v26, "platName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/msdk/NameAuthActivity;->platform:I

    move/from16 v31, v0

    sget-object v32, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_QQ:Lcom/tencent/msdk/consts/EPlatform;

    invoke-virtual/range {v32 .. v32}, Lcom/tencent/msdk/consts/EPlatform;->val()I

    move-result v32

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/msdk/NameAuthActivity;->platform:I

    move/from16 v31, v0

    sget-object v32, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_QQHall:Lcom/tencent/msdk/consts/EPlatform;

    invoke-virtual/range {v32 .. v32}, Lcom/tencent/msdk/consts/EPlatform;->val()I

    move-result v32

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_3

    .line 359
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/msdk/NameAuthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/msdk/NameAuthActivity;->string_qq:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 363
    :cond_1
    :goto_0
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "<font color=\'#3997ee\'>"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/NameAuthActivity;->mNickName:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "</font>"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 364
    .local v24, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/NameAuthActivity;->mDes1:Landroid/widget/TextView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v31

    if-eqz v31, :cond_2

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/NameAuthActivity;->mDes1:Landroid/widget/TextView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v30

    .line 367
    .local v30, "textStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/NameAuthActivity;->mDes1:Landroid/widget/TextView;

    move-object/from16 v31, v0

    const-string v32, "\n"

    const-string v33, "<br>"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aput-object v24, v33, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    .end local v30    # "textStr":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/NameAuthActivity;->mIdentityType:Landroid/widget/TextView;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/NameAuthActivity;->mIdentityTypeItems:[Ljava/lang/String;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aget-object v32, v32, v33

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/NameAuthActivity;->mIdentityTypeMust:Landroid/widget/ImageView;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/msdk/NameAuthActivity;->drawable_correct:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 373
    const-string v31, "real name auth activity init Res end"

    invoke-static/range {v31 .. v31}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 374
    return-void

    .line 360
    .end local v24    # "name":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/msdk/NameAuthActivity;->platform:I

    move/from16 v31, v0

    sget-object v32, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_Weixin:Lcom/tencent/msdk/consts/EPlatform;

    invoke-virtual/range {v32 .. v32}, Lcom/tencent/msdk/consts/EPlatform;->val()I

    move-result v32

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1

    .line 361
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/msdk/NameAuthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/msdk/NameAuthActivity;->string_wx:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 205
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 209
    invoke-super {p0, p1}, Lcom/tencent/msdk/framework/msdkview/MSDKViewPanel;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 210
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v4

    if-nez v4, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-object v4, p0, Lcom/tencent/msdk/NameAuthActivity;->mWebDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/tencent/msdk/NameAuthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 215
    .local v0, "display":Landroid/util/DisplayMetrics;
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/tencent/msdk/NameAuthActivity;->mDialogViewLayout:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 216
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 217
    .local v1, "mHeightPixels":I
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 218
    .local v2, "mWidthPixels":I
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    mul-int/lit8 v4, v2, 0x3

    div-int/lit8 v4, v4, 0x4

    mul-int/lit8 v5, v1, 0x3

    div-int/lit8 v5, v5, 0x4

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 219
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/tencent/msdk/NameAuthActivity;->mDialogViewLayout:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 175
    const-string v1, "onCreate"

    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 176
    invoke-super {p0, p1}, Lcom/tencent/msdk/framework/msdkview/MSDKViewPanel;->onCreate(Landroid/os/Bundle;)V

    .line 177
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/msdk/NameAuthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "msdk_name_auth_main"

    const-string v3, "layout"

    invoke-virtual {p0}, Lcom/tencent/msdk/NameAuthActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/msdk/tools/ResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 182
    .local v0, "layout_name_auth":I
    invoke-virtual {p0, v0}, Lcom/tencent/msdk/NameAuthActivity;->setContentView(I)V

    .line 183
    invoke-direct {p0}, Lcom/tencent/msdk/NameAuthActivity;->handlerIntent()V

    .line 184
    invoke-virtual {p0}, Lcom/tencent/msdk/NameAuthActivity;->initRes()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 189
    invoke-super {p0}, Lcom/tencent/msdk/framework/msdkview/MSDKViewPanel;->onDestroy()V

    .line 190
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity;->mResultDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity;->mResultDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity;->mResultDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 196
    :cond_2
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity;->mWebDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity;->mWebDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity;->mWebDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    goto :goto_0
.end method

.method public recvEvent(Ljava/lang/String;)V
    .locals 7
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 121
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NameAuthActivity receive "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 123
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 124
    .local v3, "json":Lorg/json/JSONObject;
    const-string v5, "req_type"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, "reqType":Ljava/lang/String;
    const-string v5, "open_result_dialog"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 126
    const-string v5, "auth_msg"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "errorMsg":Ljava/lang/String;
    const-string v5, "auth_result"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 128
    .local v0, "authResult":Z
    invoke-direct {p0, v0, v2}, Lcom/tencent/msdk/NameAuthActivity;->openResultDialog(ZLjava/lang/String;)V

    .line 136
    .end local v0    # "authResult":Z
    .end local v2    # "errorMsg":Ljava/lang/String;
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "reqType":Ljava/lang/String;
    :goto_0
    return-void

    .line 130
    .restart local v3    # "json":Lorg/json/JSONObject;
    .restart local v4    # "reqType":Ljava/lang/String;
    :cond_0
    const-string v5, "Receive unknown request type!"

    invoke-static {v5}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "reqType":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 133
    .local v1, "e":Lorg/json/JSONException;
    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
