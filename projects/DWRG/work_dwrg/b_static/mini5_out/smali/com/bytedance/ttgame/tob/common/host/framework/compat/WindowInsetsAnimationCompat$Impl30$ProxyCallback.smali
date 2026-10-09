.class public final Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl30$ProxyCallback;
.super Landroid/view/WindowInsetsAnimation$Callback;
.source "WindowInsetsAnimationCompat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl30;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProxyCallback"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u0007J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0010\u001a\u00020\u0007H\u0016J\u0010\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0010\u001a\u00020\u0007H\u0016J\u001e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00152\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000bH\u0016J\u0018\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u0019H\u0016R*\u0010\u0005\u001a\u001e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006j\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0008`\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010\u000c\u001a\u0016\u0012\u0004\u0012\u00020\u0008\u0018\u00010\rj\n\u0012\u0004\u0012\u00020\u0008\u0018\u0001`\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl30$ProxyCallback;",
        "Landroid/view/WindowInsetsAnimation$Callback;",
        "mCompat",
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Callback;",
        "(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Callback;)V",
        "mAnimations",
        "Ljava/util/HashMap;",
        "Landroid/view/WindowInsetsAnimation;",
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;",
        "Lkotlin/collections/HashMap;",
        "mRORunningAnimations",
        "",
        "mTmpRunningAnimations",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "getWindowInsetsAnimationCompat",
        "animation",
        "onEnd",
        "",
        "onPrepare",
        "onProgress",
        "Landroid/view/WindowInsets;",
        "insets",
        "runningAnimations",
        "onStart",
        "Landroid/view/WindowInsetsAnimation$Bounds;",
        "bounds",
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
.field private final mAnimations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/WindowInsetsAnimation;",
            "Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;",
            ">;"
        }
    .end annotation
.end field

.field private final mCompat:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Callback;

.field private mRORunningAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpRunningAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Callback;)V
    .locals 1

    const-string v0, "mCompat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 494
    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Callback;->getDispatchMode()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/WindowInsetsAnimation$Callback;-><init>(I)V

    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->mCompat:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Callback;

    .line 497
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->mAnimations:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final getWindowInsetsAnimationCompat(Landroid/view/WindowInsetsAnimation;)Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "21857ac868ca44d4ab7877c608fbbb9c"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;

    return-object p1

    :cond_0
    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->mAnimations:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;

    if-nez v0, :cond_1

    .line 502
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Companion;

    invoke-virtual {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Companion;->toWindowInsetsAnimationCompat(Landroid/view/WindowInsetsAnimation;)Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;

    move-result-object v0

    .line 503
    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->mAnimations:Ljava/util/HashMap;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public onEnd(Landroid/view/WindowInsetsAnimation;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "9e5ae0557d02f7a7dbe13cf6cd8940bb"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->mCompat:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Callback;

    invoke-virtual {p0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->getWindowInsetsAnimationCompat(Landroid/view/WindowInsetsAnimation;)Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Callback;->onEnd(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;)V

    .line 535
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->mAnimations:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onPrepare(Landroid/view/WindowInsetsAnimation;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "1950ca3dad4880b408c3c73556ee3db4"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 509
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->mCompat:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Callback;

    invoke-virtual {p0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->getWindowInsetsAnimationCompat(Landroid/view/WindowInsetsAnimation;)Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Callback;->onPrepare(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;)V

    return-void
.end method

.method public onProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowInsets;",
            "Ljava/util/List<",
            "Landroid/view/WindowInsetsAnimation;",
            ">;)",
            "Landroid/view/WindowInsets;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p2, v1, v3

    sget-object v3, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "a7e95d8246a9ab05243f8c8ad2cf110c"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/view/WindowInsets;

    return-object p1

    :cond_0
    const-string v1, "insets"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "runningAnimations"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 517
    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->mTmpRunningAnimations:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 518
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->mTmpRunningAnimations:Ljava/util/ArrayList;

    .line 519
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->mRORunningAnimations:Ljava/util/List;

    goto :goto_0

    .line 521
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 524
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_3

    :goto_1
    add-int/lit8 v2, v1, -0x1

    .line 525
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowInsetsAnimation;

    .line 526
    invoke-virtual {p0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->getWindowInsetsAnimationCompat(Landroid/view/WindowInsetsAnimation;)Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;

    move-result-object v3

    .line 527
    invoke-virtual {v1}, Landroid/view/WindowInsetsAnimation;->getFraction()F

    move-result v1

    invoke-virtual {v3, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;->setFraction(F)V

    .line 528
    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->mTmpRunningAnimations:Ljava/util/ArrayList;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-gez v2, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    goto :goto_1

    .line 530
    :cond_3
    :goto_2
    iget-object p2, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->mCompat:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Callback;

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Companion;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2, v0, v2}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Companion;->toWindowInsetsCompat$default(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Companion;Landroid/view/WindowInsets;Landroid/view/View;ILjava/lang/Object;)Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->mRORunningAnimations:Ljava/util/List;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, p1, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Callback;->onProgress(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;Ljava/util/List;)Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    if-nez p1, :cond_4

    sget-object p1, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    const-string p2, "CONSUMED"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    return-object p1
.end method

.method public onStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "afdb432ca16d57478c4441afb55c3399"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/view/WindowInsetsAnimation$Bounds;

    return-object p1

    :cond_0
    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bounds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->mCompat:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Callback;

    invoke-virtual {p0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->getWindowInsetsAnimationCompat(Landroid/view/WindowInsetsAnimation;)Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;

    move-result-object p1

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$BoundsCompat;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$BoundsCompat$Companion;

    invoke-virtual {v1, p2}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$BoundsCompat$Companion;->toBoundsCompat(Landroid/view/WindowInsetsAnimation$Bounds;)Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$BoundsCompat;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Callback;->onStart(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$BoundsCompat;)Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$BoundsCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$BoundsCompat;->toBounds()Landroid/view/WindowInsetsAnimation$Bounds;

    move-result-object p1

    return-object p1
.end method
