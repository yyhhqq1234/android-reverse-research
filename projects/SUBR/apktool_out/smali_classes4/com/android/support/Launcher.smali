.class public Lcom/android/support/Launcher;
.super Landroid/app/Service;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/support/Launcher$100000000;
    }
.end annotation


# instance fields
.field menu:Lcom/android/support/Menu;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 73
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private Thread()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 46
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Lcom/android/support/Launcher;->isNotInGame()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    move-object v2, v0

    iget-object v2, v2, Lcom/android/support/Launcher;->menu:Lcom/android/support/Menu;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/support/Menu;->setVisibility(I)V

    .line 49
    :goto_0
    return-void

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/android/support/Launcher;->menu:Lcom/android/support/Menu;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/support/Menu;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic access$1000002(Lcom/android/support/Launcher;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    invoke-direct {v3}, Lcom/android/support/Launcher;->Thread()V

    return-void
.end method

.method private isNotInGame()Z
    .locals 7

    .prologue
    .line 40
    move-object v0, p0

    new-instance v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    move-object v2, v4

    .line 41
    move-object v4, v2

    invoke-static {v4}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 42
    move-object v4, v2

    iget v4, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0x64

    if-ne v4, v5, :cond_0

    const/4 v4, 0x0

    :goto_0
    move v0, v4

    return v0

    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x0

    check-cast v3, Landroid/os/IBinder;

    move-object v0, v3

    return-object v0
.end method

.method public onCreate()V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v4, v0

    const-string v5, "com.aide.ui.goxome"

    invoke-static {v4, v5}, Ladrt/ADRTLogCatReader;->onContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 17
    move-object v4, v0

    invoke-super {v4}, Landroid/app/Service;->onCreate()V

    .line 19
    move-object v4, v0

    new-instance v5, Lcom/android/support/Menu;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/android/support/Menu;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/android/support/Launcher;->menu:Lcom/android/support/Menu;

    .line 20
    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Launcher;->menu:Lcom/android/support/Menu;

    invoke-virtual {v4}, Lcom/android/support/Menu;->SetWindowManagerWindowService()V

    .line 21
    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Launcher;->menu:Lcom/android/support/Menu;

    invoke-virtual {v4}, Lcom/android/support/Menu;->ShowMenu()V

    .line 24
    new-instance v4, Landroid/os/Handler;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    move-object v2, v4

    .line 25
    move-object v4, v2

    new-instance v5, Lcom/android/support/Launcher$100000000;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lcom/android/support/Launcher$100000000;-><init>(Lcom/android/support/Launcher;Landroid/os/Handler;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v4

    return-void
.end method

.method public onDestroy()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 55
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/app/Service;->onDestroy()V

    .line 56
    move-object v2, v0

    iget-object v2, v2, Lcom/android/support/Launcher;->menu:Lcom/android/support/Menu;

    invoke-virtual {v2}, Lcom/android/support/Menu;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    .prologue
    .line 72
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    const/4 v5, 0x2

    move v0, v5

    return v0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    move-object v1, p0

    move-object v2, p1

    move-object v6, v1

    move-object v7, v2

    invoke-super {v6, v7}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 63
    const/16 v6, 0x64

    int-to-long v6, v6

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    move-object v6, v1

    invoke-virtual {v6}, Lcom/android/support/Launcher;->stopSelf()V

    return-void

    .line 63
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 65
    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
