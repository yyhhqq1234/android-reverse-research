.class public Lcom/netease/dwrg/OutlawDeviceDetector;
.super Ljava/lang/Object;
.source "OutlawDeviceDetector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canExecuteSuCommand()Z
    .locals 3

    .prologue
    .line 13
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "su"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    const/4 v1, 0x1

    .line 18
    .local v0, "localIOException":Ljava/io/IOException;
    :goto_0
    return v1

    .line 16
    .end local v0    # "localIOException":Ljava/io/IOException;
    :catch_0
    move-exception v0

    .line 18
    .restart local v0    # "localIOException":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static hasSuperuserApk()Z
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/app/Superuser.apk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static isRooted()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0

    .line 39
    invoke-static {}, Lcom/netease/dwrg/OutlawDeviceDetector;->hasSuperuserApk()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/netease/dwrg/OutlawDeviceDetector;->isTestKeyBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isTestKeyBuild()Z
    .locals 2

    .prologue
    .line 29
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 30
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "test-keys"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    const/4 v1, 0x1

    .line 33
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
