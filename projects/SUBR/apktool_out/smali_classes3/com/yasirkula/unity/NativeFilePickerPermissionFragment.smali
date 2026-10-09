.class public Lcom/yasirkula/unity/NativeFilePickerPermissionFragment;
.super Landroid/app/Fragment;
.source "NativeFilePickerPermissionFragment.java"


# static fields
.field private static final PERMISSIONS_REQUEST_CODE:I = 0x1e307

.field public static final READ_PERMISSION_ONLY:Ljava/lang/String; = "NFP_ReadOnly"


# instance fields
.field private final permissionReceiver:Lcom/yasirkula/unity/NativeFilePickerPermissionReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/yasirkula/unity/NativeFilePickerPermissionFragment;->permissionReceiver:Lcom/yasirkula/unity/NativeFilePickerPermissionReceiver;

    return-void
.end method

.method public constructor <init>(Lcom/yasirkula/unity/NativeFilePickerPermissionReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "permissionReceiver"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/yasirkula/unity/NativeFilePickerPermissionFragment;->permissionReceiver:Lcom/yasirkula/unity/NativeFilePickerPermissionReceiver;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 54
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    iget-object p1, p0, Lcom/yasirkula/unity/NativeFilePickerPermissionFragment;->permissionReceiver:Lcom/yasirkula/unity/NativeFilePickerPermissionReceiver;

    const/4 v0, 0x0

    const v1, 0x1e307

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/String;

    new-array v0, v0, [I

    .line 56
    invoke-virtual {p0, v1, p1, v0}, Lcom/yasirkula/unity/NativeFilePickerPermissionFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_1

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeFilePickerPermissionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "NFP_ReadOnly"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    if-nez p1, :cond_1

    .line 60
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-ge p1, v3, :cond_1

    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 61
    filled-new-array {p1, v2}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/yasirkula/unity/NativeFilePickerPermissionFragment;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_1

    .line 62
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt p1, v3, :cond_3

    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeFilePickerPermissionFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge p1, v3, :cond_2

    goto :goto_0

    .line 65
    :cond_2
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput v0, v2, v0

    invoke-virtual {p0, v1, p1, v2}, Lcom/yasirkula/unity/NativeFilePickerPermissionFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_1

    .line 63
    :cond_3
    :goto_0
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/yasirkula/unity/NativeFilePickerPermissionFragment;->requestPermissions([Ljava/lang/String;I)V

    :goto_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "permissions",
            "grantResults"
        }
    .end annotation

    const v0, 0x1e307

    if-eq p1, v0, :cond_0

    return-void

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/yasirkula/unity/NativeFilePickerPermissionFragment;->permissionReceiver:Lcom/yasirkula/unity/NativeFilePickerPermissionReceiver;

    const-string v0, "Unity"

    if-nez p1, :cond_1

    const-string p1, "Fragment data got reset while asking permissions!"

    .line 77
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeFilePickerPermissionFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    return-void

    .line 87
    :cond_1
    array-length p1, p2

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_6

    array-length p1, p3

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    const/4 v3, 0x0

    .line 91
    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_5

    array-length v4, p3

    if-ge v3, v4, :cond_5

    .line 93
    aget v4, p3, v3

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    .line 95
    aget-object p1, p2, v3

    invoke-virtual {p0, p1}, Lcom/yasirkula/unity/NativeFilePickerPermissionFragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const/4 p1, 0x2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    move v1, p1

    .line 106
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/yasirkula/unity/NativeFilePickerPermissionFragment;->permissionReceiver:Lcom/yasirkula/unity/NativeFilePickerPermissionReceiver;

    invoke-interface {p1, v1}, Lcom/yasirkula/unity/NativeFilePickerPermissionReceiver;->OnPermissionResult(I)V

    .line 107
    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeFilePickerPermissionFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    .line 114
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeFilePickerPermissionFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeFilePickerPermissionFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p2, 0x20000

    .line 115
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 116
    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeFilePickerPermissionFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, p1, v2}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string p2, "Exception (resume):"

    .line 120
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method
