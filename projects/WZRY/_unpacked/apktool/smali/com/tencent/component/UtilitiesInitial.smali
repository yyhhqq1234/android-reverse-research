.class public Lcom/tencent/component/UtilitiesInitial;
.super Ljava/lang/Object;
.source "UtilitiesInitial.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-static {p0}, Lcom/tencent/component/ComponentContext;->setContext(Landroid/content/Context;)V

    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/component/utils/FileUtil;->init(Landroid/content/Context;)V

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/component/utils/ResourceUtil;->setContext(Landroid/content/Context;)V

    .line 16
    return-void
.end method
