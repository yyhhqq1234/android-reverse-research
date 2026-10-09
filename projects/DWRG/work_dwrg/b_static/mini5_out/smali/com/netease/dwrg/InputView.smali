.class public Lcom/netease/dwrg/InputView;
.super Ljava/lang/Object;
.source "InputView.java"


# static fields
.field static final TYPE_ALPHABET:I = 0x2

.field static final TYPE_ALPHANUMERIC:I = 0x3

.field static final TYPE_EMAILADDRESS:I = 0x4

.field static final TYPE_NONE:I = 0x5

.field static final TYPE_NORMAL:I = 0x0

.field static final TYPE_NUMBER:I = 0x1


# instance fields
.field private m_activity:Landroid/app/Activity;

.field private m_borderless:Z

.field private m_cancelBtn:Landroid/widget/Button;

.field private m_cancelBtnListener:Landroid/view/View$OnClickListener;

.field private m_defaultFontColor:I

.field private m_defaultFontSize:F

.field private m_dialog:Landroid/app/Dialog;

.field private m_editText:Landroid/widget/EditText;

.field private m_filter_pattern:Ljava/lang/String;

.field private m_fontColor:I

.field private m_fontSize:F

.field private m_hint:Ljava/lang/String;

.field private m_input_finished:Z

.field private m_isVertical:Z

.field private m_location:Landroid/graphics/Rect;

.field private m_okBtn:Landroid/widget/Button;

.field private m_okBtnListener:Landroid/view/View$OnClickListener;

.field private m_oldEditTextBg:Landroid/graphics/drawable/Drawable;

.field private m_paddingBottom:I

.field private m_paddingLeft:I

.field private m_paddingRight:I

.field private m_paddingTop:I

.field private m_text:Ljava/lang/String;

.field private m_touchPassthrough:Z

.field private m_type:I

