.class public final Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat$Impl26;
.super Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat$Impl23;
.source "WindowInsetsControllerCompat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Impl26"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0008H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat$Impl26;",
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat$Impl23;",
        "window",
        "Landroid/view/Window;",
        "softwareKeyboardControllerCompat",
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/SoftwareKeyboardControllerCompat;",
        "(Landroid/view/Window;Lcom/bytedance/ttgame/tob/common/host/framework/compat/SoftwareKeyboardControllerCompat;)V",
        "isAppearanceLightNavigationBars",
        "",
        "setAppearanceLightNavigationBars",
        "",
        "isLight",
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
.method public constructor <init>(Landroid/view/Window;Lcom/bytedance/ttgame/tob/common/host/framework/compat/SoftwareKeyboardControllerCompat;)V
    .locals 1

    const-string/jumbo v0, "window"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "softwareKeyboardControllerCompat"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    invoke-direct {p0, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Lcom/bytedance/ttgame/tob/common/host/framework/compat/SoftwareKeyboardControllerCompat;)V

    return-void
.end method


# virtual methods
.method public isAppearanceLightNavigationBars()Z
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat$Impl26;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "147843d89424fee7282b72011f80dd6b"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 297
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat$Impl26;->getMWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    and-int/lit8 v1, v1, 0x10

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

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat$Impl26;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "f9bf19e53ee3611ac977cd8d1d440ff0"

    invoke-static {v0, p0, v1, v2, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x10

    if-eqz p1, :cond_1

    const/high16 p1, 0x8000000

    .line 302
    invoke-virtual {p0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat$Impl26;->unsetWindowFlag(I)V

    const/high16 p1, -0x80000000

    .line 303
    invoke-virtual {p0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat$Impl26;->setWindowFlag(I)V

    .line 304
    invoke-virtual {p0, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat$Impl26;->setSystemUiFlag(I)V

    goto :goto_0

    .line 306
    :cond_1
    invoke-virtual {p0, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat$Impl26;->unsetSystemUiFlag(I)V

    :goto_0
    return-void
.end method
