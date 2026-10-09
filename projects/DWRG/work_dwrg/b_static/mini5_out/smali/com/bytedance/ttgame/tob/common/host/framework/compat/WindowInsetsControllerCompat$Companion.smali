.class public final Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat$Companion;
.super Ljava/lang/Object;
.source "WindowInsetsControllerCompat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat$Companion;",
        "",
        "()V",
        "BEHAVIOR_DEFAULT",
        "",
        "BEHAVIOR_SHOW_BARS_BY_SWIPE",
        "BEHAVIOR_SHOW_BARS_BY_TOUCH",
        "BEHAVIOR_SHOW_TRANSIENT_BARS_BY_SWIPE",
        "toWindowInsetsControllerCompat",
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat;",
        "insetsController",
        "Landroid/view/WindowInsetsController;",
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

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final toWindowInsetsControllerCompat(Landroid/view/WindowInsetsController;)Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat$Companion;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "7af17b859bbcb1f9bf6f6f47c860147b"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat;

    return-object p1

    :cond_0
    const-string v0, "insetsController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsControllerCompat;-><init>(Landroid/view/WindowInsetsController;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
