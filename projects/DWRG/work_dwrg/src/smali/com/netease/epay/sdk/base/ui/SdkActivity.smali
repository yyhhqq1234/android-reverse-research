.class public abstract Lcom/netease/epay/sdk/base/ui/SdkActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SdkActivity.java"


# instance fields
.field public isBackground:Z

.field public mDestroyed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 33
    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/ui/SdkActivity;->isBackground:Z

    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/ui/SdkActivity;->mDestroyed:Z

    return-void
.end method


# virtual methods
.method public back(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/SdkActivity;->finish()V

    .line 106
    return-void
.end method

.method protected checkBasicDataLost()Z
    .locals 2

    .prologue
    .line 90
    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->orderPlatformId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/netease/epay/sdk/base/core/CoreData;->bizType:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 127
    invoke-static {p0}, Lcom/netease/epay/sdk/base/util/LogicUtil;->hideSoftInput(Landroid/app/Activity;)V

    .line 128
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 129
    return-void
.end method

.method protected getPermissionWarmingInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    sget v0, Lcom/netease/epay/sdk/base/R$string;->epaysdk_permission_open_warming:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/SdkActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initStateBar()V
    .locals 0

    .prologue
    .line 94
    invoke-static {p0}, Lcom/netease/epay/sdk/base/util/UiUtil;->initImmersiveStatusBar(Landroid/app/Activity;)V

    .line 95
    return-void
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/ui/SdkActivity;->mDestroyed:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/SdkActivity;->back(Landroid/view/View;)V

    .line 111
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/SdkActivity;->checkBasicDataLost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/SdkActivity;->finish()V

    .line 57
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/base/ui/SdkActivity;->onCreateSdkActivity(Landroid/os/Bundle;)V

    .line 44
    sget v0, Lcom/netease/epay/sdk/base/R$id;->atb:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/SdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 45
    sget v0, Lcom/netease/epay/sdk/base/R$id;->atb:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/SdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;

    .line 46
    new-instance v1, Lcom/netease/epay/sdk/base/ui/SdkActivity$1;

    invoke-direct {v1, p0}, Lcom/netease/epay/sdk/base/ui/SdkActivity$1;-><init>(Lcom/netease/epay/sdk/base/ui/SdkActivity;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->setBackListener(Landroid/view/View$OnClickListener;)V

    .line 54
    :cond_1
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/SdkActivity;->initStateBar()V

    .line 55
    invoke-static {}, Lcom/netease/epay/sdk/base/util/EventBusUtil;->getSingleton()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/ui/SdkActivity;->mDestroyed:Z

    goto :goto_0
.end method

.method protected abstract onCreateSdkActivity(Landroid/os/Bundle;)V
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Lcom/netease/epay/sdk/base/util/EventBusUtil;->getSingleton()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 78
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/ui/SdkActivity;->mDestroyed:Z

    .line 80
    return-void
.end method

.method public onEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 84
    const-string v0, "finish"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/SdkActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/SdkActivity;->finish()V

    .line 87
    :cond_0
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPostResume()V

    .line 135
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/ui/SdkActivity;->isBackground:Z

    if-eqz v0, :cond_0

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/ui/SdkActivity;->isBackground:Z

    .line 138
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v0, 0x0

    .line 155
    if-eqz p3, :cond_3

    if-eqz p2, :cond_3

    array-length v1, p2

    if-lez v1, :cond_3

    array-length v1, p3

    if-lez v1, :cond_3

    .line 157
    array-length v3, p3

    .line 158
    const/4 v1, 0x1

    move v2, v0

    .line 159
    :goto_0
    if-ge v2, v3, :cond_4

    .line 160
    aget-object v4, p2, v2

    .line 161
    aget v5, p3, v2

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 162
    invoke-static {p0, v4}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    invoke-virtual {p0, p1, v4}, Lcom/netease/epay/sdk/base/ui/SdkActivity;->onSDKPermissionDenied(ILjava/lang/String;)V

    .line 179
    :goto_1
    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/base/ui/SdkActivity;->onSDKPermissionGranted(I)V

    .line 182
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 186
    :goto_2
    return-void

    .line 165
    :cond_1
    const-string v1, ""

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/SdkActivity;->getPermissionWarmingInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u53bb\u8bbe\u7f6e"

    new-instance v5, Lcom/netease/epay/sdk/base/ui/SdkActivity$3;

    invoke-direct {v5, p0, p1, v4}, Lcom/netease/epay/sdk/base/ui/SdkActivity$3;-><init>(Lcom/netease/epay/sdk/base/ui/SdkActivity;ILjava/lang/String;)V

    invoke-static {v1, v2, v3, v5}, Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment$IOnlyMessageCallback;)Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment;

    move-result-object v1

    .line 172
    invoke-static {v1, p0, v0}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentWithHide(Lcom/netease/epay/sdk/base/ui/SdkFragment;Landroid/support/v4/app/FragmentActivity;Z)V

    goto :goto_1

    .line 159
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 184
    :cond_3
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/netease/epay/sdk/base/ui/SdkActivity;->onSDKPermissionDenied(ILjava/lang/String;)V

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 115
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 116
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/SdkActivity;->checkBasicDataLost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const/4 v0, -0x2

    sput v0, Lcom/netease/epay/sdk/base/core/CoreData;->bizType:I

    .line 119
    invoke-static {}, Lcom/netease/epay/sdk/base/util/LogicUtil;->finishPay()V

    .line 120
    const-string v0, "finish"

    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/EventBusUtil;->post(Ljava/lang/Object;)V

    .line 121
    invoke-static {}, Lcom/netease/epay/sdk/base/util/EventBusUtil;->clearData()V

    .line 123
    :cond_0
    return-void
.end method

.method protected onSDKPermissionDenied(ILjava/lang/String;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    .line 194
    return-void
.end method

.method protected onSDKPermissionGranted(I)V
    .locals 0
    .param p1, "requestCode"    # I

    .prologue
    .line 190
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/ui/SdkActivity;->isBackground:Z

    .line 101
    return-void
.end method

.method protected varargs requestSDKPermission(I[Ljava/lang/String;)V
    .locals 1
    .param p1, "requsetCode"    # I
    .param p2, "permission"    # [Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 146
    invoke-static {p0, p2}, Lcom/netease/epay/sdk/base/util/PermissionUtils;->hasSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/base/ui/SdkActivity;->onSDKPermissionGranted(I)V

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-static {p0, p2, p1}, Lcom/netease/epay/sdk/base/util/PermissionUtils;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setContentView(I)V
    .locals 2
    .param p1, "layoutResID"    # I

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    .line 64
    sget v0, Lcom/netease/epay/sdk/base/R$id;->atb:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/SdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    sget v0, Lcom/netease/epay/sdk/base/R$id;->atb:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/SdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;

    .line 66
    new-instance v1, Lcom/netease/epay/sdk/base/ui/SdkActivity$2;

    invoke-direct {v1, p0}, Lcom/netease/epay/sdk/base/ui/SdkActivity$2;-><init>(Lcom/netease/epay/sdk/base/ui/SdkActivity;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->setBackListener(Landroid/view/View$OnClickListener;)V

    .line 73
    :cond_0
    return-void
.end method
