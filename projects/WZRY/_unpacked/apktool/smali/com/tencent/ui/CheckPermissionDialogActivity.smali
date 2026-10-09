.class public Lcom/tencent/ui/CheckPermissionDialogActivity;
.super Landroid/app/Activity;
.source "CheckPermissionDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final Key:Ljava/lang/String; = "IsFirstCheck"

.field private static final PERMISSION_RECORD_AUDIO:Ljava/lang/String; = "android.permission.RECORD_AUDIO"

.field private static final PERMISSION_WRITE_EXTERNAL_STORAGE:Ljava/lang/String; = "android.permission.WRITE_EXTERNAL_STORAGE"

.field private static final REQUEST_CODE_PERMISSION_EXTERNAl_STORAGE:I = 0x3aa

.field private static final REQUEST_CODE_PERMISSION_RECORD_AUDIO:I = 0x14a

.field private static final REQUEST_CODE_PERMISSION_STORAGE_AUDIO:I = 0x4

.field private static final REQUEST_CODE_SCREEN_CAPTURE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CheckPermission"


# instance fields
.field private contentView:Landroid/view/View;

.field private settingButton:Landroid/widget/Button;

.field private viewStub:Landroid/view/ViewStub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/ui/CheckPermissionDialogActivity;->contentView:Landroid/view/View;

    return-void
.end method

.method private checkRecorderPermisson()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 64
    invoke-static {p0}, Lcom/tencent/ui/CheckPermissionDialogActivity;->checkSafePermissionIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 65
    .local v0, "permissionIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 66
    const-string v1, "CheckPermission"

    const-string v2, "checkRecorderPermisson is called!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/ui/CheckPermissionDialogActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 72
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/ui/CheckPermissionDialogActivity;->finish()V

    goto :goto_0
.end method

.method public static checkSafePermissionIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 76
    if-nez p0, :cond_0

    .line 80
    :goto_0
    return-object v3

    .line 77
    :cond_0
    const-string v4, "media_projection"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/projection/MediaProjectionManager;

    .line 78
    .local v1, "manager":Landroid/media/projection/MediaProjectionManager;
    invoke-virtual {v1}, Landroid/media/projection/MediaProjectionManager;->createScreenCaptureIntent()Landroid/content/Intent;

    move-result-object v2

    .line 79
    .local v2, "permissionIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    .line 80
    .local v0, "isPermissionActivityExists":Z
    :cond_1
    if-eqz v0, :cond_2

    .end local v2    # "permissionIntent":Landroid/content/Intent;
    :goto_1
    move-object v3, v2

    goto :goto_0

    .restart local v2    # "permissionIntent":Landroid/content/Intent;
    :cond_2
    move-object v2, v3

    goto :goto_1
.end method

