.class public Lcom/tencent/msdk/framework/permission/PermissionChecker;
.super Ljava/lang/Object;
.source "PermissionChecker.java"


# static fields
.field private static targetSdkVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput v0, Lcom/tencent/msdk/framework/permission/PermissionChecker;->targetSdkVersion:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x17

    const/4 v1, 0x1

    .line 61
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_0

    invoke-static {p0}, Lcom/tencent/msdk/framework/permission/PermissionChecker;->getTargetApi(Landroid/content/Context;)I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 62
    if-eqz p0, :cond_0

    .line 63
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 64
    .local v0, "checkCallPhonePermission":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current Permission:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 65
    if-eqz v0, :cond_0

    .line 66
    const/4 v1, 0x0

    .line 74
    .end local v0    # "checkCallPhonePermission":I
    :cond_0
    return v1
.end method

.method public static getTargetApi(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    sget v2, Lcom/tencent/msdk/framework/permission/PermissionChecker;->targetSdkVersion:I

    if-eqz v2, :cond_0

    .line 28
    sget v2, Lcom/tencent/msdk/framework/permission/PermissionChecker;->targetSdkVersion:I

    .line 39
    :goto_0
    return v2

    .line 30
    :cond_0
    if-eqz p0, :cond_1

    .line 32
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 32
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 34
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sput v2, Lcom/tencent/msdk/framework/permission/PermissionChecker;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_1
    :goto_1
    sget v2, Lcom/tencent/msdk/framework/permission/PermissionChecker;->targetSdkVersion:I

    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public static requestPermissions(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissions"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "extra"    # Ljava/lang/String;

    .prologue
    .line 47
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tencent/msdk/PermissionActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "permission"

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const-string v2, "requestCode"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 51
    const-string v2, "extra"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    :cond_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "start PermissionActivity is Exception please add this activity to AndroidManifest.xml"

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
