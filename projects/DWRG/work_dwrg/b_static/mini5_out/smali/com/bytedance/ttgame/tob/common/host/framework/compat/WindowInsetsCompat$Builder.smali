.class public final Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002B\u000f\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0006\u0010\u0008\u001a\u00020\u0004J\u0010\u0010\t\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0016\u0010\u000c\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u000fJ\u0016\u0010\u0010\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u000fJ\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u000fJ\u0010\u0010\u0012\u001a\u00020\u00002\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014J\u0018\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u000e2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018J\u000e\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u000fJ\u000e\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u000fJ\u000e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u000fJ\u000e\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u000fJ\u0016\u0010\u001d\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u001fR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;",
        "",
        "()V",
        "insets",
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;",
        "(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;)V",
        "mImpl",
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl;",
        "build",
        "setDisplayCutout",
        "displayCutout",
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;",
        "setInsets",
        "typeMask",
        "",
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;",
        "setInsetsIgnoringVisibility",
        "setMandatorySystemGestureInsets",
        "setPrivacyIndicatorBounds",
        "bounds",
        "Landroid/graphics/Rect;",
        "setRoundedCorner",
        "position",
        "roundedCorner",
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/RoundedCornerCompat;",
        "setStableInsets",
        "setSystemGestureInsets",
        "setSystemWindowInsets",
        "setTappableElementInsets",
        "setVisible",
        "visible",
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
.field private final mImpl:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 848
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 849
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    .line 850
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl34;

    invoke-direct {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl34;-><init>()V

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl;

    goto :goto_0

    .line 851
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    .line 852
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl31;

    invoke-direct {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl31;-><init>()V

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl;

    goto :goto_0

    .line 853
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_2

    .line 854
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl30;

    invoke-direct {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl30;-><init>()V

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl;

    goto :goto_0

    .line 855
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_3

    .line 856
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl29;

    invoke-direct {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl29;-><init>()V

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl;

    goto :goto_0

    .line 858
    :cond_3
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl20;

    invoke-direct {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl20;-><init>()V

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl;

    .line 849
    :goto_0
    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;->mImpl:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;)V
    .locals 2

    const-string v0, "insets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 862
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 863
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    .line 864
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl34;

    invoke-direct {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl34;-><init>(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;)V

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl;

    goto :goto_0

    .line 865
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    .line 866
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl31;

    invoke-direct {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl31;-><init>(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;)V

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl;

    goto :goto_0

    .line 867
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_2

    .line 868
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl30;

    invoke-direct {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl30;-><init>(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;)V

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl;

    goto :goto_0

    .line 869
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_3

    .line 870
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl29;

    invoke-direct {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl29;-><init>(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;)V

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl;

    goto :goto_0

    .line 872
    :cond_3
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl20;

    invoke-direct {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl20;-><init>(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;)V

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl;

    .line 863
    :goto_0
    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;->mImpl:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl;

    return-void
.end method


# virtual methods
.method public final build()Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "8748c1b56afa418cc7a21e822c95cc76"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;

    return-object v0

    .line 932
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;->mImpl:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl;

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl;->build()Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public final setDisplayCutout(Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;)Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "1f927e0417a3e8f372abaf91d9a75c8b"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;

    return-object p1

    .line 917
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;->mImpl:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl;

    invoke-virtual {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl;->setDisplayCutout(Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;)V

    return-object p0
.end method

.method public final setInsets(ILcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;)Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "1a85e8d4b1c6e892fb9b64e762b10210"

    invoke-static {v0, p0, v1, v2, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;

    return-object p1

    :cond_0
    const-string v0, "insets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 897
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;->mImpl:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl;->setInsets(ILcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;)V

    return-object p0
.end method

.method public final setInsetsIgnoringVisibility(ILcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;)Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "7495a2e7d08c5ac4e5e82a576b5af0d9"

    invoke-static {v0, p0, v1, v2, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;

    return-object p1

    :cond_0
    const-string v0, "insets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 902
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;->mImpl:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl;->setInsetsIgnoringVisibility(ILcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;)V

    return-object p0
.end method

.method public final setMandatorySystemGestureInsets(Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;)Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "da0389ff94849cb0f142c9c11e849f5f"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;

    return-object p1

    :cond_0
    const-string v0, "insets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 887
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;->mImpl:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl;

    invoke-virtual {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl;->setMandatorySystemGestureInsets(Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;)V

    return-object p0
.end method

.method public final setPrivacyIndicatorBounds(Landroid/graphics/Rect;)Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "1bb8f44d717fea513f1375a1806a02a4"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;

    return-object p1

    .line 927
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;->mImpl:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl;

    invoke-virtual {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl;->setPrivacyIndicatorBounds(Landroid/graphics/Rect;)V

    return-object p0
.end method

.method public final setRoundedCorner(ILcom/bytedance/ttgame/tob/common/host/framework/compat/RoundedCornerCompat;)Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "7da07522a7cb4f04428b85b733340127"

    invoke-static {v0, p0, v1, v2, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;

    return-object p1

    .line 922
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;->mImpl:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl;->setRoundedCorner(ILcom/bytedance/ttgame/tob/common/host/framework/compat/RoundedCornerCompat;)V

    return-object p0
.end method

.method public final setStableInsets(Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;)Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "590d0970c94927ddea449e1426fe70bb"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;

    return-object p1

    :cond_0
    const-string v0, "insets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 912
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;->mImpl:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl;

    invoke-virtual {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl;->setStableInsets(Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;)V

    return-object p0
.end method

.method public final setSystemGestureInsets(Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;)Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "1d05e5d837b949aafef04fee4f2e03e5"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;

    return-object p1

    :cond_0
    const-string v0, "insets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 882
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;->mImpl:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl;

    invoke-virtual {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl;->setSystemGestureInsets(Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;)V

    return-object p0
.end method

.method public final setSystemWindowInsets(Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;)Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "76f80941533b9598d0ceb4746853f755"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;

    return-object p1

    :cond_0
    const-string v0, "insets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 877
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;->mImpl:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl;

    invoke-virtual {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl;->setSystemWindowInsets(Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;)V

    return-object p0
.end method

.method public final setTappableElementInsets(Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;)Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "5b9f51135e8cb8c94162621d9f74af10"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;

    return-object p1

    :cond_0
    const-string v0, "insets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 892
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;->mImpl:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl;

    invoke-virtual {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl;->setTappableElementInsets(Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;)V

    return-object p0
.end method

.method public final setVisible(IZ)Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, p2}, Ljava/lang/Byte;-><init>(B)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "19eb130499785d5393abe69198faf5e9"

    invoke-static {v0, p0, v1, v2, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;

    return-object p1

    .line 907
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;->mImpl:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl;->setVisible(IZ)V

    return-object p0
.end method
