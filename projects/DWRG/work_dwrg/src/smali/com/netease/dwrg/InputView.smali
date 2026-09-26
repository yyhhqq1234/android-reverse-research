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

.field private m_type:I

.field private m_view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 7
    .param p1, "context"    # Landroid/app/Activity;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v4, p0, Lcom/netease/dwrg/InputView;->m_activity:Landroid/app/Activity;

    .line 48
    iput-object v4, p0, Lcom/netease/dwrg/InputView;->m_view:Landroid/view/View;

    .line 49
    iput-object v4, p0, Lcom/netease/dwrg/InputView;->m_editText:Landroid/widget/EditText;

    .line 50
    iput-object v4, p0, Lcom/netease/dwrg/InputView;->m_okBtn:Landroid/widget/Button;

    .line 51
    iput-object v4, p0, Lcom/netease/dwrg/InputView;->m_cancelBtn:Landroid/widget/Button;

    .line 52
    iput-object v4, p0, Lcom/netease/dwrg/InputView;->m_okBtnListener:Landroid/view/View$OnClickListener;

    .line 53
    iput-object v4, p0, Lcom/netease/dwrg/InputView;->m_cancelBtnListener:Landroid/view/View$OnClickListener;

    .line 54
    iput-object v4, p0, Lcom/netease/dwrg/InputView;->m_dialog:Landroid/app/Dialog;

    .line 55
    iput-object v4, p0, Lcom/netease/dwrg/InputView;->m_text:Ljava/lang/String;

    .line 56
    iput-object v4, p0, Lcom/netease/dwrg/InputView;->m_hint:Ljava/lang/String;

    .line 57
    iput v6, p0, Lcom/netease/dwrg/InputView;->m_type:I

    .line 58
    iput-boolean v6, p0, Lcom/netease/dwrg/InputView;->m_input_finished:Z

    .line 59
    iput-object v4, p0, Lcom/netease/dwrg/InputView;->m_location:Landroid/graphics/Rect;

    .line 60
    iput-boolean v5, p0, Lcom/netease/dwrg/InputView;->m_borderless:Z

    .line 61
    iput-boolean v5, p0, Lcom/netease/dwrg/InputView;->m_isVertical:Z

    .line 62
    iput-object v4, p0, Lcom/netease/dwrg/InputView;->m_oldEditTextBg:Landroid/graphics/drawable/Drawable;

    .line 63
    iput v5, p0, Lcom/netease/dwrg/InputView;->m_fontColor:I

    .line 64
    iput v2, p0, Lcom/netease/dwrg/InputView;->m_fontSize:F

    .line 65
    iput v5, p0, Lcom/netease/dwrg/InputView;->m_paddingLeft:I

    .line 66
    iput v5, p0, Lcom/netease/dwrg/InputView;->m_paddingRight:I

    .line 67
    iput v5, p0, Lcom/netease/dwrg/InputView;->m_paddingTop:I

    .line 68
    iput v5, p0, Lcom/netease/dwrg/InputView;->m_paddingBottom:I

    .line 69
    iput v5, p0, Lcom/netease/dwrg/InputView;->m_defaultFontColor:I

    .line 70
    iput v2, p0, Lcom/netease/dwrg/InputView;->m_defaultFontSize:F

    .line 88
    const-string v2, ""

    iput-object v2, p0, Lcom/netease/dwrg/InputView;->m_filter_pattern:Ljava/lang/String;

    .line 114
    iput-object p1, p0, Lcom/netease/dwrg/InputView;->m_activity:Landroid/app/Activity;

    .line 115
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 116
    .local v1, "li":Landroid/view/LayoutInflater;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 117
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 118
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v2, v3, :cond_0

    .line 119
    const v2, 0x7f030003

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/dwrg/InputView;->m_view:Landroid/view/View;

    .line 120
    iput-boolean v5, p0, Lcom/netease/dwrg/InputView;->m_isVertical:Z

    .line 125
    :goto_0
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_view:Landroid/view/View;

    const v3, 0x7f0c000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/netease/dwrg/InputView;->m_editText:Landroid/widget/EditText;

    .line 126
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v2

    iput v2, p0, Lcom/netease/dwrg/InputView;->m_paddingLeft:I

    .line 127
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v2

    iput v2, p0, Lcom/netease/dwrg/InputView;->m_paddingRight:I

    .line 128
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v2

    iput v2, p0, Lcom/netease/dwrg/InputView;->m_paddingTop:I

    .line 129
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v2

    iput v2, p0, Lcom/netease/dwrg/InputView;->m_paddingBottom:I

    .line 130
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_editText:Landroid/widget/EditText;

    new-instance v3, Lcom/netease/dwrg/InputView$1;

    invoke-direct {v3, p0}, Lcom/netease/dwrg/InputView$1;-><init>(Lcom/netease/dwrg/InputView;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 140
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/dwrg/InputView;->m_oldEditTextBg:Landroid/graphics/drawable/Drawable;

    .line 141
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getCurrentTextColor()I

    move-result v2

    iput v2, p0, Lcom/netease/dwrg/InputView;->m_fontColor:I

    .line 142
    iget v2, p0, Lcom/netease/dwrg/InputView;->m_fontColor:I

    iput v2, p0, Lcom/netease/dwrg/InputView;->m_defaultFontColor:I

    .line 143
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getTextSize()F

    move-result v2

    iput v2, p0, Lcom/netease/dwrg/InputView;->m_fontSize:F

    .line 144
    iget v2, p0, Lcom/netease/dwrg/InputView;->m_fontSize:F

    iput v2, p0, Lcom/netease/dwrg/InputView;->m_defaultFontSize:F

    .line 145
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_view:Landroid/view/View;

    const v3, 0x7f0c000b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/netease/dwrg/InputView;->m_okBtn:Landroid/widget/Button;

    .line 146
    new-instance v2, Lcom/netease/dwrg/InputView$2;

    invoke-direct {v2, p0}, Lcom/netease/dwrg/InputView$2;-><init>(Lcom/netease/dwrg/InputView;)V

    iput-object v2, p0, Lcom/netease/dwrg/InputView;->m_okBtnListener:Landroid/view/View$OnClickListener;

    .line 151
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_okBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/netease/dwrg/InputView;->m_okBtnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_view:Landroid/view/View;

    const v3, 0x7f0c000c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/netease/dwrg/InputView;->m_cancelBtn:Landroid/widget/Button;

    .line 153
    new-instance v2, Lcom/netease/dwrg/InputView$3;

    invoke-direct {v2, p0}, Lcom/netease/dwrg/InputView$3;-><init>(Lcom/netease/dwrg/InputView;)V

    iput-object v2, p0, Lcom/netease/dwrg/InputView;->m_cancelBtnListener:Landroid/view/View$OnClickListener;

    .line 158
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_cancelBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/netease/dwrg/InputView;->m_cancelBtnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    new-instance v2, Landroid/app/Dialog;

    iget-object v3, p0, Lcom/netease/dwrg/InputView;->m_activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/netease/dwrg/InputView;->m_dialog:Landroid/app/Dialog;

    .line 160
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_dialog:Landroid/app/Dialog;

    invoke-virtual {v2, v6}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 161
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_dialog:Landroid/app/Dialog;

    new-instance v3, Lcom/netease/dwrg/InputView$4;

    invoke-direct {v3, p0}, Lcom/netease/dwrg/InputView$4;-><init>(Lcom/netease/dwrg/InputView;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 178
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_dialog:Landroid/app/Dialog;

    new-instance v3, Lcom/netease/dwrg/InputView$5;

    invoke-direct {v3, p0}, Lcom/netease/dwrg/InputView$5;-><init>(Lcom/netease/dwrg/InputView;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 190
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_dialog:Landroid/app/Dialog;

    new-instance v3, Lcom/netease/dwrg/InputView$6;

    invoke-direct {v3, p0}, Lcom/netease/dwrg/InputView$6;-><init>(Lcom/netease/dwrg/InputView;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 203
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_dialog:Landroid/app/Dialog;

    iget-object v3, p0, Lcom/netease/dwrg/InputView;->m_view:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 204
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 205
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_dialog:Landroid/app/Dialog;

    invoke-virtual {v2, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 206
    return-void

    .line 122
    :cond_0
    const v2, 0x7f030004

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/dwrg/InputView;->m_view:Landroid/view/View;

    .line 123
    iput-boolean v6, p0, Lcom/netease/dwrg/InputView;->m_isVertical:Z

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/netease/dwrg/InputView;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/netease/dwrg/InputView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/netease/dwrg/InputView;->m_activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netease/dwrg/InputView;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/netease/dwrg/InputView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/netease/dwrg/InputView;->m_editText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/netease/dwrg/InputView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/netease/dwrg/InputView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/netease/dwrg/InputView;->m_filter_pattern:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netease/dwrg/InputView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/netease/dwrg/InputView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/netease/dwrg/InputView;->m_view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netease/dwrg/InputView;)I
    .locals 1
    .param p0, "x0"    # Lcom/netease/dwrg/InputView;

    .prologue
    .line 45
    iget v0, p0, Lcom/netease/dwrg/InputView;->m_type:I

    return v0
.end method

.method static synthetic access$400(Lcom/netease/dwrg/InputView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/netease/dwrg/InputView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/netease/dwrg/InputView;->m_hint:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netease/dwrg/InputView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/netease/dwrg/InputView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/netease/dwrg/InputView;->m_text:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netease/dwrg/InputView;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/netease/dwrg/InputView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/netease/dwrg/InputView;->m_dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$700(Lcom/netease/dwrg/InputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/netease/dwrg/InputView;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/netease/dwrg/InputView;->updateLocation()V

    return-void
.end method

.method static synthetic access$800(Lcom/netease/dwrg/InputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/netease/dwrg/InputView;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/netease/dwrg/InputView;->updateBorderless()V

    return-void
.end method

.method static synthetic access$900(Lcom/netease/dwrg/InputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/netease/dwrg/InputView;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/netease/dwrg/InputView;->updateFont()V

    return-void
.end method

.method private updateBorderless()V
    .locals 9

    .prologue
    const/16 v4, 0x11

    const/4 v3, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 402
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 403
    .local v1, "winparams":Landroid/view/WindowManager$LayoutParams;
    iget-boolean v2, p0, Lcom/netease/dwrg/InputView;->m_borderless:Z

    if-eqz v2, :cond_3

    .line 404
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 405
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 406
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v4, :cond_1

    .line 407
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 410
    :goto_0
    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 411
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 413
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {v2, v7, v7, v7, v7}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 414
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setIncludeFontPadding(Z)V

    .line 415
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_okBtn:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 416
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_cancelBtn:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 417
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_cancelBtn:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 418
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v4, :cond_2

    .line 419
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 422
    :goto_1
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_cancelBtn:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 444
    :cond_0
    :goto_2
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 445
    return-void

    .line 409
    :cond_1
    invoke-virtual {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 421
    :cond_2
    invoke-virtual {v0, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 424
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 425
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 426
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-boolean v2, p0, Lcom/netease/dwrg/InputView;->m_isVertical:Z

    if-nez v2, :cond_4

    .line 427
    const v2, 0x7f0c000b

    invoke-virtual {v0, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 428
    :cond_4
    const/4 v2, -0x2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 429
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 430
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_5

    .line 431
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_editText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/netease/dwrg/InputView;->m_oldEditTextBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 434
    :goto_3
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_editText:Landroid/widget/EditText;

    iget v3, p0, Lcom/netease/dwrg/InputView;->m_paddingLeft:I

    iget v4, p0, Lcom/netease/dwrg/InputView;->m_paddingRight:I

    iget v5, p0, Lcom/netease/dwrg/InputView;->m_paddingTop:I

    iget v6, p0, Lcom/netease/dwrg/InputView;->m_paddingBottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 435
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_editText:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setIncludeFontPadding(Z)V

    .line 436
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_okBtn:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 437
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_cancelBtn:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 438
    iget-boolean v2, p0, Lcom/netease/dwrg/InputView;->m_isVertical:Z

    if-eqz v2, :cond_0

    .line 439
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_cancelBtn:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 440
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const v2, 0x7f0c000a

    invoke-virtual {v0, v8, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 441
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_cancelBtn:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 433
    :cond_5
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_editText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/netease/dwrg/InputView;->m_oldEditTextBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3
.end method

.method private updateFont()V
    .locals 3

    .prologue
    .line 480
    iget-object v0, p0, Lcom/netease/dwrg/InputView;->m_editText:Landroid/widget/EditText;

    const/4 v1, 0x0

    iget v2, p0, Lcom/netease/dwrg/InputView;->m_fontSize:F

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 481
    iget-object v0, p0, Lcom/netease/dwrg/InputView;->m_editText:Landroid/widget/EditText;

    iget v1, p0, Lcom/netease/dwrg/InputView;->m_fontColor:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 482
    return-void
.end method

.method private updateLocation()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 362
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 363
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 364
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x700

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 366
    const/16 v2, 0x33

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 367
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_location:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    .line 368
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 369
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 370
    const/4 v2, -0x1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 371
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 378
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 379
    return-void

    .line 373
    :cond_0
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_location:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 374
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_location:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 375
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_location:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 376
    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_location:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0
.end method


# virtual methods
.method public getDefaultFontColor()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/netease/dwrg/InputView;->m_defaultFontColor:I

    return v0
.end method

.method public getDefaultFontSize()F
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/netease/dwrg/InputView;->m_defaultFontSize:F

    return v0
.end method

.method public getFontColor()I
    .locals 1

    .prologue
    .line 476
    iget v0, p0, Lcom/netease/dwrg/InputView;->m_fontColor:I

    return v0
.end method

.method public getFontSize()F
    .locals 1

    .prologue
    .line 460
    iget v0, p0, Lcom/netease/dwrg/InputView;->m_fontSize:F

    return v0
.end method

.method public getHint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/netease/dwrg/InputView;->m_hint:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()[I
    .locals 3

    .prologue
    .line 355
    iget-object v0, p0, Lcom/netease/dwrg/InputView;->m_location:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 356
    const/4 v0, 0x0

    .line 357
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_location:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_location:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    aput v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_location:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/netease/dwrg/InputView;->m_location:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    aput v2, v0, v1

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/netease/dwrg/InputView;->m_text:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/netease/dwrg/InputView;->m_type:I

    return v0
.end method

.method public inputFinish(Z)V
    .locals 2
    .param p1, "isConfirm"    # Z

    .prologue
    .line 331
    iget-boolean v1, p0, Lcom/netease/dwrg/InputView;->m_input_finished:Z

    if-nez v1, :cond_0

    .line 332
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/netease/dwrg/InputView;->m_input_finished:Z

    .line 333
    iget-object v1, p0, Lcom/netease/dwrg/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/netease/dwrg/InputView;->m_dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    .line 335
    invoke-static {v0, p1}, Lcom/netease/neox/NativeInterface;->NativeOnInputFinish(Ljava/lang/String;Z)V

    .line 337
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public isBorderless()Z
    .locals 1

    .prologue
    .line 396
    iget-boolean v0, p0, Lcom/netease/dwrg/InputView;->m_borderless:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/netease/dwrg/InputView;->m_dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public setBorderless(Z)V
    .locals 2
    .param p1, "borderless"    # Z

    .prologue
    .line 382
    iget-boolean v0, p0, Lcom/netease/dwrg/InputView;->m_borderless:Z

    if-ne v0, p1, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    iput-boolean p1, p0, Lcom/netease/dwrg/InputView;->m_borderless:Z

    .line 385
    invoke-virtual {p0}, Lcom/netease/dwrg/InputView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/netease/dwrg/InputView;->m_activity:Landroid/app/Activity;

    new-instance v1, Lcom/netease/dwrg/InputView$13;

    invoke-direct {v1, p0}, Lcom/netease/dwrg/InputView$13;-><init>(Lcom/netease/dwrg/InputView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setFilterPattern(I)V
    .locals 1
    .param p1, "input_type"    # I

    .prologue
    .line 91
    packed-switch p1, :pswitch_data_0

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/dwrg/InputView;->m_filter_pattern:Ljava/lang/String;

    .line 110
    :goto_0
    return-void

    .line 93
    :pswitch_0
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/dwrg/InputView;->m_filter_pattern:Ljava/lang/String;

    goto :goto_0

    .line 96
    :pswitch_1
    const-string v0, "[0-9].*"

    iput-object v0, p0, Lcom/netease/dwrg/InputView;->m_filter_pattern:Ljava/lang/String;

    goto :goto_0

    .line 99
    :pswitch_2
    const-string v0, "[a-zA-Z].*"

    iput-object v0, p0, Lcom/netease/dwrg/InputView;->m_filter_pattern:Ljava/lang/String;

    goto :goto_0

    .line 102
    :pswitch_3
    const-string v0, "[0-9a-zA-Z].*"

    iput-object v0, p0, Lcom/netease/dwrg/InputView;->m_filter_pattern:Ljava/lang/String;

    goto :goto_0

    .line 105
    :pswitch_4
    const-string v0, "[a-zA-Z0-9._\\-@].*"

    iput-object v0, p0, Lcom/netease/dwrg/InputView;->m_filter_pattern:Ljava/lang/String;

    goto :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setFontColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 464
    iput p1, p0, Lcom/netease/dwrg/InputView;->m_fontColor:I

    .line 465
    invoke-virtual {p0}, Lcom/netease/dwrg/InputView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/netease/dwrg/InputView;->m_activity:Landroid/app/Activity;

    new-instance v1, Lcom/netease/dwrg/InputView$15;

    invoke-direct {v1, p0}, Lcom/netease/dwrg/InputView$15;-><init>(Lcom/netease/dwrg/InputView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 473
    :cond_0
    return-void
.end method

.method public setFontSize(F)V
    .locals 2
    .param p1, "size"    # F

    .prologue
    .line 448
    iput p1, p0, Lcom/netease/dwrg/InputView;->m_fontSize:F

    .line 449
    invoke-virtual {p0}, Lcom/netease/dwrg/InputView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/netease/dwrg/InputView;->m_activity:Landroid/app/Activity;

    new-instance v1, Lcom/netease/dwrg/InputView$14;

    invoke-direct {v1, p0}, Lcom/netease/dwrg/InputView$14;-><init>(Lcom/netease/dwrg/InputView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 457
    :cond_0
    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 2
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/netease/dwrg/InputView;->m_hint:Ljava/lang/String;

    .line 227
    invoke-virtual {p0}, Lcom/netease/dwrg/InputView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/netease/dwrg/InputView;->m_activity:Landroid/app/Activity;

    new-instance v1, Lcom/netease/dwrg/InputView$8;

    invoke-direct {v1, p0}, Lcom/netease/dwrg/InputView$8;-><init>(Lcom/netease/dwrg/InputView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 236
    :cond_0
    return-void
.end method

.method public setLocation(IIII)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 340
    if-eqz p3, :cond_0

    if-nez p4, :cond_2

    .line 341
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/dwrg/InputView;->m_location:Landroid/graphics/Rect;

    .line 344
    :goto_0
    invoke-virtual {p0}, Lcom/netease/dwrg/InputView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/netease/dwrg/InputView;->m_activity:Landroid/app/Activity;

    new-instance v1, Lcom/netease/dwrg/InputView$12;

    invoke-direct {v1, p0}, Lcom/netease/dwrg/InputView$12;-><init>(Lcom/netease/dwrg/InputView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 352
    :cond_1
    return-void

    .line 343
    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    add-int v1, p1, p3

    add-int v2, p2, p4

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/netease/dwrg/InputView;->m_location:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/netease/dwrg/InputView;->m_text:Ljava/lang/String;

    .line 244
    invoke-virtual {p0}, Lcom/netease/dwrg/InputView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/netease/dwrg/InputView;->m_activity:Landroid/app/Activity;

    new-instance v1, Lcom/netease/dwrg/InputView$9;

    invoke-direct {v1, p0}, Lcom/netease/dwrg/InputView$9;-><init>(Lcom/netease/dwrg/InputView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 256
    :cond_0
    return-void
.end method

.method public setType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 209
    iput p1, p0, Lcom/netease/dwrg/InputView;->m_type:I

    .line 210
    invoke-virtual {p0}, Lcom/netease/dwrg/InputView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/netease/dwrg/InputView;->m_activity:Landroid/app/Activity;

    new-instance v1, Lcom/netease/dwrg/InputView$7;

    invoke-direct {v1, p0}, Lcom/netease/dwrg/InputView$7;-><init>(Lcom/netease/dwrg/InputView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 219
    :cond_0
    return-void
.end method

.method public show(Z)V
    .locals 2
    .param p1, "bShow"    # Z

    .prologue
    .line 263
    iget-object v0, p0, Lcom/netease/dwrg/InputView;->m_dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-ne p1, v0, :cond_0

    .line 324
    :goto_0
    return-void

    .line 265
    :cond_0
    if-eqz p1, :cond_1

    .line 266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/dwrg/InputView;->m_input_finished:Z

    .line 267
    iget-object v0, p0, Lcom/netease/dwrg/InputView;->m_activity:Landroid/app/Activity;

    new-instance v1, Lcom/netease/dwrg/InputView$10;

    invoke-direct {v1, p0}, Lcom/netease/dwrg/InputView$10;-><init>(Lcom/netease/dwrg/InputView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/netease/dwrg/InputView;->m_activity:Landroid/app/Activity;

    new-instance v1, Lcom/netease/dwrg/InputView$11;

    invoke-direct {v1, p0}, Lcom/netease/dwrg/InputView$11;-><init>(Lcom/netease/dwrg/InputView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
