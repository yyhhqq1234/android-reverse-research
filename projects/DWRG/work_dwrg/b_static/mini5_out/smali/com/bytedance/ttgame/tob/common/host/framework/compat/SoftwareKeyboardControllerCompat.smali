.class public final Lcom/bytedance/ttgame/tob/common/host/framework/compat/SoftwareKeyboardControllerCompat;
.super Ljava/lang/Object;
.source "SoftwareKeyboardControllerCompat.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ttgame/tob/common/host/framework/compat/SoftwareKeyboardControllerCompat$Impl;,
        Lcom/bytedance/ttgame/tob/common/host/framework/compat/SoftwareKeyboardControllerCompat$Impl20;,
        Lcom/bytedance/ttgame/tob/common/host/framework/compat/SoftwareKeyboardControllerCompat$Impl30;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0003\r\u000e\u000fB\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u000f\u0008\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\u000c\u001a\u00020\u000bR\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/SoftwareKeyboardControllerCompat;",
        "",
        "view",
        "Landroid/view/View;",
        "(Landroid/view/View;)V",
        "windowInsetsController",
        "Landroid/view/WindowInsetsController;",
        "(Landroid/view/WindowInsetsController;)V",
        "mImpl",
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/SoftwareKeyboardControllerCompat$Impl;",
        "hide",
        "",
        "show",
        "Impl",
        "Impl20",
        "Impl30",
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
.field private final mImpl:Lcom/bytedance/ttgame/tob/common/host/framework/compat/SoftwareKeyboardControllerCompat$Impl;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 34
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/SoftwareKeyboardControllerCompat$Impl30;

    invoke-direct {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/SoftwareKeyboardControllerCompat$Impl30;-><init>(Landroid/view/View;)V

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/SoftwareKeyboardControllerCompat$Impl;

    goto :goto_0

    .line 36
    :cond_0
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/SoftwareKeyboardControllerCompat$Impl20;

    invoke-direct {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/SoftwareKeyboardControllerCompat$Impl20;-><init>(Landroid/view/View;)V

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/SoftwareKeyboardControllerCompat$Impl;

    .line 33
    :goto_0
    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/SoftwareKeyboardControllerCompat;->mImpl:Lcom/bytedance/ttgame/tob/common/host/framework/compat/SoftwareKeyboardControllerCompat$Impl;

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsetsController;)V
    .locals 1

    const-string/jumbo v0, "windowInsetsController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/SoftwareKeyboardControllerCompat$Impl30;

    invoke-direct {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/SoftwareKeyboardControllerCompat$Impl30;-><init>(Landroid/view/WindowInsetsController;)V

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/SoftwareKeyboardControllerCompat$Impl;

    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/SoftwareKeyboardControllerCompat;->mImpl:Lcom/bytedance/ttgame/tob/common/host/framework/compat/SoftwareKeyboardControllerCompat$Impl;

    return-void
.end method


# virtual methods
.method public final hide()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/SoftwareKeyboardControllerCompat;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "7dbee655add840fe46929941b8c2345c"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/SoftwareKeyboardControllerCompat;->mImpl:Lcom/bytedance/ttgame/tob/common/host/framework/compat/SoftwareKeyboardControllerCompat$Impl;

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/SoftwareKeyboardControllerCompat$Impl;->hide()V

    return-void
.end method

.method public final show()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/SoftwareKeyboardControllerCompat;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "c4f7c38d9fd6f29de30f15b896cde9f8"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/SoftwareKeyboardControllerCompat;->mImpl:Lcom/bytedance/ttgame/tob/common/host/framework/compat/SoftwareKeyboardControllerCompat$Impl;

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/SoftwareKeyboardControllerCompat$Impl;->show()V

    return-void
.end method