.method private checkStoreAndAudioPermissions()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 150
    const/4 v2, 0x0

    .line 151
    .local v2, "permissions":[Ljava/lang/String;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_0

    .line 152
    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v5}, Lcom/tencent/ui/CheckPermissionDialogActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    move v1, v3

    .line 153
    .local v1, "hasStoragePermission":Z
    :goto_0
    const-string v5, "android.permission.RECORD_AUDIO"

    invoke-virtual {p0, v5}, Lcom/tencent/ui/CheckPermissionDialogActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3

    move v0, v3

    .line 154
    .local v0, "hasRecordAudioPermission":Z
    :goto_1
    const-string v5, "CheckPermission"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "storage permission: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", audio permission: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    if-nez v1, :cond_4

    if-nez v0, :cond_4

    .line 156
    const/4 v5, 0x2

    new-array v2, v5, [Ljava/lang/String;

    .end local v2    # "permissions":[Ljava/lang/String;
    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v5, v2, v4

    const-string v4, "android.permission.RECORD_AUDIO"

    aput-object v4, v2, v3

    .line 157
    .restart local v2    # "permissions":[Ljava/lang/String;
    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Lcom/tencent/ui/CheckPermissionDialogActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 158
    const-string v3, "CheckPermission"

    const-string v4, "requestPermissions REQUEST_CODE_PERMISSION_STORAGE_AUDIO!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .end local v0    # "hasRecordAudioPermission":Z
    .end local v1    # "hasStoragePermission":Z
    :cond_0
    :goto_2
    if-nez v2, :cond_1

    .line 171
    invoke-direct {p0}, Lcom/tencent/ui/CheckPermissionDialogActivity;->refreshLayout()V

    .line 173
    :cond_1
    return-void

    :cond_2
    move v1, v4

    .line 152
    goto :goto_0

    .restart local v1    # "hasStoragePermission":Z
    :cond_3
    move v0, v4

    .line 153
    goto :goto_1

    .line 159
    .restart local v0    # "hasRecordAudioPermission":Z
    :cond_4
    if-nez v1, :cond_5

    .line 160
    new-array v2, v3, [Ljava/lang/String;

    .end local v2    # "permissions":[Ljava/lang/String;
    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v2, v4

    .line 161
    .restart local v2    # "permissions":[Ljava/lang/String;
    const/16 v3, 0x3aa

    invoke-virtual {p0, v2, v3}, Lcom/tencent/ui/CheckPermissionDialogActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 162
    const-string v3, "CheckPermission"

    const-string v4, "requestPermissions REQUEST_CODE_PERMISSION_EXTERNAl_STORAGE!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 163
    :cond_5
    if-nez v0, :cond_0

    .line 164
    new-array v2, v3, [Ljava/lang/String;

    .end local v2    # "permissions":[Ljava/lang/String;
    const-string v3, "android.permission.RECORD_AUDIO"

    aput-object v3, v2, v4

    .line 165
    .restart local v2    # "permissions":[Ljava/lang/String;
    const/16 v3, 0x14a

    invoke-virtual {p0, v2, v3}, Lcom/tencent/ui/CheckPermissionDialogActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 166
    const-string v3, "CheckPermission"

    const-string v4, "requestPermissions REQUEST_CODE_PERMISSION_RECORD_AUDIO!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private refreshLayout()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tencent/ui/CheckPermissionDialogActivity;->contentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/tencent/ui/CheckPermissionDialogActivity;->viewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/ui/CheckPermissionDialogActivity;->contentView:Landroid/view/View;

    .line 57
    invoke-direct {p0}, Lcom/tencent/ui/CheckPermissionDialogActivity;->setButton()V

    .line 60
    :cond_0
    return-void
.end method

.method private setButton()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/tencent/ui/CheckPermissionDialogActivity;->settingButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/ui/CheckPermissionDialogActivity;->contentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/tencent/ui/CheckPermissionDialogActivity;->contentView:Landroid/view/View;

    const-string v1, "notify_dialog_btn_go"

    invoke-static {v1}, Lcom/tencent/component/utils/ResourceUtil;->getId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/ui/CheckPermissionDialogActivity;->settingButton:Landroid/widget/Button;

    .line 50
    iget-object v0, p0, Lcom/tencent/ui/CheckPermissionDialogActivity;->settingButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    :cond_0
    return-void
.end method

.method public static startPermissionActivity(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    if-nez p0, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 119
    .local v2, "version":I
    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 120
    const-string v3, "IsFirstCheck"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/tencent/ui/SPUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 121
    .local v1, "isFirstCheck":Z
    if-eqz v1, :cond_0

    .line 122
    invoke-static {p0}, Lcom/tencent/ui/CheckPermissionDialogActivity;->checkSafePermissionIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 123
    invoke-static {p0}, Lcom/tencent/ui/ToolUitls;->getAppOps(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_2

    .line 125
    const-string v3, "CheckPermission"

    const-string v4, "context.getApplicationContext() is null"

    invoke-static {v3, v4}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_2
    const-string v3, "CheckPermission"

    const-string/jumbo v4, "\u672a\u6388\u6743\uff0c\u5f00\u59cb\u6388\u6743\u5f15\u5bfc"

    invoke-static {v3, v4}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-static {p0}, Lcom/tencent/component/utils/ResourceUtil;->setContext(Landroid/content/Context;)V

    .line 129
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/tencent/ui/CheckPermissionDialogActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 132
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    const-string v3, "CheckPermission"

    const-string/jumbo v4, "\u5df2\u7ecf\u6388\u6743\u6210\u529f\u8fc7\uff0c\u4e0d\u8fdb\u884c\u6388\u6743\u5f15\u5bfc"

    invoke-static {v3, v4}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_4
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/tencent/qqgamemi/SDKApiHelper;->showDefaultWarning(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 85
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 86
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 87
    const-string v0, "IsFirstCheck"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/tencent/ui/SPUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    invoke-virtual {p0}, Lcom/tencent/ui/CheckPermissionDialogActivity;->finish()V

    .line 90
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "notify_dialog_btn_go"

    invoke-static {v1}, Lcom/tencent/component/utils/ResourceUtil;->getId(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/tencent/ui/CheckPermissionDialogActivity;->checkRecorderPermisson()V

    .line 112
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    const v0, 0x1030011

    invoke-virtual {p0, v0}, Lcom/tencent/ui/CheckPermissionDialogActivity;->setTheme(I)V

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const-string v0, "check_permission_layout"

    invoke-static {v0}, Lcom/tencent/component/utils/ResourceUtil;->getLayoutId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/ui/CheckPermissionDialogActivity;->setContentView(I)V

    .line 39
    const-string/jumbo v0, "viewStub"

    invoke-static {v0}, Lcom/tencent/component/utils/ResourceUtil;->getId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/ui/CheckPermissionDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/tencent/ui/CheckPermissionDialogActivity;->viewStub:Landroid/view/ViewStub;

    .line 42
    invoke-direct {p0}, Lcom/tencent/ui/CheckPermissionDialogActivity;->checkStoreAndAudioPermissions()V

    .line 44
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 94
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 95
    const-string v0, "CheckPermission"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestPermissionsResult onRequestPermissionsResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sparse-switch p1, :sswitch_data_0

    .line 105
    :goto_0
    return-void

    .line 100
    :sswitch_0
    invoke-direct {p0}, Lcom/tencent/ui/CheckPermissionDialogActivity;->refreshLayout()V

    goto :goto_0

    .line 96
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x14a -> :sswitch_0
        0x3aa -> :sswitch_0
    .end sparse-switch
.end method
