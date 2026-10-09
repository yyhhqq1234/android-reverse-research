.class public final Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl34;
.super Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl31;
.source "WindowInsetsCompat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BuilderImpl34"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002B\u000f\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\nH\u0016J\u0018\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\nH\u0016J\u0018\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000eH\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl34;",
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl31;",
        "()V",
        "insets",
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;",
        "(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;)V",
        "setInsets",
        "",
        "typeMask",
        "",
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;",
        "setInsetsIgnoringVisibility",
        "setVisible",
        "visible",
        "",
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
.method public constructor <init>()V
    .locals 0

    .line 1172
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl31;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;)V
    .locals 1

    const-string v0, "insets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1174
    invoke-direct {p0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl31;-><init>(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;)V

    return-void
.end method


# virtual methods
.method public setInsets(ILcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl34;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "99ecf80faa2a9aefba6ba3a66179ef8c"

    invoke-static {v0, p0, v1, v2, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "insets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1177
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl34;->getMPlatBuilder()Landroid/view/WindowInsets$Builder;

    move-result-object v0

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$TypeImpl34;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$TypeImpl34;

    invoke-virtual {v1, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$TypeImpl34;->toPlatformType(I)I

    move-result p1

    invoke-virtual {p2}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->toPlatformInsets()Landroid/graphics/Insets;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/view/WindowInsets$Builder;->setInsets(ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public setInsetsIgnoringVisibility(ILcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl34;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "dd833c4d454f279dae762ce80ad2772e"

    invoke-static {v0, p0, v1, v2, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "insets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1181
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl34;->getMPlatBuilder()Landroid/view/WindowInsets$Builder;

    move-result-object v0

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$TypeImpl34;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$TypeImpl34;

    invoke-virtual {v1, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$TypeImpl34;->toPlatformType(I)I

    move-result p1

    invoke-virtual {p2}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->toPlatformInsets()Landroid/graphics/Insets;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/view/WindowInsets$Builder;->setInsetsIgnoringVisibility(ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public setVisible(IZ)V
    .locals 4

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

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl34;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "bf3c669326f0a3f584ee786d1b291a9c"

    invoke-static {v0, p0, v1, v2, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 1185
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl34;->getMPlatBuilder()Landroid/view/WindowInsets$Builder;

    move-result-object v0

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$TypeImpl34;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$TypeImpl34;

    invoke-virtual {v1, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$TypeImpl34;->toPlatformType(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Landroid/view/WindowInsets$Builder;->setVisible(IZ)Landroid/view/WindowInsets$Builder;

    return-void
.end method
