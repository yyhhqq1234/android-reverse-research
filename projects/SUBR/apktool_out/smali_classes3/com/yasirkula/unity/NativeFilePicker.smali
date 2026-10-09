.class public Lcom/yasirkula/unity/NativeFilePicker;
.super Ljava/lang/Object;
.source "NativeFilePicker.java"


# static fields
.field public static UseDefaultFilePickerApp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CanExportFiles()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static CanExportMultipleFiles()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static CanPickMultipleFiles()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static CheckPermission(Landroid/content/Context;Z)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "context",
            "readPermissionOnly"
        }
    .end annotation

    .line 77
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    return v2

    .line 80
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v3, 0x21

    if-lt v0, v3, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v0, v3, :cond_2

    :cond_1
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    if-nez p1, :cond_3

    .line 83
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-ge p1, v0, :cond_3

    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method public static ExportFiles(Landroid/content/Context;Lcom/yasirkula/unity/NativeFilePickerResultReceiver;[Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "resultReceiver",
            "files",
            "dummyParameter"
        }
    .end annotation

    const/4 p3, 0x0

    .line 55
    invoke-static {p0, p3}, Lcom/yasirkula/unity/NativeFilePicker;->CheckPermission(Landroid/content/Context;Z)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 57
    invoke-interface {p1, p3}, Lcom/yasirkula/unity/NativeFilePickerResultReceiver;->OnFilesExported(Z)V

    return-void

    .line 61
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 62
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 63
    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    :cond_1
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v1, "NFPE_FILES"

    .line 66
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 68
    new-instance v0, Lcom/yasirkula/unity/NativeFilePickerExportFragment;

    invoke-direct {v0, p1}, Lcom/yasirkula/unity/NativeFilePickerExportFragment;-><init>(Lcom/yasirkula/unity/NativeFilePickerResultReceiver;)V

    .line 69
    invoke-virtual {v0, p2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 71
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0, p3, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public static GetMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extension"
        }
    .end annotation

    const-string v0, ""

    if-eqz p0, :cond_1

    .line 127
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    move-object v0, p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static OpenSettings(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "package"

    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 118
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 119
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 122
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static PickFiles(Landroid/content/Context;Lcom/yasirkula/unity/NativeFilePickerResultReceiver;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "resultReceiver",
            "selectMultiple",
            "savePath",
            "mimes",
            "title"
        }
    .end annotation

    const/4 v0, 0x1

    .line 27
    invoke-static {p0, v0}, Lcom/yasirkula/unity/NativeFilePicker;->CheckPermission(Landroid/content/Context;Z)I

    move-result v1

    if-eq v1, v0, :cond_1

    const-string p0, ""

    if-nez p2, :cond_0

    .line 30
    invoke-interface {p1, p0}, Lcom/yasirkula/unity/NativeFilePickerResultReceiver;->OnFilePicked(Ljava/lang/String;)V

    goto :goto_0

    .line 32
    :cond_0
    invoke-interface {p1, p0}, Lcom/yasirkula/unity/NativeFilePickerResultReceiver;->OnMultipleFilesPicked(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 37
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 38
    :goto_1
    array-length v3, p4

    if-ge v2, v3, :cond_2

    .line 39
    aget-object v3, p4, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 41
    :cond_2
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    const-string v2, "NFPP_MULTIPLE"

    .line 42
    invoke-virtual {p4, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "NFPP_SAVE_PATH"

    .line 43
    invoke-virtual {p4, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "NFPP_MIME"

    .line 44
    invoke-virtual {p4, p2, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p2, "NFPP_TITLE"

    .line 45
    invoke-virtual {p4, p2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance p2, Lcom/yasirkula/unity/NativeFilePickerPickFragment;

    invoke-direct {p2, p1}, Lcom/yasirkula/unity/NativeFilePickerPickFragment;-><init>(Lcom/yasirkula/unity/NativeFilePickerResultReceiver;)V

    .line 48
    invoke-virtual {p2, p4}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 50
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0, v1, p2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public static RequestPermission(Landroid/content/Context;Lcom/yasirkula/unity/NativeFilePickerPermissionReceiver;ZI)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "permissionReceiver",
            "readPermissionOnly",
            "lastCheckResult"
        }
    .end annotation

    .line 92
    invoke-static {p0, p2}, Lcom/yasirkula/unity/NativeFilePicker;->CheckPermission(Landroid/content/Context;Z)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 94
    invoke-interface {p1, v1}, Lcom/yasirkula/unity/NativeFilePickerPermissionReceiver;->OnPermissionResult(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p3, :cond_1

    .line 100
    invoke-interface {p1, v0}, Lcom/yasirkula/unity/NativeFilePickerPermissionReceiver;->OnPermissionResult(I)V

    return-void

    .line 104
    :cond_1
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v1, "NFP_ReadOnly"

    .line 105
    invoke-virtual {p3, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 107
    new-instance p2, Lcom/yasirkula/unity/NativeFilePickerPermissionFragment;

    invoke-direct {p2, p1}, Lcom/yasirkula/unity/NativeFilePickerPermissionFragment;-><init>(Lcom/yasirkula/unity/NativeFilePickerPermissionReceiver;)V

    .line 108
    invoke-virtual {p2, p3}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 110
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0, v0, p2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method
