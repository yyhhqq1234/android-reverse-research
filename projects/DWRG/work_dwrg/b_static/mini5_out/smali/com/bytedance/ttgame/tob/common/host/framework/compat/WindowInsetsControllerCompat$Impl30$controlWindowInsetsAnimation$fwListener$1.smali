.class public final Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat$Impl30$controlWindowInsetsAnimation$fwListener$1;
.super Ljava/lang/Object;
.source "WindowInsetsControllerCompat.kt"

# interfaces
.implements Landroid/view/WindowInsetsAnimationControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat$Impl30;->controlWindowInsetsAnimation(IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationControlListenerCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\t\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000bH\u0016R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "com/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat$Impl30$controlWindowInsetsAnimation$fwListener$1",
        "Landroid/view/WindowInsetsAnimationControlListener;",
        "mCompatAnimController",
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationControllerCompat;",
        "onCancelled",
        "",
        "controller",
        "Landroid/view/WindowInsetsAnimationController;",
        "onFinished",
        "onReady",
        "types",
        "",
        "ch_framework_tobRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field final synthetic $listener:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationControlListenerCompat;

.field private mCompatAnimController:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationControllerCompat;


# direct methods
.method constructor <init>(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationControlListenerCompat;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat$Impl30$controlWindowInsetsAnimation$fwListener$1;->$listener:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationControlListenerCompat;

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Landroid/view/WindowInsetsAnimationController;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat$Impl30$controlWindowInsetsAnimation$fwListener$1;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "c7551b2d0786b057c73239345057a7cb"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat$Impl30$controlWindowInsetsAnimation$fwListener$1;->$listener:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationControlListenerCompat;

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat$Impl30$controlWindowInsetsAnimation$fwListener$1;->mCompatAnimController:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationControllerCompat;

    :goto_0
    invoke-interface {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationControlListenerCompat;->onCancelled(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationControllerCompat;)V

    :cond_2
    return-void
.end method

.method public onFinished(Landroid/view/WindowInsetsAnimationController;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat$Impl30$controlWindowInsetsAnimation$fwListener$1;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "84c35657629b01cdc461115dc34d57ab"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "controller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 388
    iget-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat$Impl30$controlWindowInsetsAnimation$fwListener$1;->$listener:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationControlListenerCompat;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat$Impl30$controlWindowInsetsAnimation$fwListener$1;->mCompatAnimController:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationControllerCompat;

    invoke-interface {p1, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationControlListenerCompat;->onFinished(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationControllerCompat;)V

    :cond_1
    return-void
.end method

.method public onReady(Landroid/view/WindowInsetsAnimationController;I)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x1

    aput-object v2, v0, v3

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat$Impl30$controlWindowInsetsAnimation$fwListener$1;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "76b47d9d047e3b2e67b210484c992224"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "controller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 383
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationControllerCompat;

    invoke-direct {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationControllerCompat;-><init>(Landroid/view/WindowInsetsAnimationController;)V

    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat$Impl30$controlWindowInsetsAnimation$fwListener$1;->mCompatAnimController:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationControllerCompat;

    .line 384
    iget-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat$Impl30$controlWindowInsetsAnimation$fwListener$1;->$listener:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationControlListenerCompat;

    if-eqz p1, :cond_1

    invoke-interface {p1, v0, p2}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationControlListenerCompat;->onReady(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationControllerCompat;I)V

    :cond_1
    return-void
.end method
