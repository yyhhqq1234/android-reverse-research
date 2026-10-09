.class public Lcom/tencent/msdk/qq/QQVersionApiManager;
.super Ljava/lang/Object;
.source "QQVersionApiManager.java"


# static fields
.field public static final QQ_PKG_NAME:Ljava/lang/String; = "com.tencent.mobileqq"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSupport(Landroid/content/Context;Lcom/tencent/msdk/qq/ApiName;)Z
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "api"    # Lcom/tencent/msdk/qq/ApiName;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/tencent/msdk/tools/VersionHelper;

    const-string v3, "com.tencent.mobileqq"

    invoke-direct {v0, p0, v3}, Lcom/tencent/msdk/tools/VersionHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 18
    .local v0, "vh":Lcom/tencent/msdk/tools/VersionHelper;
    sget-object v3, Lcom/tencent/msdk/qq/QQVersionApiManager$1;->$SwitchMap$com$tencent$msdk$qq$ApiName:[I

    invoke-virtual {p1}, Lcom/tencent/msdk/qq/ApiName;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 26
    sget-object v3, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_QQ:Lcom/tencent/msdk/consts/EPlatform;

    invoke-static {v3}, Lcom/tencent/msdk/api/WGPlatform;->WGIsPlatformInstalled(Lcom/tencent/msdk/consts/EPlatform;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 29
    :cond_0
    :goto_0
    return v1

    .line 20
    :pswitch_0
    const-string v3, "4.5"

    invoke-virtual {v0, v3}, Lcom/tencent/msdk/tools/VersionHelper;->compareVersion(Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_0

    move v1, v2

    .line 23
    goto :goto_0

    :cond_1
    move v1, v2

    .line 29
    goto :goto_0

    .line 18
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
