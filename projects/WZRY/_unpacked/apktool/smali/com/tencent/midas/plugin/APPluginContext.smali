.class Lcom/tencent/midas/plugin/APPluginContext;
.super Landroid/view/ContextThemeWrapper;
.source "APPluginContext.java"


# instance fields
.field private mAsset:Landroid/content/res/AssetManager;

.field private mClassLoader:Ljava/lang/ClassLoader;

.field private mResources:Landroid/content/res/Resources;

.field private mTheme:Landroid/content/res/Resources$Theme;

.field private mThemeResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 6
    .param p1, "base"    # Landroid/content/Context;
    .param p2, "themeres"    # I
    .param p3, "apkPath"    # Ljava/lang/String;
    .param p4, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 33
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/midas/plugin/APPluginContext;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/ClassLoader;Landroid/content/res/Resources;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/ClassLoader;Landroid/content/res/Resources;)V
    .locals 3
    .param p1, "base"    # Landroid/content/Context;
    .param p2, "themeres"    # I
    .param p3, "apkPath"    # Ljava/lang/String;
    .param p4, "classLoader"    # Ljava/lang/ClassLoader;
    .param p5, "proxyResources"    # Landroid/content/res/Resources;

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 22
    iput-object v0, p0, Lcom/tencent/midas/plugin/APPluginContext;->mAsset:Landroid/content/res/AssetManager;

    .line 24
    iput-object v0, p0, Lcom/tencent/midas/plugin/APPluginContext;->mResources:Landroid/content/res/Resources;

    .line 26
    iput-object v0, p0, Lcom/tencent/midas/plugin/APPluginContext;->mTheme:Landroid/content/res/Resources$Theme;

    .line 38
    iput-object p4, p0, Lcom/tencent/midas/plugin/APPluginContext;->mClassLoader:Ljava/lang/ClassLoader;

    .line 39
    const-string v0, "APPluginContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APPluginContext mClassLoader:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/midas/plugin/APPluginContext;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " apkPath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    if-eqz p5, :cond_0

    .line 41
    invoke-virtual {p5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/midas/plugin/APPluginContext;->mAsset:Landroid/content/res/AssetManager;

    .line 42
    const-string v0, "APPluginContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APPluginActivity APPluginContext 1 mAsset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/midas/plugin/APPluginContext;->mAsset:Landroid/content/res/AssetManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iput-object p5, p0, Lcom/tencent/midas/plugin/APPluginContext;->mResources:Landroid/content/res/Resources;

    .line 49
    :goto_0
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginContext;->mResources:Landroid/content/res/Resources;

    invoke-direct {p0, v0}, Lcom/tencent/midas/plugin/APPluginContext;->getSelfTheme(Landroid/content/res/Resources;)Landroid/content/res/Resources$Theme;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/midas/plugin/APPluginContext;->mTheme:Landroid/content/res/Resources$Theme;

    .line 50
    return-void

    .line 45
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/tencent/midas/plugin/APPluginContext;->getSelfAssets(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/midas/plugin/APPluginContext;->mAsset:Landroid/content/res/AssetManager;

    .line 46
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginContext;->mAsset:Landroid/content/res/AssetManager;

    invoke-direct {p0, p1, v0}, Lcom/tencent/midas/plugin/APPluginContext;->getSelfRes(Landroid/content/Context;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/midas/plugin/APPluginContext;->mResources:Landroid/content/res/Resources;

    .line 47
    const-string v0, "APPluginContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APPluginActivity APPluginContext 2 mAsset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/midas/plugin/APPluginContext;->mAsset:Landroid/content/res/AssetManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mResources:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/midas/plugin/APPluginContext;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getApplicationPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 188
    const-string v3, ""

    .line 190
    .local v3, "packageName":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 191
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 192
    .local v2, "manager":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 193
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 194
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "manager":Landroid/content/pm/PackageManager;
    :cond_0
    move-object v4, v3

    .end local v3    # "packageName":Ljava/lang/String;
    .local v4, "packageName":Ljava/lang/String;
    move-object v5, v3

    .line 203
    .end local v4    # "packageName":Ljava/lang/String;
    .local v5, "packageName":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 199
    .end local v5    # "packageName":Ljava/lang/String;
    .restart local v3    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "APMidasCommMethod"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getApplicationPackageName error:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v3

    .end local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "packageName":Ljava/lang/String;
    move-object v5, v3

    .line 203
    .end local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "packageName":Ljava/lang/String;
    goto :goto_0
.end method

.method private getInnerRIdValue(Ljava/lang/String;)I
    .locals 12
    .param p1, "rStrnig"    # Ljava/lang/String;

    .prologue
    .line 136
    const/4 v8, -0x1

    .line 138
    .local v8, "value":I
    :try_start_0
    const-string v9, ".R."

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 139
    .local v6, "rindex":I
    const/4 v9, 0x0

    add-int/lit8 v10, v6, 0x2

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "Rpath":Ljava/lang/String;
    const-string v9, "."

    invoke-virtual {p1, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 141
    .local v4, "fieldIndex":I
    add-int/lit8 v9, v4, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 142
    .local v5, "fieldName":Ljava/lang/String;
    const/4 v9, 0x0

    invoke-virtual {p1, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 143
    const-string v9, "."

    invoke-virtual {p1, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 144
    .local v7, "type":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "$"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "className":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 147
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8

    .line 148
    const-string v9, "APPluginContext"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getInnderR rStrnig:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", className:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", fieldName:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v0    # "Rpath":Ljava/lang/String;
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "fieldIndex":I
    .end local v5    # "fieldName":Ljava/lang/String;
    .end local v6    # "rindex":I
    .end local v7    # "type":Ljava/lang/String;
    :goto_0
    return v8

    .line 149
    :catch_0
    move-exception v3

    .line 150
    .local v3, "e":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private getSelfAssets(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/AssetManager;
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 53
    const/4 v7, 0x0

    .line 54
    .local v7, "instance":Landroid/content/res/AssetManager;
    const/4 v1, 0x0

    .line 57
    .local v1, "addAssetPathMethod":Ljava/lang/reflect/Method;
    :try_start_0
    const-class v12, Landroid/content/res/AssetManager;

    invoke-virtual {v12}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Landroid/content/res/AssetManager;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 61
    const/4 v8, 0x0

    .line 63
    .local v8, "isHasBSL":Z
    :try_start_1
    const-string v12, "com.tencent.theme.SkinEngine"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .line 64
    .local v11, "payHelper":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v12, "getInstances"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Class;

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 65
    const/4 v8, 0x1

    .line 73
    .end local v11    # "payHelper":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-nez v8, :cond_0

    .line 75
    :try_start_2
    const-string v12, "com.tencent.component.theme.SkinEngine"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .line 76
    .restart local v11    # "payHelper":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v12, "getInstances"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Class;

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 77
    const/4 v8, 0x1

    .line 86
    .end local v11    # "payHelper":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_1
    const/4 v9, 0x0

    .line 88
    .local v9, "isWechatReader":Z
    :try_start_3
    invoke-static/range {p1 .. p1}, Lcom/tencent/midas/plugin/APPluginContext;->getApplicationPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 89
    .local v10, "pName":Ljava/lang/String;
    const-string v12, "com.tencent.weread"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result v12

    if-eqz v12, :cond_3

    .line 90
    const/4 v9, 0x1

    .line 99
    .end local v10    # "pName":Ljava/lang/String;
    :goto_2
    if-nez v8, :cond_1

    if-eqz v9, :cond_4

    .line 100
    :cond_1
    :try_start_4
    invoke-static/range {p1 .. p1}, Lcom/tencent/midas/plugin/APPluginUtils;->getMidasEmptyPaht(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    .line 101
    .local v3, "emptyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v12, "APPluginContext"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "loadEmptyResAPK emptyList.size:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_4

    .line 103
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 104
    .local v4, "emptyResFirstPath":Ljava/lang/String;
    const-string v12, "APPluginContext"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "loadEmptyResAPK emptyResFirstPath:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 106
    const-class v12, Landroid/content/res/AssetManager;

    const-string v13, "addAssetPath"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    const-class v16, Ljava/lang/String;

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 107
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    invoke-virtual {v1, v7, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 108
    .local v6, "id":I
    const-string v12, "APPluginContext"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "loadEmptyResAPK id:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .end local v6    # "id":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 66
    .end local v3    # "emptyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "emptyResFirstPath":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v9    # "isWechatReader":Z
    :catch_0
    move-exception v2

    .line 67
    .local v2, "e":Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 69
    const-string v12, "APPluginContext"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " is not has com.tencent.theme.SkinEngine e:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/tencent/midas/comm/APLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 115
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v8    # "isHasBSL":Z
    :catch_1
    move-exception v2

    .line 116
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 119
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_4
    return-object v7

    .line 78
    .restart local v8    # "isHasBSL":Z
    :catch_2
    move-exception v2

    .line 79
    .local v2, "e":Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 81
    :try_start_5
    const-string v12, "APPluginContext"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " is not has com.tencent.component.theme.SkinEngine e:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/tencent/midas/comm/APLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 92
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v9    # "isWechatReader":Z
    .restart local v10    # "pName":Ljava/lang/String;
    :cond_3
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 94
    .end local v10    # "pName":Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 95
    .restart local v2    # "e":Ljava/lang/Exception;
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 113
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    const-class v12, Landroid/content/res/AssetManager;

    const-string v13, "addAssetPath"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    const-class v16, Ljava/lang/String;

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 114
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p2, v12, v13

    invoke-virtual {v1, v7, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4
.end method

.method private getSelfRes(Landroid/content/Context;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "selfAsset"    # Landroid/content/res/AssetManager;

    .prologue
    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 124
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 125
    .local v0, "con":Landroid/content/res/Configuration;
    new-instance v2, Landroid/content/res/Resources;

    invoke-direct {v2, p2, v1, v0}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    return-object v2
.end method

.method private getSelfTheme(Landroid/content/res/Resources;)Landroid/content/res/Resources$Theme;
    .locals 3
    .param p1, "selfResources"    # Landroid/content/res/Resources;

    .prologue
    .line 129
    invoke-virtual {p1}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 130
    .local v0, "theme":Landroid/content/res/Resources$Theme;
    const-string v1, "com.android.internal.R.style.Theme"

    invoke-direct {p0, v1}, Lcom/tencent/midas/plugin/APPluginContext;->getInnerRIdValue(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tencent/midas/plugin/APPluginContext;->mThemeResId:I

    .line 131
    iget v1, p0, Lcom/tencent/midas/plugin/APPluginContext;->mThemeResId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 132
    return-object v0
.end method


# virtual methods
.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginContext;->mAsset:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginContext;->mClassLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginContext;->mClassLoader:Ljava/lang/ClassLoader;

    .line 179
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/view/ContextThemeWrapper;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0
.end method

.method public getRes()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginContext;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginContext;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginContext;->mTheme:Landroid/content/res/Resources$Theme;

    return-object v0
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/tencent/midas/plugin/APPluginContext;->mClassLoader:Ljava/lang/ClassLoader;

    .line 184
    return-void
.end method
