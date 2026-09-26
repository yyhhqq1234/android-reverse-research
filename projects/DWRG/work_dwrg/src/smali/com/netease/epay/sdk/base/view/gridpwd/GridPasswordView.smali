.class public Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;
.super Landroid/widget/LinearLayout;
.source "GridPasswordView.java"

# interfaces
.implements Lcom/netease/epay/sdk/base/view/gridpwd/PasswordView;


# static fields
.field private static final DEFAULT_GRIDCOLOR:I = -0x1

.field private static final DEFAULT_LINECOLOR:I = -0x55777778

.field private static final DEFAULT_PASSWORDLENGTH:I = 0x6

.field private static final DEFAULT_TEXTSIZE:I = 0xe

.field private static final DEFAULT_TRANSFORMATION:Ljava/lang/String; = "\u25cf"


# instance fields
.field private gridColor:I

.field private key:Ljava/lang/String;

.field private lineColor:I

.field private lineDrawable:Landroid/graphics/drawable/Drawable;

.field private lineWidth:I

.field private listener:Lcom/netease/epay/sdk/base/view/gridpwd/OnPasswordChangedListener;

.field private numKeyBoard:Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private outerLineDrawable:Landroid/graphics/drawable/Drawable;

.field private passwordArr:[[B

.field private passwordLength:I

.field private passwordTransformation:Ljava/lang/String;

.field private textSize:I

.field private transformationMethod:Landroid/text/method/PasswordTransformationMethod;

.field private viewArr:[Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/16 v0, 0xe

    iput v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->textSize:I

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->key:Ljava/lang/String;

    .line 140
    new-instance v0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView$1;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView$1;-><init>(Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 70
    new-instance v0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;-><init>(Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->numKeyBoard:Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->initViews(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;)Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;
    .locals 1
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->numKeyBoard:Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;

    return-object v0
.end method

.method private generateBackgroundDrawable()Landroid/graphics/drawable/GradientDrawable;
    .locals 3

    .prologue
    .line 148
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 149
    iget v1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->gridColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 150
    iget v1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->lineWidth:I

    iget v2, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->lineColor:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 151
    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 152
    return-object v0
.end method

.method private getPassWordVisibility()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 209
    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->viewArr:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getSecureKey()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 267
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->key:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 268
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->listener:Lcom/netease/epay/sdk/base/view/gridpwd/OnPasswordChangedListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->listener:Lcom/netease/epay/sdk/base/view/gridpwd/OnPasswordChangedListener;

    invoke-interface {v0}, Lcom/netease/epay/sdk/base/view/gridpwd/OnPasswordChangedListener;->randomKey16Byte()Ljava/lang/String;

    move-result-object v0

    .line 269
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-eq v1, v2, :cond_1

    .line 270
    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 271
    new-array v1, v2, [B

    .line 272
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 273
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->key:Ljava/lang/String;

    .line 274
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->key:Ljava/lang/String;

    .line 279
    :cond_1
    :goto_1
    return-object v0

    .line 268
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 279
    :cond_3
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->key:Ljava/lang/String;

    goto :goto_1
.end method

.method private inflaterViews(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 110
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    move v1, v2

    .line 113
    :goto_0
    iget v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->passwordLength:I

    if-ge v1, v0, :cond_1

    .line 114
    if-lez v1, :cond_0

    .line 115
    sget v0, Lcom/netease/epay/sdk/base/R$layout;->epaysdk_view_gpv_divider:I

    invoke-virtual {v3, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 116
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->lineWidth:I

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 117
    iget-object v5, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->lineDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    invoke-virtual {p0, v0, v4}, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    :cond_0
    sget v0, Lcom/netease/epay/sdk/base/R$layout;->epaysdk_view_gpv_textview:I

    invoke-virtual {v3, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 122
    invoke-direct {p0, v0}, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->setCustomAttr(Landroid/widget/TextView;)V

    .line 123
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v2, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 124
    invoke-virtual {p0, v0, v4}, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    iget-object v4, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->viewArr:[Landroid/widget/TextView;

    aput-object v0, v4, v1

    .line 126
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 127
    goto :goto_0

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    return-void
.end method

.method private initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 76
    sget-object v0, Lcom/netease/epay/sdk/base/R$styleable;->epaysdk_gridPasswordView:[I

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 77
    sget v1, Lcom/netease/epay/sdk/base/R$styleable;->epaysdk_gridPasswordView_epaysdk_textSize:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 78
    if-eq v1, v4, :cond_0

    .line 79
    int-to-float v1, v1

    invoke-static {p1, v1}, Lcom/netease/epay/sdk/base/util/UiUtil;->px2dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->textSize:I

    .line 82
    :cond_0
    sget v1, Lcom/netease/epay/sdk/base/R$styleable;->epaysdk_gridPasswordView_epaysdk_lineWidth:I

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/netease/epay/sdk/base/util/UiUtil;->dp2px(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->lineWidth:I

    .line 83
    sget v1, Lcom/netease/epay/sdk/base/R$styleable;->epaysdk_gridPasswordView_epaysdk_lineColor:I

    const v2, -0x55777778

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->lineColor:I

    .line 84
    sget v1, Lcom/netease/epay/sdk/base/R$styleable;->epaysdk_gridPasswordView_epaysdk_gridColor:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->gridColor:I

    .line 85
    sget v1, Lcom/netease/epay/sdk/base/R$styleable;->epaysdk_gridPasswordView_epaysdk_lineColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->lineDrawable:Landroid/graphics/drawable/Drawable;

    .line 86
    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->lineDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 87
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget v2, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->lineColor:I

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->lineDrawable:Landroid/graphics/drawable/Drawable;

    .line 88
    :cond_1
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->generateBackgroundDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->outerLineDrawable:Landroid/graphics/drawable/Drawable;

    .line 90
    sget v1, Lcom/netease/epay/sdk/base/R$styleable;->epaysdk_gridPasswordView_epaysdk_passwordLength:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->passwordLength:I

    .line 91
    sget v1, Lcom/netease/epay/sdk/base/R$styleable;->epaysdk_gridPasswordView_epaysdk_passwordTransformation:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->passwordTransformation:Ljava/lang/String;

    .line 92
    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->passwordTransformation:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 93
    const-string v1, "\u25cf"

    iput-object v1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->passwordTransformation:Ljava/lang/String;

    .line 95
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    iget v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->passwordLength:I

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->passwordArr:[[B

    .line 97
    iget v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->passwordLength:I

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->viewArr:[Landroid/widget/TextView;

    .line 98
    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->outerLineDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->setOrientation(I)V

    .line 103
    new-instance v0, Lcom/netease/epay/sdk/base/view/gridpwd/CustomPasswordTransformationMethod;

    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->passwordTransformation:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/netease/epay/sdk/base/view/gridpwd/CustomPasswordTransformationMethod;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->transformationMethod:Landroid/text/method/PasswordTransformationMethod;

    .line 104
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->inflaterViews(Landroid/content/Context;)V

    .line 106
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->numKeyBoard:Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->viewInit()V

    .line 107
    return-void
.end method

.method private notifyTextChanged()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->listener:Lcom/netease/epay/sdk/base/view/gridpwd/OnPasswordChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->passwordArr:[[B

    iget v1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->passwordLength:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->numKeyBoard:Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->hideKeyboard()V

    .line 158
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->listener:Lcom/netease/epay/sdk/base/view/gridpwd/OnPasswordChangedListener;

    invoke-direct {p0}, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->getSecureKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->getPassWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/epay/sdk/base/view/gridpwd/OnPasswordChangedListener;->onMaxLength(Ljava/lang/String;)V

    .line 160
    :cond_0
    return-void
.end method

.method private setCustomAttr(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 133
    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    const/4 v0, 0x1

    iget v1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->textSize:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 135
    const/16 v0, 0x12

    .line 136
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 137
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->transformationMethod:Landroid/text/method/PasswordTransformationMethod;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 138
    return-void
.end method


# virtual methods
.method protected backSpace()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 233
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->passwordArr:[[B

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iget v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->passwordLength:I

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_0

    .line 236
    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->passwordArr:[[B

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 237
    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->passwordArr:[[B

    aput-object v2, v1, v0

    .line 238
    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->viewArr:[Landroid/widget/TextView;

    aget-object v0, v1, v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 235
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public clearPassword()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 180
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->passwordArr:[[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->passwordArr:[[B

    aput-object v2, v1, v0

    .line 182
    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->viewArr:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    :cond_0
    return-void
.end method

.method public getPassWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "randomKey"    # Ljava/lang/String;

    .prologue
    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->passwordArr:[[B

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 169
    iget-object v2, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->passwordArr:[[B

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->passwordArr:[[B

    aget-object v2, v2, v0

    invoke-static {v2, p1}, Lcom/netease/epay/sdk/base/util/AES;->decode([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 246
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 247
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->numKeyBoard:Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->onAttachedToWindow()V

    .line 248
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 252
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 253
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->numKeyBoard:Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->onDetachedFromWindow()V

    .line 254
    return-void
.end method

.method protected onKey(Ljava/lang/String;)V
    .locals 3
    .param p1, "num"    # Ljava/lang/String;

    .prologue
    .line 222
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->passwordLength:I

    if-ge v0, v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->passwordArr:[[B

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 224
    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->passwordArr:[[B

    invoke-direct {p0}, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->getSecureKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/netease/epay/sdk/base/util/AES;->encode(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v1, v0

    .line 225
    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->viewArr:[Landroid/widget/TextView;

    aget-object v0, v1, v0

    const-string v1, "\u25cf"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    :cond_0
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->notifyTextChanged()V

    .line 230
    return-void

    .line 222
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public screenOrientationChange()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->numKeyBoard:Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->screenOrientationChange()V

    .line 285
    return-void
.end method

.method public setOnPasswordChangedListener(Lcom/netease/epay/sdk/base/view/gridpwd/OnPasswordChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/netease/epay/sdk/base/view/gridpwd/OnPasswordChangedListener;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->listener:Lcom/netease/epay/sdk/base/view/gridpwd/OnPasswordChangedListener;

    .line 218
    return-void
.end method

.method public setPasswordVisibility(Z)V
    .locals 5
    .param p1, "visible"    # Z

    .prologue
    .line 191
    iget-object v2, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->viewArr:[Landroid/widget/TextView;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 192
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 191
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->transformationMethod:Landroid/text/method/PasswordTransformationMethod;

    goto :goto_1

    .line 194
    :cond_1
    return-void
.end method

.method public showKeyBoard()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->numKeyBoard:Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->showKeyboard()V

    .line 258
    return-void
.end method

.method public togglePasswordVisibility()V
    .locals 1

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->getPassWordVisibility()Z

    move-result v0

    .line 202
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->setPasswordVisibility(Z)V

    .line 203
    return-void

    .line 202
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
