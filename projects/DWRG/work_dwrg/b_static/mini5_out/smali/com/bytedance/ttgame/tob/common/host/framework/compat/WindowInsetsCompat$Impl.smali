.class public Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Impl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u0011\n\u0002\u0008\u000b\u0008\u0012\u0018\u0000 82\u00020\u0001:\u00018B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0007\u001a\u00020\u0003H\u0016J\u0008\u0010\u0008\u001a\u00020\u0003H\u0016J\u0008\u0010\t\u001a\u00020\u0003H\u0016J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u0003H\u0016J\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\n\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0008\u0010\u0019\u001a\u00020\u0015H\u0016J\n\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u001e\u001a\u00020\u0017H\u0016J\u0008\u0010\u001f\u001a\u00020\u0015H\u0016J\u0008\u0010 \u001a\u00020\u0015H\u0016J\u0008\u0010!\u001a\u00020\u0015H\u0016J\u0008\u0010\"\u001a\u00020\u0015H\u0016J\u0008\u0010#\u001a\u00020\u0017H\u0016J(\u0010$\u001a\u00020\u00032\u0006\u0010%\u001a\u00020\u00172\u0006\u0010&\u001a\u00020\u00172\u0006\u0010\'\u001a\u00020\u00172\u0006\u0010(\u001a\u00020\u0017H\u0016J\u0008\u0010)\u001a\u00020\u0011H\u0016J\u0008\u0010*\u001a\u00020\u0011H\u0016J\u0010\u0010+\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u001f\u0010,\u001a\u00020\u000b2\u0010\u0010-\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0015\u0018\u00010.H\u0016\u00a2\u0006\u0002\u0010/J\u0010\u00100\u001a\u00020\u000b2\u0006\u00101\u001a\u00020\u0015H\u0016J\u0012\u00102\u001a\u00020\u000b2\u0008\u00103\u001a\u0004\u0018\u00010\u0003H\u0016J\u0012\u00104\u001a\u00020\u000b2\u0008\u00105\u001a\u0004\u0018\u00010\u0015H\u0016J\u0010\u00106\u001a\u00020\u000b2\u0006\u00107\u001a\u00020\u0017H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u00069"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl;",
        "",
        "mHost",
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;",
        "(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;)V",
        "getMHost",
        "()Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;",
        "consumeDisplayCutout",
        "consumeStableInsets",
        "consumeSystemWindowInsets",
        "copyRootViewBounds",
        "",
        "rootView",
        "Landroid/view/View;",
        "copyWindowDataInto",
        "other",
        "equals",
        "",
        "getDisplayCutout",
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;",
        "getInsets",
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;",
        "typeMask",
        "",
        "getInsetsIgnoringVisibility",
        "getMandatorySystemGestureInsets",
        "getPrivacyIndicatorBounds",
        "Landroid/graphics/Rect;",
        "getRoundedCorner",
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/RoundedCornerCompat;",
        "position",
        "getStableInsets",
        "getSystemGestureInsets",
        "getSystemWindowInsets",
        "getTappableElementInsets",
        "hashCode",
        "inset",
        "left",
        "top",
        "right",
        "bottom",
        "isConsumed",
        "isRound",
        "isVisible",
        "setOverriddenInsets",
        "insetsTypeMask",
        "",
        "([Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;)V",
        "setRootViewData",
        "visibleInsets",
        "setRootWindowInsets",
        "rootWindowInsets",
        "setStableInsets",
        "stableInsets",
        "setSystemUiVisibility",
        "systemUiVisibility",
        "Companion",
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
.field public static final CONSUMED:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;

.field public static final Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl$Companion;

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field private final mHost:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl$Companion;

    .line 306
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;

    invoke-direct {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;-><init>()V

    .line 307
    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;->build()Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;

    move-result-object v0

    .line 308
    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;->consumeDisplayCutout()Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;

    move-result-object v0

    .line 309
    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;->consumeStableInsets()Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;

    move-result-object v0

    .line 310
    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;->consumeSystemWindowInsets()Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;

    move-result-object v0

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl;->CONSUMED:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;)V
    .locals 1

    const-string v0, "mHost"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl;->mHost:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;

    return-void
.end method


# virtual methods
.method public consumeDisplayCutout()Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl;->mHost:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;

    return-object v0
.end method

