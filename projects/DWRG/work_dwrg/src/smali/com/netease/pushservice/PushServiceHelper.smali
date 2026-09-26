.class public Lcom/netease/pushservice/PushServiceHelper;
.super Ljava/lang/Object;
.source "PushServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/pushservice/PushServiceHelper$TaskSubmitter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static s_pushServiceHelper:Lcom/netease/pushservice/PushServiceHelper;


# instance fields
.field private m_network:Lcom/netease/pushservice/Network;

.field private m_packageAppInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/netease/push/utils/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_pushService:Lcom/netease/pushservice/PushService;

.field private m_recvTimeError:J

.field private m_serviceInfo:Lcom/netease/pushservice/PushServiceInfo;

.field private m_taskSubmitter:Lcom/netease/pushservice/PushServiceHelper$TaskSubmitter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NGPush_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/netease/pushservice/PushServiceHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    .line 63
    new-instance v0, Lcom/netease/pushservice/PushServiceHelper;

    invoke-direct {v0}, Lcom/netease/pushservice/PushServiceHelper;-><init>()V

    sput-object v0, Lcom/netease/pushservice/PushServiceHelper;->s_pushServiceHelper:Lcom/netease/pushservice/PushServiceHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/pushservice/PushServiceHelper;->m_packageAppInfoMap:Ljava/util/HashMap;

    .line 66
    new-instance v0, Lcom/netease/pushservice/PushServiceInfo;

    invoke-direct {v0}, Lcom/netease/pushservice/PushServiceInfo;-><init>()V

    iput-object v0, p0, Lcom/netease/pushservice/PushServiceHelper;->m_serviceInfo:Lcom/netease/pushservice/PushServiceInfo;

    .line 67
    new-instance v0, Lcom/netease/pushservice/PushServiceHelper$TaskSubmitter;

    invoke-direct {v0, p0}, Lcom/netease/pushservice/PushServiceHelper$TaskSubmitter;-><init>(Lcom/netease/pushservice/PushServiceHelper;)V

    iput-object v0, p0, Lcom/netease/pushservice/PushServiceHelper;->m_taskSubmitter:Lcom/netease/pushservice/PushServiceHelper$TaskSubmitter;

    .line 68
    iput-object v1, p0, Lcom/netease/pushservice/PushServiceHelper;->m_network:Lcom/netease/pushservice/Network;

    .line 69
    iput-object v1, p0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    .line 70
    const-wide/16 v0, 0x3c

    iput-wide v0, p0, Lcom/netease/pushservice/PushServiceHelper;->m_recvTimeError:J

    .line 61
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/netease/pushservice/PushServiceHelper;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/netease/pushservice/PushServiceHelper;->register(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/netease/pushservice/PushServiceHelper;)Lcom/netease/pushservice/PushService;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    return-object v0
.end method

