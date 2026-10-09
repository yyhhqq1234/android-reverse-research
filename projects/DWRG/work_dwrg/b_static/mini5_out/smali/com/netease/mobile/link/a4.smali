.class public abstract Lcom/netease/mobile/link/a4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mobile/link/a4$a;
    }
.end annotation


# static fields
.field public static b:Lcom/netease/mobile/link/a4;


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/mobile/link/a4;->a:I

    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lcom/netease/mobile/link/a4;
    .locals 6

    const-class v0, Lcom/netease/mobile/link/a4;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/netease/mobile/link/a4;->b:Lcom/netease/mobile/link/a4;

    if-nez v1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    new-instance p0, Lcom/netease/mobile/link/f4;

    invoke-direct {p0}, Lcom/netease/mobile/link/f4;-><init>()V

    sput-object p0, Lcom/netease/mobile/link/a4;->b:Lcom/netease/mobile/link/a4;

    goto :goto_1

    :cond_0
    const/4 v1, 0x6

    new-array v2, v1, [Lcom/netease/mobile/link/a4;

    new-instance v3, Lcom/netease/mobile/link/b4;

    invoke-direct {v3}, Lcom/netease/mobile/link/b4;-><init>()V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lcom/netease/mobile/link/d4;

    invoke-direct {v3}, Lcom/netease/mobile/link/d4;-><init>()V

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-instance v3, Lcom/netease/mobile/link/e4;

    invoke-direct {v3}, Lcom/netease/mobile/link/e4;-><init>()V

    const/4 v5, 0x2

    aput-object v3, v2, v5

    new-instance v3, Lcom/netease/mobile/link/g4;

    invoke-direct {v3}, Lcom/netease/mobile/link/g4;-><init>()V

    const/4 v5, 0x3

    aput-object v3, v2, v5

    new-instance v3, Lcom/netease/mobile/link/h4;

    invoke-direct {v3}, Lcom/netease/mobile/link/h4;-><init>()V

    const/4 v5, 0x4

    aput-object v3, v2, v5

    new-instance v3, Lcom/netease/mobile/link/f4;

    invoke-direct {v3}, Lcom/netease/mobile/link/f4;-><init>()V

    const/4 v5, 0x5

    aput-object v3, v2, v5

    :goto_0
    if-ge v4, v1, :cond_2

    aget-object v3, v2, v4

    invoke-virtual {v3, p0}, Lcom/netease/mobile/link/a4;->a(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    sput-object v3, Lcom/netease/mobile/link/a4;->b:Lcom/netease/mobile/link/a4;

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    sget-object p0, Lcom/netease/mobile/link/a4;->b:Lcom/netease/mobile/link/a4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;Landroid/view/Window;)V
.end method

.method public abstract a(Landroid/content/Context;Landroid/view/Window;[Lcom/netease/mobile/link/a4$a;)V
.end method

.method public abstract a(Landroid/content/Context;)Z
.end method

.method public final b(Landroid/content/Context;Landroid/view/Window;)I
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
    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/netease/mobile/link/a4;->c(Landroid/content/Context;Landroid/view/Window;)I

    move-result p1

    iput p1, p0, Lcom/netease/mobile/link/a4;->a:I

    :cond_1
    iget p1, p0, Lcom/netease/mobile/link/a4;->a:I

    return p1
.end method

.method public final b(Landroid/content/Context;Landroid/view/Window;[Lcom/netease/mobile/link/a4$a;)V
    .locals 8

    invoke-virtual {p0, p1, p2}, Lcom/netease/mobile/link/a4;->b(Landroid/content/Context;Landroid/view/Window;)I

    move-result p1

    if-lez p1, :cond_5

    array-length p2, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_5

    aget-object v1, p3, v0

    if-eqz v1, :cond_4

    iget-object v2, v1, Lcom/netease/mobile/link/a4$a;->a:Landroid/view/View;

    if-eqz v2, :cond_4

    iget v3, v1, Lcom/netease/mobile/link/a4$a;->b:I

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v5, v3, :cond_1

    if-ne v4, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    goto :goto_2

    :cond_1
    :goto_1
    move v3, p1

    :goto_2
    iget-object v5, v1, Lcom/netease/mobile/link/a4$a;->a:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    iget v6, v1, Lcom/netease/mobile/link/a4$a;->b:I

    const/4 v7, 0x2

    if-eq v7, v6, :cond_3

    if-ne v4, v6, :cond_2

    goto :goto_3

    :cond_2
    iget-object v4, v1, Lcom/netease/mobile/link/a4$a;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    goto :goto_4

    :cond_3
    :goto_3
    move v4, p1

    :goto_4
    iget-object v1, v1, Lcom/netease/mobile/link/a4$a;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {v2, v3, v5, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public abstract c(Landroid/content/Context;Landroid/view/Window;)I
.end method
