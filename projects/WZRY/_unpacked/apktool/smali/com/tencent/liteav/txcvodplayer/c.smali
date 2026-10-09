.class public Lcom/tencent/liteav/txcvodplayer/c;
.super Landroid/view/SurfaceView;
.source "SurfaceRenderView.java"

# interfaces
.implements Lcom/tencent/liteav/txcvodplayer/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/txcvodplayer/c$b;,
        Lcom/tencent/liteav/txcvodplayer/c$a;
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/liteav/txcvodplayer/b;

.field private b:Lcom/tencent/liteav/txcvodplayer/c$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 48
    invoke-direct {p0, p1}, Lcom/tencent/liteav/txcvodplayer/c;->a(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 68
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/b;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/b;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/c;->a:Lcom/tencent/liteav/txcvodplayer/b;

    .line 69
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/c$b;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/c$b;-><init>(Lcom/tencent/liteav/txcvodplayer/c;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/c;->b:Lcom/tencent/liteav/txcvodplayer/c$b;

    .line 70
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/c;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/c;->b:Lcom/tencent/liteav/txcvodplayer/c$b;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 72
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/c;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 73
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    .prologue
    .line 90
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 91
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/c;->a:Lcom/tencent/liteav/txcvodplayer/b;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/liteav/txcvodplayer/b;->a(II)V

    .line 92
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/c;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 93
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/c;->requestLayout()V

    .line 95
    :cond_0
    return-void
.end method

.method public a(Lcom/tencent/liteav/txcvodplayer/a$a;)V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/c;->b:Lcom/tencent/liteav/txcvodplayer/c$b;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcvodplayer/c$b;->a(Lcom/tencent/liteav/txcvodplayer/a$a;)V

    .line 187
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public b(II)V
    .locals 1

    .prologue
    .line 99
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 100
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/c;->a:Lcom/tencent/liteav/txcvodplayer/b;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/liteav/txcvodplayer/b;->b(II)V

    .line 101
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/c;->requestLayout()V

    .line 103
    :cond_0
    return-void
.end method

.method public b(Lcom/tencent/liteav/txcvodplayer/a$a;)V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/c;->b:Lcom/tencent/liteav/txcvodplayer/c$b;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcvodplayer/c$b;->b(Lcom/tencent/liteav/txcvodplayer/a$a;)V

    .line 192
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 77
    return-object p0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 283
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 284
    const-class v0, Lcom/tencent/liteav/txcvodplayer/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 285
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 290
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 291
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 292
    const-class v0, Lcom/tencent/liteav/txcvodplayer/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 294
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/c;->a:Lcom/tencent/liteav/txcvodplayer/b;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/liteav/txcvodplayer/b;->c(II)V

    .line 119
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/c;->a:Lcom/tencent/liteav/txcvodplayer/b;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/b;->a()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/c;->a:Lcom/tencent/liteav/txcvodplayer/b;

    invoke-virtual {v1}, Lcom/tencent/liteav/txcvodplayer/b;->b()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/liteav/txcvodplayer/c;->setMeasuredDimension(II)V

    .line 120
    return-void
.end method

.method public setAspectRatio(I)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/c;->a:Lcom/tencent/liteav/txcvodplayer/b;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcvodplayer/b;->b(I)V

    .line 113
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/c;->requestLayout()V

    .line 114
    return-void
.end method

.method public setVideoRotation(I)V
    .locals 3

    .prologue
    .line 107
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SurfaceView doesn\'t support rotation ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")!\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method
