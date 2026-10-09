.class public final Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;
.super Ljava/lang/Object;
.source "Insets.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;,
        Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Api29Impl;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \u00162\u00020\u0001:\u0002\u0015\u0016B\'\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007J\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u0010\u001a\u00020\u0003H\u0016J\u0008\u0010\u0011\u001a\u00020\u0012H\u0007J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\t\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;",
        "",
        "left",
        "",
        "top",
        "right",
        "bottom",
        "(IIII)V",
        "getBottom",
        "()I",
        "getLeft",
        "getRight",
        "getTop",
        "equals",
        "",
        "other",
        "hashCode",
        "toPlatformInsets",
        "Landroid/graphics/Insets;",
        "toString",
        "",
        "Api29Impl",
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
.field public static final Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;

.field public static final NONE:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field private final bottom:I

.field private final left:I

.field private final right:I

.field private final top:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;

    .line 25
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;-><init>(IIII)V

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->NONE:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->left:I

    iput p2, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->top:I

    iput p3, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->right:I

    iput p4, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->bottom:I

    return-void
.end method

.method public synthetic constructor <init>(IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "904f3e66efe25f3b25d22cb301c48dc2"

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

    :cond_1
    if-eqz p1, :cond_7

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 68
    :cond_2
    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    .line 69
    iget v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->bottom:I

    iget v3, p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->bottom:I

    if-eq v1, v3, :cond_3

    return v2

    .line 70
    :cond_3
    iget v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->left:I

    iget v3, p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->left:I

    if-eq v1, v3, :cond_4

    return v2

    .line 71
    :cond_4
    iget v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->right:I

    iget v3, p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->right:I

    if-eq v1, v3, :cond_5

    return v2

    .line 72
    :cond_5
    iget v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->top:I

    iget p1, p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->top:I

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0

    :cond_7
    :goto_0
    return v2
.end method

.method public final getBottom()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->bottom:I

    return v0
.end method

.method public final getLeft()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->left:I

    return v0
.end method

.method public final getRight()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->right:I

    return v0
.end method

.method public final getTop()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->top:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 77
    iget v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->left:I

    mul-int/lit8 v0, v0, 0x1f

    .line 78
    iget v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->top:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 79
    iget v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->right:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 80
    iget v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->bottom:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toPlatformInsets()Landroid/graphics/Insets;
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "9b8ab6ae0aa4706d7e9c922a58e7aca3"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Insets;

    return-object v0

    .line 90
    :cond_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Api29Impl;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Api29Impl;

    iget v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->left:I

    iget v2, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->top:I

    iget v3, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->right:I

    iget v4, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Api29Impl;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "13cfb93ad9dabfdb8a3ac5ce22e5e7f5"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Insets{left="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
