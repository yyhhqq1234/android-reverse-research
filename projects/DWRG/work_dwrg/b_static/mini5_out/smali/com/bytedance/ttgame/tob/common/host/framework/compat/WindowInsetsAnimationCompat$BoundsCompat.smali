.class public final Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$BoundsCompat;
.super Ljava/lang/Object;
.source "WindowInsetsAnimationCompat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BoundsCompat"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$BoundsCompat$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005B\u000f\u0008\u0013\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0003J\u0008\u0010\u000e\u001a\u00020\u0007H\u0007J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\n\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$BoundsCompat;",
        "",
        "lowerBound",
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;",
        "upperBound",
        "(Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;)V",
        "bounds",
        "Landroid/view/WindowInsetsAnimation$Bounds;",
        "(Landroid/view/WindowInsetsAnimation$Bounds;)V",
        "getLowerBound",
        "()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;",
        "getUpperBound",
        "inset",
        "insets",
        "toBounds",
        "toString",
        "",
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
.field public static final Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$BoundsCompat$Companion;

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field private final lowerBound:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

.field private final upperBound:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$BoundsCompat$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$BoundsCompat$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$BoundsCompat;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$BoundsCompat$Companion;

    return-void
.end method

.method private constructor <init>(Landroid/view/WindowInsetsAnimation$Bounds;)V
    .locals 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl30;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl30$Companion;

    invoke-virtual {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl30$Companion;->getLowerBounds(Landroid/view/WindowInsetsAnimation$Bounds;)Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$BoundsCompat;->lowerBound:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    .line 133
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl30;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl30$Companion;

    invoke-virtual {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl30$Companion;->getHigherBounds(Landroid/view/WindowInsetsAnimation$Bounds;)Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$BoundsCompat;->upperBound:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/WindowInsetsAnimation$Bounds;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$BoundsCompat;-><init>(Landroid/view/WindowInsetsAnimation$Bounds;)V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;)V
    .locals 1

    const-string v0, "lowerBound"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "upperBound"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$BoundsCompat;->lowerBound:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    .line 127
    iput-object p2, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$BoundsCompat;->upperBound:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    return-void
.end method


# virtual methods
.method public final getLowerBound()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$BoundsCompat;->lowerBound:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    return-object v0
.end method

.method public final getUpperBound()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$BoundsCompat;->upperBound:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    return-object v0
.end method

.method public final inset(Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;)Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$BoundsCompat;
    .locals 8

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$BoundsCompat;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "3a76a3d111930e0b62e1ba3c3a2d9359"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$BoundsCompat;

    return-object p1

    :cond_0
    const-string v0, "insets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$BoundsCompat;

    .line 138
    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Companion;

    iget-object v2, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$BoundsCompat;->lowerBound:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->getLeft()I

    move-result v3

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->getTop()I

    move-result v4

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->getRight()I

    move-result v5

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->getBottom()I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Companion;->insetInsets(Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;IIII)Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object v1

    .line 139
    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Companion;

    iget-object v3, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$BoundsCompat;->upperBound:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->getLeft()I

    move-result v4

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->getTop()I

    move-result v5

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->getRight()I

    move-result v6

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->getBottom()I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Companion;->insetInsets(Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;IIII)Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object p1

    .line 137
    invoke-direct {v0, v1, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$BoundsCompat;-><init>(Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;)V

    return-object v0
.end method

.method public final toBounds()Landroid/view/WindowInsetsAnimation$Bounds;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$BoundsCompat;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "6909e8662292f1dc67e2f809879d7cd4"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowInsetsAnimation$Bounds;

    return-object v0

    .line 145
    :cond_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl30;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl30$Companion;

    invoke-virtual {v0, p0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Impl30$Companion;->createPlatformBounds(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$BoundsCompat;)Landroid/view/WindowInsetsAnimation$Bounds;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$BoundsCompat;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "6db1a339dc3e3846a86cc99f4657055a"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 149
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bounds{lower="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$BoundsCompat;->lowerBound:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " upper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$BoundsCompat;->upperBound:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
