.class public final Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat$Impl35;
.super Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat$Impl31;
.source "WindowInsetsControllerCompat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Impl35"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0003\u0018\u00002\u00020\u0001B\u001f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008B\u001f\u0008\u0016\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u000bJ\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\rH\u0016J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\rH\u0016J\u0010\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\rH\u0016\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat$Impl35;",
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat$Impl31;",
        "window",
        "Landroid/view/Window;",
        "compatController",
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat;",
        "softwareKeyboardControllerCompat",
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/SoftwareKeyboardControllerCompat;",
        "(Landroid/view/Window;Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat;Lcom/bytedance/ttgame/tob/common/host/framework/compat/SoftwareKeyboardControllerCompat;)V",
        "insetsController",
        "Landroid/view/WindowInsetsController;",
        "(Landroid/view/WindowInsetsController;Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat;Lcom/bytedance/ttgame/tob/common/host/framework/compat/SoftwareKeyboardControllerCompat;)V",
        "isAppearanceLightNavigationBars",
        "",
        "isAppearanceLightStatusBars",
        "setAppearanceLightNavigationBars",
        "",
        "isLight",
        "setAppearanceLightStatusBars",
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


# direct methods
.method public constructor <init>(Landroid/view/Window;Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat;Lcom/bytedance/ttgame/tob/common/host/framework/compat/SoftwareKeyboardControllerCompat;)V
    .locals 1

    const-string/jumbo v0, "window"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compatController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "softwareKeyboardControllerCompat"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 488
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat$Impl31;-><init>(Landroid/view/Window;Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat;Lcom/bytedance/ttgame/tob/common/host/framework/compat/SoftwareKeyboardControllerCompat;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsetsController;Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat;Lcom/bytedance/ttgame/tob/common/host/framework/compat/SoftwareKeyboardControllerCompat;)V
    .locals 1

    const-string v0, "insetsController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compatController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "softwareKeyboardControllerCompat"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 491
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat$Impl31;-><init>(Landroid/view/WindowInsetsController;Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat;Lcom/bytedance/ttgame/tob/common/host/framework/compat/SoftwareKeyboardControllerCompat;)V

    return-void
.end method


# virtual methods
.method public isAppearanceLightNavigationBars()Z
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat$Impl35;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "9c6bbc4e15d641ed9bdfbdfd5543cc00"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 498
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat$Impl35;->getMInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowInsetsController;->getSystemBarsAppearance()I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isAppearanceLightStatusBars()Z
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat$Impl35;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "a36b9753138ec0de3bdf25474b1d87b3"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 494
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat$Impl35;->getMInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowInsetsController;->getSystemBarsAppearance()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public setAppearanceLightNavigationBars(Z)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, p1}, Ljava/lang/Byte;-><init>(B)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat$Impl35;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "85f010a77f48868099cccc4e9932af86"

    invoke-static {v0, p0, v1, v2, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 506
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat$Impl35;->getMInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    const/16 v1, 0x10

    if-eqz p1, :cond_1

    const/16 v2, 0x10

    :cond_1
    invoke-interface {v0, v2, v1}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    return-void
.end method

.method public setAppearanceLightStatusBars(Z)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, p1}, Ljava/lang/Byte;-><init>(B)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat$Impl35;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "850864fdd4cfcda2c05bd680950a9992"

    invoke-static {v0, p0, v1, v2, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 502
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat$Impl35;->getMInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    const/16 v2, 0x8

    :cond_1
    invoke-interface {v0, v2, v1}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    return-void
.end method
