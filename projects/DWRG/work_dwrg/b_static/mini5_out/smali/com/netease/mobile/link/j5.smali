.class public final Lcom/netease/mobile/link/j5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mobile/link/j5$b;,
        Lcom/netease/mobile/link/j5$c;,
        Lcom/netease/mobile/link/j5$d;
    }
.end annotation


# static fields
.field public static d:Lcom/netease/mobile/link/j5;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Z

.field public c:Lcom/netease/mobile/link/j5$d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mobile/link/j5;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/mobile/link/j5;->c:Lcom/netease/mobile/link/j5$d;

    return-void
.end method

.method public static declared-synchronized a()Lcom/netease/mobile/link/j5;
    .locals 2

    const-class v0, Lcom/netease/mobile/link/j5;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/netease/mobile/link/j5;->d:Lcom/netease/mobile/link/j5;

    if-nez v1, :cond_0

    new-instance v1, Lcom/netease/mobile/link/j5;

    invoke-direct {v1}, Lcom/netease/mobile/link/j5;-><init>()V

    sput-object v1, Lcom/netease/mobile/link/j5;->d:Lcom/netease/mobile/link/j5;

    :cond_0
    sget-object v1, Lcom/netease/mobile/link/j5;->d:Lcom/netease/mobile/link/j5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/netease/mobile/link/j5;
    .locals 3

    const-class v0, Lcom/netease/mobile/link/j5;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/netease/mobile/link/j5;->a()Lcom/netease/mobile/link/j5;

    move-result-object v1

    sput-object v1, Lcom/netease/mobile/link/j5;->d:Lcom/netease/mobile/link/j5;

    iget-object v1, v1, Lcom/netease/mobile/link/j5;->a:Landroid/content/Context;

    if-nez v1, :cond_1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/netease/mobile/link/j5;->d:Lcom/netease/mobile/link/j5;

    if-eqz v1, :cond_0

    move-object p0, v1

    :cond_0
    iput-object p0, v2, Lcom/netease/mobile/link/j5;->a:Landroid/content/Context;

    :cond_1
    sget-object p0, Lcom/netease/mobile/link/j5;->d:Lcom/netease/mobile/link/j5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final a(I)Ljava/lang/Integer;
    .locals 4

    invoke-virtual {p0}, Lcom/netease/mobile/link/j5;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/netease/mobile/link/j5;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mobile/link/j5;->c:Lcom/netease/mobile/link/j5$d;

    iget-object v0, v0, Lcom/netease/mobile/link/j5$d;->b:Lcom/netease/mobile/link/k5$a;

    iget-object v2, v0, Lcom/netease/mobile/link/k5$a;->b:Landroid/content/res/Resources;

    iget-object v0, v0, Lcom/netease/mobile/link/k5$a;->a:Ljava/lang/String;

    const-string v3, "color"

    invoke-virtual {v2, p1, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    :try_start_0
    iget-object v0, p0, Lcom/netease/mobile/link/j5;->c:Lcom/netease/mobile/link/j5$d;

    iget-object v0, v0, Lcom/netease/mobile/link/j5$d;->b:Lcom/netease/mobile/link/k5$a;

    iget-object v0, v0, Lcom/netease/mobile/link/k5$a;->b:Landroid/content/res/Resources;

    invoke-static {v0, p1}, Lcom/netease/mobile/link/k6;->a(Landroid/content/res/Resources;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "default"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/netease/mobile/link/w;->d:Z

    iget-object v0, p0, Lcom/netease/mobile/link/j5;->a:Landroid/content/Context;

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object p1, v0

    :cond_2
    iput-object p1, p0, Lcom/netease/mobile/link/j5;->a:Landroid/content/Context;

    :cond_3
    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lcom/netease/mobile/link/j5;->b()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/netease/mobile/link/j5;->c:Lcom/netease/mobile/link/j5$d;

    iget-object p1, p1, Lcom/netease/mobile/link/j5$d;->a:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    invoke-static {}, Lcom/netease/mobile/link/y5;->b()Lcom/netease/mobile/link/x5;

    move-result-object p1

    new-instance v0, Lcom/netease/mobile/link/j5$b;

    iget-object v1, p0, Lcom/netease/mobile/link/j5;->a:Landroid/content/Context;

    new-instance v2, Lcom/netease/mobile/link/j5$a;

    invoke-direct {v2, p0}, Lcom/netease/mobile/link/j5$a;-><init>(Lcom/netease/mobile/link/j5;)V

    invoke-direct {v0, v1, p2, v2}, Lcom/netease/mobile/link/j5$b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/netease/mobile/link/j5$c;)V

    .line 1
    iget-object p1, p1, Lcom/netease/mobile/link/x5;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_5
    return-void
.end method

.method public final a(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/netease/mobile/link/j5;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    instance-of p2, p1, Landroid/widget/TextView;

    if-eqz p2, :cond_1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p2}, Lcom/netease/mobile/link/j5;->a(I)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 4
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final b(I)Landroid/content/res/ColorStateList;
    .locals 4

    invoke-virtual {p0}, Lcom/netease/mobile/link/j5;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/netease/mobile/link/j5;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mobile/link/j5;->c:Lcom/netease/mobile/link/j5$d;

    iget-object v0, v0, Lcom/netease/mobile/link/j5$d;->b:Lcom/netease/mobile/link/k5$a;

    iget-object v2, v0, Lcom/netease/mobile/link/k5$a;->b:Landroid/content/res/Resources;

    iget-object v0, v0, Lcom/netease/mobile/link/k5$a;->a:Ljava/lang/String;

    const-string v3, "color"

    invoke-virtual {v2, p1, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    :try_start_0
    iget-object v0, p0, Lcom/netease/mobile/link/j5;->c:Lcom/netease/mobile/link/j5$d;

    iget-object v0, v0, Lcom/netease/mobile/link/j5$d;->b:Lcom/netease/mobile/link/k5$a;

    iget-object v0, v0, Lcom/netease/mobile/link/k5$a;->b:Landroid/content/res/Resources;

    invoke-static {v0, p1}, Lcom/netease/mobile/link/k6;->b(Landroid/content/res/Resources;I)Landroid/content/res/ColorStateList;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v1
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Lcom/netease/mobile/link/j5;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mobile/link/j5;->c:Lcom/netease/mobile/link/j5$d;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/netease/mobile/link/j5$d;->b:Lcom/netease/mobile/link/k5$a;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/netease/mobile/link/k5$a;->b:Landroid/content/res/Resources;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/netease/mobile/link/k5$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c(I)Landroid/graphics/drawable/Drawable;
    .locals 4

    invoke-virtual {p0}, Lcom/netease/mobile/link/j5;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/netease/mobile/link/j5;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mobile/link/j5;->c:Lcom/netease/mobile/link/j5$d;

    iget-object v0, v0, Lcom/netease/mobile/link/j5$d;->b:Lcom/netease/mobile/link/k5$a;

    iget-object v2, v0, Lcom/netease/mobile/link/k5$a;->b:Landroid/content/res/Resources;

    iget-object v0, v0, Lcom/netease/mobile/link/k5$a;->a:Ljava/lang/String;

    const-string v3, "drawable"

    invoke-virtual {v2, p1, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    :try_start_0
    iget-object v0, p0, Lcom/netease/mobile/link/j5;->c:Lcom/netease/mobile/link/j5$d;

    iget-object v0, v0, Lcom/netease/mobile/link/j5$d;->b:Lcom/netease/mobile/link/k5$a;

    iget-object v0, v0, Lcom/netease/mobile/link/k5$a;->b:Landroid/content/res/Resources;

    invoke-static {v0, p1}, Lcom/netease/mobile/link/k6;->c(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v1
.end method
