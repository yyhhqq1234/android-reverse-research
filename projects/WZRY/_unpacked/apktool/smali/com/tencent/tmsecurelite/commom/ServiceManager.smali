.class public Lcom/tencent/tmsecurelite/commom/ServiceManager;
.super Ljava/lang/Object;
.source "ServiceManager.java"


# static fields
.field static final SERVICE_ACTION:Ljava/lang/String; = "com.tencent.qqpimsecure.TMS_LITE_SERVICE"

.field static final SERVICE_ACTION_ACCOUNTSECURE:Ljava/lang/String; = "com.tecnent.qqpimsecure.TMS_LITE_SERVICE_ACCOUNTSECURE"

.field static final SERVICE_ACTION_FILESAFE:Ljava/lang/String; = "com.tecnent.qqpimsecure.TMS_LITE_SERVICE_FILESAFE"

.field static final SERVICE_ACTION_GAME_BOX:Ljava/lang/String; = "com.tecnent.qqpimsecure.TMS_LITE_GAME_BOX_INTERCEPT"

.field static final SERVICE_ACTION_INTERCEPT:Ljava/lang/String; = "com.tecnent.qqpimsecure.TMS_LITE_SERVICE_INTERCEPT"

.field static final SERVICE_ACTION_NETWORKMGR:Ljava/lang/String; = "com.tecnent.qqpimsecure.TMS_LITE_SERVICE_NETWORKMGR"

.field static final SERVICE_ACTION_OPTIMIZE:Ljava/lang/String; = "com.tecnent.qqpimsecure.TMS_LITE_SERVICE_OPTIMIZE"

.field static final SERVICE_ACTION_PASSWORD:Ljava/lang/String; = "com.tecnent.qqpimsecure.TMS_LITE_SERVICE_PASSWORD"

.field static final SERVICE_ACTION_PAYSECURE:Ljava/lang/String; = "com.tecnent.qqpimsecure.TMS_LITE_SERVICE_PAYSECURE"

.field static final SERVICE_ACTION_ROOT:Ljava/lang/String; = "com.tecnent.qqpimsecure.TMS_LITE_SERVICE_ROOT"

.field static final SERVICE_ACTION_SOFTMOVE:Ljava/lang/String; = "com.tecnent.qqpimsecure.TMS_LITE_SERVICE_SOFTMOVE"

.field static final SERVICE_ACTION_VIRUS:Ljava/lang/String; = "com.tecnent.qqpimsecure.TMS_LITE_SERVICE_VIRUS"

.field static final SERVICE_ACTION_WIFI:Ljava/lang/String; = "com.tecnent.qqpimsecure.TMS_LITE_SERVICE_WIFI"

.field static final SERVICE_PACAKGE:Ljava/lang/String; = "com.tencent.qqpimsecure"

.field public static final SERVICE_TYPE:Ljava/lang/String; = "service_type"

.field public static final TYPE_ACCOUNT_SECURE:I = 0x9

.field public static final TYPE_DISTURB_INTERCEPT:I = 0x2

.field public static final TYPE_FILE_SAFE:I = 0x3

.field public static final TYPE_NETWORK_MGR:I = 0x8

.field public static final TYPE_PASSWORD_SYSTEM:I = 0x4

.field public static final TYPE_PAY_SECURE:I = 0x6

.field public static final TYPE_QQPIM:I = 0xb

.field public static final TYPE_ROOT_SERVICE:I = 0x5

.field public static final TYPE_SDK_GAME_BOX:I = 0xd

.field public static final TYPE_SDK_PROVIDER:I = 0xc

.field public static final TYPE_SOFTWARE_MARKET:I = 0xe

.field public static final TYPE_SOFT_MOVE:I = 0x7

.field public static final TYPE_SYSTEM_OPTIMIZE:I = 0x0

.field public static final TYPE_VIRUS_SCAN:I = 0x1

.field public static final TYPE_WIFI_MANAGER:I = 0xa

