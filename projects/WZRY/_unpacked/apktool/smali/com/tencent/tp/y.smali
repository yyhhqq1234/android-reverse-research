.class public Lcom/tencent/tp/y;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doInvokeRootkitAppRequest()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tp/TssSdkRuntime;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "TssSdkRuntime.getCurrentActivity err"

    invoke-static {v0}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object v0, p0, Lcom/tencent/tp/y;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tp/y;->isRootkitAppInstalled(Landroid/content/Context;)Z

    move-result v1

    const/4 v0, 0x0

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/tencent/tp/y;->isRootkitAppRunning()Z

    move-result v0

    :cond_2
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    :cond_3
    if-nez v0, :cond_0

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/tencent/tp/y;->invokeLaunchRootkitAppRequest()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/tencent/tp/y;->invokeInstallRootkitAppRequest()V

    goto :goto_0
.end method

.method public static invokeForceUpdateRootkitAppRequest()V
    .locals 2

    invoke-static {}, Lcom/tencent/tp/b/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/tp/TssSdkRuntime;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, "TssSdkRuntime.getCurrentActivity err"

    invoke-static {v0}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {v1}, Lcom/tencent/tp/y;->isRootkitAppInstalled(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    if-eqz v0, :cond_2

    new-instance v0, Lcom/tencent/tp/b/n;

    invoke-direct {v0, v1}, Lcom/tencent/tp/b/n;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/tencent/tp/b/n;->a()V

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/tencent/tp/y;->invokeRootkitAppRequest()V

    goto :goto_0
.end method

.method private invokeInstallRootkitAppRequest()V
    .locals 2

    new-instance v0, Lcom/tencent/tp/b/g;

    iget-object v1, p0, Lcom/tencent/tp/y;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/tp/b/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/tencent/tp/b/g;->a()V

    return-void
.end method

.method private invokeLaunchRootkitAppRequest()V
    .locals 2

    new-instance v0, Lcom/tencent/tp/b/k;

    iget-object v1, p0, Lcom/tencent/tp/y;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/tp/b/k;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tencent/tp/b/k;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static invokeRootkitAppRequest()V
    .locals 1

    invoke-static {}, Lcom/tencent/tp/b/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/tencent/tp/y;

    invoke-direct {v0}, Lcom/tencent/tp/y;-><init>()V

    :try_start_0
    invoke-direct {v0}, Lcom/tencent/tp/y;->doInvokeRootkitAppRequest()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static invokeRootkitIsRunningTip()V
    .locals 2

    invoke-static {}, Lcom/tencent/tp/b/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/tp/TssSdkRuntime;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "TssSdkRuntime.getCurrentActivity err"

    invoke-static {v0}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/tencent/tp/a/aa;

    invoke-direct {v1, v0}, Lcom/tencent/tp/a/aa;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "\u817e\u8baf\u6e38\u620f\u5b89\u5168\u4e2d\u5fc3\u6b63\u5728\u4fdd\u62a4\u60a8\u7684\u6e38\u620f"

    invoke-virtual {v1, v0}, Lcom/tencent/tp/a/aa;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isApkInstalled(Landroid/content/pm/PackageManager;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.tencent.tpsafe"

    const/16 v2, 0x40

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static isRootkitAppInstalled(Landroid/content/Context;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Object not found"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {v0}, Lcom/tencent/tp/y;->isApkInstalled(Landroid/content/pm/PackageManager;)Z

    move-result v0

    return v0
.end method

.method private isRootkitAppRunning()Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Lcom/tencent/tp/m;->d()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
