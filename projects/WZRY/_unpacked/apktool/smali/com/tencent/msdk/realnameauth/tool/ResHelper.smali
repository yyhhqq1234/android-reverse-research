.class public Lcom/tencent/msdk/realnameauth/tool/ResHelper;
.super Ljava/lang/Object;
.source "ResHelper.java"


# instance fields
.field private packageName:Ljava/lang/String;

.field private res:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/tencent/msdk/realnameauth/tool/ResHelper;->res:Landroid/content/res/Resources;

    .line 12
    iput-object v0, p0, Lcom/tencent/msdk/realnameauth/tool/ResHelper;->packageName:Ljava/lang/String;

    .line 15
    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/realnameauth/tool/ResHelper;->res:Landroid/content/res/Resources;

    .line 17
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/realnameauth/tool/ResHelper;->packageName:Ljava/lang/String;

    .line 19
    :cond_0
    return-void
.end method


# virtual methods
.method public getResByType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 23
    const/4 v0, 0x0

    .line 24
    .local v0, "ret":I
    iget-object v1, p0, Lcom/tencent/msdk/realnameauth/tool/ResHelper;->res:Landroid/content/res/Resources;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/msdk/realnameauth/tool/ResHelper;->packageName:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 25
    :cond_0
    const/4 v0, -0x1

    .line 29
    :goto_0
    if-gtz v0, :cond_1

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resource "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/realnameauth/tool/PluginUtil;->logError(Ljava/lang/String;)V

    .line 32
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Resource %s(type=%s, pkg=%s) is not found"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/tencent/msdk/realnameauth/tool/ResHelper;->packageName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 35
    :cond_1
    return v0

    .line 27
    :cond_2
    iget-object v1, p0, Lcom/tencent/msdk/realnameauth/tool/ResHelper;->res:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/tencent/msdk/realnameauth/tool/ResHelper;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1, p2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getResId(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    const-string v0, "id"

    invoke-virtual {p0, p1, v0}, Lcom/tencent/msdk/realnameauth/tool/ResHelper;->getResByType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
