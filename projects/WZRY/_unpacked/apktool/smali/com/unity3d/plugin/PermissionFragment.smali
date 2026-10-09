.class public Lcom/unity3d/plugin/PermissionFragment;
.super Landroid/app/Fragment;
.source "PermissionFragment.java"


# static fields
.field private static final PERMISSIONS_REQUEST_CODE:I = 0x3e0f

.field public static final PERMISSION_NAMES:Ljava/lang/String; = "PermissionNames"


# instance fields
.field private final m_ResultCallbacks:Lcom/unity3d/plugin/UnityAndroidPermissions$IPermissionRequestResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/plugin/PermissionFragment;->m_ResultCallbacks:Lcom/unity3d/plugin/UnityAndroidPermissions$IPermissionRequestResult;

    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/unity3d/plugin/UnityAndroidPermissions$IPermissionRequestResult;)V
    .locals 0
    .param p1, "resultCallbacks"    # Lcom/unity3d/plugin/UnityAndroidPermissions$IPermissionRequestResult;

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/unity3d/plugin/PermissionFragment;->m_ResultCallbacks:Lcom/unity3d/plugin/UnityAndroidPermissions$IPermissionRequestResult;

    .line 24
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 29
    iget-object v1, p0, Lcom/unity3d/plugin/PermissionFragment;->m_ResultCallbacks:Lcom/unity3d/plugin/UnityAndroidPermissions$IPermissionRequestResult;

    if-nez v1, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/unity3d/plugin/PermissionFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 38
    :goto_0
    return-void

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/unity3d/plugin/PermissionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "PermissionNames"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "permissionNames":[Ljava/lang/String;
    const/16 v1, 0x3e0f

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/plugin/PermissionFragment;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 42
    const/16 v2, 0x3e0f

    if-eq p1, v2, :cond_0

    .line 56
    :goto_0
    return-void

    .line 45
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p2

    if-ge v1, v2, :cond_2

    array-length v2, p3

    if-ge v1, v2, :cond_2

    .line 47
    aget v2, p3, v1

    if-nez v2, :cond_1

    .line 48
    iget-object v2, p0, Lcom/unity3d/plugin/PermissionFragment;->m_ResultCallbacks:Lcom/unity3d/plugin/UnityAndroidPermissions$IPermissionRequestResult;

    aget-object v3, p2, v1

    invoke-interface {v2, v3}, Lcom/unity3d/plugin/UnityAndroidPermissions$IPermissionRequestResult;->OnPermissionGranted(Ljava/lang/String;)V

    .line 45
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 50
    :cond_1
    iget-object v2, p0, Lcom/unity3d/plugin/PermissionFragment;->m_ResultCallbacks:Lcom/unity3d/plugin/UnityAndroidPermissions$IPermissionRequestResult;

    aget-object v3, p2, v1

    invoke-interface {v2, v3}, Lcom/unity3d/plugin/UnityAndroidPermissions$IPermissionRequestResult;->OnPermissionDenied(Ljava/lang/String;)V

    goto :goto_2

    .line 53
    :cond_2
    invoke-virtual {p0}, Lcom/unity3d/plugin/PermissionFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 54
    .local v0, "fragmentTransaction":Landroid/app/FragmentTransaction;
    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 55
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method
