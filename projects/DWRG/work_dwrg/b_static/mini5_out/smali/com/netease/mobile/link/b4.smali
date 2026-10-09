.class public final Lcom/netease/mobile/link/b4;
.super Lcom/netease/mobile/link/a4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mobile/link/b4$b;,
        Lcom/netease/mobile/link/b4$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mobile/link/a4;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/view/Window;)V
    .locals 1

    new-instance v0, Lcom/netease/mobile/link/b4$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/mobile/link/b4$a;-><init>(Lcom/netease/mobile/link/b4;Landroid/content/Context;Landroid/view/Window;)V

    invoke-virtual {p0, p2, v0}, Lcom/netease/mobile/link/b4;->a(Landroid/view/Window;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/view/Window;[Lcom/netease/mobile/link/a4$a;)V
    .locals 1

    new-instance v0, Lcom/netease/mobile/link/b4$b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/netease/mobile/link/b4$b;-><init>(Lcom/netease/mobile/link/b4;Landroid/content/Context;Landroid/view/Window;[Lcom/netease/mobile/link/a4$a;)V

    invoke-virtual {p0, p2, v0}, Lcom/netease/mobile/link/b4;->a(Landroid/view/Window;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Landroid/view/Window;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/netease/mobile/link/a4;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_2
    return-void
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final c(Landroid/content/Context;Landroid/view/Window;)I
    .locals 3

    const/4 p1, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    if-eqz p2, :cond_4

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result p2

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v1

    if-ge p2, v1, :cond_2

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result p2

    :cond_2
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v1

    if-ge p2, v1, :cond_3

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-lez p2, :cond_4

    move p1, p2

    :catchall_0
    :cond_4
    return p1
.end method
