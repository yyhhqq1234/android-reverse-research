.class public final Lcom/netease/mobile/link/o0$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mobile/link/o0$a;-><init>(Lcom/netease/mobile/link/widget/editor/ExpandEditText;Lcom/netease/mobile/link/widget/editor/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Lcom/netease/mobile/link/o0$a$a$a;

.field public final synthetic c:Lcom/netease/mobile/link/widget/editor/a;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/widget/editor/a;)V
    .locals 1

    iput-object p1, p0, Lcom/netease/mobile/link/o0$a$a;->c:Lcom/netease/mobile/link/widget/editor/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netease/mobile/link/o0$a$a;->a:Landroid/os/Handler;

    new-instance v0, Lcom/netease/mobile/link/o0$a$a$a;

    invoke-direct {v0, p0, p1}, Lcom/netease/mobile/link/o0$a$a$a;-><init>(Lcom/netease/mobile/link/o0$a$a;Lcom/netease/mobile/link/widget/editor/a;)V

    iput-object v0, p0, Lcom/netease/mobile/link/o0$a$a;->b:Lcom/netease/mobile/link/o0$a$a$a;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 4

    iget-object v0, p0, Lcom/netease/mobile/link/o0$a$a;->b:Lcom/netease/mobile/link/o0$a$a$a;

    if-eqz v0, :cond_3

    monitor-enter v0

    .line 1
    :try_start_0
    iget v1, v0, Lcom/netease/mobile/link/o0$b;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/netease/mobile/link/o0$b;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v3, v0, Lcom/netease/mobile/link/o0$b;->c:Z

    goto :goto_0

    :cond_1
    iget-boolean v1, v0, Lcom/netease/mobile/link/o0$b;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    :goto_0
    monitor-exit v0

    goto :goto_1

    :cond_2
    :try_start_1
    iput-boolean v3, v0, Lcom/netease/mobile/link/o0$b;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_3

    const-string v0, "MobileLink"

    const-string v1, "FEPresentController: onGlobalLayout check"

    .line 2
    invoke-static {v0, v1}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/netease/mobile/link/o0$a$a;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/mobile/link/o0$a$a;->b:Lcom/netease/mobile/link/o0$a$a$a;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_3
    :goto_2
    return-void
.end method
