.class public Lcom/netease/ntunisdk/base/update/dex/DexHack;
.super Ljava/lang/Object;
.source "DexHack.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DexHack"

.field private static sDexFilePaths:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDexClassLoaderElements(Ldalvik/system/BaseDexClassLoader;)Ljava/lang/Object;
    .locals 7
    .param p0, "classLoader"    # Ldalvik/system/BaseDexClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 78
    const-class v0, Ldalvik/system/BaseDexClassLoader;

    .line 79
    .local v0, "dexClassLoaderClass":Ljava/lang/Class;, "Ljava/lang/Class<Ldalvik/system/BaseDexClassLoader;>;"
    const-string v4, "pathList"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 80
    .local v3, "pathListField":Ljava/lang/reflect/Field;
    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 81
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 82
    .local v2, "pathList":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "dexElements"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 83
    .local v1, "dexElementsField":Ljava/lang/reflect/Field;
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method

.method private static getDexFilePaths()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/netease/ntunisdk/base/update/dex/DexHack;->sDexFilePaths:[Ljava/lang/String;

    return-object v0
.end method

.method private static joinArrays(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "others"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "o1Type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x0

    .line 109
    .local v7, "size":I
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v6, v0, v3

    .line 110
    .local v6, "other":Ljava/lang/Object;
    invoke-static {v6}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v8

    add-int/2addr v7, v8

    .line 109
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 113
    .end local v6    # "other":Ljava/lang/Object;
    :cond_0
    invoke-static {p0, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 115
    .local v1, "array":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 116
    .local v5, "offset":I
    move-object v0, p1

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    .line 117
    .restart local v6    # "other":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-static {v6}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v8

    if-ge v2, v8, :cond_1

    .line 118
    invoke-static {v6, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v1, v5, v8}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 117
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 116
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 122
    .end local v2    # "i":I
    .end local v6    # "other":Ljava/lang/Object;
    :cond_2
    return-object v1
.end method

.method private static load(Landroid/content/Context;)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 46
    const-class v12, Lcom/netease/ntunisdk/base/update/dex/DexHack;

    invoke-virtual {v12}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    .line 47
    .local v10, "localClassLoader":Ljava/lang/ClassLoader;
    instance-of v12, v10, Ldalvik/system/BaseDexClassLoader;

    if-eqz v12, :cond_1

    move-object v12, v10

    .line 48
    check-cast v12, Ldalvik/system/BaseDexClassLoader;

    invoke-static {v12}, Lcom/netease/ntunisdk/base/update/dex/DexHack;->getDexClassLoaderElements(Ldalvik/system/BaseDexClassLoader;)Ljava/lang/Object;

    move-result-object v3

    .line 49
    .local v3, "existing":Ljava/lang/Object;
    invoke-static {}, Lcom/netease/ntunisdk/base/update/dex/DexHack;->getDexFilePaths()[Ljava/lang/String;

    move-result-object v12

    array-length v12, v12

    add-int/lit8 v12, v12, 0x1

    new-array v2, v12, [Ljava/lang/Object;

    .line 50
    .local v2, "dexes":[Ljava/lang/Object;
    const/4 v6, 0x0

    .line 51
    .local v6, "index":I
    invoke-static {}, Lcom/netease/ntunisdk/base/update/dex/DexHack;->getDexFilePaths()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v9, v0

    .local v9, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v7, v6

    .end local v6    # "index":I
    .local v7, "index":I
    :goto_0
    if-ge v4, v9, :cond_0

    aget-object v11, v0, v4

    .line 52
    .local v11, "path":Ljava/lang/String;
    const-string v12, "DexHack"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "path: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v1, Ldalvik/system/DexClassLoader;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {v1, v11, v12, v13, v10}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 55
    .local v1, "classLoader":Ldalvik/system/BaseDexClassLoader;
    invoke-static {v1}, Lcom/netease/ntunisdk/base/update/dex/DexHack;->getDexClassLoaderElements(Ldalvik/system/BaseDexClassLoader;)Ljava/lang/Object;

    move-result-object v5

    .line 56
    .local v5, "incoming":Ljava/lang/Object;
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "index":I
    .restart local v6    # "index":I
    aput-object v5, v2, v7

    .line 51
    add-int/lit8 v4, v4, 0x1

    move v7, v6

    .end local v6    # "index":I
    .restart local v7    # "index":I
    goto :goto_0

    .line 58
    .end local v1    # "classLoader":Ldalvik/system/BaseDexClassLoader;
    .end local v5    # "incoming":Ljava/lang/Object;
    .end local v11    # "path":Ljava/lang/String;
    :cond_0
    aput-object v3, v2, v7

    .line 59
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v12

    invoke-static {v12, v2}, Lcom/netease/ntunisdk/base/update/dex/DexHack;->joinArrays(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 61
    .local v8, "joined":Ljava/lang/Object;
    check-cast v10, Ldalvik/system/BaseDexClassLoader;

    .end local v10    # "localClassLoader":Ljava/lang/ClassLoader;
    invoke-static {v10, v8}, Lcom/netease/ntunisdk/base/update/dex/DexHack;->setDexClassLoaderElements(Ldalvik/system/BaseDexClassLoader;Ljava/lang/Object;)V

    .line 65
    return-void

    .line 63
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "dexes":[Ljava/lang/Object;
    .end local v3    # "existing":Ljava/lang/Object;
    .end local v4    # "i$":I
    .end local v7    # "index":I
    .end local v8    # "joined":Ljava/lang/Object;
    .end local v9    # "len$":I
    .restart local v10    # "localClassLoader":Ljava/lang/ClassLoader;
    :cond_1
    new-instance v12, Ljava/lang/UnsupportedOperationException;

    const-string v13, "Class loader not supported"

    invoke-direct {v12, v13}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v12
.end method

.method public static varargs load(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dexFilePaths"    # [Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 30
    if-eqz p1, :cond_1

    .line 31
    invoke-static {p1}, Lcom/netease/ntunisdk/base/update/dex/DexHack;->setDexFilePaths([Ljava/lang/String;)V

    .line 32
    const-string v0, "DexHack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device api-level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 34
    invoke-static {p0}, Lcom/netease/ntunisdk/base/update/dex/DexHack;->load(Landroid/content/Context;)V

    .line 42
    :goto_0
    return-void

    .line 36
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/update/dex/DexHack;->getDexFilePaths()[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netease/ntunisdk/base/update/dex/DexHackLowLevel;->load(Landroid/content/Context;[Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dex file path is set already, please do not set twice or more."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static setDexClassLoaderElements(Ldalvik/system/BaseDexClassLoader;Ljava/lang/Object;)V
    .locals 7
    .param p0, "classLoader"    # Ldalvik/system/BaseDexClassLoader;
    .param p1, "elements"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 68
    const-class v0, Ldalvik/system/BaseDexClassLoader;

    .line 69
    .local v0, "dexClassLoaderClass":Ljava/lang/Class;, "Ljava/lang/Class<Ldalvik/system/BaseDexClassLoader;>;"
    const-string v4, "pathList"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 70
    .local v3, "pathListField":Ljava/lang/reflect/Field;
    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 71
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 72
    .local v2, "pathList":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "dexElements"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 73
    .local v1, "dexElementsField":Ljava/lang/reflect/Field;
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 74
    invoke-virtual {v1, v2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method private static varargs setDexFilePaths([Ljava/lang/String;)V
    .locals 0
    .param p0, "sDexFilePath"    # [Ljava/lang/String;

    .prologue
    .line 130
    sput-object p0, Lcom/netease/ntunisdk/base/update/dex/DexHack;->sDexFilePaths:[Ljava/lang/String;

    .line 131
    return-void
.end method
