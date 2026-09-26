.class public Lcom/netease/dwrg/MovieDialog;
.super Landroid/app/Dialog;
.source "MovieDialog.java"


# static fields
.field private static final AUTO_HIDE_DELAY_MILLIS:I = 0xbb8

.field private static final KITKAT_UI_OPTION:I = 0xf06
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field private static final OTHER_UI_OPTION:I = 0x505
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field


# instance fields
.field mHideHandler:Landroid/os/Handler;

.field mHideRunnable:Ljava/lang/Runnable;

.field private m_movie_view:Lcom/netease/dwrg/MovieView;

.field private m_view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netease/dwrg/MovieView;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Lcom/netease/dwrg/MovieView;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 38
    const v0, 0x1030005

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netease/dwrg/MovieDialog;->mHideHandler:Landroid/os/Handler;

    .line 31
    iput-object v1, p0, Lcom/netease/dwrg/MovieDialog;->m_view:Landroid/view/View;

    .line 32
    iput-object v1, p0, Lcom/netease/dwrg/MovieDialog;->m_movie_view:Lcom/netease/dwrg/MovieView;

    .line 34
    iput-object v1, p0, Lcom/netease/dwrg/MovieDialog;->mHideRunnable:Ljava/lang/Runnable;

    .line 39
    const-string v0, "yuxin"

    const-string v1, "init movie dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {p0, v2}, Lcom/netease/dwrg/MovieDialog;->setCancelable(Z)V

    .line 41
    invoke-virtual {p0, v2}, Lcom/netease/dwrg/MovieDialog;->setCanceledOnTouchOutside(Z)V

    .line 42
    const-string v0, "yuxin"

    const-string v1, "set cancel event"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netease/dwrg/MovieDialog;->requestWindowFeature(I)Z

    .line 44
    const-string v0, "yuxin"

    const-string v1, "movie dialog init down"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iput-object p2, p0, Lcom/netease/dwrg/MovieDialog;->m_movie_view:Lcom/netease/dwrg/MovieView;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/netease/dwrg/MovieDialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/netease/dwrg/MovieDialog;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/netease/dwrg/MovieDialog;->m_view:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public delayedHide(I)V
    .locals 4
    .param p1, "delayMillis"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/netease/dwrg/MovieDialog;->mHideRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/netease/dwrg/MovieDialog;->mHideHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/dwrg/MovieDialog;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 53
    iget-object v0, p0, Lcom/netease/dwrg/MovieDialog;->mHideHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/dwrg/MovieDialog;->mHideRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 56
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 123
    iget-object v0, p0, Lcom/netease/dwrg/MovieDialog;->m_movie_view:Lcom/netease/dwrg/MovieView;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/netease/dwrg/MovieDialog;->m_movie_view:Lcom/netease/dwrg/MovieView;

    invoke-virtual {v0}, Lcom/netease/dwrg/MovieView;->pauseVideo()V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/netease/dwrg/MovieDialog;->m_movie_view:Lcom/netease/dwrg/MovieView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 130
    iget-object v0, p0, Lcom/netease/dwrg/MovieDialog;->m_movie_view:Lcom/netease/dwrg/MovieView;

    invoke-virtual {v0}, Lcom/netease/dwrg/MovieView;->resumeVideo()V

    .line 132
    :cond_1
    return-void
.end method

.method public setBounds(IIII)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/netease/dwrg/MovieDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 137
    .local v0, "wl":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 138
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 139
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 140
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 141
    invoke-virtual {p0}, Lcom/netease/dwrg/MovieDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 142
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 61
    iput-object p1, p0, Lcom/netease/dwrg/MovieDialog;->m_view:Landroid/view/View;

    .line 63
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 65
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_1

    .line 67
    iget-object v2, p0, Lcom/netease/dwrg/MovieDialog;->m_view:Landroid/view/View;

    const/16 v3, 0xf06

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 75
    :goto_0
    iget-object v2, p0, Lcom/netease/dwrg/MovieDialog;->m_view:Landroid/view/View;

    new-instance v3, Lcom/netease/dwrg/MovieDialog$1;

    invoke-direct {v3, p0}, Lcom/netease/dwrg/MovieDialog$1;-><init>(Lcom/netease/dwrg/MovieDialog;)V

    .line 76
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 85
    :cond_0
    new-instance v2, Lcom/netease/dwrg/MovieDialog$2;

    invoke-direct {v2, p0}, Lcom/netease/dwrg/MovieDialog$2;-><init>(Lcom/netease/dwrg/MovieDialog;)V

    iput-object v2, p0, Lcom/netease/dwrg/MovieDialog;->mHideRunnable:Ljava/lang/Runnable;

    .line 107
    invoke-virtual {p0, p1}, Lcom/netease/dwrg/MovieDialog;->setContentView(Landroid/view/View;)V

    .line 108
    invoke-virtual {p0}, Lcom/netease/dwrg/MovieDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 109
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 110
    .local v1, "wl":Landroid/view/WindowManager$LayoutParams;
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 111
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 112
    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 113
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 114
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 115
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 116
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 117
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 118
    return-void

    .line 72
    .end local v0    # "window":Landroid/view/Window;
    .end local v1    # "wl":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    iget-object v2, p0, Lcom/netease/dwrg/MovieDialog;->m_view:Landroid/view/View;

    const/16 v3, 0x505

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method
