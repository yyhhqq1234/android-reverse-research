.class public Lcom/tencent/component/utils/ApkUtil;
.super Ljava/lang/Object;
.source "ApkUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/component/utils/ApkUtil$Certificates;,
        Lcom/tencent/component/utils/ApkUtil$ApkInfo;
    }
.end annotation


# static fields
.field private static CLASS_ASSET:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Landroid/content/res/AssetManager;",
            ">;"
        }
    .end annotation
.end field

.field private static METHOD_ADD_ASSET:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 41
    :try_start_0
    const-class v1, Landroid/content/res/AssetManager;

    sput-object v1, Lcom/tencent/component/utils/ApkUtil;->CLASS_ASSET:Ljava/lang/Class;

    .line 42
    sget-object v1, Lcom/tencent/component/utils/ApkUtil;->CLASS_ASSET:Ljava/lang/Class;

    const-string v2, "addAssetPath"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/tencent/component/utils/ApkUtil;->METHOD_ADD_ASSET:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 50
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 46
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    return-void
.end method

.method private static checkApkFile(Ljava/lang/String;)Z
    .locals 3
    .param p0, "apkPath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 210
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 215
    :cond_0
    :goto_0
    return v1

    .line 214
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 215
    .local v0, "apkFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static getApkInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/component/utils/ApkUtil$ApkInfo;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apkPath"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 159
    invoke-static {p1}, Lcom/tencent/component/utils/ApkUtil;->checkApkFile(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    move-object v0, v8

    .line 188
    :cond_0
    :goto_0
    return-object v0

    .line 163
    :cond_1
    const/4 v0, 0x0

    .line 165
    .local v0, "apkInfo":Lcom/tencent/component/utils/ApkUtil$ApkInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, p1, v10}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 166
    .local v6, "pkgInfo":Landroid/content/pm/PackageInfo;
    invoke-static {p0, p1}, Lcom/tencent/component/utils/ApkUtil;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    .line 167
    .local v7, "res":Landroid/content/res/Resources;
    if-eqz v6, :cond_0

    if-eqz v7, :cond_0

    .line 168
    iget-object v2, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 169
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v2, :cond_3

    move-object v5, v8

    .line 170
    .local v5, "name":Ljava/lang/String;
    :goto_1
    if-nez v2, :cond_4

    move-object v4, v8

    .line 171
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    :goto_2
    if-nez v4, :cond_2

    if-eqz v2, :cond_2

    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 176
    :cond_2
    new-instance v1, Lcom/tencent/component/utils/ApkUtil$ApkInfo;

    invoke-direct {v1}, Lcom/tencent/component/utils/ApkUtil$ApkInfo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v0    # "apkInfo":Lcom/tencent/component/utils/ApkUtil$ApkInfo;
    .local v1, "apkInfo":Lcom/tencent/component/utils/ApkUtil$ApkInfo;
    :try_start_1
    iput-object v6, v1, Lcom/tencent/component/utils/ApkUtil$ApkInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 178
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v8, v1, Lcom/tencent/component/utils/ApkUtil$ApkInfo;->packageName:Ljava/lang/String;

    .line 179
    iput-object v5, v1, Lcom/tencent/component/utils/ApkUtil$ApkInfo;->name:Ljava/lang/String;

    .line 180
    iput-object v4, v1, Lcom/tencent/component/utils/ApkUtil$ApkInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 181
    iget v8, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-float v8, v8

    iput v8, v1, Lcom/tencent/component/utils/ApkUtil$ApkInfo;->version:F
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .end local v1    # "apkInfo":Lcom/tencent/component/utils/ApkUtil$ApkInfo;
    .restart local v0    # "apkInfo":Lcom/tencent/component/utils/ApkUtil$ApkInfo;
    goto :goto_0

    .line 169
    .end local v4    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "name":Ljava/lang/String;
    :cond_3
    :try_start_2
    iget v9, v2, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-static {v7, v9}, Lcom/tencent/component/utils/ApkUtil;->getString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 170
    .restart local v5    # "name":Ljava/lang/String;
    :cond_4
    iget v8, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v7, v8}, Lcom/tencent/component/utils/ApkUtil;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v4

    goto :goto_2

    .line 184
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v7    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v3

    .line 185
    .local v3, "e":Ljava/lang/Throwable;
    :goto_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 184
    .end local v0    # "apkInfo":Lcom/tencent/component/utils/ApkUtil$ApkInfo;
    .end local v3    # "e":Ljava/lang/Throwable;
    .restart local v1    # "apkInfo":Lcom/tencent/component/utils/ApkUtil$ApkInfo;
    .restart local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v7    # "res":Landroid/content/res/Resources;
    :catch_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "apkInfo":Lcom/tencent/component/utils/ApkUtil$ApkInfo;
    .restart local v0    # "apkInfo":Lcom/tencent/component/utils/ApkUtil$ApkInfo;
    goto :goto_3
