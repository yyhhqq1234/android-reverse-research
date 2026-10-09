.class public Lcom/unity3d/plugin/UnityAndroidPermissions;
.super Ljava/lang/Object;
.source "UnityAndroidPermissions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/plugin/UnityAndroidPermissions$IPermissionRequestResult;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IsPermissionGranted(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "permissionName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 20
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_1

    .line 24
    :cond_0
    :goto_0
    return v0

    .line 22
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_2
    invoke-virtual {p1, p2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public RequestPermissionAsync(Landroid/app/Activity;[Ljava/lang/String;Lcom/unity3d/plugin/UnityAndroidPermissions$IPermissionRequestResult;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "permissionNames"    # [Ljava/lang/String;
    .param p3, "resultCallbacks"    # Lcom/unity3d/plugin/UnityAndroidPermissions$IPermissionRequestResult;

    .prologue
    .line 29
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-ge v3, v4, :cond_1

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 34
    new-instance v2, Lcom/unity3d/plugin/PermissionFragment;

    invoke-direct {v2, p3}, Lcom/unity3d/plugin/PermissionFragment;-><init>(Lcom/unity3d/plugin/UnityAndroidPermissions$IPermissionRequestResult;)V

    .line 35
    .local v2, "request":Landroid/app/Fragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 36
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "PermissionNames"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 37
    invoke-virtual {v2, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 39
    .local v1, "fragmentTransaction":Landroid/app/FragmentTransaction;
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 40
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method