.method private checkFirstStart(Lcom/netease/push/utils/AppInfo;)V
    .locals 7
    .param p1, "appInfo"    # Lcom/netease/push/utils/AppInfo;

    .prologue
    const/4 v6, 0x0

    .line 197
    sget-object v1, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v2, "checkFirstStart"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    sget-object v1, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "appInfo.mbFirstStart:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p1, Lcom/netease/push/utils/AppInfo;->mbFirstStart:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    sget-object v1, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "appInfo.mPackageName:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/netease/push/utils/AppInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    sget-object v1, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "appInfo.mLastReceiveTime:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p1, Lcom/netease/push/utils/AppInfo;->mLastReceiveTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v1, p0, Lcom/netease/pushservice/PushServiceHelper;->m_serviceInfo:Lcom/netease/pushservice/PushServiceInfo;

    iget-object v1, v1, Lcom/netease/pushservice/PushServiceInfo;->mDevId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-boolean v1, p1, Lcom/netease/push/utils/AppInfo;->mbFirstStart:Z

    if-eqz v1, :cond_1

    .line 205
    iput-boolean v6, p1, Lcom/netease/push/utils/AppInfo;->mbFirstStart:Z

    .line 206
    iget-object v1, p0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    iget-object v2, p1, Lcom/netease/push/utils/AppInfo;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v2, v6}, Lcom/netease/push/utils/PushSetting;->setFirstStart(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 208
    :cond_1
    invoke-static {}, Lcom/netease/inner/pushclient/PushClientReceiver;->createNewIDIntent()Landroid/content/Intent;

    move-result-object v0

    .line 209
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "devid"

    iget-object v2, p0, Lcom/netease/pushservice/PushServiceHelper;->m_serviceInfo:Lcom/netease/pushservice/PushServiceInfo;

    iget-object v2, v2, Lcom/netease/pushservice/PushServiceInfo;->mDevId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    iget-object v1, p1, Lcom/netease/push/utils/AppInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    sget-object v1, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v2, "broadcast createNewIDIntent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v1, p0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    invoke-virtual {v1, v0}, Lcom/netease/pushservice/PushService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static createActiveMethodIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 652
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netease.push.action.service.METHOD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 653
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "method_ver"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 654
    return-object v0
.end method

.method public static createMethodIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 643
    invoke-static {}, Lcom/netease/pushservice/PushServiceHelper;->createActiveMethodIntent()Landroid/content/Intent;

    move-result-object v0

    .line 644
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 645
    return-object v0
.end method

.method public static createServiceIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 637
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netease.push.action.service.PUSHSERVICE2"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 638
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 639
    return-object v0
.end method

.method private enableRepeatProtect(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flag"    # Z

    .prologue
    .line 373
    sget-object v1, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v2, "repeatprotect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    sget-object v1, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "packageName:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    sget-object v1, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "flag:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    sget-object v1, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v1, p0, Lcom/netease/pushservice/PushServiceHelper;->m_packageAppInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/push/utils/AppInfo;

    .line 378
    .local v0, "appInfo":Lcom/netease/push/utils/AppInfo;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/netease/push/utils/AppInfo;->mbRepeatProtect:Z

    if-eq v1, p2, :cond_0

    .line 379
    iput-boolean p2, v0, Lcom/netease/push/utils/AppInfo;->mbRepeatProtect:Z

    .line 381
    :cond_0
    return-void
.end method

.method private enableSound(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flag"    # Z

    .prologue
    .line 351
    sget-object v1, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v2, "enableSound"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    sget-object v1, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "packageName:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    sget-object v1, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "flag:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    sget-object v1, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v1, p0, Lcom/netease/pushservice/PushServiceHelper;->m_packageAppInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/push/utils/AppInfo;

    .line 356
    .local v0, "appInfo":Lcom/netease/push/utils/AppInfo;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/netease/push/utils/AppInfo;->mbEnableSound:Z

    if-eq v1, p2, :cond_0

    .line 357
    iput-boolean p2, v0, Lcom/netease/push/utils/AppInfo;->mbEnableSound:Z

    .line 359
    :cond_0
    return-void
.end method

.method private enableVibrate(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flag"    # Z

    .prologue
    .line 362
    sget-object v1, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v2, "enableVibrate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    sget-object v1, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "packageName:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    sget-object v1, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "flag:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    sget-object v1, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v1, p0, Lcom/netease/pushservice/PushServiceHelper;->m_packageAppInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/push/utils/AppInfo;

    .line 367
    .local v0, "appInfo":Lcom/netease/push/utils/AppInfo;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/netease/push/utils/AppInfo;->mbEnableVibrate:Z

    if-eq v1, p2, :cond_0

    .line 368
    iput-boolean p2, v0, Lcom/netease/push/utils/AppInfo;->mbEnableVibrate:Z

    .line 370
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/netease/pushservice/PushServiceHelper;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->s_pushServiceHelper:Lcom/netease/pushservice/PushServiceHelper;

    return-object v0
.end method

.method private patchPlaceholder()V
    .locals 2

    .prologue
    .line 73
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-class v1, Lcom/netease/ntunisdk/base/PatchPlaceholder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void
.end method

.method private register(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 160
    sget-object v3, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v4, "register"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    sget-object v3, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "packageName:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    sget-object v3, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "m_serviceInfo.mDevId:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/netease/pushservice/PushServiceHelper;->m_serviceInfo:Lcom/netease/pushservice/PushServiceInfo;

    iget-object v5, v5, Lcom/netease/pushservice/PushServiceInfo;->mDevId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-object v3, p0, Lcom/netease/pushservice/PushServiceHelper;->m_packageAppInfoMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 168
    sget-object v3, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v4, "new AppInfo"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    new-instance v0, Lcom/netease/push/utils/AppInfo;

    invoke-direct {v0, p1}, Lcom/netease/push/utils/AppInfo;-><init>(Ljava/lang/String;)V

    .line 170
    .local v0, "appInfo":Lcom/netease/push/utils/AppInfo;
    iget-object v3, p0, Lcom/netease/pushservice/PushServiceHelper;->m_packageAppInfoMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v3, p0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    iget-object v4, p0, Lcom/netease/pushservice/PushServiceHelper;->m_packageAppInfoMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/push/utils/PushSetting;->setPackages(Landroid/content/Context;Ljava/util/Set;)V

    .line 172
    iget-object v3, p0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    iget-object v4, v0, Lcom/netease/push/utils/AppInfo;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/netease/push/utils/PushSetting;->getAllOtherNativeNotifications(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 173
    .local v2, "nativePushDatas":Ljava/util/List;, "Ljava/util/List<Lcom/netease/inner/pushclient/NativePushData;>;"
    if-eqz v2, :cond_0

    .line 174
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/inner/pushclient/NativePushData;

    .line 175
    .local v1, "nativePushData":Lcom/netease/inner/pushclient/NativePushData;
    iget-object v4, p0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    iget-object v5, v0, Lcom/netease/push/utils/AppInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/netease/inner/pushclient/NativePushData;->startAlarm(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 179
    .end local v0    # "appInfo":Lcom/netease/push/utils/AppInfo;
    .end local v1    # "nativePushData":Lcom/netease/inner/pushclient/NativePushData;
    .end local v2    # "nativePushDatas":Ljava/util/List;, "Ljava/util/List<Lcom/netease/inner/pushclient/NativePushData;>;"
    :cond_2
    iget-object v3, p0, Lcom/netease/pushservice/PushServiceHelper;->m_packageAppInfoMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/push/utils/AppInfo;

    .restart local v0    # "appInfo":Lcom/netease/push/utils/AppInfo;
    goto :goto_0
.end method

.method private registerToServer(Ljava/lang/String;)V
    .locals 4
    .param p1, "service"    # Ljava/lang/String;

    .prologue
    .line 184
    iget-object v1, p0, Lcom/netease/pushservice/PushServiceHelper;->m_serviceInfo:Lcom/netease/pushservice/PushServiceInfo;

    iget-object v1, v1, Lcom/netease/pushservice/PushServiceInfo;->mDevId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    :goto_0
    return-void

    .line 188
    :cond_0
    new-instance v0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfo;

    invoke-direct {v0}, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfo;-><init>()V

    .line 189
    .local v0, "devServiceInfo":Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfo;
    iget-object v1, p0, Lcom/netease/pushservice/PushServiceHelper;->m_serviceInfo:Lcom/netease/pushservice/PushServiceInfo;

    iget-object v1, v1, Lcom/netease/pushservice/PushServiceInfo;->mDevId:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfo;->id:Ljava/lang/String;

    .line 190
    iput-object p1, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfo;->service:Ljava/lang/String;

    .line 191
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfo;->time:J

    .line 192
    sget-object v1, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v2, "sendData, REGISTER_TYPE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {p0}, Lcom/netease/pushservice/PushServiceHelper;->getNetwork()Lcom/netease/pushservice/Network;

    move-result-object v1

    const/4 v2, 0x6

    const-string v3, ""

    invoke-virtual {v1, v2, v0, v3}, Lcom/netease/pushservice/Network;->sendData(BLcom/netease/push/proto/ProtoClientWrapper$DataMarshal;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requireToken()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    .line 236
    sget-object v10, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v11, "requireToken"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 238
    .local v5, "sModel":Ljava/lang/String;
    iget-object v10, p0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    const-string v11, "window"

    invoke-virtual {v10, v11}, Lcom/netease/pushservice/PushService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 239
    .local v9, "wm":Landroid/view/WindowManager;
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 240
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v7

    .line 241
    .local v7, "width":I
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 242
    .local v2, "height":I
    new-instance v10, Ljava/lang/StringBuilder;

    sget-object v11, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 243
    .local v6, "sVersion":Ljava/lang/String;
    const-string v4, ""

    .line 244
    .local v4, "sMac":Ljava/lang/String;
    iget-object v10, p0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    const-string v11, "wifi"

    invoke-virtual {v10, v11}, Lcom/netease/pushservice/PushService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiManager;

    .line 245
    .local v8, "wifiMgr":Landroid/net/wifi/WifiManager;
    if-nez v8, :cond_1

    const/4 v3, 0x0

    .line 246
    .local v3, "info":Landroid/net/wifi/WifiInfo;
    :goto_0
    if-nez v3, :cond_2

    const-string v4, ""

    .line 247
    :goto_1
    if-nez v4, :cond_0

    .line 248
    const-string v4, ""

    .line 250
    :cond_0
    new-instance v0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;

    invoke-direct {v0}, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;-><init>()V

    .line 251
    .local v0, "devInfo":Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;
    iput-object v5, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->model:Ljava/lang/String;

    .line 252
    const-string v10, "%d*%d"

    new-array v11, v14, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->screen:Ljava/lang/String;

    .line 253
    const-string v10, "android"

    iput-object v10, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->os:Ljava/lang/String;

    .line 254
    iput-object v6, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->osver:Ljava/lang/String;

    .line 255
    iput-object v4, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->mac:Ljava/lang/String;

    .line 256
    iget-object v10, p0, Lcom/netease/pushservice/PushServiceHelper;->m_serviceInfo:Lcom/netease/pushservice/PushServiceInfo;

    iget-object v11, p0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    invoke-virtual {v10, v11}, Lcom/netease/pushservice/PushServiceInfo;->createUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->id:Ljava/lang/String;

    .line 257
    sget-object v10, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v11, "sendData, SET_NEW_ID_TYPE"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    sget-object v10, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "model:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->model:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    sget-object v10, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "screen"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->screen:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    sget-object v10, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "os:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->os:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    sget-object v10, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "osver:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->osver:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    sget-object v10, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "mac:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->mac:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    sget-object v10, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "id:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->id:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-virtual {p0}, Lcom/netease/pushservice/PushServiceHelper;->getNetwork()Lcom/netease/pushservice/Network;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v14, v0, v11}, Lcom/netease/pushservice/Network;->sendData(BLcom/netease/push/proto/ProtoClientWrapper$DataMarshal;Ljava/lang/String;)V

    .line 265
    return-void

    .line 245
    .end local v0    # "devInfo":Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;
    .end local v3    # "info":Landroid/net/wifi/WifiInfo;
    :cond_1
    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    goto/16 :goto_0

    .line 246
    .restart local v3    # "info":Landroid/net/wifi/WifiInfo;
    :cond_2
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1
.end method

.method public static startActivePushService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 666
    const-class v0, Lcom/netease/pushservice/PushService;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 667
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 668
    return-void
.end method

.method public static startPushService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 658
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v1, "startPushService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const-class v0, Lcom/netease/pushservice/PushService;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 661
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 662
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 663
    return-void
.end method

.method private updateToken(Ljava/lang/String;)V
    .locals 4
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 217
    sget-object v1, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateToken, get token from server:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    sget-object v1, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PushManager.getContext():"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/pushclient/PushManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v1, p0, Lcom/netease/pushservice/PushServiceHelper;->m_serviceInfo:Lcom/netease/pushservice/PushServiceInfo;

    iput-object p1, v1, Lcom/netease/pushservice/PushServiceInfo;->mDevId:Ljava/lang/String;

    .line 220
    iget-object v1, p0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    iget-object v2, p0, Lcom/netease/pushservice/PushServiceHelper;->m_serviceInfo:Lcom/netease/pushservice/PushServiceInfo;

    iget-object v2, v2, Lcom/netease/pushservice/PushServiceInfo;->mDevId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/netease/push/utils/PushSetting;->setDevId(Landroid/content/Context;Ljava/lang/String;)V

    .line 221
    invoke-static {}, Lcom/netease/pushclient/PushManager;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 222
    invoke-static {}, Lcom/netease/pushclient/PushManager;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pushservice/PushServiceHelper;->m_serviceInfo:Lcom/netease/pushservice/PushServiceInfo;

    iget-object v2, v2, Lcom/netease/pushservice/PushServiceInfo;->mDevId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/netease/push/utils/PushSetting;->setDevId(Landroid/content/Context;Ljava/lang/String;)V

    .line 225
    :cond_0
    iget-object v1, p0, Lcom/netease/pushservice/PushServiceHelper;->m_packageAppInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 228
    invoke-virtual {p0}, Lcom/netease/pushservice/PushServiceHelper;->refreshToken()V

    .line 229
    iget-object v1, p0, Lcom/netease/pushservice/PushServiceHelper;->m_packageAppInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 232
    return-void

    .line 225
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/push/utils/AppInfo;

    .line 226
    .local v0, "appInfo":Lcom/netease/push/utils/AppInfo;
    invoke-direct {p0, v0}, Lcom/netease/pushservice/PushServiceHelper;->checkFirstStart(Lcom/netease/push/utils/AppInfo;)V

    goto :goto_0

    .line 229
    .end local v0    # "appInfo":Lcom/netease/push/utils/AppInfo;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/push/utils/AppInfo;

    .line 230
    .restart local v0    # "appInfo":Lcom/netease/push/utils/AppInfo;
    iget-object v2, v0, Lcom/netease/push/utils/AppInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/netease/pushservice/PushServiceHelper;->registerToServer(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public connect(Z)V
    .locals 4
    .param p1, "bSync"    # Z

    .prologue
    .line 596
    sget-object v1, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connect, bSync:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    sget-object v1, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connect, this="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    sget-object v1, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connect, m_network="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/netease/pushservice/PushServiceHelper;->m_network:Lcom/netease/pushservice/Network;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object v1, p0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    invoke-static {v1}, Lcom/netease/push/utils/PushSetting;->getCurNeedNiepush(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 600
    .local v0, "needNiepush":Ljava/lang/Boolean;
    sget-object v1, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "needNiepush="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 619
    :goto_0
    return-void

    .line 604
    :cond_0
    if-eqz p1, :cond_1

    .line 606
    invoke-virtual {p0}, Lcom/netease/pushservice/PushServiceHelper;->getNetwork()Lcom/netease/pushservice/Network;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/netease/pushservice/Network;->setEnable(Z)V

    .line 607
    invoke-virtual {p0}, Lcom/netease/pushservice/PushServiceHelper;->getNetwork()Lcom/netease/pushservice/Network;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    invoke-virtual {v1, v2}, Lcom/netease/pushservice/Network;->connectAuto(Landroid/content/Context;)V

    goto :goto_0

    .line 610
    :cond_1
    iget-object v1, p0, Lcom/netease/pushservice/PushServiceHelper;->m_taskSubmitter:Lcom/netease/pushservice/PushServiceHelper$TaskSubmitter;

    new-instance v2, Lcom/netease/pushservice/PushServiceHelper$3;

    invoke-direct {v2, p0}, Lcom/netease/pushservice/PushServiceHelper$3;-><init>(Lcom/netease/pushservice/PushServiceHelper;)V

    invoke-virtual {v1, v2}, Lcom/netease/pushservice/PushServiceHelper$TaskSubmitter;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 622
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v1, "disconnect..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object v0, p0, Lcom/netease/pushservice/PushServiceHelper;->m_taskSubmitter:Lcom/netease/pushservice/PushServiceHelper$TaskSubmitter;

    new-instance v1, Lcom/netease/pushservice/PushServiceHelper$4;

    invoke-direct {v1, p0}, Lcom/netease/pushservice/PushServiceHelper$4;-><init>(Lcom/netease/pushservice/PushServiceHelper;)V

    invoke-virtual {v0, v1}, Lcom/netease/pushservice/PushServiceHelper$TaskSubmitter;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 630
    return-void
.end method

.method public getNetwork()Lcom/netease/pushservice/Network;
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/netease/pushservice/PushServiceHelper;->m_network:Lcom/netease/pushservice/Network;

    return-object v0
.end method

.method public getNotificationServiceInfo()Lcom/netease/pushservice/PushServiceInfo;
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/netease/pushservice/PushServiceHelper;->m_serviceInfo:Lcom/netease/pushservice/PushServiceInfo;

    return-object v0
.end method

.method public getPushService()Lcom/netease/pushservice/PushService;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    return-object v0
.end method

.method public getTaskSubmitter()Lcom/netease/pushservice/PushServiceHelper$TaskSubmitter;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/netease/pushservice/PushServiceHelper;->m_taskSubmitter:Lcom/netease/pushservice/PushServiceHelper$TaskSubmitter;

    return-object v0
.end method

.method public handlePush(Lcom/netease/push/proto/ProtoClientWrapper$Packet;)V
    .locals 28
    .param p1, "packet"    # Lcom/netease/push/proto/ProtoClientWrapper$Packet;

    .prologue
    .line 447
    sget-object v19, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v20, "handlePush"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 449
    .local v9, "gotTimeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v14, 0x0

    .line 451
    .local v14, "messageInfo":Lcom/netease/push/proto/ProtoClientWrapper$MessageInfo;
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->data:[B

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/netease/push/proto/ProtoClientWrapper$MessageInfo;->unmarshalMessageInfo([B)Lcom/netease/push/proto/ProtoClientWrapper$MessageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pushservice/PushServiceHelper;->m_serviceInfo:Lcom/netease/pushservice/PushServiceInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/netease/pushservice/PushServiceInfo;->mDevId:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v14, Lcom/netease/push/proto/ProtoClientWrapper$MessageInfo;->id:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 458
    sget-object v19, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v20, "deviceID mismatch:"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    sget-object v19, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "got deviceID:"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v14, Lcom/netease/push/proto/ProtoClientWrapper$MessageInfo;->id:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    sget-object v19, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, " my deviceID:"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pushservice/PushServiceHelper;->m_serviceInfo:Lcom/netease/pushservice/PushServiceInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/netease/pushservice/PushServiceInfo;->mDevId:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 452
    :catch_0
    move-exception v7

    .line 453
    .local v7, "e":Ljava/lang/Exception;
    sget-object v19, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v20, "unmarshalMessageInfo exception"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 464
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v0, v14, Lcom/netease/push/proto/ProtoClientWrapper$MessageInfo;->messages:[Lcom/netease/push/proto/ProtoClientWrapper$Message;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    const/16 v19, 0x0

    :goto_1
    move/from16 v0, v19

    move/from16 v1, v21

    if-lt v0, v1, :cond_3

    .line 531
    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v19

    if-lez v19, :cond_0

    .line 532
    new-instance v6, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;

    invoke-direct {v6}, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;-><init>()V

    .line 533
    .local v6, "devServiceInfos":Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pushservice/PushServiceHelper;->m_serviceInfo:Lcom/netease/pushservice/PushServiceInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/netease/pushservice/PushServiceInfo;->mDevId:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v6, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;->id:Ljava/lang/String;

    .line 534
    const-string v19, "18"

    move-object/from16 v0, v19

    iput-object v0, v6, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;->ver:Ljava/lang/String;

    .line 535
    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Lcom/netease/push/proto/ProtoClientWrapper$ServiceInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v6, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;->serviceInfos:[Lcom/netease/push/proto/ProtoClientWrapper$ServiceInfo;

    .line 536
    const/4 v5, 0x0

    .line 537
    .local v5, "count":I
    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 538
    .local v11, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :cond_2
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_b

    .line 552
    sget-object v19, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v20, "sendData, GOT_TIME_TYPE"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    invoke-virtual/range {p0 .. p0}, Lcom/netease/pushservice/PushServiceHelper;->getNetwork()Lcom/netease/pushservice/Network;

    move-result-object v19

    const/16 v20, 0x5

    const-string v21, ""

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v6, v2}, Lcom/netease/pushservice/Network;->sendData(BLcom/netease/push/proto/ProtoClientWrapper$DataMarshal;Ljava/lang/String;)V

    goto :goto_0

    .line 464
    .end local v5    # "count":I
    .end local v6    # "devServiceInfos":Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;
    .end local v11    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :cond_3
    aget-object v13, v20, v19

    .line 465
    .local v13, "message":Lcom/netease/push/proto/ProtoClientWrapper$Message;
    sget-object v22, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v23, "got a message"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    sget-object v22, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "packagename:"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v13, Lcom/netease/push/proto/ProtoClientWrapper$Message;->service:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    sget-object v22, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "title:"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v13, Lcom/netease/push/proto/ProtoClientWrapper$Message;->title:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    sget-object v22, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "content:"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v13, Lcom/netease/push/proto/ProtoClientWrapper$Message;->content:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    sget-object v22, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "ext:"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v13, Lcom/netease/push/proto/ProtoClientWrapper$Message;->ext:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    sget-object v22, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "time:"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, v13, Lcom/netease/push/proto/ProtoClientWrapper$Message;->time:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v0, v13, Lcom/netease/push/proto/ProtoClientWrapper$Message;->service:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 474
    .local v16, "packagename":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 475
    sget-object v22, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v23, "packagename is empty"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :goto_3
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1

    .line 479
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pushservice/PushServiceHelper;->m_packageAppInfoMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netease/push/utils/AppInfo;

    .line 480
    .local v4, "appInfo":Lcom/netease/push/utils/AppInfo;
    if-nez v4, :cond_5

    .line 481
    sget-object v22, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "not registered packagename:"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 485
    :cond_5
    iget-wide v0, v13, Lcom/netease/push/proto/ProtoClientWrapper$Message;->time:J

    move-wide/from16 v22, v0

    iget-wide v0, v4, Lcom/netease/push/utils/AppInfo;->mLastReceiveTime:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pushservice/PushServiceHelper;->m_recvTimeError:J

    move-wide/from16 v26, v0

    sub-long v24, v24, v26

    cmp-long v22, v22, v24

    if-gtz v22, :cond_6

    .line 486
    sget-object v22, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v23, "message is out of date:"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    sget-object v22, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "appInfo.mLastReceiveTime:"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, v4, Lcom/netease/push/utils/AppInfo;->mLastReceiveTime:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    sget-object v22, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "message.time:"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, v13, Lcom/netease/push/proto/ProtoClientWrapper$Message;->time:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 492
    :cond_6
    iget-object v0, v13, Lcom/netease/push/proto/ProtoClientWrapper$Message;->packagename:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_7

    iget-object v0, v13, Lcom/netease/push/proto/ProtoClientWrapper$Message;->packagename:Ljava/lang/String;

    move-object/from16 v22, v0

    iget-object v0, v4, Lcom/netease/push/utils/AppInfo;->mPackageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_7

    .line 493
    sget-object v22, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v23, "packagename mismatch:"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    sget-object v22, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "message.packagename:"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v13, Lcom/netease/push/proto/ProtoClientWrapper$Message;->packagename:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    sget-object v22, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "appInfo.mPackageName:"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v4, Lcom/netease/push/utils/AppInfo;->mPackageName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 499
    :cond_7
    invoke-virtual {v4, v13}, Lcom/netease/push/utils/AppInfo;->filterMessage(Lcom/netease/push/proto/ProtoClientWrapper$Message;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 500
    sget-object v22, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v23, "message is filtered"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 504
    :cond_8
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 505
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    .line 506
    .local v12, "lastTime":Ljava/lang/Long;
    iget-wide v0, v13, Lcom/netease/push/proto/ProtoClientWrapper$Message;->time:J

    move-wide/from16 v22, v0

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    cmp-long v22, v22, v24

    if-lez v22, :cond_9

    .line 507
    iget-wide v0, v13, Lcom/netease/push/proto/ProtoClientWrapper$Message;->time:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    .end local v12    # "lastTime":Ljava/lang/Long;
    :cond_9
    :goto_4
    new-instance v15, Lcom/netease/push/utils/NotifyMessage;

    iget-object v0, v13, Lcom/netease/push/proto/ProtoClientWrapper$Message;->content:Ljava/lang/String;

    move-object/from16 v22, v0

    iget-object v0, v13, Lcom/netease/push/proto/ProtoClientWrapper$Message;->title:Ljava/lang/String;

    move-object/from16 v23, v0

    iget-object v0, v13, Lcom/netease/push/proto/ProtoClientWrapper$Message;->ext:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v15, v0, v1, v2}, Lcom/netease/push/utils/NotifyMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    .local v15, "notifyMessage":Lcom/netease/push/utils/NotifyMessage;
    const-string v17, ""

    .line 515
    .local v17, "sMessage":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v15}, Lcom/netease/push/utils/NotifyMessage;->writeToJsonString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v17

    .line 521
    invoke-static {}, Lcom/netease/inner/pushclient/PushClientReceiver;->createMessageIntent()Landroid/content/Intent;

    move-result-object v10

    .line 522
    .local v10, "intent":Landroid/content/Intent;
    const-string v22, "message"

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    const-string v22, "lasttime"

    iget-wide v0, v13, Lcom/netease/push/proto/ProtoClientWrapper$Message;->time:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v10, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 525
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 526
    sget-object v22, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v23, "handlePush, sendBroadcast"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lcom/netease/pushservice/PushService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 510
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v15    # "notifyMessage":Lcom/netease/push/utils/NotifyMessage;
    .end local v17    # "sMessage":Ljava/lang/String;
    :cond_a
    iget-wide v0, v13, Lcom/netease/push/proto/ProtoClientWrapper$Message;->time:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 516
    .restart local v15    # "notifyMessage":Lcom/netease/push/utils/NotifyMessage;
    .restart local v17    # "sMessage":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 517
    .restart local v7    # "e":Ljava/lang/Exception;
    sget-object v19, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v20, "writeToJsonString exception"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 539
    .end local v4    # "appInfo":Lcom/netease/push/utils/AppInfo;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v13    # "message":Lcom/netease/push/proto/ProtoClientWrapper$Message;
    .end local v15    # "notifyMessage":Lcom/netease/push/utils/NotifyMessage;
    .end local v16    # "packagename":Ljava/lang/String;
    .end local v17    # "sMessage":Ljava/lang/String;
    .restart local v5    # "count":I
    .restart local v6    # "devServiceInfos":Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;
    .restart local v11    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :cond_b
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 540
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v18, Lcom/netease/push/proto/ProtoClientWrapper$ServiceInfo;

    invoke-direct/range {v18 .. v18}, Lcom/netease/push/proto/ProtoClientWrapper$ServiceInfo;-><init>()V

    .line 541
    .local v18, "serviceInfo":Lcom/netease/push/proto/ProtoClientWrapper$ServiceInfo;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/netease/push/proto/ProtoClientWrapper$ServiceInfo;->service:Ljava/lang/String;

    .line 542
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/netease/push/proto/ProtoClientWrapper$ServiceInfo;->time:J

    .line 543
    sget-object v19, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "service:"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/netease/push/proto/ProtoClientWrapper$ServiceInfo;->service:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    sget-object v19, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "latest push time:"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/netease/push/proto/ProtoClientWrapper$ServiceInfo;->time:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v0, v6, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;->serviceInfos:[Lcom/netease/push/proto/ProtoClientWrapper$ServiceInfo;

    move-object/from16 v19, v0

    aput-object v18, v19, v5

    .line 546
    add-int/lit8 v5, v5, 0x1

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pushservice/PushServiceHelper;->m_packageAppInfoMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/netease/push/proto/ProtoClientWrapper$ServiceInfo;->service:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netease/push/utils/AppInfo;

    .line 548
    .restart local v4    # "appInfo":Lcom/netease/push/utils/AppInfo;
    if-eqz v4, :cond_2

    .line 549
    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/netease/push/proto/ProtoClientWrapper$ServiceInfo;->time:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    iput-wide v0, v4, Lcom/netease/push/utils/AppInfo;->mLastReceiveTime:J

    goto/16 :goto_2
.end method

.method public init(Lcom/netease/pushservice/PushService;)Z
    .locals 22
    .param p1, "pushService"    # Lcom/netease/pushservice/PushService;

    .prologue
    .line 81
    sget-object v17, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v18, "init"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    sget-object v17, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "pushService:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    if-nez p1, :cond_0

    .line 84
    const/16 v17, 0x0

    .line 152
    :goto_0
    return v17

    .line 86
    :cond_0
    new-instance v17, Lcom/netease/pushservice/Network;

    invoke-direct/range {v17 .. v17}, Lcom/netease/pushservice/Network;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/netease/pushservice/PushServiceHelper;->m_network:Lcom/netease/pushservice/Network;

    .line 87
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pushservice/PushServiceHelper;->m_serviceInfo:Lcom/netease/pushservice/PushServiceInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/netease/push/utils/PushSetting;->getDevId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/netease/pushservice/PushServiceInfo;->mDevId:Ljava/lang/String;

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/netease/pushservice/PushService;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/netease/push/utils/PushSetting;->getServiceType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 90
    .local v16, "serviceType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    move-object/from16 v17, v0

    const-string v18, "gcm"

    invoke-static/range {v17 .. v18}, Lcom/netease/push/utils/PushSetting;->getRegistrationID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 91
    .local v11, "regid_gcm":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    move-object/from16 v17, v0

    const-string v18, "miui"

    invoke-static/range {v17 .. v18}, Lcom/netease/push/utils/PushSetting;->getRegistrationID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 92
    .local v13, "regid_miui":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    move-object/from16 v17, v0

    const-string v18, "huawei"

    invoke-static/range {v17 .. v18}, Lcom/netease/push/utils/PushSetting;->getRegistrationID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 93
    .local v12, "regid_huawei":Ljava/lang/String;
    sget-object v17, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "serviceType="

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    sget-object v17, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "regid_niepush:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pushservice/PushServiceHelper;->m_serviceInfo:Lcom/netease/pushservice/PushServiceInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/netease/pushservice/PushServiceInfo;->mDevId:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    sget-object v17, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "regid_gcm:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget-object v17, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "regid_miui:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    sget-object v17, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "regid_huawei:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/netease/pushservice/PushService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "contextpkg":Ljava/lang/String;
    const/16 v4, 0x12

    .line 101
    .local v4, "contextver":I
    sget-object v17, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "contextpkg:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    sget-object v17, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "contextver:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/netease/push/utils/PushSetting;->getPackages(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v10

    .line 105
    .local v10, "packageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v17, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "packageSet:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    if-eqz v10, :cond_4

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/netease/pushservice/PushService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v8

    .line 108
    .local v8, "packageList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_1
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_3

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pushservice/PushServiceHelper;->m_packageAppInfoMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->size()I

    move-result v17

    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pushservice/PushServiceHelper;->m_packageAppInfoMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/netease/push/utils/PushSetting;->setPackages(Landroid/content/Context;Ljava/util/Set;)V

    .line 130
    .end local v8    # "packageList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/netease/push/utils/PushSetting;->getCurPkg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 131
    .local v14, "runningpkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/netease/push/utils/PushSetting;->getCurVerCode(Landroid/content/Context;)I

    move-result v15

    .line 132
    .local v15, "runningver":I
    sget-object v17, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "runningpkg:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    sget-object v17, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "runningver:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_5

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 135
    sget-object v17, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v18, "incorrect service started"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    sget-object v17, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "contextpkg:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    sget-object v17, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "runningpkg:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual/range {p1 .. p1}, Lcom/netease/pushservice/PushService;->stop()V

    .line 139
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 108
    .end local v14    # "runningpkg":Ljava/lang/String;
    .end local v15    # "runningver":I
    .restart local v8    # "packageList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    .line 109
    .local v7, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v9, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 110
    .local v9, "packageName":Ljava/lang/String;
    invoke-interface {v10, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 111
    sget-object v18, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "read package:"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v9}, Lcom/netease/push/utils/PushSetting;->getAppInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/push/utils/AppInfo;

    move-result-object v2

    .line 113
    .local v2, "appInfo":Lcom/netease/push/utils/AppInfo;
    sget-object v18, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "appInfo.mbFirstStart:"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, v2, Lcom/netease/push/utils/AppInfo;->mbFirstStart:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    if-eqz v2, :cond_1

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pushservice/PushServiceHelper;->m_packageAppInfoMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v18, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "put package:"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 125
    .end local v2    # "appInfo":Lcom/netease/push/utils/AppInfo;
    .end local v7    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v8    # "packageList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "packageName":Ljava/lang/String;
    :cond_4
    new-instance v2, Lcom/netease/push/utils/AppInfo;

    invoke-direct {v2, v3}, Lcom/netease/push/utils/AppInfo;-><init>(Ljava/lang/String;)V

    .line 126
    .restart local v2    # "appInfo":Lcom/netease/push/utils/AppInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pushservice/PushServiceHelper;->m_packageAppInfoMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pushservice/PushServiceHelper;->m_packageAppInfoMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/netease/push/utils/PushSetting;->setPackages(Landroid/content/Context;Ljava/util/Set;)V

    goto/16 :goto_2

    .line 141
    .end local v2    # "appInfo":Lcom/netease/push/utils/AppInfo;
    .restart local v14    # "runningpkg":Ljava/lang/String;
    .restart local v15    # "runningver":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pushservice/PushServiceHelper;->m_packageAppInfoMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_7

    .line 151
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/netease/pushservice/PushServiceHelper;->connect(Z)V

    .line 152
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 141
    :cond_7
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/push/utils/AppInfo;

    .line 142
    .restart local v2    # "appInfo":Lcom/netease/push/utils/AppInfo;
    sget-object v18, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "appInfo.mPackageName:"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v2, Lcom/netease/push/utils/AppInfo;->mPackageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    move-object/from16 v18, v0

    iget-object v0, v2, Lcom/netease/push/utils/AppInfo;->mPackageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/netease/push/utils/PushSetting;->getAllOtherNativeNotifications(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 144
    .local v6, "nativePushDatas":Ljava/util/List;, "Ljava/util/List<Lcom/netease/inner/pushclient/NativePushData;>;"
    if-eqz v6, :cond_6

    .line 145
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/inner/pushclient/NativePushData;

    .line 146
    .local v5, "nativePushData":Lcom/netease/inner/pushclient/NativePushData;
    sget-object v19, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "startAlarm pushName:"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/netease/inner/pushclient/NativePushData;->getPushName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    move-object/from16 v19, v0

    iget-object v0, v2, Lcom/netease/push/utils/AppInfo;->mPackageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Lcom/netease/inner/pushclient/NativePushData;->startAlarm(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public notifyMessage(Ljava/lang/String;Lcom/netease/push/utils/NotifyMessage;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "notify"    # Lcom/netease/push/utils/NotifyMessage;

    .prologue
    .line 403
    sget-object v2, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v3, "notifyMessage"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    sget-object v2, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "packageName:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    sget-object v2, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "notify:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    .line 407
    iget-object v2, p0, Lcom/netease/pushservice/PushServiceHelper;->m_packageAppInfoMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/push/utils/AppInfo;

    .line 408
    .local v0, "appInfo":Lcom/netease/push/utils/AppInfo;
    if-eqz v0, :cond_0

    .line 409
    new-instance v1, Lcom/netease/push/utils/Notifier;

    iget-object v2, p0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    invoke-direct {v1, v2}, Lcom/netease/push/utils/Notifier;-><init>(Landroid/content/Context;)V

    .line 410
    .local v1, "notifier":Lcom/netease/push/utils/Notifier;
    invoke-virtual {v1, p2, v0}, Lcom/netease/push/utils/Notifier;->notify(Lcom/netease/push/utils/NotifyMessage;Lcom/netease/push/utils/AppInfo;)V

    .line 413
    .end local v0    # "appInfo":Lcom/netease/push/utils/AppInfo;
    .end local v1    # "notifier":Lcom/netease/push/utils/Notifier;
    :cond_0
    return-void
.end method

.method public onReceive(Lcom/netease/push/proto/ProtoClientWrapper$Packet;)V
    .locals 5
    .param p1, "packet"    # Lcom/netease/push/proto/ProtoClientWrapper$Packet;

    .prologue
    .line 416
    sget-object v2, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v3, "onReceive"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    sget-object v2, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "packet:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    sget-object v2, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "got cmd:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v4, p1, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->type:B

    invoke-static {v4}, Lcom/netease/push/proto/ProtoClientWrapper;->getTypeName(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const/16 v2, 0x32

    iget-byte v3, p1, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->type:B

    if-ne v2, v3, :cond_0

    .line 420
    sget-object v2, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v3, "PUSH_TYPE from server"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/netease/pushservice/PushServiceHelper;->handlePush(Lcom/netease/push/proto/ProtoClientWrapper$Packet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    :goto_0
    return-void

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v3, "handlePush exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 427
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/16 v2, 0x34

    iget-byte v3, p1, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->type:B

    if-ne v2, v3, :cond_1

    .line 428
    sget-object v2, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v3, "NEW_ID_TYPE from server"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :try_start_1
    iget-object v2, p1, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->data:[B

    invoke-static {v2}, Lcom/netease/push/proto/ProtoClientWrapper$NewIdInfo;->UnmarshalNewIdInfo([B)Lcom/netease/push/proto/ProtoClientWrapper$NewIdInfo;

    move-result-object v1

    .line 432
    .local v1, "newIdInfo":Lcom/netease/push/proto/ProtoClientWrapper$NewIdInfo;
    iget-object v2, v1, Lcom/netease/push/proto/ProtoClientWrapper$NewIdInfo;->id:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/netease/pushservice/PushServiceHelper;->updateToken(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 433
    .end local v1    # "newIdInfo":Lcom/netease/push/proto/ProtoClientWrapper$NewIdInfo;
    :catch_1
    move-exception v0

    .line 434
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v2, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v3, "updateToken exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 437
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/16 v2, 0x33

    iget-byte v3, p1, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->type:B

    if-ne v2, v3, :cond_2

    .line 438
    sget-object v2, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v3, "RESET_TYPE from server"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v2, p0, Lcom/netease/pushservice/PushServiceHelper;->m_serviceInfo:Lcom/netease/pushservice/PushServiceInfo;

    invoke-virtual {v2}, Lcom/netease/pushservice/PushServiceInfo;->resetUUID()V

    .line 440
    invoke-virtual {p0}, Lcom/netease/pushservice/PushServiceHelper;->refreshToken()V

    goto :goto_0

    .line 442
    :cond_2
    sget-object v2, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v3, "error cmd"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public processCommand(Lcom/netease/pushservice/PushService;Landroid/content/Intent;)V
    .locals 8
    .param p1, "pushService"    # Lcom/netease/pushservice/PushService;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 295
    sget-object v4, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v5, "processCommand"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    sget-object v4, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "pushService:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    sget-object v4, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "intent:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    if-nez p2, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    const-string v4, "method"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, "method":Ljava/lang/String;
    const-string v4, "package"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 303
    .local v3, "packageName":Ljava/lang/String;
    sget-object v4, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "method:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    sget-object v4, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "packageName:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v4, p0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    invoke-static {v4}, Lcom/netease/push/utils/PushSetting;->getCurNeedNiepush(Landroid/content/Context;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 306
    .local v2, "needNiepush":Ljava/lang/Boolean;
    sget-object v4, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "needNiepush="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const-string v4, "restart"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 308
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 309
    invoke-virtual {p1, v3}, Lcom/netease/pushservice/PushService;->restart(Ljava/lang/String;)V

    goto :goto_0

    .line 311
    :cond_2
    const-string v4, "stopservice"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 312
    invoke-virtual {p1}, Lcom/netease/pushservice/PushService;->stop()V

    goto :goto_0

    .line 313
    :cond_3
    const-string v4, "setsound"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 314
    const-string v4, "flag"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 315
    .local v0, "flag":Z
    invoke-direct {p0, v3, v0}, Lcom/netease/pushservice/PushServiceHelper;->enableSound(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 316
    .end local v0    # "flag":Z
    :cond_4
    const-string v4, "setvibrate"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 317
    const-string v4, "flag"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 318
    .restart local v0    # "flag":Z
    invoke-direct {p0, v3, v0}, Lcom/netease/pushservice/PushServiceHelper;->enableVibrate(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 319
    .end local v0    # "flag":Z
    :cond_5
    const-string v4, "setrepeatprotect"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 320
    const-string v4, "flag"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 321
    .restart local v0    # "flag":Z
    invoke-direct {p0, v3, v0}, Lcom/netease/pushservice/PushServiceHelper;->enableRepeatProtect(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 322
    .end local v0    # "flag":Z
    :cond_6
    const-string v4, "register"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 323
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 324
    iget-object v4, p0, Lcom/netease/pushservice/PushServiceHelper;->m_taskSubmitter:Lcom/netease/pushservice/PushServiceHelper$TaskSubmitter;

    new-instance v5, Lcom/netease/pushservice/PushServiceHelper$1;

    invoke-direct {v5, p0, v3}, Lcom/netease/pushservice/PushServiceHelper$1;-><init>(Lcom/netease/pushservice/PushServiceHelper;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/netease/pushservice/PushServiceHelper$TaskSubmitter;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto/16 :goto_0

    .line 331
    :cond_7
    const-string v4, "removeapp"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 332
    iget-object v4, p0, Lcom/netease/pushservice/PushServiceHelper;->m_taskSubmitter:Lcom/netease/pushservice/PushServiceHelper$TaskSubmitter;

    new-instance v5, Lcom/netease/pushservice/PushServiceHelper$2;

    invoke-direct {v5, p0, v3}, Lcom/netease/pushservice/PushServiceHelper$2;-><init>(Lcom/netease/pushservice/PushServiceHelper;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/netease/pushservice/PushServiceHelper$TaskSubmitter;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto/16 :goto_0

    .line 337
    :cond_8
    const-string v4, "networkconnect"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 338
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 339
    invoke-virtual {p0, v7}, Lcom/netease/pushservice/PushServiceHelper;->connect(Z)V

    goto/16 :goto_0

    .line 341
    :cond_9
    const-string v4, "networkdisconnect"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 342
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/netease/pushservice/PushServiceHelper;->disconnect()V

    goto/16 :goto_0

    .line 346
    :cond_a
    sget-object v4, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "not handled method:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public refreshToken()V
    .locals 8

    .prologue
    .line 269
    iget-object v5, p0, Lcom/netease/pushservice/PushServiceHelper;->m_serviceInfo:Lcom/netease/pushservice/PushServiceInfo;

    iget-object v4, v5, Lcom/netease/pushservice/PushServiceInfo;->mDevId:Ljava/lang/String;

    .line 270
    .local v4, "token":Ljava/lang/String;
    sget-object v5, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v6, "refreshToken"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    sget-object v5, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "token:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/netease/pushservice/PushServiceHelper;->m_serviceInfo:Lcom/netease/pushservice/PushServiceInfo;

    iget-object v7, v7, Lcom/netease/pushservice/PushServiceInfo;->mDevId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    sget-object v5, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "m_packageAppInfoMap.size():"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/netease/pushservice/PushServiceHelper;->m_packageAppInfoMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 274
    new-instance v2, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;

    invoke-direct {v2}, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;-><init>()V

    .line 275
    .local v2, "devServiceInfos":Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;
    iput-object v4, v2, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;->id:Ljava/lang/String;

    .line 276
    const-string v5, "18"

    iput-object v5, v2, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;->ver:Ljava/lang/String;

    .line 277
    invoke-static {}, Lcom/netease/push/utils/Crypto;->genAESKey()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;->key:Ljava/lang/String;

    .line 278
    iget-object v5, p0, Lcom/netease/pushservice/PushServiceHelper;->m_packageAppInfoMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    new-array v5, v5, [Lcom/netease/push/proto/ProtoClientWrapper$ServiceInfo;

    iput-object v5, v2, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;->serviceInfos:[Lcom/netease/push/proto/ProtoClientWrapper$ServiceInfo;

    .line 279
    const/4 v1, 0x0

    .line 280
    .local v1, "count":I
    iget-object v5, p0, Lcom/netease/pushservice/PushServiceHelper;->m_packageAppInfoMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 287
    sget-object v5, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v6, "sendData, LOGIN_TYPE"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-virtual {p0}, Lcom/netease/pushservice/PushServiceHelper;->getNetwork()Lcom/netease/pushservice/Network;

    move-result-object v5

    const/4 v6, 0x4

    iget-object v7, v2, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;->key:Ljava/lang/String;

    invoke-virtual {v5, v6, v2, v7}, Lcom/netease/pushservice/Network;->sendData(BLcom/netease/push/proto/ProtoClientWrapper$DataMarshal;Ljava/lang/String;)V

    .line 292
    .end local v1    # "count":I
    .end local v2    # "devServiceInfos":Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;
    :goto_1
    return-void

    .line 280
    .restart local v1    # "count":I
    .restart local v2    # "devServiceInfos":Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/push/utils/AppInfo;

    .line 281
    .local v0, "appInfo":Lcom/netease/push/utils/AppInfo;
    new-instance v3, Lcom/netease/push/proto/ProtoClientWrapper$ServiceInfo;

    invoke-direct {v3}, Lcom/netease/push/proto/ProtoClientWrapper$ServiceInfo;-><init>()V

    .line 282
    .local v3, "serviceInfo":Lcom/netease/push/proto/ProtoClientWrapper$ServiceInfo;
    iget-object v6, v0, Lcom/netease/push/utils/AppInfo;->mPackageName:Ljava/lang/String;

    iput-object v6, v3, Lcom/netease/push/proto/ProtoClientWrapper$ServiceInfo;->service:Ljava/lang/String;

    .line 283
    iget-wide v6, v0, Lcom/netease/push/utils/AppInfo;->mLastReceiveTime:J

    iput-wide v6, v3, Lcom/netease/push/proto/ProtoClientWrapper$ServiceInfo;->time:J

    .line 284
    iget-object v6, v2, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;->serviceInfos:[Lcom/netease/push/proto/ProtoClientWrapper$ServiceInfo;

    aput-object v3, v6, v1

    .line 285
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 290
    .end local v0    # "appInfo":Lcom/netease/push/utils/AppInfo;
    .end local v1    # "count":I
    .end local v2    # "devServiceInfos":Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;
    .end local v3    # "serviceInfo":Lcom/netease/push/proto/ProtoClientWrapper$ServiceInfo;
    :cond_1
    invoke-direct {p0}, Lcom/netease/pushservice/PushServiceHelper;->requireToken()V

    goto :goto_1
.end method

.method public removeApp(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 384
    sget-object v2, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v3, "removeApp"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    sget-object v2, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "packageName:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    sget-object v2, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pid:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v2, p0, Lcom/netease/pushservice/PushServiceHelper;->m_packageAppInfoMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/push/utils/AppInfo;

    .line 388
    .local v0, "appInfo":Lcom/netease/push/utils/AppInfo;
    if-eqz v0, :cond_0

    .line 389
    new-instance v1, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfo;

    invoke-direct {v1}, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfo;-><init>()V

    .line 390
    .local v1, "devServiceInfo":Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfo;
    iget-object v2, p0, Lcom/netease/pushservice/PushServiceHelper;->m_serviceInfo:Lcom/netease/pushservice/PushServiceInfo;

    iget-object v2, v2, Lcom/netease/pushservice/PushServiceInfo;->mDevId:Ljava/lang/String;

    iput-object v2, v1, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfo;->id:Ljava/lang/String;

    .line 391
    iget-object v2, v0, Lcom/netease/push/utils/AppInfo;->mPackageName:Ljava/lang/String;

    iput-object v2, v1, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfo;->service:Ljava/lang/String;

    .line 392
    iget-wide v2, v0, Lcom/netease/push/utils/AppInfo;->mLastReceiveTime:J

    iput-wide v2, v1, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfo;->time:J

    .line 393
    sget-object v2, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v3, "sendData, UNREGISTER_TYPE"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-virtual {p0}, Lcom/netease/pushservice/PushServiceHelper;->getNetwork()Lcom/netease/pushservice/Network;

    move-result-object v2

    const/4 v3, 0x7

    const-string v4, ""

    invoke-virtual {v2, v3, v1, v4}, Lcom/netease/pushservice/Network;->sendData(BLcom/netease/push/proto/ProtoClientWrapper$DataMarshal;Ljava/lang/String;)V

    .line 395
    iget-object v2, p0, Lcom/netease/pushservice/PushServiceHelper;->m_packageAppInfoMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    iget-object v2, p0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    iget-object v3, p0, Lcom/netease/pushservice/PushServiceHelper;->m_packageAppInfoMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/push/utils/PushSetting;->setPackages(Landroid/content/Context;Ljava/util/Set;)V

    .line 400
    .end local v1    # "devServiceInfo":Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfo;
    :goto_0
    return-void

    .line 398
    :cond_0
    sget-object v2, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v3, "appinfo is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 558
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v0, p0, Lcom/netease/pushservice/PushServiceHelper;->m_taskSubmitter:Lcom/netease/pushservice/PushServiceHelper$TaskSubmitter;

    invoke-virtual {v0}, Lcom/netease/pushservice/PushServiceHelper$TaskSubmitter;->shutdown()V

    .line 560
    invoke-virtual {p0}, Lcom/netease/pushservice/PushServiceHelper;->getNetwork()Lcom/netease/pushservice/Network;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pushservice/Network;->stop()V

    .line 561
    return-void
.end method