.method public consumeStableInsets()Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl;->mHost:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;

    return-object v0
.end method

.method public consumeSystemWindowInsets()Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl;->mHost:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;

    return-object v0
.end method

.method public copyRootViewBounds(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "62173de1c4942ef8e2033ac67cba6417"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public copyWindowDataInto(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "09c5de1e40923113c5266e16375e9812"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "041f15d8eb0acdae31dbe96842eea5fe"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    if-ne p0, p1, :cond_1

    return v0

    .line 387
    :cond_1
    instance-of v1, p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl;

    if-nez v1, :cond_2

    return v2

    .line 388
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl;->isRound()Z

    move-result v1

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl;

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl;->isRound()Z

    move-result v3

    if-ne v1, v3, :cond_3

    .line 389
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl;->isConsumed()Z

    move-result v1

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl;->isConsumed()Z

    move-result v3

    if-ne v1, v3, :cond_3

    .line 390
    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/utils/ObjectsCompat;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/compat/utils/ObjectsCompat;

    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl;->getSystemWindowInsets()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object v3

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl;->getSystemWindowInsets()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/utils/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 391
    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/utils/ObjectsCompat;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/compat/utils/ObjectsCompat;

    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl;->getStableInsets()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object v3

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl;->getStableInsets()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/utils/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 392
    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/utils/ObjectsCompat;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/compat/utils/ObjectsCompat;

    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl;->getDisplayCutout()Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;

    move-result-object v3

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl;->getDisplayCutout()Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/utils/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDisplayCutout()Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getInsets(I)Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v2, "f39332ac04612f86af377620c9abfd6f"

    invoke-static {v0, p0, v1, p1, v2}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    return-object p1

    .line 365
    :cond_0
    sget-object p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;->getNONE()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object p1

    return-object p1
.end method

.method public getInsetsIgnoringVisibility(I)Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "6a1eafcadfd8c3efea01fa47ae11b833"

    invoke-static {v1, p0, v2, v3, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    return-object p1

    :cond_0
    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 370
    sget-object p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;->getNONE()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object p1

    return-object p1

    .line 369
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unable to query the maximum insets for IME"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getMHost()Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl;->mHost:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;

    return-object v0
.end method

.method public getMandatorySystemGestureInsets()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "07675099b2831f2f972a2383b37d2505"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    return-object v0

    .line 353
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl;->getSystemWindowInsets()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object v0

    return-object v0
.end method

.method public getPrivacyIndicatorBounds()Landroid/graphics/Rect;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRoundedCorner(I)Lcom/bytedance/ttgame/tob/common/host/framework/compat/RoundedCornerCompat;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getStableInsets()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "4147c465a311a334ac5d17237734ad00"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    return-object v0

    .line 345
    :cond_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;->getNONE()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object v0

    return-object v0
.end method

.method public getSystemGestureInsets()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "28ab175f2cb5aaad98a26c73f710f234"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    return-object v0

    .line 349
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl;->getSystemWindowInsets()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object v0

    return-object v0
.end method

.method public getSystemWindowInsets()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "8e56eb3919983aa6ea7aeb4001bb66ba"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    return-object v0

    .line 338
    :cond_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;->getNONE()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object v0

    return-object v0
.end method

.method public getTappableElementInsets()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "7f707a2677a7f864331da6e58b7b0ec3"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    return-object v0

    .line 357
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl;->getSystemWindowInsets()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "14c37edd34a7b443b85279ed44249ab0"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 396
    :cond_0
    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/utils/ObjectsCompat;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/compat/utils/ObjectsCompat;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl;->isRound()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl;->isConsumed()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl;->getSystemWindowInsets()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl;->getStableInsets()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl;->getDisplayCutout()Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/utils/ObjectsCompat;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public inset(IIII)Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;
    .locals 0

    .line 361
    sget-object p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl;->CONSUMED:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;

    return-object p1
.end method

.method public isConsumed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRound()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVisible(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public setOverriddenInsets([Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;)V
    .locals 0

    return-void
.end method

.method public setRootViewData(Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "d48547a4b9df2cb2fcda1fbfcf98edf0"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "visibleInsets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setRootWindowInsets(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;)V
    .locals 0

    return-void
.end method

.method public setStableInsets(Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;)V
    .locals 0

    return-void
.end method

.method public setSystemUiVisibility(I)V
    .locals 0

    return-void
.end method
