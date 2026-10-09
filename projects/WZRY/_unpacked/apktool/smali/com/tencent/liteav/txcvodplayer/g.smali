.class public Lcom/tencent/liteav/txcvodplayer/g;
.super Landroid/view/TextureView;
.source "TextureRenderView.java"

# interfaces
.implements Lcom/tencent/liteav/txcvodplayer/a;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/txcvodplayer/g$b;,
        Lcom/tencent/liteav/txcvodplayer/g$a;
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/liteav/txcvodplayer/b;

.field private b:Lcom/tencent/liteav/txcvodplayer/g$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-direct {p0, p1}, Lcom/tencent/liteav/txcvodplayer/g;->a(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/txcvodplayer/g;)Lcom/tencent/liteav/txcvodplayer/g$b;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/g;->b:Lcom/tencent/liteav/txcvodplayer/g$b;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/b;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/b;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/g;->a:Lcom/tencent/liteav/txcvodplayer/b;

    .line 72
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/g$b;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/g$b;-><init>(Lcom/tencent/liteav/txcvodplayer/g;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/g;->b:Lcom/tencent/liteav/txcvodplayer/g$b;

    .line 73
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/g;->b:Lcom/tencent/liteav/txcvodplayer/g$b;

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/txcvodplayer/g;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 74
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    .prologue
    .line 98
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 99
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/g;->a:Lcom/tencent/liteav/txcvodplayer/b;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/liteav/txcvodplayer/b;->a(II)V

    .line 100
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/g;->requestLayout()V

    .line 102
    :cond_0
    return-void
.end method

.method public a(Lcom/tencent/liteav/txcvodplayer/a$a;)V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/g;->b:Lcom/tencent/liteav/txcvodplayer/g$b;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcvodplayer/g$b;->a(Lcom/tencent/liteav/txcvodplayer/a$a;)V

    .line 224
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public b(II)V
    .locals 1

    .prologue
    .line 106
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 107
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/g;->a:Lcom/tencent/liteav/txcvodplayer/b;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/liteav/txcvodplayer/b;->b(II)V

    .line 108
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/g;->requestLayout()V

    .line 110
    :cond_0
    return-void
.end method

.method public b(Lcom/tencent/liteav/txcvodplayer/a$a;)V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/g;->b:Lcom/tencent/liteav/txcvodplayer/g$b;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcvodplayer/g$b;->b(Lcom/tencent/liteav/txcvodplayer/a$a;)V

    .line 229
    return-void
.end method

.method public getSurfaceHolder()Lcom/tencent/liteav/txcvodplayer/a$b;
    .locals 3

    .prologue
    .line 135
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/g$a;

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/g;->b:Lcom/tencent/liteav/txcvodplayer/g$b;

    invoke-static {v1}, Lcom/tencent/liteav/txcvodplayer/g$b;->a(Lcom/tencent/liteav/txcvodplayer/g$b;)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/g;->b:Lcom/tencent/liteav/txcvodplayer/g$b;

    invoke-direct {v0, p0, v1, v2}, Lcom/tencent/liteav/txcvodplayer/g$a;-><init>(Lcom/tencent/liteav/txcvodplayer/g;Landroid/graphics/SurfaceTexture;Lcom/tencent/ijk/media/player/ISurfaceTextureHost;)V

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 78
    return-object p0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/g;->b:Lcom/tencent/liteav/txcvodplayer/g$b;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/g$b;->a()V

    .line 89
    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    .line 90
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/g;->b:Lcom/tencent/liteav/txcvodplayer/g$b;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/g$b;->b()V

    .line 91
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 383
    invoke-super {p0, p1}, Landroid/view/TextureView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 384
    const-class v0, Lcom/tencent/liteav/txcvodplayer/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 385
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 389
    invoke-super {p0, p1}, Landroid/view/TextureView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 390
    const-class v0, Lcom/tencent/liteav/txcvodplayer/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 391
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/g;->a:Lcom/tencent/liteav/txcvodplayer/b;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/liteav/txcvodplayer/b;->c(II)V

    .line 127
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/g;->a:Lcom/tencent/liteav/txcvodplayer/b;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/b;->a()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/g;->a:Lcom/tencent/liteav/txcvodplayer/b;

    invoke-virtual {v1}, Lcom/tencent/liteav/txcvodplayer/b;->b()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/liteav/txcvodplayer/g;->setMeasuredDimension(II)V

    .line 128
    return-void
.end method

.method public setAspectRatio(I)V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/g;->a:Lcom/tencent/liteav/txcvodplayer/b;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcvodplayer/b;->b(I)V

    .line 121
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/g;->requestLayout()V

    .line 122
    return-void
.end method

.method public setVideoRotation(I)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/g;->a:Lcom/tencent/liteav/txcvodplayer/b;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcvodplayer/b;->a(I)V

    .line 115
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/txcvodplayer/g;->setRotation(F)V

    .line 116
    return-void
.end method
