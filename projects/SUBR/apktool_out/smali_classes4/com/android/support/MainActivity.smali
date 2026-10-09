.class public Lcom/android/support/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# instance fields
.field public GameActivity:Ljava/lang/String;

.field public hasLaunched:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 46
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/app/Activity;-><init>()V

    move-object v2, v0

    const-string v3, "com.unity3d.player.UnityPlayerActivity"

    iput-object v3, v2, Lcom/android/support/MainActivity;->GameActivity:Ljava/lang/String;

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/support/MainActivity;->hasLaunched:Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    const-string v6, "com.aide.ui.goxome"

    invoke-static {v5, v6}, Ladrt/ADRTLogCatReader;->onContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 17
    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/support/MainActivity;->hasLaunched:Z

    if-nez v5, :cond_0

    .line 31
    move-object v5, v0

    const/4 v6, 0x1

    :try_start_0
    iput-boolean v6, v5, Lcom/android/support/MainActivity;->hasLaunched:Z

    .line 33
    move-object v5, v0

    new-instance v6, Landroid/content/Intent;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lcom/android/support/MainActivity;->GameActivity:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v6}, Lcom/android/support/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 34
    move-object v5, v0

    invoke-static {v5}, Lcom/android/support/Main;->Start(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 37
    const-string v5, "Mod_menu"

    const-string v6, "Error. Game\'s main activity does not exist"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 45
    :cond_0
    move-object v5, v0

    invoke-static {v5}, Lcom/android/support/Main;->Start(Landroid/content/Context;)V

    goto :goto_0
.end method
