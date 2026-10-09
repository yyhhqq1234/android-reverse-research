.class public abstract Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Callback;
.super Ljava/lang/Object;
.source "WindowInsetsAnimationCompat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Callback$Companion;,
        Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Callback$DispatchMode;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008&\u0018\u0000 \u00192\u00020\u0001:\u0002\u0019\u001aB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u001e\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0013\u001a\u00020\u00082\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0015H&J\u0018\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u0017H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Callback;",
        "",
        "dispatchMode",
        "",
        "(I)V",
        "getDispatchMode",
        "()I",
        "mDispachedInsets",
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;",
        "getMDispachedInsets",
        "()Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;",
        "setMDispachedInsets",
        "(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;)V",
        "onEnd",
        "",
        "animation",
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;",
        "onPrepare",
        "onProgress",
        "insets",
        "runningAnimations",
        "",
        "onStart",
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$BoundsCompat;",
        "bounds",
        "Companion",
        "DispatchMode",
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
.field public static final Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Callback$Companion;

.field public static final DISPATCH_MODE_CONTINUE_ON_SUBTREE:I = 0x1

.field public static final DISPATCH_MODE_STOP:I

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field private final dispatchMode:I

.field private mDispachedInsets:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Callback$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Callback$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Callback;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Callback$Companion;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Callback;->dispatchMode:I

    return-void
.end method


# virtual methods
.method public final getDispatchMode()I
    .locals 1

    .line 153
    iget v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Callback;->dispatchMode:I

    return v0
.end method

.method public final getMDispachedInsets()Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Callback;->mDispachedInsets:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;

    return-object v0
.end method

.method public onEnd(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Callback;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "6406a484fcf71fff79d0f348f4acdb36"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onPrepare(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Callback;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "76bb8dcfe97cbc8764cac22d290759ad"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public abstract onProgress(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;Ljava/util/List;)Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;",
            "Ljava/util/List<",
            "Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;",
            ">;)",
            "Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;"
        }
    .end annotation
.end method

.method public onStart(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat;Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$BoundsCompat;)Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$BoundsCompat;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Callback;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "85feaf2c3b6a55742e25c2c5ec99c5b9"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$BoundsCompat;

    return-object p1

    :cond_0
    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "bounds"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method

.method public final setMDispachedInsets(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsAnimationCompat$Callback;->mDispachedInsets:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;

    return-void
.end method
