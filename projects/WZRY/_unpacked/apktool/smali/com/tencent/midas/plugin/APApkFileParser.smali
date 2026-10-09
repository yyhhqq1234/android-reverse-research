.class public Lcom/tencent/midas/plugin/APApkFileParser;
.super Ljava/lang/Object;
.source "APApkFileParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAPKIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 19
    .param p0, "ct"    # Landroid/content/Context;
    .param p1, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 74
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 75
    .local v13, "pm":Landroid/content/pm/PackageManager;
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 76
    .local v11, "info":Landroid/content/pm/PackageInfo;
    if-eqz v11, :cond_0

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 77
    :cond_0
    const/4 v10, 0x0

    .line 108
    .end local v11    # "info":Landroid/content/pm/PackageInfo;
    .end local v13    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v10

    .line 79
    .restart local v11    # "info":Landroid/content/pm/PackageInfo;
    .restart local v13    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    iget-object v3, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 82
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    const-string v2, "android.content.res.AssetManager"

    .line 83
    .local v2, "PATH_AssetManager":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 84
    .local v5, "assetMagCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v17, 0x0

    check-cast v17, [Ljava/lang/Class;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 85
    .local v6, "assetMagCt":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/16 v17, 0x0

    check-cast v17, [Ljava/lang/Object;

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/AssetManager;

    .line 87
    .local v4, "assetMag":Landroid/content/res/AssetManager;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v15, v0, [Ljava/lang/Class;

    .line 88
    .local v15, "typeArgs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/16 v17, 0x0

    const-class v18, Ljava/lang/String;

    aput-object v18, v15, v17

    .line 89
    const-string v17, "addAssetPath"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v15}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 91
    .local v7, "assetMag_addAssetPathMtd":Ljava/lang/reflect/Method;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 92
    .local v16, "valueArgs":[Ljava/lang/Object;
    const/16 v17, 0x0

    aput-object p1, v16, v17

    .line 93
    move-object/from16 v0, v16

    invoke-virtual {v7, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    new-instance v12, Landroid/util/DisplayMetrics;

    invoke-direct {v12}, Landroid/util/DisplayMetrics;-><init>()V

    .line 97
    .local v12, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v12}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 98
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    .line 99
    .local v8, "con":Landroid/content/res/Configuration;
    new-instance v14, Landroid/content/res/Resources;

    invoke-direct {v14, v4, v12, v8}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 101
    .local v14, "res":Landroid/content/res/Resources;
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 102
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 103
    .local v10, "icon":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 105
    .end local v2    # "PATH_AssetManager":Ljava/lang/String;
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "assetMag":Landroid/content/res/AssetManager;
    .end local v5    # "assetMagCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "assetMagCt":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v7    # "assetMag_addAssetPathMtd":Ljava/lang/reflect/Method;
    .end local v8    # "con":Landroid/content/res/Configuration;
    .end local v10    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v11    # "info":Landroid/content/pm/PackageInfo;
    .end local v12    # "metrics":Landroid/util/DisplayMetrics;
    .end local v13    # "pm":Landroid/content/pm/PackageManager;
    .end local v14    # "res":Landroid/content/res/Resources;
    .end local v15    # "typeArgs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v16    # "valueArgs":[Ljava/lang/Object;
    :catch_0
    move-exception v9

    .line 106
    .local v9, "e":Ljava/lang/Throwable;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    .line 108
    .end local v9    # "e":Ljava/lang/Throwable;
    :cond_2
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public static getPackageInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "archiveFilePath"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 55
    const/4 v1, 0x0

    .line 57
    .local v1, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 58
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, p1, p2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 62
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static isApkFileBroken(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "ct"    # Landroid/content/Context;
    .param p1, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 114
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/16 v2, 0x40

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 115
    .local v0, "info":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v2, :cond_1

    .line 116
    :cond_0
    const/4 v2, 0x1

    .line 118
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isSignaturesSame([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z
    .locals 6
    .param p0, "s1"    # [Landroid/content/pm/Signature;
    .param p1, "s2"    # [Landroid/content/pm/Signature;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 28
    if-nez p0, :cond_1

    .line 44
    :cond_0
    :goto_0
    return v3

    .line 31
    :cond_1
    if-eqz p1, :cond_0

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 35
    .local v0, "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    array-length v5, p0

    move v3, v4

    :goto_1
    if-ge v3, v5, :cond_2

    aget-object v2, p0, v3

    .line 36
    .local v2, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 35
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 39
    .end local v2    # "sig":Landroid/content/pm/Signature;
    :cond_2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 40
    .local v1, "set2":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    array-length v5, p1

    move v3, v4

    :goto_2
    if-ge v3, v5, :cond_3

    aget-object v2, p1, v3

    .line 41
    .restart local v2    # "sig":Landroid/content/pm/Signature;
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 40
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 44
    .end local v2    # "sig":Landroid/content/pm/Signature;
    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method