.field public static final USE_COMMON_INTERFACE:Ljava/lang/String; = "use_common_interface"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getIntent(I)Landroid/content/Intent;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 145
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 146
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.tencent.qqpimsecure"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v1, "service_type"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 148
    packed-switch p0, :pswitch_data_0

    .line 186
    :goto_0
    :pswitch_0
    return-object v0

    .line 150
    :pswitch_1
    const-string v1, "com.tecnent.qqpimsecure.TMS_LITE_SERVICE_OPTIMIZE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 153
    :pswitch_2
    const-string v1, "com.tecnent.qqpimsecure.TMS_LITE_SERVICE_VIRUS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 156
    :pswitch_3
    const-string v1, "com.tecnent.qqpimsecure.TMS_LITE_SERVICE_INTERCEPT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 159
    :pswitch_4
    const-string v1, "com.tecnent.qqpimsecure.TMS_LITE_SERVICE_FILESAFE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 162
    :pswitch_5
    const-string v1, "com.tecnent.qqpimsecure.TMS_LITE_SERVICE_PASSWORD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 165
    :pswitch_6
    const-string v1, "com.tecnent.qqpimsecure.TMS_LITE_SERVICE_ROOT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 168
    :pswitch_7
    const-string v1, "com.tecnent.qqpimsecure.TMS_LITE_SERVICE_PAYSECURE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 171
    :pswitch_8
    const-string v1, "com.tecnent.qqpimsecure.TMS_LITE_SERVICE_SOFTMOVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 174
    :pswitch_9
    const-string v1, "com.tecnent.qqpimsecure.TMS_LITE_SERVICE_NETWORKMGR"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 177
    :pswitch_a
    const-string v1, "com.tecnent.qqpimsecure.TMS_LITE_SERVICE_ACCOUNTSECURE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 180
    :pswitch_b
    const-string v1, "com.tecnent.qqpimsecure.TMS_LITE_SERVICE_WIFI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 183
    :pswitch_c
    const-string v1, "com.tecnent.qqpimsecure.TMS_LITE_GAME_BOX_INTERCEPT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_c
    .end packed-switch
.end method

.method public static final getInterface(ILandroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1
    .param p0, "type"    # I
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, "inter":Landroid/os/IInterface;
    packed-switch p0, :pswitch_data_0

    .line 233
    :goto_0
    return-object v0

    .line 203
    :pswitch_0
    invoke-static {p1}, Lcom/tencent/tmsecurelite/optimize/SystemOptimizeStub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/tmsecurelite/optimize/ISystemOptimize;

    move-result-object v0

    .line 204
    goto :goto_0

    .line 206
    :pswitch_1
    invoke-static {p1}, Lcom/tencent/tmsecurelite/virusscan/VirusScanStub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/tmsecurelite/virusscan/IVirusScan;

    move-result-object v0

    .line 207
    goto :goto_0

    .line 209
    :pswitch_2
    invoke-static {p1}, Lcom/tencent/tmsecurelite/intercept/DisturbInterceptStub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/tmsecurelite/intercept/IDisturbIntercept;

    move-result-object v0

    .line 210
    goto :goto_0

    .line 212
    :pswitch_3
    invoke-static {p1}, Lcom/tencent/tmsecurelite/filesafe/FileSafeEncryptStub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/tmsecurelite/filesafe/IFileSafeEncrypt;

    move-result-object v0

    .line 213
    goto :goto_0

    .line 215
    :pswitch_4
    invoke-static {p1}, Lcom/tencent/tmsecurelite/password/PassWordSystemStub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/tmsecurelite/password/IPassWordSystem;

    move-result-object v0

    .line 216
    goto :goto_0

    .line 218
    :pswitch_5
    invoke-static {p1}, Lcom/tencent/tmsecurelite/root/RootServiceStub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/tmsecurelite/root/IRootService;

    move-result-object v0

    .line 219
    goto :goto_0

    .line 221
    :pswitch_6
    invoke-static {p1}, Lcom/tencent/tmsecurelite/paysecure/PaySecureStub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/tmsecurelite/paysecure/IPaySecure;

    move-result-object v0

    .line 222
    goto :goto_0

    .line 224
    :pswitch_7
    invoke-static {p1}, Lcom/tencent/tmsecurelite/softwaremove/SoftMoveServiceStub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/tmsecurelite/softwaremove/ISoftMoveService;

    move-result-object v0

    .line 225
    goto :goto_0

    .line 227
    :pswitch_8
    invoke-static {p1}, Lcom/tencent/tmsecurelite/networkmgr/NetworkMgrServiceStub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/tmsecurelite/networkmgr/INetworkMgrService;

    move-result-object v0

    .line 228
    goto :goto_0

    .line 230
    :pswitch_9
    invoke-static {p1}, Lcom/tencent/tmsecurelite/accountsc/AccountSecureStub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/tmsecurelite/accountsc/IAccountSecrue;

    move-result-object v0

    goto :goto_0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static final getTmsConnection(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1
    .param p0, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 133
    invoke-static {p0}, Lcom/tencent/tmsecurelite/base/TmsConnectionStub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/tmsecurelite/base/ITmsConnection;

    move-result-object v0

    return-object v0
.end method

.method public static final getTmsIntent(I)Landroid/content/Intent;
    .locals 3
    .param p0, "type"    # I

    .prologue
    .line 124
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 125
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.tencent.qqpimsecure"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const-string/jumbo v1, "use_common_interface"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 127
    const-string v1, "service_type"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 128
    const-string v1, "com.tencent.qqpimsecure.TMS_LITE_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    return-object v0
.end method
