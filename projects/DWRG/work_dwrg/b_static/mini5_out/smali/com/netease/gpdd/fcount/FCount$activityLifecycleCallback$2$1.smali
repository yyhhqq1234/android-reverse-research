.class public final Lcom/netease/gpdd/fcount/FCount$activityLifecycleCallback$2$1;
.super Ljava/lang/Object;
.source "FCount.kt"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/gpdd/fcount/FCount$activityLifecycleCallback$2;->invoke()Lcom/netease/gpdd/fcount/FCount$activityLifecycleCallback$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016J\u0010\u0010\n\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u000c\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\r\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\tH\u0016J\u0010\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "com/netease/gpdd/fcount/FCount$activityLifecycleCallback$2$1",
        "Landroid/app/Application$ActivityLifecycleCallbacks;",
        "resumed",
        "",
        "onActivityCreated",
        "",
        "activity",
        "Landroid/app/Activity;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onActivityDestroyed",
        "onActivityPaused",
        "onActivityResumed",
        "onActivitySaveInstanceState",
        "outState",
        "onActivityStarted",
        "onActivityStopped",
        "SDK_uuRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $expireSessionRunnable:Ljava/lang/Runnable;

.field final synthetic $generateSessionRunnable:Ljava/lang/Runnable;

.field private resumed:Z

.field final synthetic this$0:Lcom/netease/gpdd/fcount/FCount;


# direct methods
.method constructor <init>(Lcom/netease/gpdd/fcount/FCount;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/gpdd/fcount/FCount$activityLifecycleCallback$2$1;->this$0:Lcom/netease/gpdd/fcount/FCount;

    iput-object p2, p0, Lcom/netease/gpdd/fcount/FCount$activityLifecycleCallback$2$1;->$expireSessionRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/netease/gpdd/fcount/FCount$activityLifecycleCallback$2$1;->$generateSessionRunnable:Ljava/lang/Runnable;

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    iget-object p1, p0, Lcom/netease/gpdd/fcount/FCount$activityLifecycleCallback$2$1;->this$0:Lcom/netease/gpdd/fcount/FCount;

    invoke-static {p1}, Lcom/netease/gpdd/fcount/FCount;->access$getRecordSessions$p(Lcom/netease/gpdd/fcount/FCount;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 224
    iput-boolean p1, p0, Lcom/netease/gpdd/fcount/FCount$activityLifecycleCallback$2$1;->resumed:Z

    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 5

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    instance-of v0, p1, Lcom/netease/gpdd/fcount/FCountActivityName;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/netease/gpdd/fcount/FCountActivityName;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 213
    :goto_0
    iget-object v2, p0, Lcom/netease/gpdd/fcount/FCount$activityLifecycleCallback$2$1;->this$0:Lcom/netease/gpdd/fcount/FCount;

    invoke-static {v2}, Lcom/netease/gpdd/fcount/FCount;->access$getAutoLogPageView$p(Lcom/netease/gpdd/fcount/FCount;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/netease/gpdd/fcount/FCountActivityName;->fCountPVEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-nez v2, :cond_3

    .line 214
    iget-object v2, p0, Lcom/netease/gpdd/fcount/FCount$activityLifecycleCallback$2$1;->this$0:Lcom/netease/gpdd/fcount/FCount;

    invoke-static {v2, p1}, Lcom/netease/gpdd/fcount/FCount;->access$generatePageName(Lcom/netease/gpdd/fcount/FCount;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/netease/gpdd/fcount/FCountActivityName;->fCountPVExtras()Ljava/util/Map;

    move-result-object v1

    :cond_2
    invoke-virtual {v2, p1, v1}, Lcom/netease/gpdd/fcount/FCount;->logPageView(Ljava/lang/String;Ljava/util/Map;)V

    .line 217
    :cond_3
    iget-object p1, p0, Lcom/netease/gpdd/fcount/FCount$activityLifecycleCallback$2$1;->this$0:Lcom/netease/gpdd/fcount/FCount;

    invoke-static {p1}, Lcom/netease/gpdd/fcount/FCount;->access$getRecordSessions$p(Lcom/netease/gpdd/fcount/FCount;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 218
    iput-boolean v3, p0, Lcom/netease/gpdd/fcount/FCount$activityLifecycleCallback$2$1;->resumed:Z

    :cond_4
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "outState"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    iget-object p1, p0, Lcom/netease/gpdd/fcount/FCount$activityLifecycleCallback$2$1;->this$0:Lcom/netease/gpdd/fcount/FCount;

    invoke-static {p1}, Lcom/netease/gpdd/fcount/FCount;->access$getRecordSessions$p(Lcom/netease/gpdd/fcount/FCount;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 230
    iget-object p1, p0, Lcom/netease/gpdd/fcount/FCount$activityLifecycleCallback$2$1;->this$0:Lcom/netease/gpdd/fcount/FCount;

    invoke-static {p1}, Lcom/netease/gpdd/fcount/FCount;->access$getUiThreadHandler(Lcom/netease/gpdd/fcount/FCount;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/gpdd/fcount/FCount$activityLifecycleCallback$2$1;->$expireSessionRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 231
    iget-object p1, p0, Lcom/netease/gpdd/fcount/FCount$activityLifecycleCallback$2$1;->this$0:Lcom/netease/gpdd/fcount/FCount;

    invoke-static {p1}, Lcom/netease/gpdd/fcount/FCount;->access$getSessionId$p(Lcom/netease/gpdd/fcount/FCount;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 232
    iget-object p1, p0, Lcom/netease/gpdd/fcount/FCount$activityLifecycleCallback$2$1;->$generateSessionRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    iget-object p1, p0, Lcom/netease/gpdd/fcount/FCount$activityLifecycleCallback$2$1;->this$0:Lcom/netease/gpdd/fcount/FCount;

    invoke-static {p1}, Lcom/netease/gpdd/fcount/FCount;->access$getRecordSessions$p(Lcom/netease/gpdd/fcount/FCount;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/netease/gpdd/fcount/FCount$activityLifecycleCallback$2$1;->resumed:Z

    if-nez p1, :cond_0

    .line 247
    iget-object p1, p0, Lcom/netease/gpdd/fcount/FCount$activityLifecycleCallback$2$1;->this$0:Lcom/netease/gpdd/fcount/FCount;

    invoke-static {p1}, Lcom/netease/gpdd/fcount/FCount;->access$getUiThreadHandler(Lcom/netease/gpdd/fcount/FCount;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/gpdd/fcount/FCount$activityLifecycleCallback$2$1;->$generateSessionRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 248
    iget-object p1, p0, Lcom/netease/gpdd/fcount/FCount$activityLifecycleCallback$2$1;->this$0:Lcom/netease/gpdd/fcount/FCount;

    invoke-static {p1}, Lcom/netease/gpdd/fcount/FCount;->access$getUiThreadHandler(Lcom/netease/gpdd/fcount/FCount;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/gpdd/fcount/FCount$activityLifecycleCallback$2$1;->$expireSessionRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7530

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
