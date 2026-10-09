.class public final Lcom/netease/mobile/link/p4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile b:Lcom/netease/mobile/link/p4;


# instance fields
.field public a:Lcom/netease/mobile/link/o4;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/netease/mobile/link/p4;
    .locals 2

    sget-object v0, Lcom/netease/mobile/link/p4;->b:Lcom/netease/mobile/link/p4;

    if-nez v0, :cond_1

    const-class v0, Lcom/netease/mobile/link/p4;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/netease/mobile/link/p4;->b:Lcom/netease/mobile/link/p4;

    if-nez v1, :cond_0

    new-instance v1, Lcom/netease/mobile/link/p4;

    invoke-direct {v1}, Lcom/netease/mobile/link/p4;-><init>()V

    sput-object v1, Lcom/netease/mobile/link/p4;->b:Lcom/netease/mobile/link/p4;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/mobile/link/p4;->b:Lcom/netease/mobile/link/p4;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    const-string v0, "ProgressImpl"

    const-string v1, "dismissProgress"

    invoke-static {v0, v1}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mobile/link/p4;->a:Lcom/netease/mobile/link/o4;

    if-eqz v0, :cond_1

    .line 1
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/netease/mobile/link/p4;->a:Lcom/netease/mobile/link/o4;

    :cond_1
    return-void
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "ProgressImpl"

    const-string v1, "showProgress"

    invoke-static {v0, v1}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/netease/mobile/link/h6;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mobile/link/p4;->a:Lcom/netease/mobile/link/o4;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcom/netease/mobile/link/o4;

    invoke-direct {v0, p1}, Lcom/netease/mobile/link/o4;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 4
    iput-object v0, p0, Lcom/netease/mobile/link/p4;->a:Lcom/netease/mobile/link/o4;

    sget-boolean p1, Lcom/netease/mobile/link/w;->b:Z

    invoke-virtual {p0, p1}, Lcom/netease/mobile/link/p4;->a(Z)V

    :cond_1
    iget-object p1, p0, Lcom/netease/mobile/link/p4;->a:Lcom/netease/mobile/link/o4;

    .line 5
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    invoke-virtual {p1}, Lcom/netease/mobile/link/o4;->show()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mobile/link/p4;->a:Lcom/netease/mobile/link/o4;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
