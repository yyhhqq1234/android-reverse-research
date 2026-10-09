.class public Lcom/subao/common/n/a;
.super Ljava/lang/Object;
.source "AppLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/n/a$b;,
        Lcom/subao/common/n/a$a;
    }
.end annotation


# direct methods
.method static a(Landroid/content/Intent;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 69
    if-nez p0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-object v0

    .line 72
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 73
    if-eqz v1, :cond_0

    .line 74
    const-string v0, "%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/subao/common/n/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/subao/common/n/a$a;)Z

    move-result v0

    return v0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Lcom/subao/common/n/a$a;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 34
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v0

    .line 38
    :cond_1
    :try_start_0
    invoke-static {p0, p1}, Lcom/subao/common/n/a;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 39
    if-eqz v2, :cond_0

    .line 42
    if-nez p2, :cond_2

    .line 43
    new-instance p2, Lcom/subao/common/n/a$a;

    invoke-direct {p2}, Lcom/subao/common/n/a$a;-><init>()V

    .line 45
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Lcom/subao/common/n/a$a;->a(Landroid/content/Intent;Lcom/subao/common/n/a$b;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    .line 46
    goto :goto_0

    .line 48
    :cond_3
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 57
    if-nez v1, :cond_0

    .line 64
    :goto_0
    return-object v0

    .line 61
    :cond_0
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v1

    .line 63
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
