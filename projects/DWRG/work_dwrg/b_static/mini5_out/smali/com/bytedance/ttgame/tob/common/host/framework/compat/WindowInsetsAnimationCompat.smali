.class public final Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;
.super Ljava/lang/Object;
.source "WindowInsetsAnimationCompat.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Companion;,
        Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$BoundsCompat;,
        Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Callback;,
        Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl;,
        Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl21;,
        Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl30;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\n\u0008\u0007\u0018\u0000 \u001c2\u00020\u0001:\u0006\u001a\u001b\u001c\u001d\u001e\u001fB\u000f\u0008\u0013\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u001f\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u0008\u0010\u000e\u001a\u00020\u000fH\u0007J\u0006\u0010\u0010\u001a\u00020\nJ\u0008\u0010\u0011\u001a\u00020\u000fH\u0007J\u0006\u0010\u0012\u001a\u00020\u000fJ\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0008J\u0006\u0010\u0014\u001a\u00020\u0006J\u0010\u0010\u0015\u001a\u00020\u00162\u0008\u0008\u0001\u0010\u0017\u001a\u00020\u000fJ\u0010\u0010\u0018\u001a\u00020\u00162\u0008\u0008\u0001\u0010\u0019\u001a\u00020\u000fR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;",
        "",
        "animation",
        "Landroid/view/WindowInsetsAnimation;",
        "(Landroid/view/WindowInsetsAnimation;)V",
        "typeMask",
        "",
        "interpolator",
        "Landroid/view/animation/Interpolator;",
        "durationMillis",
        "",
        "(ILandroid/view/animation/Interpolator;J)V",
        "mImpl",
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl;",
        "getAlpha",
        "",
        "getDurationMillis",
        "getFraction",
        "getInterpolatedFraction",
        "getInterpolator",
        "getTypeMask",
        "setAlpha",
        "",
        "alpha",
        "setFraction",
        "fraction",
        "BoundsCompat",
        "Callback",
        "Companion",
        "Impl",
        "Impl21",
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
.field public static final Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Companion;

.field private static final TAG:Ljava/lang/String; = "WindowInsetsAnimCompat"

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field private mImpl:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Companion;

    return-void
.end method

.method public constructor <init>(ILandroid/view/animation/Interpolator;J)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 68
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl30;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl30;-><init>(ILandroid/view/animation/Interpolator;J)V

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl;

    goto :goto_0

    .line 70
    :cond_0
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl21;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl21;-><init>(ILandroid/view/animation/Interpolator;J)V

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl;

    .line 67
    :goto_0
    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;->mImpl:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl;

    return-void
.end method

.method private constructor <init>(Landroid/view/WindowInsetsAnimation;)V
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 75
    invoke-direct {p0, v3, v0, v1, v2}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;-><init>(ILandroid/view/animation/Interpolator;J)V

    .line 76
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl30;

    invoke-direct {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl30;-><init>(Landroid/view/WindowInsetsAnimation;)V

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl;

    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;->mImpl:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/WindowInsetsAnimation;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;-><init>(Landroid/view/WindowInsetsAnimation;)V

    return-void
.end method


# virtual methods
.method public final getAlpha()F
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "c9b7ee03def7934659e0f02151425fd2"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;->mImpl:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl;

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl;->getAlpha()F

    move-result v0

    return v0
.end method

.method public final getDurationMillis()J
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "c2dcfbb48935b6818e0957505d6b43dc"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;->mImpl:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl;

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl;->getDurationMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getFraction()F
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "c9173c7eba886268d1292d31b74a4b65"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;->mImpl:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl;

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl;->getFraction()F

    move-result v0

    return v0
.end method

.method public final getInterpolatedFraction()F
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "4e1dc58967578cd64869cfb7ddc1c387"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;->mImpl:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl;

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl;->getInterpolatedFraction()F

    move-result v0

    return v0
.end method

.method public final getInterpolator()Landroid/view/animation/Interpolator;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "2b1ef0473eec55b0a81eaee68316cc52"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Landroid/view/animation/Interpolator;

    return-object v0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;->mImpl:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl;

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0
.end method

.method public final getTypeMask()I
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "06846b892dd8333b16cc86625066dbe0"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;->mImpl:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl;

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl;->getTypeMask()I

    move-result v0

    return v0
.end method

.method public final setAlpha(F)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p1}, Ljava/lang/Float;-><init>(F)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "c4042d71e5a61b9b8e6f8111df3b62ae"

    invoke-static {v0, p0, v1, v2, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;->mImpl:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl;

    invoke-virtual {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl;->setAlpha(F)V

    return-void
.end method

.method public final setFraction(F)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p1}, Ljava/lang/Float;-><init>(F)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "ecd2b01457d89569398da9bcc8580473"

    invoke-static {v0, p0, v1, v2, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;->mImpl:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl;

    invoke-virtual {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl;->setFraction(F)V

    return-void
.end method
