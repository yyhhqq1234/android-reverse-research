.class public Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;
.super Landroid/view/View;
.source "CustomActionSheet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ALPHA_DURATION:I = 0x12c

.field public static final BG_VIEW_ID:I = 0x4b0

.field private static final TRANSLATE_DURATION:I = 0xc8


# instance fields
.field private final actv:Landroid/app/Activity;

.field private bgView:Landroid/view/View;

.field private contentView:Landroid/view/View;

.field private decorView:Landroid/view/ViewGroup;

.field private isShow:Z

.field private wholeView:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "actv"    # Landroid/app/Activity;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;->isShow:Z

    .line 28
    iput-object p1, p0, Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;->actv:Landroid/app/Activity;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;->wholeView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;->decorView:Landroid/view/ViewGroup;

    return-object v0
.end method


# virtual methods
.method createView(Landroid/view/View;)Landroid/widget/FrameLayout;
    .locals 5
    .param p1, "content"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 71
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;->actv:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 72
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;->actv:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;->bgView:Landroid/view/View;

    .line 75
    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;->bgView:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;->bgView:Landroid/view/View;

    const/16 v2, 0x88

    invoke-static {v2, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 77
    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;->bgView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;->bgView:Landroid/view/View;

    const/16 v2, 0x4b0

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 80
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 81
    const/16 v2, 0x50

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 82
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    iput-object p1, p0, Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;->contentView:Landroid/view/View;

    .line 85
    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;->bgView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 86
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 88
    return-object v0
.end method

.method public dismiss()V
    .locals 4

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;->isShow:Z

    if-nez v0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;->isShow:Z

    .line 102
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;->contentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;->contentView:Landroid/view/View;

    const/16 v1, 0xc8

    invoke-static {v1}, Lcom/netease/epay/sdk/base/view/actionsheet/AnimationUtil;->createTranslationOutAnimation(I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 104
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;->bgView:Landroid/view/View;

    const/16 v1, 0x12c

    invoke-static {v1}, Lcom/netease/epay/sdk/base/view/actionsheet/AnimationUtil;->createAlphaOutAnimation(I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 105
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;->wholeView:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet$1;

    invoke-direct {v1, p0}, Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet$1;-><init>(Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method dismissInputMethod()V
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;->actv:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;->actv:Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 62
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;->actv:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 64
    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public isShow()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;->isShow:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/16 v1, 0x4b0

    if-ne v0, v1, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;->dismiss()V

    .line 96
    :cond_0
    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 2
    .param p1, "sheetContentView"    # Landroid/view/View;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;->isShow:Z

    if-eqz v0, :cond_0

    .line 55
    :goto_0
    return-void

    .line 35
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;->isShow:Z

    .line 36
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;->dismissInputMethod()V

    .line 38
    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;->createView(Landroid/view/View;)Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;->wholeView:Landroid/widget/FrameLayout;

    .line 48
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;->actv:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;->decorView:Landroid/view/ViewGroup;

    .line 49
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;->decorView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;->wholeView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 51
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;->bgView:Landroid/view/View;

    const/16 v1, 0x12c

    invoke-static {v1}, Lcom/netease/epay/sdk/base/view/actionsheet/AnimationUtil;->createAlphaInAnimation(I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 52
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;->contentView:Landroid/view/View;

    const/16 v1, 0xc8

    invoke-static {v1}, Lcom/netease/epay/sdk/base/view/actionsheet/AnimationUtil;->createTranslationInAnimation(I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
