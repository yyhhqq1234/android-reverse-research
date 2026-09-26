.class public Lcom/netease/epay/sdk/register/RegisterActivity;
.super Lcom/netease/epay/sdk/base/ui/SdkActivity;
.source "RegisterActivity.java"


# instance fields
.field private a:Lcom/netease/epay/sdk/register/a$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/SdkActivity;-><init>()V

    .line 35
    new-instance v0, Lcom/netease/epay/sdk/register/RegisterActivity$1;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/register/RegisterActivity$1;-><init>(Lcom/netease/epay/sdk/register/RegisterActivity;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/register/RegisterActivity;->a:Lcom/netease/epay/sdk/register/a$a;

    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 29
    const-string v0, "register"

    invoke-static {v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->getController(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/register/DeviceRegisterController;

    .line 30
    if-eqz v0, :cond_0

    .line 31
    new-instance v1, Lcom/netease/epay/sdk/base/event/BaseEvent;

    sget-object v2, Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;->NO_PERMISSION:Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;

    invoke-direct {v1, v2, p0}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/register/DeviceRegisterController;->deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    .line 33
    :cond_0
    return-void
.end method


# virtual methods
.method public initStateBar()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 56
    const-string v0, "register"

    invoke-static {v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->getController(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/register/DeviceRegisterController;

    .line 57
    if-eqz v0, :cond_0

    .line 58
    new-instance v1, Lcom/netease/epay/sdk/base/event/BaseEvent;

    sget-object v2, Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;->USER_ABORT:Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;

    invoke-direct {v1, v2, p0}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/register/DeviceRegisterController;->deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    .line 60
    :cond_0
    return-void
.end method

.method protected onCreateSdkActivity(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    sget v0, Lcom/netease/epay/sdk/messenger/R$layout;->epaysdk_actv_transparent:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/register/RegisterActivity;->setContentView(I)V

    .line 25
    const/16 v0, 0xb

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.READ_PHONE_STATE"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/netease/epay/sdk/register/RegisterActivity;->requestSDKPermission(I[Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method protected onSDKPermissionDenied(ILjava/lang/String;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Lcom/netease/epay/sdk/base/ui/SdkActivity;->onSDKPermissionDenied(ILjava/lang/String;)V

    .line 69
    invoke-direct {p0}, Lcom/netease/epay/sdk/register/RegisterActivity;->a()V

    .line 70
    return-void
.end method

.method protected onSDKPermissionGranted(I)V
    .locals 3
    .param p1, "requestCode"    # I

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/base/ui/SdkActivity;->onSDKPermissionGranted(I)V

    .line 75
    new-instance v0, Lcom/netease/epay/sdk/register/a;

    iget-object v1, p0, Lcom/netease/epay/sdk/register/RegisterActivity;->a:Lcom/netease/epay/sdk/register/a$a;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/netease/epay/sdk/register/a;-><init>(Landroid/app/Activity;Lcom/netease/epay/sdk/register/a$a;Z)V

    .line 76
    invoke-virtual {v0}, Lcom/netease/epay/sdk/register/a;->a()V

    .line 77
    return-void
.end method
