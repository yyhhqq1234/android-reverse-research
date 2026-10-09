.class public final Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl20;
.super Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl;
.source "WindowInsetsCompat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BuilderImpl20"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl20$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002B\u000f\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\n\u001a\u00020\u0004H\u0016J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0003\u001a\u00020\tH\u0016J\u0010\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0003\u001a\u00020\tH\u0016R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl20;",
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl;",
        "()V",
        "insets",
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;",
        "(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;)V",
        "mPlatformInsets",
        "Landroid/view/WindowInsets;",
        "mStableInsets",
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;",
        "build",
        "setStableInsets",
        "",
        "setSystemWindowInsets",
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
.field public static final Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl20$Companion;

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

.field public static sConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Landroid/view/WindowInsets;",
            ">;"
        }
    .end annotation
.end field

.field public static sConstructorFetched:Z

.field public static sConsumedField:Ljava/lang/reflect/Field;

.field public static sConsumedFieldFetched:Z


# instance fields
.field private mPlatformInsets:Landroid/view/WindowInsets;

.field private mStableInsets:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl20$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl20$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl20;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl20$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1059
    invoke-direct {p0, v0, v1, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl;-><init>(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1060
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl20;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl20$Companion;

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl20$Companion;->createWindowInsetsInstance()Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl20;->mPlatformInsets:Landroid/view/WindowInsets;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;)V
    .locals 1

    const-string v0, "insets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1063
    invoke-direct {p0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl;-><init>(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;)V

    .line 1064
    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl20;->mPlatformInsets:Landroid/view/WindowInsets;

    return-void
.end method


# virtual methods
.method public build()Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl20;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "3a8f2124249dd93256ff1c7f698006f4"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;

    return-object v0

    .line 1078
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl20;->applyInsetTypes()V

    .line 1080
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Companion;

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl20;->mPlatformInsets:Landroid/view/WindowInsets;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Companion;->toWindowInsetsCompat$default(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Companion;Landroid/view/WindowInsets;Landroid/view/View;ILjava/lang/Object;)Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;

    move-result-object v0

    .line 1081
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl20;->getMInsetsTypeMask()[Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;->setOverriddenInsets([Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;)V

    .line 1082
    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl20;->mStableInsets:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    invoke-virtual {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;->setStableInsets(Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;)V

    return-object v0
.end method

.method public setStableInsets(Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl20;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "53548928f27820055b6c87d13b8152e5"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "insets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1074
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl20;->mStableInsets:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    return-void
.end method

.method public setSystemWindowInsets(Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl20;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "55f0591b0ed9d51d4f6c5f64bc5fc762"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "insets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1068
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl20;->mPlatformInsets:Landroid/view/WindowInsets;

    if-eqz v0, :cond_1

    .line 1069
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->getTop()I

    move-result v2

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->getRight()I

    move-result v3

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->getBottom()I

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$BuilderImpl20;->mPlatformInsets:Landroid/view/WindowInsets;

    :cond_1
    return-void
.end method
