.class public Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;
.super Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl;
.source "WindowInsetsCompat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Impl20"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\u0008\u001c\u0008\u0012\u0018\u0000 >2\u00020\u0001:\u0001>B\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0000\u00a2\u0006\u0002\u0010\u0005B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0010\u0010 \u001a\u00020\u001d2\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\u0013\u0010!\u001a\u00020\"2\u0008\u0010\u0004\u001a\u0004\u0018\u00010#H\u0096\u0002J\u0010\u0010$\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020\u0016H\u0016J\u0018\u0010$\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020\u00162\u0006\u0010&\u001a\u00020\"H\u0007J\u0018\u0010\'\u001a\u00020\u000b2\u0006\u0010(\u001a\u00020\u00162\u0006\u0010&\u001a\u00020\"H\u0004J\u0010\u0010)\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020\u0016H\u0016J\u0008\u0010*\u001a\u00020\u000bH\u0002J\u0008\u0010+\u001a\u00020\u000bH\u0016J\u0010\u0010,\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u001e\u001a\u00020\u001fJ(\u0010-\u001a\u00020\u00032\u0006\u0010.\u001a\u00020\u00162\u0006\u0010/\u001a\u00020\u00162\u0006\u00100\u001a\u00020\u00162\u0006\u00101\u001a\u00020\u0016H\u0016J\u0008\u00102\u001a\u00020\"H\u0016J\u0010\u00103\u001a\u00020\"2\u0006\u0010(\u001a\u00020\u0016H\u0004J\u0010\u00104\u001a\u00020\"2\u0006\u0010%\u001a\u00020\u0016H\u0017J\u001f\u00105\u001a\u00020\u001d2\u0010\u00106\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010\nH\u0016\u00a2\u0006\u0002\u00107J\u0010\u00108\u001a\u00020\u001d2\u0006\u00109\u001a\u00020\u000bH\u0016J\u0012\u0010:\u001a\u00020\u001d2\u0008\u0010;\u001a\u0004\u0018\u00010\u0003H\u0016J\u0010\u0010<\u001a\u00020\u001d2\u0006\u0010=\u001a\u00020\u0016H\u0016R\u001a\u0010\t\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006?"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;",
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl;",
        "host",
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;",
        "other",
        "(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;)V",
        "mPlatformInsets",
        "Landroid/view/WindowInsets;",
        "(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;Landroid/view/WindowInsets;)V",
        "mOverriddenInsets",
        "",
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;",
        "[Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;",
        "getMPlatformInsets",
        "()Landroid/view/WindowInsets;",
        "mRootViewVisibleInsets",
        "getMRootViewVisibleInsets",
        "()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;",
        "setMRootViewVisibleInsets",
        "(Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;)V",
        "mRootWindowInsets",
        "mSystemUiVisibility",
        "",
        "getMSystemUiVisibility",
        "()I",
        "setMSystemUiVisibility",
        "(I)V",
        "mSystemWindowInsets",
        "copyRootViewBounds",
        "",
        "rootView",
        "Landroid/view/View;",
        "copyWindowDataInto",
        "equals",
        "",
        "",
        "getInsets",
        "typeMask",
        "ignoreVisibility",
        "getInsetsForType",
        "type",
        "getInsetsIgnoringVisibility",
        "getRootStableInsets",
        "getSystemWindowInsets",
        "getVisibleInsets",
        "inset",
        "left",
        "top",
        "right",
        "bottom",
        "isRound",
        "isTypeVisible",
        "isVisible",
        "setOverriddenInsets",
        "insetsTypeMask",
        "([Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;)V",
        "setRootViewData",
        "visibleInsets",
        "setRootWindowInsets",
        "rootWindowInsets",
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
.field public static final Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20$Companion;

.field private static final SYSTEM_BAR_VISIBILITY_MASK:I = 0x6

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

.field public static sAttachInfoClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static sAttachInfoField:Ljava/lang/reflect/Field;

.field public static sGetViewRootImplMethod:Ljava/lang/reflect/Method;

.field public static sVisibleInsetsField:Ljava/lang/reflect/Field;

.field public static sVisibleRectReflectionFetched:Z


