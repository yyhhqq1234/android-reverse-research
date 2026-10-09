.class public Lcom/ryg/dynamicload/internal/DLPluginContext;
.super Landroid/content/ContextWrapper;
.source "DLPluginContext.java"


# instance fields
.field private mAssetManager:Landroid/content/res/AssetManager;

.field private mClassloader:Ljava/lang/ClassLoader;

.field private mContext:Landroid/content/Context;

.field private mResources:Landroid/content/res/Resources;

.field private mTheme:Landroid/content/res/Resources$Theme;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/ClassLoader;Landroid/content/res/Resources;Landroid/content/res/AssetManager;)V
    .locals 0
    .param p1, "that"    # Landroid/content/Context;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .param p3, "resources"    # Landroid/content/res/Resources;
    .param p4, "assetManager"    # Landroid/content/res/AssetManager;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object p1, p0, Lcom/ryg/dynamicload/internal/DLPluginContext;->mContext:Landroid/content/Context;

    .line 23
    iput-object p3, p0, Lcom/ryg/dynamicload/internal/DLPluginContext;->mResources:Landroid/content/res/Resources;

    .line 24
    iput-object p2, p0, Lcom/ryg/dynamicload/internal/DLPluginContext;->mClassloader:Ljava/lang/ClassLoader;

    .line 25
    iput-object p4, p0, Lcom/ryg/dynamicload/internal/DLPluginContext;->mAssetManager:Landroid/content/res/AssetManager;

    .line 26
    return-void
.end method


# virtual methods
.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ryg/dynamicload/internal/DLPluginContext;->mAssetManager:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ryg/dynamicload/internal/DLPluginContext;->mClassloader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/ryg/dynamicload/internal/DLPluginContext;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 2

    .prologue
    .line 37
    iget-object v1, p0, Lcom/ryg/dynamicload/internal/DLPluginContext;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    iput-object v1, p0, Lcom/ryg/dynamicload/internal/DLPluginContext;->mTheme:Landroid/content/res/Resources$Theme;

    .line 38
    iget-object v1, p0, Lcom/ryg/dynamicload/internal/DLPluginContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 39
    .local v0, "superTheme":Landroid/content/res/Resources$Theme;
    iget-object v1, p0, Lcom/ryg/dynamicload/internal/DLPluginContext;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 40
    iget-object v1, p0, Lcom/ryg/dynamicload/internal/DLPluginContext;->mTheme:Landroid/content/res/Resources$Theme;

    return-object v1
.end method