.end method

.method public static getApplicationInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tencent/component/utils/ApkUtil;->getApplicationInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getApplicationInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 145
    invoke-static {p1}, Lcom/tencent/component/utils/ApkUtil;->checkApkFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-object v0

    .line 149
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 150
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_2

    .line 151
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_1
    if-eqz v0, :cond_0

    .line 152
    iput-object p1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 153
    iput-object p1, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    goto :goto_0

    .line 150
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_2
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_1
.end method

.method private static getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .prologue
    .line 193
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 197
    :goto_0
    return-object v0

    .line 194
    :catch_0
    move-exception v0

    .line 197
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tencent/component/utils/ApkUtil;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 125
    invoke-static {p1}, Lcom/tencent/component/utils/ApkUtil;->checkApkFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    .line 137
    :cond_0
    :goto_0
    return-object v0

    .line 129
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 130
    .local v0, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_2

    move-object v0, v1

    .line 131
    goto :goto_0

    .line 133
    :cond_2
    and-int/lit8 v1, p2, 0x40

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v1, :cond_0

    .line 135
    invoke-static {p1}, Lcom/tencent/component/utils/ApkUtil$Certificates;->collectCertificates(Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    goto :goto_0
.end method

.method public static getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apkPath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 65
    invoke-static {p1}, Lcom/tencent/component/utils/ApkUtil;->checkApkFile(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v3, v4

    .line 85
    :cond_0
    :goto_0
    return-object v3

    .line 69
    :cond_1
    const/4 v3, 0x0

    .line 70
    .local v3, "resources":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 71
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-nez v2, :cond_3

    move-object v0, v4

    .line 72
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_1
    if-eqz v0, :cond_2

    .line 73
    iput-object p1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 74
    iput-object p1, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 77
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 85
    :cond_2
    :goto_2
    if-nez v3, :cond_0

    invoke-static {p0, p1}, Lcom/tencent/component/utils/ApkUtil;->getResourcesWithReflect(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    goto :goto_0

    .line 71
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_3
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_1

    .line 78
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 80
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method private static getResourcesWithReflect(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apkPath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 89
    sget-object v7, Lcom/tencent/component/utils/ApkUtil;->CLASS_ASSET:Ljava/lang/Class;

    if-eqz v7, :cond_0

    sget-object v7, Lcom/tencent/component/utils/ApkUtil;->METHOD_ADD_ASSET:Ljava/lang/reflect/Method;

    if-nez v7, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-object v5

    .line 94
    :cond_1
    invoke-static {p1}, Lcom/tencent/component/utils/ApkUtil;->checkApkFile(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 98
    const/4 v5, 0x0

    .line 100
    .local v5, "resources":Landroid/content/res/Resources;
    :try_start_0
    sget-object v7, Lcom/tencent/component/utils/ApkUtil;->CLASS_ASSET:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/AssetManager;

    .line 101
    .local v1, "asset":Landroid/content/res/AssetManager;
    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v0, v7

    .line 102
    .local v0, "args":[Ljava/lang/Object;
    sget-object v7, Lcom/tencent/component/utils/ApkUtil;->METHOD_ADD_ASSET:Ljava/lang/reflect/Method;

    invoke-virtual {v7, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 105
    .local v3, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 106
    .local v2, "config":Landroid/content/res/Configuration;
    new-instance v6, Landroid/content/res/Resources;

    invoke-direct {v6, v1, v3, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .end local v5    # "resources":Landroid/content/res/Resources;
    .local v6, "resources":Landroid/content/res/Resources;
    move-object v5, v6

    .line 116
    .end local v6    # "resources":Landroid/content/res/Resources;
    .restart local v5    # "resources":Landroid/content/res/Resources;
    goto :goto_0

    .line 108
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v1    # "asset":Landroid/content/res/AssetManager;
    .end local v2    # "config":Landroid/content/res/Configuration;
    .end local v3    # "dm":Landroid/util/DisplayMetrics;
    :catch_0
    move-exception v4

    .line 109
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 110
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v4

    .line 111
    .local v4, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v4}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 112
    .end local v4    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v4

    .line 113
    .local v4, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 114
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v4

    .line 115
    .local v4, "e":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static getString(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .prologue
    .line 202
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 206
    :goto_0
    return-object v0

    .line 203
    :catch_0
    move-exception v0

    .line 206
    const/4 v0, 0x0

    goto :goto_0
.end method
