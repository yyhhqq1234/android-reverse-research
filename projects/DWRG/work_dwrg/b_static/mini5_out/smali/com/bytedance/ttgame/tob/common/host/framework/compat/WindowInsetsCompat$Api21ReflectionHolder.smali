.class public final Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Api21ReflectionHolder;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Api21ReflectionHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000cR\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Api21ReflectionHolder;",
        "",
        "()V",
        "contentInsets",
        "Ljava/lang/reflect/Field;",
        "reflectionSucceeded",
        "",
        "stableInsets",
        "viewAttachInfoField",
        "getRootWindowInsets",
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;",
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
.field public static final INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Api21ReflectionHolder;

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

.field private static contentInsets:Ljava/lang/reflect/Field;

.field private static reflectionSucceeded:Z

.field private static stableInsets:Ljava/lang/reflect/Field;

.field private static viewAttachInfoField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Api21ReflectionHolder;

    invoke-direct {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Api21ReflectionHolder;-><init>()V

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Api21ReflectionHolder;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Api21ReflectionHolder;

    .line 77
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "mAttachInfo"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Api21ReflectionHolder;->viewAttachInfoField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :goto_0
    const-string v0, "android.view.View$AttachInfo"

    .line 79
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mStableInsets"

    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Api21ReflectionHolder;->stableInsets:Ljava/lang/reflect/Field;

    if-nez v2, :cond_1

    goto :goto_1

    .line 81
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :goto_1
    const-string v2, "mContentInsets"

    .line 82
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Api21ReflectionHolder;->contentInsets:Ljava/lang/reflect/Field;

    if-nez v0, :cond_2

    goto :goto_2

    .line 83
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 84
    :goto_2
    sput-boolean v1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Api21ReflectionHolder;->reflectionSucceeded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRootWindowInsets(Landroid/view/View;)Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Api21ReflectionHolder;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "088968d12537c07e0c169d976fe7ffee"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;

    return-object p1

    :cond_0
    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    sget-boolean v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Api21ReflectionHolder;->reflectionSucceeded:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 92
    :try_start_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Api21ReflectionHolder;->viewAttachInfoField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_6

    .line 94
    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Api21ReflectionHolder;->stableInsets:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    instance-of v3, v2, Landroid/graphics/Rect;

    if-eqz v3, :cond_3

    check-cast v2, Landroid/graphics/Rect;

    goto :goto_2

    :cond_3
    move-object v2, v1

    .line 95
    :goto_2
    sget-object v3, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Api21ReflectionHolder;->contentInsets:Ljava/lang/reflect/Field;

    if-eqz v3, :cond_4

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    :cond_4
    move-object v0, v1

    :goto_3
    instance-of v3, v0, Landroid/graphics/Rect;

    if-eqz v3, :cond_5

    check-cast v0, Landroid/graphics/Rect;

    goto :goto_4

    :cond_5
    move-object v0, v1

    :goto_4
    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    .line 97
    new-instance v3, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;

    invoke-direct {v3}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;-><init>()V

    sget-object v4, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;

    invoke-virtual {v4, v2}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;->of(Landroid/graphics/Rect;)Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;->setStableInsets(Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;)Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;

    move-result-object v2

    sget-object v3, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;

    invoke-virtual {v3, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;->of(Landroid/graphics/Rect;)Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;->setSystemWindowInsets(Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;)Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Builder;->build()Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;

    move-result-object v0

    .line 98
    invoke-virtual {v0, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;->setRootWindowInsets(Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;)V

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    const-string/jumbo v2, "view.rootView"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;->copyRootViewBounds(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    :cond_6
    return-object v1
.end method
