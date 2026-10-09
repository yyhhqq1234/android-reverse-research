.class public abstract Lcom/netease/mobile/link/o0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mobile/link/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/view/Window;

.field public b:I

.field public volatile c:Z

.field public volatile d:Z


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/widget/editor/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mobile/link/o0$b;->a:Landroid/view/Window;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget p1, v1, Landroid/graphics/Point;->y:I

    iput p1, p0, Lcom/netease/mobile/link/o0$b;->b:I

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/netease/mobile/link/o0$b;->b:I

    :goto_0
    iput-boolean v0, p0, Lcom/netease/mobile/link/o0$b;->d:Z

    iput-boolean v0, p0, Lcom/netease/mobile/link/o0$b;->c:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 7

    iget-object v0, p0, Lcom/netease/mobile/link/o0$b;->a:Landroid/view/Window;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    new-array v3, v2, [I

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x1

    aget v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    iget v6, p0, Lcom/netease/mobile/link/o0$b;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v2

    const-string v2, "FEPresentController: isKeyboardOn: @windowY=%d, @windowHeight=%d, @screenHeight=%d"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "MobileLink"

    .line 1
    invoke-static {v4, v2}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    aget v2, v3, v5

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x64

    iget v2, p0, Lcom/netease/mobile/link/o0$b;->b:I

    if-ge v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final run()V
    .locals 4

    invoke-virtual {p0}, Lcom/netease/mobile/link/o0$b;->a()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FEPresentController: onGlobalLayout check run: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MobileLink"

    .line 1
    invoke-static {v2, v1}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v1, p0, Lcom/netease/mobile/link/o0$b;->c:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/netease/mobile/link/o0$b;->c:Z

    move-object v0, p0

    check-cast v0, Lcom/netease/mobile/link/o0$a$a$a;

    const-string v1, "FEPresentController: onSoftInputMethodGone"

    .line 3
    invoke-static {v2, v1}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/netease/mobile/link/o0;->a()Lcom/netease/mobile/link/o0;

    move-result-object v1

    iget-object v0, v0, Lcom/netease/mobile/link/o0$a$a$a;->e:Lcom/netease/mobile/link/o0$a$a;

    iget-object v0, v0, Lcom/netease/mobile/link/o0$a$a;->c:Lcom/netease/mobile/link/widget/editor/a;

    invoke-virtual {v1, v0}, Lcom/netease/mobile/link/o0;->a(Lcom/netease/mobile/link/widget/editor/a;)V

    .line 5
    :cond_0
    iput-boolean v3, p0, Lcom/netease/mobile/link/o0$b;->d:Z

    return-void
.end method
