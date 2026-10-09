.class public Lcom/netease/neox/NeoXView;
.super Landroid/widget/FrameLayout;
.source "NeoXView.java"


# static fields
.field private static final AUTO_HIDE_DELAY_MILLIS:I = 0xbb8

.field static final IME_FLAG_NO_FULLSCREEN:I = 0x2000000

.field private static KITKAT_UI_OPTION:I = 0x1706

.field private static OTHER_UI_OPTION:I = 0x505


# instance fields
.field mHideHandler:Landroid/os/Handler;

.field mHideRunnable:Ljava/lang/Runnable;

.field mSurface:Landroid/view/SurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netease/neox/NeoXView;->mHideHandler:Landroid/os/Handler;

    .line 31
    new-instance v0, Lcom/netease/neox/NeoXView$1;

    invoke-direct {v0, p0}, Lcom/netease/neox/NeoXView$1;-><init>(Lcom/netease/neox/NeoXView;)V

    iput-object v0, p0, Lcom/netease/neox/NeoXView;->mHideRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/netease/neox/NeoXView;->mSurface:Landroid/view/SurfaceView;

    .line 47
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 49
    invoke-virtual {p0, v1}, Lcom/netease/neox/NeoXView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    .line 50
    invoke-virtual {p0, v1}, Lcom/netease/neox/NeoXView;->setFocusable(Z)V

    .line 52
    check-cast p1, Landroid/app/NativeActivity;

    .line 53
    invoke-virtual {p1}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->takeSurface(Landroid/view/SurfaceHolder$Callback2;)V

    .line 54
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/neox/NeoXView;->mSurface:Landroid/view/SurfaceView;

    .line 55
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 56
    iget-object p1, p0, Lcom/netease/neox/NeoXView;->mSurface:Landroid/view/SurfaceView;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    iget-object p1, p0, Lcom/netease/neox/NeoXView;->mSurface:Landroid/view/SurfaceView;

    invoke-virtual {p0, p1}, Lcom/netease/neox/NeoXView;->addView(Landroid/view/View;)V

    .line 59
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-ge p1, v0, :cond_0

    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v0, "meizu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 60
    sget p1, Lcom/netease/neox/NeoXView;->KITKAT_UI_OPTION:I

    or-int/lit16 p1, p1, 0x80

    sput p1, Lcom/netease/neox/NeoXView;->KITKAT_UI_OPTION:I

    .line 61
    sget p1, Lcom/netease/neox/NeoXView;->OTHER_UI_OPTION:I

    or-int/lit16 p1, p1, 0x80

    sput p1, Lcom/netease/neox/NeoXView;->OTHER_UI_OPTION:I

    .line 64
    :cond_0
    sget p1, Lcom/netease/neox/NeoXView;->KITKAT_UI_OPTION:I

    invoke-virtual {p0, p1}, Lcom/netease/neox/NeoXView;->setSystemUiVisibility(I)V

    .line 68
    new-instance p1, Lcom/netease/neox/NeoXView$2;

    invoke-direct {p1, p0}, Lcom/netease/neox/NeoXView$2;-><init>(Lcom/netease/neox/NeoXView;)V

    invoke-virtual {p0, p1}, Lcom/netease/neox/NeoXView;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 20
    sget v0, Lcom/netease/neox/NeoXView;->KITKAT_UI_OPTION:I

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    .line 20
    sget v0, Lcom/netease/neox/NeoXView;->OTHER_UI_OPTION:I

    return v0
.end method


# virtual methods
.method public delayedHide(I)V
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/netease/neox/NeoXView;->mHideHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/neox/NeoXView;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 78
    iget-object v0, p0, Lcom/netease/neox/NeoXView;->mHideHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/neox/NeoXView;->mHideRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    const/high16 v0, 0x12000000

    .line 83
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 84
    new-instance p1, Landroid/view/inputmethod/BaseInputConnection;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    return-object p1
.end method
