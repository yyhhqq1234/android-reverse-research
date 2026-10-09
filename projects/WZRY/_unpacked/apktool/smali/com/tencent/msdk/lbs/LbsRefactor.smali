.class public Lcom/tencent/msdk/lbs/LbsRefactor;
.super Ljava/lang/Object;
.source "LbsRefactor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/msdk/lbs/LbsRefactor$LocationListener;
    }
.end annotation


# static fields
.field private static request_code_base:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const v0, 0x9a2108

    sput v0, Lcom/tencent/msdk/lbs/LbsRefactor;->request_code_base:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getLbsTips(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 135
    const/4 v2, 0x0

    .line 136
    .local v2, "tips":Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 137
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 138
    .local v1, "resources":Landroid/content/res/Resources;
    const-string v3, "msdk_open_lbs_tips"

    const-string/jumbo v4, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 139
    .local v0, "resId":I
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 143
    .end local v0    # "resId":I
    .end local v1    # "resources":Landroid/content/res/Resources;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    const-string/jumbo v2, "\u8bf7\u5728\u8bbe\u7f6e\u4e2d\u5f00\u542f\u4f4d\u7f6e\u6743\u9650"

    .line 146
    :cond_0
    return-object v2

    .line 141
    :cond_1
    const-string v3, "context is null"

    invoke-static {v3}, Lcom/tencent/msdk/framework/mlog/MLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getLocationInfo(I)V
    .locals 6
    .param p0, "type"    # I

    .prologue
    .line 99
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v3

    iget-object v0, v3, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    .line 100
    .local v0, "activity":Landroid/app/Activity;
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    .line 101
    .local v2, "permission":Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/tencent/msdk/framework/permission/PermissionChecker;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 102
    .local v1, "hasPermission":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasPermission="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 103
    if-eqz v1, :cond_0

    .line 104
    invoke-static {v0}, Lcom/tencent/msdk/lbs/LocationService;->Init(Landroid/app/Activity;)V

    .line 105
    invoke-static {}, Lcom/tencent/msdk/lbs/LocationService;->getInstance()Lcom/tencent/msdk/lbs/LocationService;

    move-result-object v3

    new-instance v4, Lcom/tencent/msdk/lbs/LbsRefactor$LocationListener;

    invoke-direct {v4, p0}, Lcom/tencent/msdk/lbs/LbsRefactor$LocationListener;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/tencent/msdk/lbs/LocationService;->startLocating(Lcom/tencent/msdk/lbs/LocationService$LocatorListener;)V

    .line 110
    :goto_0
    return-void

    .line 107
    :cond_0
    sget v3, Lcom/tencent/msdk/lbs/LbsRefactor;->request_code_base:I

    add-int/2addr v3, p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/tencent/msdk/framework/permission/PermissionChecker;->requestPermissions(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static onRequestPermissionResult(ILjava/lang/String;[Ljava/lang/String;[I)V
    .locals 5
    .param p0, "requestCode"    # I
    .param p1, "extra"    # Ljava/lang/String;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRequestPermissionResult:requestCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " extra="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 115
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 116
    .local v2, "type":I
    sget v3, Lcom/tencent/msdk/lbs/LbsRefactor;->request_code_base:I

    add-int/2addr v3, v2

    if-ne p0, v3, :cond_0

    .line 117
    const/4 v3, 0x0

    aget v3, p3, v3

    if-nez v3, :cond_1

    .line 118
    invoke-static {v2}, Lcom/tencent/msdk/lbs/LbsRefactor;->getLocationInfo(I)V

    .line 132
    .end local v2    # "type":I
    :cond_0
    :goto_0
    return-void

    .line 120
    .restart local v2    # "type":I
    :cond_1
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v3

    iget-object v0, v3, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    .line 121
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Lcom/tencent/msdk/lbs/LbsRefactor;->getLbsTips(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v2    # "type":I
    :catch_0
    move-exception v1

    .line 127
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v3, "onRequestPermissionResult NumberFormatException"

    invoke-static {v3}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 128
    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
