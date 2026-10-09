.class public final Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Companion;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J.\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\rJ\u001c\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00122\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Companion;",
        "",
        "()V",
        "CONSUMED",
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;",
        "getCONSUMED",
        "()Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;",
        "TAG",
        "",
        "insetInsets",
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;",
        "insets",
        "left",
        "",
        "top",
        "right",
        "bottom",
        "toWindowInsetsCompat",
        "Landroid/view/WindowInsets;",
        "view",
        "Landroid/view/View;",
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

    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Companion;-><init>()V

    return-void
.end method

.method public static synthetic toWindowInsetsCompat$default(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Companion;Landroid/view/WindowInsets;Landroid/view/View;ILjava/lang/Object;)Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v2, 0x2

    aput-object p2, v0, v2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x3

    aput-object v3, v0, v4

    const/4 v3, 0x4

    aput-object p4, v0, v3

    sget-object p4, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Companion;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "66e4c9f539d2f26f63f0ec11b0dd7f04"

    const/4 v4, 0x0

    invoke-static {v0, v4, p4, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object p4

    if-eqz p4, :cond_0

    iget-object p0, p4, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;

    return-object p0

    :cond_0
    and-int/2addr p3, v2

    if-eqz p3, :cond_1

    move-object p2, v4

    .line 47
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Companion;->toWindowInsetsCompat(Landroid/view/WindowInsets;Landroid/view/View;)Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getCONSUMED()Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;
    .locals 1

    .line 38
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;->CONSUMED:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;

    return-object v0
.end method

.method public final insetInsets(Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;IIII)Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p5}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x4

    aput-object v2, v0, v3

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Companion;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "08236daac52bb178623ed2317ef551fc"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    return-object p1

    :cond_0
    const-string v0, "insets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->getLeft()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-static {v1, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 59
    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->getTop()I

    move-result v2

    sub-int/2addr v2, p3

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    .line 60
    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->getRight()I

    move-result v3

    sub-int/2addr v3, p4

    invoke-static {v1, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v3

    .line 61
    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->getBottom()I

    move-result v4

    sub-int/2addr v4, p5

    invoke-static {v1, v4}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    if-ne v0, p2, :cond_1

    if-ne v2, p3, :cond_1

    if-ne v3, p4, :cond_1

    if-ne v1, p5, :cond_1

    return-object p1

    .line 65
    :cond_1
    sget-object p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;->of(IIII)Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object p1

    return-object p1
.end method

.method public final toWindowInsetsCompat(Landroid/view/WindowInsets;Landroid/view/View;)Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Companion;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "7895c572bf497c03d63bda3209bd40af"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;

    return-object p1

    :cond_0
    const-string v0, "insets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/utils/Preconditions;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/compat/utils/Preconditions;

    invoke-virtual {v1, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowInsets;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;-><init>(Landroid/view/WindowInsets;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-eqz p2, :cond_1

    .line 49
    invoke-virtual {p2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 50
    sget-object p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/ViewCompat;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/compat/ViewCompat;

    invoke-virtual {p1, p2}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;->setRootWindowInsets(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;)V

    .line 51
    invoke-virtual {p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    const-string/jumbo v1, "view.rootView"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;->copyRootViewBounds(Landroid/view/View;)V

    .line 52
    invoke-virtual {p2}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;->setSystemUiVisibility(I)V

    :cond_1
    return-object v0
.end method
