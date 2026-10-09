.class public Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationControllerCompat$Impl;
.super Ljava/lang/Object;
.source "WindowInsetsAnimationControllerCompat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Impl"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0012\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\u0008H\u0017J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\u000bH\u0016J\u0008\u0010\r\u001a\u00020\u000bH\u0016J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u0006H\u0016J\u0008\u0010\u0011\u001a\u00020\u0006H\u0016J&\u0010\u0012\u001a\u00020\u00042\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u000b2\u0008\u0008\u0001\u0010\u0014\u001a\u00020\u00082\u0008\u0008\u0001\u0010\u0015\u001a\u00020\u0008H\u0016\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationControllerCompat$Impl;",
        "",
        "()V",
        "finish",
        "",
        "shown",
        "",
        "getCurrentAlpha",
        "",
        "getCurrentFraction",
        "getCurrentInsets",
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;",
        "getHiddenStateInsets",
        "getShownStateInsets",
        "getTypes",
        "",
        "isCancelled",
        "isFinished",
        "setInsetsAndAlpha",
        "insets",
        "alpha",
        "fraction",
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
.method public constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(Z)V
    .locals 0

    return-void
.end method

.method public getCurrentAlpha()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentFraction()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentInsets()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationControllerCompat$Impl;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "cb5576a6b1a1c58a48f66ce905f17142"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    return-object v0

    .line 86
    :cond_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;->getNONE()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object v0

    return-object v0
.end method

.method public getHiddenStateInsets()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationControllerCompat$Impl;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "6ca639ddd084d7031d735cbb26eb822c"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    return-object v0

    .line 78
    :cond_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;->getNONE()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object v0

    return-object v0
.end method

.method public getShownStateInsets()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationControllerCompat$Impl;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "74898d9f980c1f3369100b04ecb6fd9f"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    return-object v0

    .line 82
    :cond_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;->getNONE()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object v0

    return-object v0
.end method

.method public getTypes()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCancelled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isFinished()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setInsetsAndAlpha(Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;FF)V
    .locals 0

    return-void
.end method
