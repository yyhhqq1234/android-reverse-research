.class public Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;
.super Landroid/widget/LinearLayout;
.source "InputItemLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->init()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v8, -0x1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->init()V

    .line 31
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/netease/epay/sdk/base/R$styleable;->epaysdk_InputItem:[I

    invoke-virtual {v1, p2, v2, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 32
    sget v2, Lcom/netease/epay/sdk/base/R$styleable;->epaysdk_InputItem_epaysdk_key:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 33
    sget v3, Lcom/netease/epay/sdk/base/R$styleable;->epaysdk_InputItem_epaysdk_hint:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 34
    sget v4, Lcom/netease/epay/sdk/base/R$styleable;->epaysdk_InputItem_epaysdk_keyColor:I

    invoke-virtual {v1, v4, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 35
    sget v5, Lcom/netease/epay/sdk/base/R$styleable;->epaysdk_InputItem_epaysdk_hintColor:I

    invoke-virtual {v1, v5, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 36
    sget v6, Lcom/netease/epay/sdk/base/R$styleable;->epaysdk_InputItem_epaysdk_inputType:I

    invoke-virtual {v1, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 37
    sget v7, Lcom/netease/epay/sdk/base/R$styleable;->epaysdk_InputItem_epaysdk_enabled:I

    invoke-virtual {v1, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 38
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 39
    new-instance v1, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;

    invoke-direct {v1, v6}, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;-><init>(I)V

    .line 40
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 41
    iput-object v2, v1, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->leftKey:Ljava/lang/String;

    .line 43
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 44
    iput-object v3, v1, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->hint:Ljava/lang/String;

    .line 46
    :cond_1
    if-eqz v4, :cond_2

    .line 47
    iput v4, v1, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->inputColor:I

    .line 49
    :cond_2
    if-eqz v5, :cond_3

    .line 50
    iput v5, v1, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->hintTextColor:I

    .line 52
    :cond_3
    if-eq v7, v8, :cond_5

    .line 53
    if-nez v7, :cond_4

    const/4 v0, 0x1

    :cond_4
    iput-boolean v0, v1, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->canEdit:Z

    .line 55
    :cond_5
    invoke-virtual {p0, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->init(Lcom/netease/epay/sdk/base/view/bankinput/InputItem;)V

    .line 56
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/netease/epay/sdk/base/R$layout;->epaysdk_view_card_item:I

    invoke-static {v0, v1, p0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 60
    return-void
.end method


# virtual methods
.method public bindButton(Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;)V
    .locals 1
    .param p1, "util"    # Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->addEditText(Landroid/widget/TextView;)V

    .line 107
    return-void
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->getTextWithoutSpace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 102
    sget v0, Lcom/netease/epay/sdk/base/R$id;->etContent:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    return-object v0
.end method

.method public init(Lcom/netease/epay/sdk/base/view/bankinput/InputItem;)V
    .locals 5
    .param p1, "item"    # Lcom/netease/epay/sdk/base/view/bankinput/InputItem;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 63
    sget v0, Lcom/netease/epay/sdk/base/R$id;->tvKey:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->leftKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    sget v0, Lcom/netease/epay/sdk/base/R$id;->etContent:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    .line 65
    iget-object v1, p1, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->hint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 66
    iget v1, p1, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->hintTextColor:I

    if-eqz v1, :cond_0

    .line 67
    iget v1, p1, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->hintTextColor:I

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->setHintTextColor(I)V

    .line 69
    :cond_0
    iget-boolean v1, p1, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->canEdit:Z

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->setFocusable(Z)V

    .line 70
    iget v1, p1, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->inputColor:I

    if-eqz v1, :cond_1

    .line 71
    iget v1, p1, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->inputColor:I

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->setTextColor(I)V

    .line 73
    :cond_1
    iget-object v1, p1, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->listener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_2

    .line 74
    invoke-virtual {v0, v2}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->setClickable(Z)V

    .line 75
    iget-object v1, p1, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    :cond_2
    iget v1, p1, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->inputMaxLength:I

    if-eqz v1, :cond_3

    .line 78
    new-array v1, v2, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    iget v3, p1, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->inputMaxLength:I

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 80
    :cond_3
    iget v1, p1, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->textInputType:I

    if-eqz v1, :cond_4

    .line 81
    iget v1, p1, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->textInputType:I

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->setInputType(I)V

    .line 83
    :cond_4
    iget v1, p1, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->contentType:I

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->setContentType(I)V

    .line 84
    iget-boolean v1, p1, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->hasTip:Z

    if-eqz v1, :cond_7

    .line 85
    sget v1, Lcom/netease/epay/sdk/base/R$id;->ivTips:I

    invoke-virtual {p0, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/netease/epay/sdk/base/view/TipsView;

    iget v2, p1, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->tipType:I

    invoke-virtual {v1, v2}, Lcom/netease/epay/sdk/base/view/TipsView;->setType(I)V

    .line 92
    :cond_5
    :goto_0
    iget-object v1, p1, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->cacheContent:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 93
    iget-object v1, p1, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->cacheContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :cond_6
    return-void

    .line 87
    :cond_7
    sget v1, Lcom/netease/epay/sdk/base/R$id;->ivTips:I

    invoke-virtual {p0, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 88
    iget-boolean v1, p1, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->canEdit:Z

    if-eqz v1, :cond_5

    .line 89
    sget v1, Lcom/netease/epay/sdk/base/R$drawable;->epaysdk_icon_cleanup:I

    invoke-virtual {v0, v4, v4, v1, v4}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 111
    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 115
    return-void
.end method