# instance fields
.field private mOverriddenInsets:[Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

.field private final mPlatformInsets:Landroid/view/WindowInsets;

.field private mRootViewVisibleInsets:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

.field private mRootWindowInsets:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;

.field private mSystemUiVisibility:I

.field private mSystemWindowInsets:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;Landroid/view/WindowInsets;)V
    .locals 1

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mPlatformInsets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    invoke-direct {p0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl;-><init>(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;)V

    iput-object p2, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;)V
    .locals 1

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 453
    new-instance v0, Landroid/view/WindowInsets;

    iget-object p2, p2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    invoke-direct {v0, p2}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    invoke-direct {p0, p1, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;-><init>(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;Landroid/view/WindowInsets;)V

    return-void
.end method

.method private final getRootStableInsets()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "99d589f55fe8b390493b648cfbff389b"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    return-object v0

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->mRootWindowInsets:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;

    if-eqz v0, :cond_1

    .line 620
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;->getStableInsets()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object v0

    goto :goto_0

    .line 622
    :cond_1
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;->getNONE()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public copyRootViewBounds(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "4f8f9970ef709e6b242265b817baf39a"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 627
    invoke-virtual {p0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->getVisibleInsets(Landroid/view/View;)Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object p1

    if-nez p1, :cond_1

    .line 629
    sget-object p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;->getNONE()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object p1

    .line 631
    :cond_1
    invoke-virtual {p0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->setRootViewData(Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;)V

    return-void
.end method

.method public copyWindowDataInto(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "79aff8bc6d58cafa58f6011083e267ee"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 602
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->mRootWindowInsets:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;

    invoke-virtual {p1, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;->setRootWindowInsets(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;)V

    .line 603
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->mRootViewVisibleInsets:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    if-eqz v0, :cond_1

    .line 604
    invoke-virtual {p1, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;->setRootViewData(Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;)V

    .line 606
    :cond_1
    iget v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->mSystemUiVisibility:I

    invoke-virtual {p1, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;->setSystemUiVisibility(I)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "462ae3e37c248ff6d6ad71699152f245"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 668
    :cond_0
    invoke-super {p0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    if-eqz p1, :cond_3

    .line 669
    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;

    .line 670
    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->mRootViewVisibleInsets:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    iget-object v3, p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->mRootViewVisibleInsets:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20$Companion;

    iget v3, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->mSystemUiVisibility:I

    iget p1, p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->mSystemUiVisibility:I

    invoke-virtual {v1, v3, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20$Companion;->systemBarVisibilityEquals(II)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 669
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type com.bytedance.ttgame.tob.common.host.framework.compat.WindowInsetsCompat.Impl20"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getInsets(I)Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "c9ca04239316a7945725088493d5ef47"

    invoke-static {v0, p0, v1, v2, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    return-object p1

    .line 460
    :cond_0
    invoke-virtual {p0, p1, v2}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->getInsets(IZ)Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object p1

    return-object p1
.end method

.method public final getInsets(IZ)Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;
    .locals 5

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

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "be4f5e7c453111b71a48f272cff6e7b1"

    invoke-static {v0, p0, v1, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    return-object p1

    .line 485
    :cond_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;->getNONE()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object v0

    :goto_0
    const/16 v1, 0x200

    if-gt v3, v1, :cond_2

    and-int v1, p1, v3

    if-nez v1, :cond_1

    goto :goto_1

    .line 492
    :cond_1
    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;

    invoke-virtual {p0, v3, p2}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->getInsetsForType(IZ)Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;->max(Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;)Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object v0

    :goto_1
    shl-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method protected final getInsetsForType(IZ)Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, p2}, Ljava/lang/Byte;-><init>(B)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v5, "25cdeed50591ad9d7e6eb39fe621f6b0"

    invoke-static {v1, p0, v2, v3, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    return-object p1

    :cond_0
    if-eq p1, v4, :cond_11

    const/4 v1, 0x0

    if-eq p1, v0, :cond_c

    const/16 p2, 0x8

    if-eq p1, p2, :cond_7

    const/16 p2, 0x10

    if-eq p1, p2, :cond_6

    const/16 p2, 0x20

    if-eq p1, p2, :cond_5

    const/16 p2, 0x40

    if-eq p1, p2, :cond_4

    const/16 p2, 0x80

    if-eq p1, p2, :cond_1

    .line 568
    sget-object p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;->getNONE()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object p1

    return-object p1

    .line 560
    :cond_1
    iget-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->mRootWindowInsets:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;->getDisplayCutout()Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->getDisplayCutout()Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_3

    .line 562
    sget-object p2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;->getSafeInsetLeft()I

    move-result v0

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;->getSafeInsetTop()I

    move-result v1

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;->getSafeInsetRight()I

    move-result v2

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;->getSafeInsetBottom()I

    move-result p1

    invoke-virtual {p2, v0, v1, v2, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;->of(IIII)Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object p1

    return-object p1

    .line 564
    :cond_3
    sget-object p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;->getNONE()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object p1

    return-object p1

    .line 556
    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->getTappableElementInsets()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object p1

    return-object p1

    .line 552
    :cond_5
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->getMandatorySystemGestureInsets()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object p1

    return-object p1

    .line 548
    :cond_6
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->getSystemGestureInsets()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object p1

    return-object p1

    .line 531
    :cond_7
    iget-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->mOverriddenInsets:[Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    if-eqz p1, :cond_8

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Type;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Type;

    invoke-virtual {v0, p2}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Type;->indexOf(I)I

    move-result p2

    aget-object v1, p1, p2

    :cond_8
    if-eqz v1, :cond_9

    return-object v1

    .line 535
    :cond_9
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->getSystemWindowInsets()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object p1

    .line 536
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->getRootStableInsets()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object p2

    .line 537
    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->getBottom()I

    move-result v0

    invoke-virtual {p2}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->getBottom()I

    move-result v1

    if-le v0, v1, :cond_a

    .line 538
    sget-object p2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->getBottom()I

    move-result p1

    invoke-virtual {p2, v3, v3, v3, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;->of(IIII)Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object p1

    return-object p1

    .line 539
    :cond_a
    iget-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->mRootViewVisibleInsets:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    if-eqz p1, :cond_b

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;->getNONE()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 540
    iget-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->mRootViewVisibleInsets:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->getBottom()I

    move-result p1

    invoke-virtual {p2}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->getBottom()I

    move-result p2

    if-le p1, p2, :cond_b

    .line 541
    sget-object p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;

    iget-object p2, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->mRootViewVisibleInsets:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->getBottom()I

    move-result p2

    invoke-virtual {p1, v3, v3, v3, p2}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;->of(IIII)Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object p1

    return-object p1

    .line 544
    :cond_b
    sget-object p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;->getNONE()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object p1

    return-object p1

    :cond_c
    if-eqz p2, :cond_d

    .line 514
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->getRootStableInsets()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object p1

    .line 515
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->getStableInsets()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object p2

    .line 516
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->getLeft()I

    move-result v2

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->getRight()I

    move-result v2

    invoke-virtual {p2}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->getRight()I

    move-result v4

    invoke-static {v2, v4}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->getBottom()I

    move-result p1

    invoke-virtual {p2}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->getBottom()I

    move-result p2

    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    invoke-virtual {v0, v1, v3, v2, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;->of(IIII)Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object p1

    return-object p1

    .line 517
    :cond_d
    iget p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->mSystemUiVisibility:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_e

    .line 518
    sget-object p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;->getNONE()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object p1

    return-object p1

    .line 520
    :cond_e
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->getSystemWindowInsets()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object p1

    .line 521
    iget-object p2, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->mRootWindowInsets:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;

    if-eqz p2, :cond_f

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;->getStableInsets()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object v1

    .line 522
    :cond_f
    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->getBottom()I

    move-result p2

    if-eqz v1, :cond_10

    .line 524
    invoke-virtual {v1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->getBottom()I

    move-result v0

    invoke-static {p2, v0}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p2

    .line 526
    :cond_10
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->getRight()I

    move-result p1

    invoke-virtual {v0, v1, v3, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;->of(IIII)Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object p1

    return-object p1

    :cond_11
    if-eqz p2, :cond_12

    .line 503
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->getRootStableInsets()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object p1

    .line 504
    sget-object p2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->getTop()I

    move-result p1

    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->getSystemWindowInsets()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->getTop()I

    move-result v0

    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    invoke-virtual {p2, v3, p1, v3, v3}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;->of(IIII)Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object p1

    return-object p1

    .line 505
    :cond_12
    iget p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->mSystemUiVisibility:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_13

    .line 506
    sget-object p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;->getNONE()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object p1

    return-object p1

    .line 508
    :cond_13
    sget-object p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;

    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->getSystemWindowInsets()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->getTop()I

    move-result p2

    invoke-virtual {p1, v3, p2, v3, v3}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;->of(IIII)Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

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

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "346752f09dbdf08ad4219707e1fd4b63"

    invoke-static {v1, p0, v2, v3, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    return-object p1

    .line 464
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->getInsets(IZ)Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object p1

    return-object p1
.end method

.method public final getMPlatformInsets()Landroid/view/WindowInsets;
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    return-object v0
.end method

.method public final getMRootViewVisibleInsets()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->mRootViewVisibleInsets:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    return-object v0
.end method

.method public final getMSystemUiVisibility()I
    .locals 1

    .line 451
    iget v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->mSystemUiVisibility:I

    return v0
.end method

.method public getSystemWindowInsets()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "5d54654fde238475bf89a8e618b33a35"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    return-object v0

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->mSystemWindowInsets:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    if-nez v0, :cond_1

    .line 582
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;

    .line 583
    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    .line 584
    iget-object v2, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    .line 585
    iget-object v3, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    .line 586
    iget-object v4, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    invoke-virtual {v4}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v4

    .line 582
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;->of(IIII)Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->mSystemWindowInsets:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    .line 589
    :cond_1
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->mSystemWindowInsets:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getVisibleInsets(Landroid/view/View;)Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "c01462c50c78a234a49ea5ab7c9fcee9"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    return-object p1

    :cond_0
    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 639
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v0, v2, :cond_9

    .line 642
    sget-boolean v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->sVisibleRectReflectionFetched:Z

    if-nez v0, :cond_1

    .line 643
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20$Companion;

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20$Companion;->loadReflectionField()V

    .line 645
    :cond_1
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->sGetViewRootImplMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    sget-object v3, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->sAttachInfoClass:Ljava/lang/Class;

    if-eqz v3, :cond_8

    sget-object v3, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->sVisibleInsetsField:Ljava/lang/reflect/Field;

    if-nez v3, :cond_2

    goto :goto_4

    :cond_2
    if-eqz v0, :cond_3

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 649
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object p1, v2

    :goto_0
    if-nez p1, :cond_4

    return-object v2

    .line 653
    :cond_4
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->sAttachInfoField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_5
    move-object p1, v2

    .line 654
    :goto_1
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->sVisibleInsetsField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    :cond_6
    move-object p1, v2

    :goto_2
    instance-of v0, p1, Landroid/graphics/Rect;

    if-eqz v0, :cond_7

    check-cast p1, Landroid/graphics/Rect;

    goto :goto_3

    :cond_7
    move-object p1, v2

    :goto_3
    if-eqz p1, :cond_8

    .line 655
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;

    invoke-virtual {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;->of(Landroid/graphics/Rect;)Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_8
    :goto_4
    return-object v2

    .line 640
    :cond_9
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public inset(IIII)Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;
    .locals 8

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x3

    aput-object v1, v0, v4

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "65f2128cb54993b631bc30586b557076"

    invoke-static {v0, p0, v1, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;

    return-object p1

    .line 594
    :cond_0
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Companion;

    iget-object v2, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3, v4}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Companion;->toWindowInsetsCompat$default(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Companion;Landroid/view/WindowInsets;Landroid/view/View;ILjava/lang/Object;)Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;-><init>(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;)V

    .line 595
    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Companion;

    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->getSystemWindowInsets()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object v3

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Companion;->insetInsets(Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;IIII)Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;->setSystemWindowInsets(Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;)Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;

    .line 596
    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Companion;

    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->getStableInsets()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object v3

    invoke-virtual/range {v2 .. v7}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Companion;->insetInsets(Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;IIII)Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;->setStableInsets(Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;)Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;

    .line 597
    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;->build()Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method

.method public isRound()Z
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "caa641f8cbb46cb0bf99bbc2dd1f43e7"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isRound()Z

    move-result v0

    return v0
.end method

.method protected final isTypeVisible(I)Z
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "e36fe865591c7b3d4a300692169724e9"

    invoke-static {v1, p0, v2, v3, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/16 v1, 0x8

    if-eq p1, v1, :cond_2

    const/16 v1, 0x80

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 574
    :cond_2
    invoke-virtual {p0, p1, v3}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->getInsetsForType(IZ)Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object p1

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;

    invoke-virtual {v1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;->getNONE()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    :goto_0
    return v0
.end method

.method public isVisible(I)Z
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "aac1eec27bdd68f9e17897ed5fa8cc69"

    invoke-static {v1, p0, v2, v3, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x200

    if-gt v1, v2, :cond_3

    and-int v2, p1, v1

    if-nez v2, :cond_2

    :cond_1
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 475
    :cond_2
    invoke-virtual {p0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->isTypeVisible(I)Z

    move-result v2

    if-nez v2, :cond_1

    return v3

    :cond_3
    return v0
.end method

.method public final setMRootViewVisibleInsets(Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->mRootViewVisibleInsets:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    return-void
.end method

.method public final setMSystemUiVisibility(I)V
    .locals 0

    .line 451
    iput p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->mSystemUiVisibility:I

    return-void
.end method

.method public setOverriddenInsets([Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;)V
    .locals 0

    .line 664
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->mOverriddenInsets:[Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    return-void
.end method

.method public setRootViewData(Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "98273d35d9443bf2491e8e1f41f1dc23"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "visibleInsets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 614
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->mRootViewVisibleInsets:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    return-void
.end method

.method public setRootWindowInsets(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;)V
    .locals 0

    .line 610
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->mRootWindowInsets:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;

    return-void
.end method

.method public setSystemUiVisibility(I)V
    .locals 0

    .line 635
    iput p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Impl20;->mSystemUiVisibility:I

    return-void
.end method
