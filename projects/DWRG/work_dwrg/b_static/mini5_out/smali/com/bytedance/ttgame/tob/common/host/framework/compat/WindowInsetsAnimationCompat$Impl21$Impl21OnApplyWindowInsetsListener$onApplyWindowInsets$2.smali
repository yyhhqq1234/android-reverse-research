.class public final Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$onApplyWindowInsets$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WindowInsetsAnimationCompat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$onApplyWindowInsets$2",
        "Landroid/animation/AnimatorListenerAdapter;",
        "onAnimationEnd",
        "",
        "animator",
        "Landroid/animation/Animator;",
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
.field final synthetic $anim:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;

.field final synthetic $v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$onApplyWindowInsets$2;->$anim:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;

    iput-object p2, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$onApplyWindowInsets$2;->$v:Landroid/view/View;

    .line 442
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$onApplyWindowInsets$2;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "41f27c48f16183b0d9b041e134aa362d"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 444
    iget-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$onApplyWindowInsets$2;->$anim:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;->setFraction(F)V

    .line 445
    sget-object p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl21;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl21$Companion;

    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$onApplyWindowInsets$2;->$v:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$onApplyWindowInsets$2;->$anim:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl21$Companion;->dispatchOnEnd(Landroid/view/View;Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;)V

    return-void
.end method