.field private m_view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 5

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/netease/dwrg/InputView;->m_view:Landroid/view/View;

    .line 52
    iput-object v0, p0, Lcom/netease/dwrg/InputView;->m_editText:Landroid/widget/EditText;

    .line 53
    iput-object v0, p0, Lcom/netease/dwrg/InputView;->m_okBtn:Landroid/widget/Button;

    .line 54
    iput-object v0, p0, Lcom/netease/dwrg/InputView;->m_cancelBtn:Landroid/widget/Button;

    .line 55
    iput-object v0, p0, Lcom/netease/dwrg/InputView;->m_okBtnListener:Landroid/view/View$OnClickListener;

    .line 56
    iput-object v0, p0, Lcom/netease/dwrg/InputView;->m_cancelBtnListener:Landroid/view/View$OnClickListener;

    .line 57
    iput-object v0, p0, Lcom/netease/dwrg/InputView;->m_dialog:Landroid/app/Dialog;

    .line 58
    iput-object v0, p0, Lcom/netease/dwrg/InputView;->m_text:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/netease/dwrg/InputView;->m_hint:Ljava/lang/String;

    const/4 v1, 0x1

    .line 60
    iput v1, p0, Lcom/netease/dwrg/InputView;->m_type:I

    .line 61
    iput-boolean v1, p0, Lcom/netease/dwrg/InputView;->m_input_finished:Z

    .line 62
    iput-object v0, p0, Lcom/netease/dwrg/InputView;->m_location:Landroid/graphics/Rect;

    const/4 v2, 0x0

    .line 63
    iput-boolean v2, p0, Lcom/netease/dwrg/InputView;->m_borderless:Z

    .line 64
    iput-boolean v2, p0, Lcom/netease/dwrg/InputView;->m_isVertical:Z

    .line 65
    iput-object v0, p0, Lcom/netease/dwrg/InputView;->m_oldEditTextBg:Landroid/graphics/drawable/Drawable;

    .line 66
    iput v2, p0, Lcom/netease/dwrg/InputView;->m_fontColor:I

    const/4 v3, 0x0

    .line 67
    iput v3, p0, Lcom/netease/dwrg/InputView;->m_fontSize:F

    .line 68
    iput v2, p0, Lcom/netease/dwrg/InputView;->m_paddingLeft:I

    .line 69
    iput v2, p0, Lcom/netease/dwrg/InputView;->m_paddingRight:I

    .line 70
    iput v2, p0, Lcom/netease/dwrg/InputView;->m_paddingTop:I

    .line 71
    iput v2, p0, Lcom/netease/dwrg/InputView;->m_paddingBottom:I

    .line 72
    iput v2, p0, Lcom/netease/dwrg/InputView;->m_defaultFontColor:I

    .line 73
    iput v3, p0, Lcom/netease/dwrg/InputView;->m_defaultFontSize:F

    .line 74
    iput-boolean v2, p0, Lcom/netease/dwrg/InputView;->m_touchPassthrough:Z

    .line 100
    const-string v3, ""

    iput-object v3, p0, Lcom/netease/dwrg/InputView;->m_filter_pattern:Ljava/lang/String;

    .line 126
    iput-object p1, p0, Lcom/netease/dwrg/InputView;->m_activity:Landroid/app/Activity;

    .line 127
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 128
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 129
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 130
    iget p1, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le p1, v4, :cond_0

    .line 131
    sget p1, Lcom/netease/dwrg/R$layout;->inputview:I

    invoke-virtual {v3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/dwrg/InputView;->m_view:Landroid/view/View;

    .line 132
    iput-boolean v2, p0, Lcom/netease/dwrg/InputView;->m_isVertical:Z

    goto :goto_0

    .line 134
    :cond_0
    sget p1, Lcom/netease/dwrg/R$layout;->inputview2:I

    invoke-virtual {v3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/dwrg/InputView;->m_view:Landroid/view/View;

    .line 135
    iput-boolean v1, p0, Lcom/netease/dwrg/InputView;->m_isVertical:Z

    .line 137
    :goto_0
    iget-object p1, p0, Lcom/netease/dwrg/InputView;->m_view:Landroid/view/View;

    new-instance v0, Lcom/netease/dwrg/InputView$1;

    invoke-direct {v0, p0}, Lcom/netease/dwrg/InputView$1;-><init>(Lcom/netease/dwrg/InputView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 156
    iget-object p1, p0, Lcom/netease/dwrg/InputView;->m_view:Landroid/view/View;

    sget v0, Lcom/netease/dwrg/R$id;->edit_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/netease/dwrg/InputView;->m_editText:Landroid/widget/EditText;

    .line 157
    invoke-virtual {p1}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result p1

    iput p1, p0, Lcom/netease/dwrg/InputView;->m_paddingLeft:I

    .line 158
    iget-object p1, p0, Lcom/netease/dwrg/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getPaddingRight()I

    move-result p1

    iput p1, p0, Lcom/netease/dwrg/InputView;->m_paddingRight:I

    .line 159
    iget-object p1, p0, Lcom/netease/dwrg/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getPaddingTop()I

    move-result p1

    iput p1, p0, Lcom/netease/dwrg/InputView;->m_paddingTop:I

    .line 160
    iget-object p1, p0, Lcom/netease/dwrg/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result p1

    iput p1, p0, Lcom/netease/dwrg/InputView;->m_paddingBottom:I

    .line 161
    iget-object p1, p0, Lcom/netease/dwrg/InputView;->m_editText:Landroid/widget/EditText;

    new-instance v0, Lcom/netease/dwrg/InputView$2;

    invoke-direct {v0, p0}, Lcom/netease/dwrg/InputView$2;-><init>(Lcom/netease/dwrg/InputView;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 171
    iget-object p1, p0, Lcom/netease/dwrg/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/dwrg/InputView;->m_oldEditTextBg:Landroid/graphics/drawable/Drawable;

    .line 172
    iget-object p1, p0, Lcom/netease/dwrg/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getCurrentTextColor()I

    move-result p1

    iput p1, p0, Lcom/netease/dwrg/InputView;->m_fontColor:I

    .line 173
    iput p1, p0, Lcom/netease/dwrg/InputView;->m_defaultFontColor:I

    .line 174
    iget-object p1, p0, Lcom/netease/dwrg/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getTextSize()F

    move-result p1

    iput p1, p0, Lcom/netease/dwrg/InputView;->m_fontSize:F

    .line 175
    iput p1, p0, Lcom/netease/dwrg/InputView;->m_defaultFontSize:F

    .line 177
    iget-object p1, p0, Lcom/netease/dwrg/InputView;->m_view:Landroid/view/View;

    sget v0, Lcom/netease/dwrg/R$id;->ok_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/netease/dwrg/InputView;->m_okBtn:Landroid/widget/Button;

    .line 178
    new-instance p1, Lcom/netease/dwrg/InputView$3;

    invoke-direct {p1, p0}, Lcom/netease/dwrg/InputView$3;-><init>(Lcom/netease/dwrg/InputView;)V

    iput-object p1, p0, Lcom/netease/dwrg/InputView;->m_okBtnListener:Landroid/view/View$OnClickListener;

    .line 183
    iget-object v0, p0, Lcom/netease/dwrg/InputView;->m_okBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object p1, p0, Lcom/netease/dwrg/InputView;->m_view:Landroid/view/View;

    sget v0, Lcom/netease/dwrg/R$id;->cancel_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/netease/dwrg/InputView;->m_cancelBtn:Landroid/widget/Button;

    .line 185
    new-instance p1, Lcom/netease/dwrg/InputView$4;

    invoke-direct {p1, p0}, Lcom/netease/dwrg/InputView$4;-><init>(Lcom/netease/dwrg/InputView;)V

    iput-object p1, p0, Lcom/netease/dwrg/InputView;->m_cancelBtnListener:Landroid/view/View$OnClickListener;

    .line 190
    iget-object v0, p0, Lcom/netease/dwrg/InputView;->m_cancelBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    new-instance p1, Lcom/netease/dwrg/InputView$5;

    iget-object v0, p0, Lcom/netease/dwrg/InputView;->m_activity:Landroid/app/Activity;

    invoke-direct {p1, p0, v0}, Lcom/netease/dwrg/InputView$5;-><init>(Lcom/netease/dwrg/InputView;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/netease/dwrg/InputView;->m_dialog:Landroid/app/Dialog;

    .line 232
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 233
    iget-object p1, p0, Lcom/netease/dwrg/InputView;->m_dialog:Landroid/app/Dialog;

    new-instance v0, Lcom/netease/dwrg/InputView$6;

    invoke-direct {v0, p0}, Lcom/netease/dwrg/InputView$6;-><init>(Lcom/netease/dwrg/InputView;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 250
    iget-object p1, p0, Lcom/netease/dwrg/InputView;->m_dialog:Landroid/app/Dialog;

    new-instance v0, Lcom/netease/dwrg/InputView$7;

    invoke-direct {v0, p0}, Lcom/netease/dwrg/InputView$7;-><init>(Lcom/netease/dwrg/InputView;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 262
    iget-object p1, p0, Lcom/netease/dwrg/InputView;->m_dialog:Landroid/app/Dialog;

    new-instance v0, Lcom/netease/dwrg/InputView$8;

    invoke-direct {v0, p0}, Lcom/netease/dwrg/InputView$8;-><init>(Lcom/netease/dwrg/InputView;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 275
    iget-object p1, p0, Lcom/netease/dwrg/InputView;->m_dialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/netease/dwrg/InputView;->m_view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 276
    iget-object p1, p0, Lcom/netease/dwrg/InputView;->m_dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 277
    iget-object p1, p0, Lcom/netease/dwrg/InputView;->m_dialog:Landroid/app/Dialog;

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/dwrg/InputView;)Landroid/graphics/Rect;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/netease/dwrg/InputView;->m_location:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/dwrg/InputView;)Landroid/view/View;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/netease/dwrg/InputView;->m_view:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/netease/dwrg/InputView;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/netease/dwrg/InputView;->updateBorderless()V

    return-void
.end method

.method static synthetic access$1100(Lcom/netease/dwrg/InputView;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/netease/dwrg/InputView;->updateFont()V

    return-void
.end method

.method static synthetic access$1200(Lcom/netease/dwrg/InputView;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/netease/dwrg/InputView;->m_input_finished:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/netease/dwrg/InputView;)Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/netease/dwrg/InputView;->m_filter_pattern:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/netease/dwrg/InputView;)Landroid/app/Dialog;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/netease/dwrg/InputView;->m_dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$300(Lcom/netease/dwrg/InputView;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/netease/dwrg/InputView;->m_touchPassthrough:Z

    return p0
.end method

.method static synthetic access$400(Lcom/netease/dwrg/InputView;)Landroid/app/Activity;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/netease/dwrg/InputView;->m_activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$500(Lcom/netease/dwrg/InputView;)Landroid/widget/EditText;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/netease/dwrg/InputView;->m_editText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$600(Lcom/netease/dwrg/InputView;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/netease/dwrg/InputView;->m_type:I

    return p0
.end method

.method static synthetic access$700(Lcom/netease/dwrg/InputView;)Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/netease/dwrg/InputView;->m_hint:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/netease/dwrg/InputView;)Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/netease/dwrg/InputView;->m_text:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/netease/dwrg/InputView;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/netease/dwrg/InputView;->updateLocation()V

    return-void
.end method

.method private updateBorderless()V
    .locals 8

    .line 541
    iget-object v0, p0, Lcom/netease/dwrg/InputView;->m_dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 542
    iget-boolean v1, p0, Lcom/netease/dwrg/InputView;->m_borderless:Z

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 543
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 544
    iget-object v1, p0, Lcom/netease/dwrg/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 546
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/4 v4, -0x1

    .line 549
    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 550
    iget-object v4, p0, Lcom/netease/dwrg/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 551
    iget-object v1, p0, Lcom/netease/dwrg/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 552
    iget-object v1, p0, Lcom/netease/dwrg/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 553
    iget-object v1, p0, Lcom/netease/dwrg/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setIncludeFontPadding(Z)V

    .line 555
    iget-object v1, p0, Lcom/netease/dwrg/InputView;->m_okBtn:Landroid/widget/Button;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 556
    iget-object v1, p0, Lcom/netease/dwrg/InputView;->m_cancelBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 557
    iget-object v1, p0, Lcom/netease/dwrg/InputView;->m_cancelBtn:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 559
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 562
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_cancelBtn:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 565
    :cond_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 566
    iget-object v1, p0, Lcom/netease/dwrg/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 568
    iget-boolean v4, p0, Lcom/netease/dwrg/InputView;->m_isVertical:Z

    if-nez v4, :cond_1

    .line 569
    sget v4, Lcom/netease/dwrg/R$id;->ok_button:I

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_1
    const/4 v4, -0x2

    .line 571
    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 572
    iget-object v4, p0, Lcom/netease/dwrg/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 574
    iget-object v1, p0, Lcom/netease/dwrg/InputView;->m_editText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/netease/dwrg/InputView;->m_oldEditTextBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 577
    iget-object v1, p0, Lcom/netease/dwrg/InputView;->m_editText:Landroid/widget/EditText;

    iget v4, p0, Lcom/netease/dwrg/InputView;->m_paddingLeft:I

    iget v5, p0, Lcom/netease/dwrg/InputView;->m_paddingRight:I

    iget v6, p0, Lcom/netease/dwrg/InputView;->m_paddingTop:I

    iget v7, p0, Lcom/netease/dwrg/InputView;->m_paddingBottom:I

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 578
    iget-object v1, p0, Lcom/netease/dwrg/InputView;->m_editText:Landroid/widget/EditText;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setIncludeFontPadding(Z)V

    .line 580
    iget-object v1, p0, Lcom/netease/dwrg/InputView;->m_okBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 581
    iget-object v1, p0, Lcom/netease/dwrg/InputView;->m_cancelBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 582
    iget-boolean v1, p0, Lcom/netease/dwrg/InputView;->m_isVertical:Z

    if-eqz v1, :cond_2

    .line 583
    iget-object v1, p0, Lcom/netease/dwrg/InputView;->m_cancelBtn:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 584
    sget v3, Lcom/netease/dwrg/R$id;->edit_text:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 585
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_cancelBtn:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 589
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/netease/dwrg/InputView;->m_dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private updateFont()V
    .locals 3

    .line 631
    iget-object v0, p0, Lcom/netease/dwrg/InputView;->m_editText:Landroid/widget/EditText;

    const/4 v1, 0x0

    iget v2, p0, Lcom/netease/dwrg/InputView;->m_fontSize:F

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 632
    iget-object v0, p0, Lcom/netease/dwrg/InputView;->m_editText:Landroid/widget/EditText;

    iget v1, p0, Lcom/netease/dwrg/InputView;->m_fontColor:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    return-void
.end method

.method private updateLocation()V
    .locals 7

    .line 482
    iget-object v0, p0, Lcom/netease/dwrg/InputView;->m_dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 483
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x33

    .line 484
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 485
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 486
    iget-object v3, p0, Lcom/netease/dwrg/InputView;->m_location:Landroid/graphics/Rect;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 487
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 488
    iget-boolean v3, p0, Lcom/netease/dwrg/InputView;->m_isVertical:Z

    if-eqz v3, :cond_0

    int-to-double v2, v2

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double v2, v2, v5

    double-to-int v2, v2

    .line 490
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    .line 494
    :cond_0
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_0
    const/4 v2, -0x1

    .line 496
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x2

    .line 497
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v2, 0x400

    .line 498
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    .line 503
    new-array v2, v2, [I

    .line 504
    iget-object v3, p0, Lcom/netease/dwrg/InputView;->m_view:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 505
    aget v3, v2, v4

    iget-object v5, p0, Lcom/netease/dwrg/InputView;->m_location:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-ne v3, v5, :cond_2

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/netease/dwrg/InputView;->m_location:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-eq v2, v3, :cond_3

    .line 506
    :cond_2
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_location:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 507
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_location:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 509
    :cond_3
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_location:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 510
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_location:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 511
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x700

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 516
    :goto_1
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 517
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getCurrentLanguage()Ljava/lang/String;
    .locals 1

    .line 626
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultFontColor()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/netease/dwrg/InputView;->m_defaultFontColor:I

    return v0
.end method

.method public getDefaultFontSize()F
    .locals 1

    .line 89
    iget v0, p0, Lcom/netease/dwrg/InputView;->m_defaultFontSize:F

    return v0
.end method

.method public getFontColor()I
    .locals 1

    .line 621
    iget v0, p0, Lcom/netease/dwrg/InputView;->m_fontColor:I

    return v0
.end method

.method public getFontSize()F
    .locals 1

    .line 605
    iget v0, p0, Lcom/netease/dwrg/InputView;->m_fontSize:F

    return v0
.end method

.method public getHint()Ljava/lang/String;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/netease/dwrg/InputView;->m_hint:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()[I
    .locals 4

    .line 475
    iget-object v0, p0, Lcom/netease/dwrg/InputView;->m_location:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 477
    :cond_0
    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/netease/dwrg/InputView;->m_location:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_location:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/netease/dwrg/InputView;->m_location:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/netease/dwrg/InputView;->m_text:Ljava/lang/String;

    return-object v0
.end method

.method public getTouchPassthrough()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lcom/netease/dwrg/InputView;->m_touchPassthrough:Z

    return v0
.end method

.method public getType()I
    .locals 1

    .line 294
    iget v0, p0, Lcom/netease/dwrg/InputView;->m_type:I

    return v0
.end method

.method public inputFinish(Z)V
    .locals 2

    .line 451
    iget-boolean v0, p0, Lcom/netease/dwrg/InputView;->m_input_finished:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 452
    iput-boolean v0, p0, Lcom/netease/dwrg/InputView;->m_input_finished:Z

    .line 453
    iget-object v0, p0, Lcom/netease/dwrg/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 454
    iget-object v1, p0, Lcom/netease/dwrg/InputView;->m_dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    .line 455
    invoke-static {v0, p1}, Lcom/netease/neox/NativeInterface;->NativeOnInputFinish(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public isBorderless()Z
    .locals 1

    .line 535
    iget-boolean v0, p0, Lcom/netease/dwrg/InputView;->m_borderless:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/netease/dwrg/InputView;->m_dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public setBorderless(Z)V
    .locals 1

    .line 521
    iget-boolean v0, p0, Lcom/netease/dwrg/InputView;->m_borderless:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 523
    :cond_0
    iput-boolean p1, p0, Lcom/netease/dwrg/InputView;->m_borderless:Z

    .line 524
    invoke-virtual {p0}, Lcom/netease/dwrg/InputView;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 525
    iget-object p1, p0, Lcom/netease/dwrg/InputView;->m_activity:Landroid/app/Activity;

    new-instance v0, Lcom/netease/dwrg/InputView$15;

    invoke-direct {v0, p0}, Lcom/netease/dwrg/InputView$15;-><init>(Lcom/netease/dwrg/InputView;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public setFilterPattern(I)V
    .locals 2

    .line 103
    const-string v0, ""

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    .line 120
    iput-object v0, p0, Lcom/netease/dwrg/InputView;->m_filter_pattern:Ljava/lang/String;

    goto :goto_0

    .line 117
    :cond_0
    const-string p1, "[a-zA-Z0-9._\\-@].*"

    iput-object p1, p0, Lcom/netease/dwrg/InputView;->m_filter_pattern:Ljava/lang/String;

    goto :goto_0

    .line 114
    :cond_1
    const-string p1, "[0-9a-zA-Z].*"

    iput-object p1, p0, Lcom/netease/dwrg/InputView;->m_filter_pattern:Ljava/lang/String;

    goto :goto_0

    .line 111
    :cond_2
    const-string p1, "[a-zA-Z].*"

    iput-object p1, p0, Lcom/netease/dwrg/InputView;->m_filter_pattern:Ljava/lang/String;

    goto :goto_0

    .line 108
    :cond_3
    const-string p1, "[0-9].*"

    iput-object p1, p0, Lcom/netease/dwrg/InputView;->m_filter_pattern:Ljava/lang/String;

    goto :goto_0

    .line 105
    :cond_4
    iput-object v0, p0, Lcom/netease/dwrg/InputView;->m_filter_pattern:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setFontColor(I)V
    .locals 1

    .line 609
    iput p1, p0, Lcom/netease/dwrg/InputView;->m_fontColor:I

    .line 610
    invoke-virtual {p0}, Lcom/netease/dwrg/InputView;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 611
    iget-object p1, p0, Lcom/netease/dwrg/InputView;->m_activity:Landroid/app/Activity;

    new-instance v0, Lcom/netease/dwrg/InputView$17;

    invoke-direct {v0, p0}, Lcom/netease/dwrg/InputView$17;-><init>(Lcom/netease/dwrg/InputView;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setFontSize(F)V
    .locals 1

    .line 593
    iput p1, p0, Lcom/netease/dwrg/InputView;->m_fontSize:F

    .line 594
    invoke-virtual {p0}, Lcom/netease/dwrg/InputView;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 595
    iget-object p1, p0, Lcom/netease/dwrg/InputView;->m_activity:Landroid/app/Activity;

    new-instance v0, Lcom/netease/dwrg/InputView$16;

    invoke-direct {v0, p0}, Lcom/netease/dwrg/InputView$16;-><init>(Lcom/netease/dwrg/InputView;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 1

    .line 298
    iput-object p1, p0, Lcom/netease/dwrg/InputView;->m_hint:Ljava/lang/String;

    .line 299
    invoke-virtual {p0}, Lcom/netease/dwrg/InputView;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 300
    iget-object p1, p0, Lcom/netease/dwrg/InputView;->m_activity:Landroid/app/Activity;

    new-instance v0, Lcom/netease/dwrg/InputView$10;

    invoke-direct {v0, p0}, Lcom/netease/dwrg/InputView$10;-><init>(Lcom/netease/dwrg/InputView;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setLocation(IIII)V
    .locals 1

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 463
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/netease/dwrg/InputView;->m_location:Landroid/graphics/Rect;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 461
    iput-object p1, p0, Lcom/netease/dwrg/InputView;->m_location:Landroid/graphics/Rect;

    .line 464
    :goto_1
    invoke-virtual {p0}, Lcom/netease/dwrg/InputView;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 465
    iget-object p1, p0, Lcom/netease/dwrg/InputView;->m_activity:Landroid/app/Activity;

    new-instance p2, Lcom/netease/dwrg/InputView$14;

    invoke-direct {p2, p0}, Lcom/netease/dwrg/InputView$14;-><init>(Lcom/netease/dwrg/InputView;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 315
    iput-object p1, p0, Lcom/netease/dwrg/InputView;->m_text:Ljava/lang/String;

    .line 316
    invoke-virtual {p0}, Lcom/netease/dwrg/InputView;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 317
    iget-object p1, p0, Lcom/netease/dwrg/InputView;->m_activity:Landroid/app/Activity;

    new-instance v0, Lcom/netease/dwrg/InputView$11;

    invoke-direct {v0, p0}, Lcom/netease/dwrg/InputView$11;-><init>(Lcom/netease/dwrg/InputView;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setTouchPassthrough(Z)V
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/netease/dwrg/InputView;->m_touchPassthrough:Z

    return-void
.end method

.method public setType(I)V
    .locals 1

    .line 281
    iput p1, p0, Lcom/netease/dwrg/InputView;->m_type:I

    .line 282
    invoke-virtual {p0}, Lcom/netease/dwrg/InputView;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 283
    iget-object p1, p0, Lcom/netease/dwrg/InputView;->m_activity:Landroid/app/Activity;

    new-instance v0, Lcom/netease/dwrg/InputView$9;

    invoke-direct {v0, p0}, Lcom/netease/dwrg/InputView$9;-><init>(Lcom/netease/dwrg/InputView;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public show(Z)V
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/netease/dwrg/InputView;->m_dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_6

    .line 338
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 339
    iget-object v0, p0, Lcom/netease/dwrg/InputView;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 340
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v1, 0x0

    if-le v0, p1, :cond_1

    .line 341
    iput-boolean v1, p0, Lcom/netease/dwrg/InputView;->m_isVertical:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 343
    iput-boolean p1, p0, Lcom/netease/dwrg/InputView;->m_isVertical:Z

    .line 345
    :goto_0
    iput-boolean v1, p0, Lcom/netease/dwrg/InputView;->m_input_finished:Z

    .line 346
    invoke-virtual {p0}, Lcom/netease/dwrg/InputView;->getCurrentLanguage()Ljava/lang/String;

    move-result-object p1

    .line 347
    const-string v0, "zh"

    if-ne p1, v0, :cond_3

    .line 349
    iget-object p1, p0, Lcom/netease/dwrg/InputView;->m_okBtn:Landroid/widget/Button;

    if-eqz p1, :cond_2

    .line 351
    const-string v0, "\u786e\u5b9a"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 353
    :cond_2
    iget-object p1, p0, Lcom/netease/dwrg/InputView;->m_cancelBtn:Landroid/widget/Button;

    if-eqz p1, :cond_5

    .line 355
    const-string v0, "\u53d6\u6d88"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 360
    :cond_3
    iget-object p1, p0, Lcom/netease/dwrg/InputView;->m_okBtn:Landroid/widget/Button;

    if-eqz p1, :cond_4

    .line 362
    const-string v0, "Confirm"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 364
    :cond_4
    iget-object p1, p0, Lcom/netease/dwrg/InputView;->m_cancelBtn:Landroid/widget/Button;

    if-eqz p1, :cond_5

    .line 366
    const-string v0, "Cancel"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 369
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/netease/dwrg/InputView;->m_activity:Landroid/app/Activity;

    new-instance v0, Lcom/netease/dwrg/InputView$12;

    invoke-direct {v0, p0}, Lcom/netease/dwrg/InputView$12;-><init>(Lcom/netease/dwrg/InputView;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 436
    :cond_6
    iget-object p1, p0, Lcom/netease/dwrg/InputView;->m_activity:Landroid/app/Activity;

    new-instance v0, Lcom/netease/dwrg/InputView$13;

    invoke-direct {v0, p0}, Lcom/netease/dwrg/InputView$13;-><init>(Lcom/netease/dwrg/InputView;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_2
    return-void
.end method
