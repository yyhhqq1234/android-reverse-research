.class public Lcom/ryg/dynamicload/internal/DLPluginPackage;
.super Ljava/lang/Object;
.source "DLPluginPackage.java"


# instance fields
.field public assetManager:Landroid/content/res/AssetManager;

.field public classLoader:Ldalvik/system/DexClassLoader;

.field public defaultActivity:Ljava/lang/String;

.field private mPluginContext:Lcom/ryg/dynamicload/internal/DLPluginContext;

.field public packageInfo:Landroid/content/pm/PackageInfo;

.field public packageName:Ljava/lang/String;

.field public resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldalvik/system/DexClassLoader;Landroid/content/res/Resources;Landroid/content/pm/PackageInfo;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "loader"    # Ldalvik/system/DexClassLoader;
    .param p3, "resources"    # Landroid/content/res/Resources;
    .param p4, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iget-object v0, p4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/ryg/dynamicload/internal/DLPluginPackage;->packageName:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/ryg/dynamicload/internal/DLPluginPackage;->classLoader:Ldalvik/system/DexClassLoader;

    .line 49
    invoke-virtual {p3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ryg/dynamicload/internal/DLPluginPackage;->assetManager:Landroid/content/res/AssetManager;

    .line 50
    iput-object p3, p0, Lcom/ryg/dynamicload/internal/DLPluginPackage;->resources:Landroid/content/res/Resources;

    .line 51
    iput-object p4, p0, Lcom/ryg/dynamicload/internal/DLPluginPackage;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 52
    new-instance v0, Lcom/ryg/dynamicload/internal/DLPluginContext;

    iget-object v1, p0, Lcom/ryg/dynamicload/internal/DLPluginPackage;->assetManager:Landroid/content/res/AssetManager;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/ryg/dynamicload/internal/DLPluginContext;-><init>(Landroid/content/Context;Ljava/lang/ClassLoader;Landroid/content/res/Resources;Landroid/content/res/AssetManager;)V

    iput-object v0, p0, Lcom/ryg/dynamicload/internal/DLPluginPackage;->mPluginContext:Lcom/ryg/dynamicload/internal/DLPluginContext;

    .line 53
    invoke-direct {p0}, Lcom/ryg/dynamicload/internal/DLPluginPackage;->parseDefaultActivityName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ryg/dynamicload/internal/DLPluginPackage;->defaultActivity:Ljava/lang/String;

    .line 54
    return-void
.end method

.method private final parseDefaultActivityName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ryg/dynamicload/internal/DLPluginPackage;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ryg/dynamicload/internal/DLPluginPackage;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/ryg/dynamicload/internal/DLPluginPackage;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 60
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public getPluginContext()Lcom/ryg/dynamicload/internal/DLPluginContext;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/ryg/dynamicload/internal/DLPluginPackage;->mPluginContext:Lcom/ryg/dynamicload/internal/DLPluginContext;

    return-object v0
.end method
