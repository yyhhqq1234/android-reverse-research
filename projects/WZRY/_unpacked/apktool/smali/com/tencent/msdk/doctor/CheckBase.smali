.class public abstract Lcom/tencent/msdk/doctor/CheckBase;
.super Ljava/lang/Object;
.source "CheckBase.java"


# instance fields
.field public mContext:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "mContext"    # Landroid/app/Activity;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/msdk/doctor/CheckBase;->mContext:Landroid/app/Activity;

    .line 22
    iput-object p1, p0, Lcom/tencent/msdk/doctor/CheckBase;->mContext:Landroid/app/Activity;

    .line 23
    return-void
.end method


# virtual methods
.method public abstract check()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public getValueFromAssetsFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/lang/String;

    .prologue
    .line 55
    const/4 v1, 0x0

    .line 56
    .local v1, "inputStream":Ljava/io/InputStream;
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 58
    .local v2, "properties":Ljava/util/Properties;
    :try_start_0
    iget-object v4, p0, Lcom/tencent/msdk/doctor/CheckBase;->mContext:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 59
    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 60
    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_0
    const-string v4, ""

    invoke-virtual {v2, p1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 69
    :goto_0
    return-object v3

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Msdk: read assets/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 66
    const-string v3, "error"

    goto :goto_0
.end method

.method public queryIntentFilter(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 28
    const/4 v0, 0x0

    .line 29
    .local v0, "isConfigCorrect":Z
    iget-object v6, p0, Lcom/tencent/msdk/doctor/CheckBase;->mContext:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 30
    .local v4, "pm":Landroid/content/pm/PackageManager;
    if-nez v4, :cond_0

    .line 31
    const-string v6, "PackageManager is null, check fail."

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 32
    const/4 v6, 0x0

    move v1, v0

    .line 51
    .end local v0    # "isConfigCorrect":Z
    .local v1, "isConfigCorrect":Z
    :goto_0
    return v6

    .line 34
    .end local v1    # "isConfigCorrect":Z
    .restart local v0    # "isConfigCorrect":Z
    :cond_0
    const/high16 v6, 0x10000

    invoke-virtual {v4, p1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 36
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v6, p0, Lcom/tencent/msdk/doctor/CheckBase;->mContext:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 37
    .local v3, "pkgName":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 38
    const-string v6, "Get package name error!"

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    move v1, v0

    .end local v0    # "isConfigCorrect":Z
    .restart local v1    # "isConfigCorrect":Z
    move v6, v0

    .line 39
    goto :goto_0

    .line 41
    .end local v1    # "isConfigCorrect":Z
    .restart local v0    # "isConfigCorrect":Z
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 42
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 43
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 44
    const/4 v0, 0x1

    .line 48
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_3
    if-nez v0, :cond_4

    .line 49
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Msdk: the intent-filter of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has not be configured correctly"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    :cond_4
    move v1, v0

    .end local v0    # "isConfigCorrect":Z
    .restart local v1    # "isConfigCorrect":Z
    move v6, v0

    .line 51
    goto :goto_0
.end method
