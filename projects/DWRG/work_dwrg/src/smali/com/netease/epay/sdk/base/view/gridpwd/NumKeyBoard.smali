.class public Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;
.super Ljava/lang/Object;
.source "NumKeyBoard.java"


# instance fields
.field private KEYBOARD_MIN_MARGIN_EDITTEXT:I

.field private context:Landroid/content/Context;

.field private inputView:Landroid/view/View;

.field private mDecorView:Landroid/view/View;

.field private mKeyboardWindow:Landroid/widget/PopupWindow;

.field private mScrollDistance:I

.field private needShowFirst:Z

.field public screenContentHeight:I

.field public screenHeight:I

.field public screenHeightNoNavBar:I

.field public screenWidth:I

.field private showKeyboardRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 2
    .param p1, "inputView"    # Landroid/widget/EditText;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->mScrollDistance:I

    .line 36
    iput v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->screenWidth:I

    .line 37
    iput v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->screenHeight:I

    .line 42
    iput v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->screenHeightNoNavBar:I

    .line 46
    iput v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->screenContentHeight:I

    .line 48
    const/16 v0, 0x46

    iput v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->KEYBOARD_MIN_MARGIN_EDITTEXT:I

    .line 50
    iput-boolean v1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->needShowFirst:Z

    .line 162
    new-instance v0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard$3;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard$3;-><init>(Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->showKeyboardRunnable:Ljava/lang/Runnable;

    .line 58
    iput-object p1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->inputView:Landroid/view/View;

    .line 59
    invoke-virtual {p1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->context:Landroid/content/Context;

    .line 60
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->viewInit()V

    .line 61
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->onAttachedToWindow()V

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;)V
    .locals 2
    .param p1, "inputView"    # Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->mScrollDistance:I

    .line 36
    iput v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->screenWidth:I

    .line 37
    iput v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->screenHeight:I

    .line 42
    iput v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->screenHeightNoNavBar:I

    .line 46
    iput v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->screenContentHeight:I

    .line 48
    const/16 v0, 0x46

    iput v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->KEYBOARD_MIN_MARGIN_EDITTEXT:I

    .line 50
    iput-boolean v1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->needShowFirst:Z

    .line 162
    new-instance v0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard$3;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard$3;-><init>(Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->showKeyboardRunnable:Ljava/lang/Runnable;

    .line 53
    iput-object p1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->inputView:Landroid/view/View;

    .line 54
    invoke-virtual {p1}, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->context:Landroid/content/Context;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->inputView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;)I
    .locals 1
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;

    .prologue
    .line 23
    iget v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->mScrollDistance:I

    return v0
.end method

.method static synthetic access$102(Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;I)I
    .locals 0
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;
    .param p1, "x1"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->mScrollDistance:I

    return p1
.end method

.method static synthetic access$200(Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->mDecorView:Landroid/view/View;

    return-object v0
.end method

.method private initScreenParams(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0xd

    .line 177
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 178
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 179
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 180
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 182
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->screenWidth:I

    .line 183
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->screenHeight:I

    .line 184
    iget v1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->screenHeight:I

    iput v1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->screenHeightNoNavBar:I

    .line 186
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 188
    if-ne v1, v3, :cond_1

    .line 190
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getRealHeight"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 191
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->screenHeightNoNavBar:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 203
    :cond_0
    :goto_0
    iget v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->screenHeightNoNavBar:I

    iput v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->screenContentHeight:I

    .line 204
    return-void

    .line 195
    :cond_1
    if-le v1, v3, :cond_0

    .line 197
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getRawHeight"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 198
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->screenHeightNoNavBar:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 199
    :catch_0
    move-exception v0

    goto :goto_0

    .line 192
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public hideKeyboard()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->mKeyboardWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->mKeyboardWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->mKeyboardWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 152
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    .line 155
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->inputView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->mDecorView:Landroid/view/View;

    .line 156
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->needShowFirst:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->inputView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->inputView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->showKeyboardRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 160
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->inputView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->inputView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->hideKeyboard()V

    .line 174
    return-void
.end method

.method protected screenOrientationChange()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->inputView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->inputView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->inputView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->showKeyboardRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 211
    :cond_0
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->hideKeyboard()V

    .line 212
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->viewInit()V

    .line 213
    return-void
.end method

.method public showKeyboard()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 118
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->mDecorView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 119
    iput-boolean v3, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->needShowFirst:Z

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->mKeyboardWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->mKeyboardWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->mKeyboardWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->mDecorView:Landroid/view/View;

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 127
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->mDecorView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 128
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 129
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->inputView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 132
    iget v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->screenWidth:I

    iget v2, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->screenHeight:I

    if-le v0, v2, :cond_3

    .line 133
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->inputView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v2, 0xbe

    invoke-static {v0, v2}, Lcom/netease/epay/sdk/base/util/UiUtil;->dp2px(Landroid/content/Context;I)I

    move-result v0

    .line 137
    :goto_1
    iget v2, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->screenContentHeight:I

    .line 138
    aget v1, v1, v3

    iget-object v3, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->inputView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v1, v3

    iget v3, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->KEYBOARD_MIN_MARGIN_EDITTEXT:I

    add-int/2addr v1, v3

    sub-int v0, v2, v0

    sub-int v0, v1, v0

    iput v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->mScrollDistance:I

    .line 139
    iget v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->mScrollDistance:I

    if-lez v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->mDecorView:Landroid/view/View;

    iget v1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->mScrollDistance:I

    invoke-virtual {v0, v4, v1}, Landroid/view/View;->scrollBy(II)V

    .line 142
    :cond_2
    iput-boolean v4, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->needShowFirst:Z

    goto :goto_0

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->inputView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v2, 0xf0

    invoke-static {v0, v2}, Lcom/netease/epay/sdk/base/util/UiUtil;->dp2px(Landroid/content/Context;I)I

    move-result v0

    goto :goto_1
.end method

.method protected viewInit()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 65
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->context:Landroid/content/Context;

    const/16 v1, 0x23

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/UiUtil;->dp2px(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->KEYBOARD_MIN_MARGIN_EDITTEXT:I

    .line 66
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->inputView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setLongClickable(Z)V

    .line 67
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->initScreenParams(Landroid/content/Context;)V

    .line 68
    new-instance v0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyboardLayout;

    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyboardLayout;-><init>(Landroid/content/Context;)V

    .line 69
    new-instance v1, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard$1;

    invoke-direct {v1, p0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard$1;-><init>(Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyboardLayout;->setOnNumberKeyClickListner(Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyboardLayout$NumberKeyClickListner;)V

    .line 93
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->mKeyboardWindow:Landroid/widget/PopupWindow;

    .line 94
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->mKeyboardWindow:Landroid/widget/PopupWindow;

    const v1, 0x1030056

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 95
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->mKeyboardWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 96
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->mKeyboardWindow:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->mKeyboardWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 98
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->mKeyboardWindow:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard$2;

    invoke-direct {v1, p0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard$2;-><init>(Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 115
    return-void
.end method
