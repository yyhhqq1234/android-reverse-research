.class public Lcom/tencent/msdk/tools/VersionHelper;
.super Ljava/lang/Object;
.source "VersionHelper.java"


# instance fields
.field private ctx:Landroid/content/Context;

.field private pkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/tools/VersionHelper;->pkgName:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lcom/tencent/msdk/tools/VersionHelper;->ctx:Landroid/content/Context;

    .line 14
    iput-object p2, p0, Lcom/tencent/msdk/tools/VersionHelper;->pkgName:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public static getAppVersionCode(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 50
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 51
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return v3

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static getAppVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 27
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 28
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v3

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, ""

    goto :goto_0
.end method


# virtual methods
.method public compareVersion(Ljava/lang/String;)I
    .locals 3
    .param p1, "comparedVersion"    # Ljava/lang/String;

    .prologue
    .line 18
    iget-object v1, p0, Lcom/tencent/msdk/tools/VersionHelper;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/msdk/tools/VersionHelper;->pkgName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tencent/msdk/tools/VersionHelper;->getAppVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, "appVersion":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appVersion :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, v0, p1}, Lcom/tencent/msdk/tools/VersionHelper;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public compareVersion(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .param p1, "version1"    # Ljava/lang/String;
    .param p2, "version2"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, -0x1

    .line 64
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v6

    .line 66
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    move v6, v7

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    move v6, v8

    .line 69
    goto :goto_0

    .line 73
    :cond_3
    const-string v9, "\\."

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, "versionArray1":[Ljava/lang/String;
    const-string v9, "\\."

    invoke-virtual {p2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 78
    .local v5, "versionArray2":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_0
    array-length v9, v4

    if-ge v1, v9, :cond_6

    array-length v9, v5

    if-ge v1, v9, :cond_6

    .line 79
    aget-object v9, v4, v1

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 80
    .local v2, "ver1":I
    aget-object v9, v5, v1

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 81
    .local v3, "ver2":I
    if-ge v2, v3, :cond_4

    move v6, v8

    .line 82
    goto :goto_0

    .line 83
    :cond_4
    if-le v2, v3, :cond_5

    move v6, v7

    .line 84
    goto :goto_0

    .line 78
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 88
    .end local v2    # "ver1":I
    .end local v3    # "ver2":I
    :cond_6
    array-length v9, v4

    if-le v9, v1, :cond_7

    move v6, v7

    .line 89
    goto :goto_0

    .line 90
    :cond_7
    array-length v7, v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-le v7, v1, :cond_0

    move v6, v8

    .line 91
    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v6, "NumberFormatException "

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    goto :goto_0
.end method

.method public isInstallQQ()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 34
    iget-object v4, p0, Lcom/tencent/msdk/tools/VersionHelper;->ctx:Landroid/content/Context;

    if-eqz v4, :cond_0

    .line 35
    iget-object v4, p0, Lcom/tencent/msdk/tools/VersionHelper;->ctx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 38
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v4, p0, Lcom/tencent/msdk/tools/VersionHelper;->pkgName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 39
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    const/4 v3, 0x1

    .line 44
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return v3

    .line 40
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
