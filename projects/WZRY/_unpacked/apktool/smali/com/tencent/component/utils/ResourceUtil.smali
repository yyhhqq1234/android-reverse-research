.class public Lcom/tencent/component/utils/ResourceUtil;
.super Ljava/lang/Object;
.source "ResourceUtil.java"


# static fields
.field private static mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnimId(Ljava/lang/String;)I
    .locals 1
    .param p0, "resoureName"    # Ljava/lang/String;

    .prologue
    .line 53
    const-string v0, "anim"

    invoke-static {p0, v0}, Lcom/tencent/component/utils/ResourceUtil;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getAttrId(Ljava/lang/String;)I
    .locals 1
    .param p0, "resoureName"    # Ljava/lang/String;

    .prologue
    .line 49
    const-string v0, "attr"

    invoke-static {p0, v0}, Lcom/tencent/component/utils/ResourceUtil;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getColorId(Ljava/lang/String;)I
    .locals 1
    .param p0, "resoureName"    # Ljava/lang/String;

    .prologue
    .line 45
    const-string v0, "color"

    invoke-static {p0, v0}, Lcom/tencent/component/utils/ResourceUtil;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getDimenId(Ljava/lang/String;)I
    .locals 1
    .param p0, "resoureName"    # Ljava/lang/String;

    .prologue
    .line 57
    const-string v0, "dimen"

    invoke-static {p0, v0}, Lcom/tencent/component/utils/ResourceUtil;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getDrawableId(Ljava/lang/String;)I
    .locals 1
    .param p0, "resoureName"    # Ljava/lang/String;

    .prologue
    .line 29
    const-string v0, "drawable"

    invoke-static {p0, v0}, Lcom/tencent/component/utils/ResourceUtil;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getId(Ljava/lang/String;)I
    .locals 1
    .param p0, "resoureName"    # Ljava/lang/String;

    .prologue
    .line 41
    const-string v0, "id"

    invoke-static {p0, v0}, Lcom/tencent/component/utils/ResourceUtil;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getIdentifier(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p0, "resoureName"    # Ljava/lang/String;
    .param p1, "defType"    # Ljava/lang/String;

    .prologue
    .line 65
    move-object v2, p0

    .line 66
    .local v2, "propertyName":Ljava/lang/String;
    const-string v3, "."

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 67
    .local v1, "index":I
    if-lez v1, :cond_0

    .line 68
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 70
    :cond_0
    sget-object v0, Lcom/tencent/component/utils/ResourceUtil;->mContext:Landroid/content/Context;

    .line 71
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 72
    invoke-static {}, Lcom/tencent/component/ComponentContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 74
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, p1, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public static getIntegerId(Ljava/lang/String;)I
    .locals 1
    .param p0, "resoureName"    # Ljava/lang/String;

    .prologue
    .line 61
    const-string v0, "integer"

    invoke-static {p0, v0}, Lcom/tencent/component/utils/ResourceUtil;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getLayoutId(Ljava/lang/String;)I
    .locals 1
    .param p0, "resoureName"    # Ljava/lang/String;

    .prologue
    .line 21
    const-string v0, "layout"

    invoke-static {p0, v0}, Lcom/tencent/component/utils/ResourceUtil;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getStringId(Ljava/lang/String;)I
    .locals 1
    .param p0, "resoureName"    # Ljava/lang/String;

    .prologue
    .line 25
    const-string/jumbo v0, "string"

    invoke-static {p0, v0}, Lcom/tencent/component/utils/ResourceUtil;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getStyleId(Ljava/lang/String;)I
    .locals 1
    .param p0, "resoureName"    # Ljava/lang/String;

    .prologue
    .line 33
    const-string/jumbo v0, "style"

    invoke-static {p0, v0}, Lcom/tencent/component/utils/ResourceUtil;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getStyleableId(Ljava/lang/String;)I
    .locals 1
    .param p0, "resoureName"    # Ljava/lang/String;

    .prologue
    .line 37
    const-string/jumbo v0, "styleable"

    invoke-static {p0, v0}, Lcom/tencent/component/utils/ResourceUtil;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    sput-object p0, Lcom/tencent/component/utils/ResourceUtil;->mContext:Landroid/content/Context;

    .line 18
    return-void
.end method
