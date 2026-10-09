.class public Lcom/netease/dwrg/InputDialogController;
.super Ljava/lang/Object;
.source "InputDialogController.java"


# instance fields
.field private location:[I

.field private mCancelBtn:Landroid/widget/Button;

.field private mCancelTouchOutside:Z

.field private mContext:Lcom/netease/dwrg/Client;

.field private mDialog:Landroid/app/Dialog;

.field private mDialogContent:Landroid/view/View;

.field private mDispatchTouchEvent:Z

.field private mEditText:Landroid/widget/EditText;

.field private mFontColor:I

.field private mFontSize:F

.field private mInputType:I

.field private mKeyboardShowing:Z

.field private mLocation:Landroid/graphics/Rect;

.field private mMainDecorView:Landroid/view/View;

.field private mMainDecorViewRect:Landroid/graphics/Rect;

.field private mMultiline:Z

.field private mOkBtn:Landroid/widget/Button;

.field private mWindowHeight:I

.field private mWindowWidth:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 6

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41a00000    # 20.0f

    .line 38
    iput v0, p0, Lcom/netease/dwrg/InputDialogController;->mFontSize:F

    const/high16 v0, -0x1000000

    .line 39
    iput v0, p0, Lcom/netease/dwrg/InputDialogController;->mFontColor:I

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/netease/dwrg/InputDialogController;->mDispatchTouchEvent:Z

    const/4 v1, 0x1

    .line 45
    iput-boolean v1, p0, Lcom/netease/dwrg/InputDialogController;->mCancelTouchOutside:Z

    .line 48
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/netease/dwrg/InputDialogController;->mLocation:Landroid/graphics/Rect;

    .line 50
    iput-boolean v0, p0, Lcom/netease/dwrg/InputDialogController;->mMultiline:Z

    const/4 v2, 0x2

    .line 52
    new-array v2, v2, [I

    iput-object v2, p0, Lcom/netease/dwrg/InputDialogController;->location:[I

    .line 56
    move-object v2, p1

    check-cast v2, Lcom/netease/dwrg/Client;

    iput-object v2, p0, Lcom/netease/dwrg/InputDialogController;->mContext:Lcom/netease/dwrg/Client;

    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 58
    new-instance v3, Landroid/app/Dialog;

    iget-object v4, p0, Lcom/netease/dwrg/InputDialogController;->mContext:Lcom/netease/dwrg/Client;

    invoke-direct {v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/netease/dwrg/InputDialogController;->mDialog:Landroid/app/Dialog;

    .line 59
    invoke-virtual {v3, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 61
    iget-object v3, p0, Lcom/netease/dwrg/InputDialogController;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/Window;->setDimAmount(F)V

    .line 64
    iget-object v3, p0, Lcom/netease/dwrg/InputDialogController;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 65
    iget-object v3, p0, Lcom/netease/dwrg/InputDialogController;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 67
    sget v1, Lcom/netease/dwrg/R$layout;->input_dialog:I

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/dwrg/InputDialogController;->mDialogContent:Landroid/view/View;

    .line 68
    iget-object v2, p0, Lcom/netease/dwrg/InputDialogController;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 70
    iget-object v1, p0, Lcom/netease/dwrg/InputDialogController;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 71
    iget-object v1, p0, Lcom/netease/dwrg/InputDialogController;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v5, -0x2

    invoke-virtual {v1, v2, v5}, Landroid/view/Window;->setLayout(II)V

    .line 72
    iget-object v1, p0, Lcom/netease/dwrg/InputDialogController;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x1030000

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 73
    iget-object v1, p0, Lcom/netease/dwrg/InputDialogController;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 74
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 75
    iput-object v3, v1, Landroid/view/WindowManager$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    const/16 v2, 0x33

    .line 76
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 77
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 78
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    const/16 v0, 0x438

    .line 79
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 80
    iget-object v0, p0, Lcom/netease/dwrg/InputDialogController;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 81
    iget-object v0, p0, Lcom/netease/dwrg/InputDialogController;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netease/dwrg/InputDialogController$1;

    invoke-direct {v1, p0}, Lcom/netease/dwrg/InputDialogController$1;-><init>(Lcom/netease/dwrg/InputDialogController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 104
    iget-object v0, p0, Lcom/netease/dwrg/InputDialogController;->mDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/netease/dwrg/InputDialogController$2;

    invoke-direct {v1, p0}, Lcom/netease/dwrg/InputDialogController$2;-><init>(Lcom/netease/dwrg/InputDialogController;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 110
    iget-object v0, p0, Lcom/netease/dwrg/InputDialogController;->mDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/netease/dwrg/InputDialogController$3;

    invoke-direct {v1, p0}, Lcom/netease/dwrg/InputDialogController$3;-><init>(Lcom/netease/dwrg/InputDialogController;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 117
    iget-object v0, p0, Lcom/netease/dwrg/InputDialogController;->mDialogContent:Landroid/view/View;

    sget v1, Lcom/netease/dwrg/R$id;->edit_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/netease/dwrg/InputDialogController;->mEditText:Landroid/widget/EditText;

    .line 118
    new-instance v1, Lcom/netease/dwrg/InputDialogController$4;

    invoke-direct {v1, p0}, Lcom/netease/dwrg/InputDialogController$4;-><init>(Lcom/netease/dwrg/InputDialogController;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 131
    iget-object v0, p0, Lcom/netease/dwrg/InputDialogController;->mDialogContent:Landroid/view/View;

    sget v1, Lcom/netease/dwrg/R$id;->ok_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/dwrg/InputDialogController;->mOkBtn:Landroid/widget/Button;

    .line 132
    new-instance v1, Lcom/netease/dwrg/InputDialogController$5;

    invoke-direct {v1, p0}, Lcom/netease/dwrg/InputDialogController$5;-><init>(Lcom/netease/dwrg/InputDialogController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/netease/dwrg/InputDialogController;->mDialogContent:Landroid/view/View;

    sget v1, Lcom/netease/dwrg/R$id;->cancel_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/dwrg/InputDialogController;->mCancelBtn:Landroid/widget/Button;

    .line 139
    new-instance v1, Lcom/netease/dwrg/InputDialogController$6;

    invoke-direct {v1, p0}, Lcom/netease/dwrg/InputDialogController$6;-><init>(Lcom/netease/dwrg/InputDialogController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/dwrg/InputDialogController;->mMainDecorView:Landroid/view/View;

    .line 147
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/netease/dwrg/InputDialogController;->mMainDecorViewRect:Landroid/graphics/Rect;

    .line 148
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/netease/dwrg/InputDialogController$7;

    invoke-direct {v0, p0}, Lcom/netease/dwrg/InputDialogController$7;-><init>(Lcom/netease/dwrg/InputDialogController;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/dwrg/InputDialogController;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/netease/dwrg/InputDialogController;->mDispatchTouchEvent:Z

    return p0
.end method

.method static synthetic access$100(Lcom/netease/dwrg/InputDialogController;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/netease/dwrg/InputDialogController;->mWindowWidth:I

    return p0
.end method

.method static synthetic access$1000(Lcom/netease/dwrg/InputDialogController;)Landroid/app/Dialog;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/netease/dwrg/InputDialogController;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$102(Lcom/netease/dwrg/InputDialogController;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/netease/dwrg/InputDialogController;->mWindowWidth:I

    return p1
.end method

.method static synthetic access$1100(Lcom/netease/dwrg/InputDialogController;)Lcom/netease/dwrg/Client;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/netease/dwrg/InputDialogController;->mContext:Lcom/netease/dwrg/Client;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/netease/dwrg/InputDialogController;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/netease/dwrg/InputDialogController;->mInputType:I

    return p0
.end method

.method static synthetic access$1202(Lcom/netease/dwrg/InputDialogController;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/netease/dwrg/InputDialogController;->mInputType:I

    return p1
.end method

.method static synthetic access$1300(Lcom/netease/dwrg/InputDialogController;)Landroid/widget/EditText;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/netease/dwrg/InputDialogController;->mEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/netease/dwrg/InputDialogController;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/netease/dwrg/InputDialogController;->mEditText:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/netease/dwrg/InputDialogController;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/netease/dwrg/InputDialogController;->mCancelTouchOutside:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/netease/dwrg/InputDialogController;)F
    .locals 0

    .line 34
    iget p0, p0, Lcom/netease/dwrg/InputDialogController;->mFontSize:F

    return p0
.end method

.method static synthetic access$1600(Lcom/netease/dwrg/InputDialogController;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/netease/dwrg/InputDialogController;->mFontColor:I

    return p0
.end method

.method static synthetic access$200(Lcom/netease/dwrg/InputDialogController;)[I
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/netease/dwrg/InputDialogController;->location:[I

    return-object p0
.end method

.method static synthetic access$300(Lcom/netease/dwrg/InputDialogController;)Landroid/view/View;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/netease/dwrg/InputDialogController;->mDialogContent:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/netease/dwrg/InputDialogController;)Landroid/graphics/Rect;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/netease/dwrg/InputDialogController;->mLocation:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$500(Lcom/netease/dwrg/InputDialogController;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/netease/dwrg/InputDialogController;->mWindowHeight:I

    return p0
.end method

.method static synthetic access$502(Lcom/netease/dwrg/InputDialogController;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/netease/dwrg/InputDialogController;->mWindowHeight:I

    return p1
.end method

.method static synthetic access$600(Lcom/netease/dwrg/InputDialogController;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/netease/dwrg/InputDialogController;->mMultiline:Z

    return p0
.end method

.method static synthetic access$700(Lcom/netease/dwrg/InputDialogController;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/netease/dwrg/InputDialogController;->mKeyboardShowing:Z

    return p0
.end method

.method static synthetic access$702(Lcom/netease/dwrg/InputDialogController;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/netease/dwrg/InputDialogController;->mKeyboardShowing:Z

    return p1
.end method

.method static synthetic access$800(Lcom/netease/dwrg/InputDialogController;)Landroid/view/View;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/netease/dwrg/InputDialogController;->mMainDecorView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900(Lcom/netease/dwrg/InputDialogController;)Landroid/graphics/Rect;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/netease/dwrg/InputDialogController;->mMainDecorViewRect:Landroid/graphics/Rect;

    return-object p0
.end method


# virtual methods
.method public finishInput(Z)V
    .locals 5

    const/4 v0, 0x0

    .line 212
    iput-boolean v0, p0, Lcom/netease/dwrg/InputDialogController;->mKeyboardShowing:Z

    .line 213
    iget-object v0, p0, Lcom/netease/dwrg/InputDialogController;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 214
    iget-object v0, p0, Lcom/netease/dwrg/InputDialogController;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 216
    new-instance v2, Lcom/netease/dwrg/InputDialogController$8;

    invoke-direct {v2, p0}, Lcom/netease/dwrg/InputDialogController$8;-><init>(Lcom/netease/dwrg/InputDialogController;)V

    const-wide/16 v3, 0xa

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 225
    invoke-static {v0, p1}, Lcom/netease/neox/NativeInterface;->NativeOnInputFinish(Ljava/lang/String;Z)V

    return-void
.end method

.method public getFontColor()I
    .locals 1

    .line 264
    iget v0, p0, Lcom/netease/dwrg/InputDialogController;->mFontColor:I

    return v0
.end method

.method public getFontSize()F
    .locals 1

    .line 260
    iget v0, p0, Lcom/netease/dwrg/InputDialogController;->mFontSize:F

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/netease/dwrg/InputDialogController;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public refresh()V
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/netease/dwrg/InputDialogController;->mContext:Lcom/netease/dwrg/Client;

    new-instance v1, Lcom/netease/dwrg/InputDialogController$10;

    invoke-direct {v1, p0}, Lcom/netease/dwrg/InputDialogController$10;-><init>(Lcom/netease/dwrg/InputDialogController;)V

    invoke-virtual {v0, v1}, Lcom/netease/dwrg/Client;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCancelTouchOutside(Z)V
    .locals 0

    .line 229
    iput-boolean p1, p0, Lcom/netease/dwrg/InputDialogController;->mCancelTouchOutside:Z

    .line 230
    iget-object p1, p0, Lcom/netease/dwrg/InputDialogController;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/netease/dwrg/InputDialogController;->refresh()V

    :cond_0
    return-void
.end method

.method public setDispatchTouchToNative(Z)V
    .locals 0

    .line 236
    iput-boolean p1, p0, Lcom/netease/dwrg/InputDialogController;->mDispatchTouchEvent:Z

    return-void
.end method

.method public setFontColor(I)V
    .locals 0

    .line 240
    iput p1, p0, Lcom/netease/dwrg/InputDialogController;->mFontColor:I

    .line 241
    iget-object p1, p0, Lcom/netease/dwrg/InputDialogController;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/netease/dwrg/InputDialogController;->refresh()V

    :cond_0
    return-void
.end method

.method public setFontSize(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    return-void

    .line 248
    :cond_0
    iput p1, p0, Lcom/netease/dwrg/InputDialogController;->mFontSize:F

    .line 249
    iget-object p1, p0, Lcom/netease/dwrg/InputDialogController;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 250
    invoke-virtual {p0}, Lcom/netease/dwrg/InputDialogController;->refresh()V

    :cond_1
    return-void
.end method

.method public setInputType(I)V
    .locals 0

    .line 254
    iput p1, p0, Lcom/netease/dwrg/InputDialogController;->mInputType:I

    .line 255
    iget-object p1, p0, Lcom/netease/dwrg/InputDialogController;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/netease/dwrg/InputDialogController;->refresh()V

    :cond_0
    return-void
.end method

.method public showInputDialog(Ljava/lang/String;ZZZ)V
    .locals 8

    .line 268
    iget-object v0, p0, Lcom/netease/dwrg/InputDialogController;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 270
    :cond_0
    iput-boolean p4, p0, Lcom/netease/dwrg/InputDialogController;->mMultiline:Z

    .line 271
    iget-object v0, p0, Lcom/netease/dwrg/InputDialogController;->mContext:Lcom/netease/dwrg/Client;

    new-instance v7, Lcom/netease/dwrg/InputDialogController$9;

    move-object v1, v7

    move-object v2, p0

    move v3, p4

    move v4, p2

    move v5, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/netease/dwrg/InputDialogController$9;-><init>(Lcom/netease/dwrg/InputDialogController;ZZZLjava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/netease/dwrg/Client;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 319
    invoke-virtual {p0}, Lcom/netease/dwrg/InputDialogController;->refresh()V

    return-void
.end method
