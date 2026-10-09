.class public final Lcom/bytedance/ttgame/tob/common/host/framework/compat/ViewCompat$Api21Impl$setOnApplyWindowInsetsListener$wrappedUserListener$1;
.super Ljava/lang/Object;
.source "ViewCompat.kt"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/compat/ViewCompat$Api21Impl;->setOnApplyWindowInsetsListener(Landroid/view/View;Lcom/bytedance/ttgame/tob/common/host/framework/compat/OnApplyWindowInsetsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\tH\u0016R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\r"
    }
    d2 = {
        "com/bytedance/ttgame/tob/common/host/framework/compat/ViewCompat$Api21Impl$setOnApplyWindowInsetsListener$wrappedUserListener$1",
        "Landroid/view/View$OnApplyWindowInsetsListener;",
        "mLastInsets",
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;",
        "getMLastInsets",
        "()Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;",
        "setMLastInsets",
        "(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;)V",
        "onApplyWindowInsets",
        "Landroid/view/WindowInsets;",
        "view",
        "Landroid/view/View;",
        "insets",
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
.field final synthetic $listener:Lcom/bytedance/ttgame/tob/common/host/framework/compat/OnApplyWindowInsetsListener;

.field final synthetic $outerView:Landroid/view/View;

.field private mLastInsets:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/bytedance/ttgame/tob/common/host/framework/compat/OnApplyWindowInsetsListener;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/ViewCompat$Api21Impl$setOnApplyWindowInsetsListener$wrappedUserListener$1;->$outerView:Landroid/view/View;

    iput-object p2, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/ViewCompat$Api21Impl$setOnApplyWindowInsetsListener$wrappedUserListener$1;->$listener:Lcom/bytedance/ttgame/tob/common/host/framework/compat/OnApplyWindowInsetsListener;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMLastInsets()Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/ViewCompat$Api21Impl$setOnApplyWindowInsetsListener$wrappedUserListener$1;->mLastInsets:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;

    return-object v0
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/ViewCompat$Api21Impl$setOnApplyWindowInsetsListener$wrappedUserListener$1;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "cbad2fc33f94605cf347698213854ead"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/view/WindowInsets;

    return-object p1

    :cond_0
    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Companion;

    invoke-virtual {v0, p2, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Companion;->toWindowInsetsCompat(Landroid/view/WindowInsets;Landroid/view/View;)Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;

    move-result-object v0

    .line 69
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_1

    .line 70
    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/ViewCompat$Api21Impl;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/compat/ViewCompat$Api21Impl;

    iget-object v3, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/ViewCompat$Api21Impl$setOnApplyWindowInsetsListener$wrappedUserListener$1;->$outerView:Landroid/view/View;

    invoke-virtual {v1, p2, v3}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/ViewCompat$Api21Impl;->callCompatInsetAnimationCallback(Landroid/view/WindowInsets;Landroid/view/View;)V

    .line 71
    iget-object p2, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/ViewCompat$Api21Impl$setOnApplyWindowInsetsListener$wrappedUserListener$1;->mLastInsets:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 72
    iget-object p2, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/ViewCompat$Api21Impl$setOnApplyWindowInsetsListener$wrappedUserListener$1;->$listener:Lcom/bytedance/ttgame/tob/common/host/framework/compat/OnApplyWindowInsetsListener;

    invoke-interface {p2, p1, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;)Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1

    .line 75
    :cond_1
    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/ViewCompat$Api21Impl$setOnApplyWindowInsetsListener$wrappedUserListener$1;->mLastInsets:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;

    .line 76
    iget-object p2, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/ViewCompat$Api21Impl$setOnApplyWindowInsetsListener$wrappedUserListener$1;->$listener:Lcom/bytedance/ttgame/tob/common/host/framework/compat/OnApplyWindowInsetsListener;

    invoke-interface {p2, p1, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;)Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;

    move-result-object p2

    .line 77
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_2

    .line 78
    invoke-virtual {p2}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1

    .line 80
    :cond_2
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/ViewCompat;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/compat/ViewCompat;

    invoke-virtual {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 81
    invoke-virtual {p2}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final setMLastInsets(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/ViewCompat$Api21Impl$setOnApplyWindowInsetsListener$wrappedUserListener$1;->mLastInsets:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;

    return-void
.end method
