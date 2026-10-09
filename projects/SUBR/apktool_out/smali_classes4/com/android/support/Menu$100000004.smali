.class Lcom/android/support/Menu$100000004;
.super Ljava/lang/Object;
.source "Menu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/support/Menu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000004"
.end annotation


# instance fields
.field private final this$0:Lcom/android/support/Menu;

.field private final val$handler:Landroid/os/Handler;

.field viewLoaded:Z


# direct methods
.method constructor <init>(Lcom/android/support/Menu;Landroid/os/Handler;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/android/support/Menu$100000004;->this$0:Lcom/android/support/Menu;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/android/support/Menu$100000004;->val$handler:Landroid/os/Handler;

    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/support/Menu$100000004;->viewLoaded:Z

    return-void
.end method

.method static access$0(Lcom/android/support/Menu$100000004;)Lcom/android/support/Menu;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Menu$100000004;->this$0:Lcom/android/support/Menu;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 379
    move-object v0, p0

    sget-boolean v2, Lcom/android/support/Preferences;->loadPref:Z

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/android/support/Menu$100000004;->this$0:Lcom/android/support/Menu;

    invoke-virtual {v2}, Lcom/android/support/Menu;->IsGameLibLoaded()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/android/support/Menu$100000004;->this$0:Lcom/android/support/Menu;

    iget-boolean v2, v2, Lcom/android/support/Menu;->stopChecking:Z

    if-nez v2, :cond_1

    .line 380
    move-object v2, v0

    iget-boolean v2, v2, Lcom/android/support/Menu$100000004;->viewLoaded:Z

    if-nez v2, :cond_0

    .line 381
    move-object v2, v0

    iget-object v2, v2, Lcom/android/support/Menu$100000004;->this$0:Lcom/android/support/Menu;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Menu$100000004;->this$0:Lcom/android/support/Menu;

    iget-object v3, v3, Lcom/android/support/Menu;->mods:Landroid/widget/LinearLayout;

    const-string v4, "Save preferences was been enabled. Waiting for game lib to be loaded...\n\nForce load menu may not apply mods instantly. You would need to reactivate them again"

    invoke-static {v2, v3, v4}, Lcom/android/support/Menu;->access$1000055(Lcom/android/support/Menu;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 382
    move-object v2, v0

    iget-object v2, v2, Lcom/android/support/Menu$100000004;->this$0:Lcom/android/support/Menu;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Menu$100000004;->this$0:Lcom/android/support/Menu;

    iget-object v3, v3, Lcom/android/support/Menu;->mods:Landroid/widget/LinearLayout;

    const/16 v4, -0x64

    const-string v5, "Force load menu"

    invoke-static {v2, v3, v4, v5}, Lcom/android/support/Menu;->access$1000024(Lcom/android/support/Menu;Landroid/widget/LinearLayout;ILjava/lang/String;)V

    .line 383
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/support/Menu$100000004;->viewLoaded:Z

    .line 385
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/android/support/Menu$100000004;->val$handler:Landroid/os/Handler;

    move-object v3, v0

    const/16 v4, 0x258

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    .line 388
    :goto_0
    return-void

    .line 387
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/android/support/Menu$100000004;->this$0:Lcom/android/support/Menu;

    iget-object v2, v2, Lcom/android/support/Menu;->mods:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 388
    move-object v2, v0

    iget-object v2, v2, Lcom/android/support/Menu$100000004;->this$0:Lcom/android/support/Menu;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Menu$100000004;->this$0:Lcom/android/support/Menu;

    invoke-virtual {v3}, Lcom/android/support/Menu;->GetFeatureList()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/support/ModBridge;->concat([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu$100000004;->this$0:Lcom/android/support/Menu;

    iget-object v4, v4, Lcom/android/support/Menu;->mods:Landroid/widget/LinearLayout;

    invoke-static {v2, v3, v4}, Lcom/android/support/Menu;->access$1000016(Lcom/android/support/Menu;[Ljava/lang/String;Landroid/widget/LinearLayout;)V

    goto :goto_0
.end method
