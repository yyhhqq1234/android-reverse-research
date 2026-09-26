.class public Lcom/netease/mpay/EnterGameActivity;
.super Landroid/support/v4/app/FragmentActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/EnterGameActivity$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private a()Z
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/netease/mpay/EnterGameActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/mpay/EnterGameActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.netease.mpay.support.EnterGame"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/netease/mpay/do;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/os/Bundle;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "IS_REBUILD"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 0

    invoke-static {p0}, Lcom/netease/mpay/widget/bf;->b(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/netease/mpay/EnterGameActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/netease/mpay/EnterGameActivity$a;->a(Landroid/app/Activity;)Lcom/netease/mpay/EnterGameActivity$a;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/netease/mpay/EnterGameActivity;->a(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/netease/mpay/EnterGameActivity$a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/netease/mpay/EnterGameActivity;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/netease/mpay/n;->a()Lcom/netease/mpay/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/n;->h()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/netease/mpay/EnterGameActivity;->b()V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/netease/mpay/n;->a()Lcom/netease/mpay/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/n;->c()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Enter Game : start the game"

    invoke-static {v1}, Lcom/netease/mpay/do;->a(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/netease/mpay/EnterGameActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netease/mpay/EnterGameActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/netease/mpay/EnterGameActivity;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/netease/mpay/n;->a()Lcom/netease/mpay/n;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/n;->a(Lcom/netease/mpay/EnterGameActivity$a;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-direct {p0}, Lcom/netease/mpay/EnterGameActivity;->b()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/netease/mpay/do;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    const-string v1, "Enter Game : return to game"

    invoke-static {v1}, Lcom/netease/mpay/do;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/mpay/n;->a()Lcom/netease/mpay/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/n;->d()Lcom/netease/mpay/bm$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/netease/mpay/bm$a;->a(Lcom/netease/mpay/EnterGameActivity$a;)V

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "IS_REBUILD"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
