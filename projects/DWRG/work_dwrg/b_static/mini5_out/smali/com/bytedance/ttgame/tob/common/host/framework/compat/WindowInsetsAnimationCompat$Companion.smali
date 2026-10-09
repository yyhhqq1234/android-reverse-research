.class public final Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Companion;
.super Ljava/lang/Object;
.source "WindowInsetsAnimationCompat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nJ\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "setCallback",
        "",
        "view",
        "Landroid/view/View;",
        "callback",
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Callback;",
        "toWindowInsetsAnimationCompat",
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;",
        "windowInsetsAnimation",
        "Landroid/view/WindowInsetsAnimation;",
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
.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final setCallback(Landroid/view/View;Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Callback;)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Companion;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "5c7560b92fe162775aa3223144ab9e56"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    .line 56
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl30;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl30$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl30$Companion;->setCallback(Landroid/view/View;Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Callback;)V

    goto :goto_0

    .line 58
    :cond_1
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl21;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl21$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl21$Companion;->setCallback(Landroid/view/View;Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Callback;)V

    :goto_0
    return-void
.end method

.method public final toWindowInsetsAnimationCompat(Landroid/view/WindowInsetsAnimation;)Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Companion;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "7a8ed098c3a4ff53cbc58629c1d849d4"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;

    return-object p1

    :cond_0
    const-string/jumbo v0, "windowInsetsAnimation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;-><init>(Landroid/view/WindowInsetsAnimation;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
