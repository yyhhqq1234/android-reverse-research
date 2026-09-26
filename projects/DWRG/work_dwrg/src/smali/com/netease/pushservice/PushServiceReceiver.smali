.class public Lcom/netease/pushservice/PushServiceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PushServiceReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NGPush_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/netease/pushservice/PushServiceReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/pushservice/PushServiceReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private patchPlaceholder()V
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lcom/netease/pushservice/PushServiceReceiver;->TAG:Ljava/lang/String;

    const-class v1, Lcom/netease/ntunisdk/base/PatchPlaceholder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 53
    sget-object v22, Lcom/netease/pushservice/PushServiceReceiver;->TAG:Ljava/lang/String;

    const-string v23, "onReceive"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    sget-object v22, Lcom/netease/pushservice/PushServiceReceiver;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "intent:"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    if-nez p2, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "action":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 60
    .local v8, "contextpkg":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/netease/push/utils/PushSetting;->checkWriteLocation(Landroid/content/Context;)V

    .line 61
    invoke-static/range {p1 .. p1}, Lcom/netease/push/utils/PushSetting;->getCurPkg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    .line 62
    .local v17, "runningpkg":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/netease/push/utils/PushSetting;->getCurVerCode(Landroid/content/Context;)I

    move-result v18

    .line 63
    .local v18, "runningver":I
    sget-object v22, Lcom/netease/pushservice/PushServiceReceiver;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "action:"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    sget-object v22, Lcom/netease/pushservice/PushServiceReceiver;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "contextpkg:"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    sget-object v22, Lcom/netease/pushservice/PushServiceReceiver;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "runningpkg:"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    sget-object v22, Lcom/netease/pushservice/PushServiceReceiver;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "runningver:"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-string v22, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 70
    const-string v22, "android.intent.extra.REPLACING"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 71
    .local v4, "bReplace":Z
    sget-object v22, Lcom/netease/pushservice/PushServiceReceiver;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "bReplace:"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    if-nez v4, :cond_7

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v16

    .line 74
    .local v16, "removePackageName":Ljava/lang/String;
    sget-object v22, Lcom/netease/pushservice/PushServiceReceiver;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "removePackageName:"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 76
    const-string v22, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushSetting;->setCurPkg(Landroid/content/Context;Ljava/lang/String;)V

    .line 77
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushSetting;->setCurVerCode(Landroid/content/Context;I)V

    .line 79
    :cond_2
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 80
    invoke-static/range {p1 .. p1}, Lcom/netease/push/utils/VersionManager;->getNewestInstallVersion(Landroid/content/Context;)Lcom/netease/push/utils/VersionManager$VersionInfo;

    move-result-object v21

    .line 81
    .local v21, "versionInfo":Lcom/netease/push/utils/VersionManager$VersionInfo;
    if-eqz v21, :cond_3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/netease/push/utils/VersionManager$VersionInfo;->mPackageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_3

    .line 82
    sget-object v22, Lcom/netease/pushservice/PushServiceReceiver;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "mNeedNiepush:"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/netease/push/utils/VersionManager$VersionInfo;->mNeedNiepush:Ljava/lang/Boolean;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/netease/push/utils/VersionManager$VersionInfo;->mNeedNiepush:Ljava/lang/Boolean;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushSetting;->setCurNeedNiepush(Landroid/content/Context;Z)V

    .line 85
    :cond_3
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 86
    .local v15, "removeIntent":Landroid/content/Intent;
    const-string v22, "com.netease.push.action.service.METHOD"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string v22, "method"

    const-string v23, "removeapp"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string v22, "package"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    sget-object v22, Lcom/netease/pushservice/PushServiceReceiver;->TAG:Ljava/lang/String;

    const-string v23, "SERVICE_METHOD_REMOVEAPP"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/netease/pushservice/PushServiceHelper;->startPushService(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 94
    .end local v15    # "removeIntent":Landroid/content/Intent;
    .end local v21    # "versionInfo":Lcom/netease/push/utils/VersionManager$VersionInfo;
    :cond_4
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 95
    move-object v14, v8

    .line 96
    .local v14, "pkgToStart":Ljava/lang/String;
    const/16 v20, 0x12

    .line 98
    .local v20, "verToStart":I
    const/4 v11, 0x0

    .line 99
    .local v11, "needNiepush":Z
    invoke-static/range {p1 .. p1}, Lcom/netease/push/utils/VersionManager;->getNewestInstallVersion(Landroid/content/Context;)Lcom/netease/push/utils/VersionManager$VersionInfo;

    move-result-object v21

    .line 100
    .restart local v21    # "versionInfo":Lcom/netease/push/utils/VersionManager$VersionInfo;
    if-eqz v21, :cond_5

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/netease/push/utils/VersionManager$VersionInfo;->mPackageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_5

    .line 101
    move-object/from16 v0, v21

    iget-object v14, v0, Lcom/netease/push/utils/VersionManager$VersionInfo;->mPackageName:Ljava/lang/String;

    .line 102
    move-object/from16 v0, v21

    iget v0, v0, Lcom/netease/push/utils/VersionManager$VersionInfo;->mVersionCode:I

    move/from16 v20, v0

    .line 103
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/netease/push/utils/VersionManager$VersionInfo;->mNeedNiepush:Ljava/lang/Boolean;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 104
    sget-object v22, Lcom/netease/pushservice/PushServiceReceiver;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "pkgToStart:"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    sget-object v22, Lcom/netease/pushservice/PushServiceReceiver;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "verToStart:"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    sget-object v22, Lcom/netease/pushservice/PushServiceReceiver;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "needNiepush:"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_5
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 109
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/netease/push/utils/PushSetting;->setCurPkg(Landroid/content/Context;Ljava/lang/String;)V

    .line 110
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushSetting;->setCurVerCode(Landroid/content/Context;I)V

    .line 111
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/netease/push/utils/PushSetting;->setCurNeedNiepush(Landroid/content/Context;Z)V

    .line 112
    move-object/from16 v17, v14

    .line 113
    move/from16 v18, v20

    .line 114
    sget-object v22, Lcom/netease/pushservice/PushServiceReceiver;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "runningpkg:"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    sget-object v22, Lcom/netease/pushservice/PushServiceReceiver;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "runningver:"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-static/range {p1 .. p1}, Lcom/netease/push/utils/PushSetting;->getPackages(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v13

    .line 117
    .local v13, "packageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v13, :cond_6

    .line 118
    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 119
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/netease/push/utils/PushSetting;->setPackages(Landroid/content/Context;Ljava/util/Set;)V

    .line 122
    :cond_6
    invoke-static {}, Lcom/netease/pushservice/PushServiceHelper;->createServiceIntent()Landroid/content/Intent;

    move-result-object v19

    .line 123
    .local v19, "startIntent":Landroid/content/Intent;
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    sget-object v22, Lcom/netease/pushservice/PushServiceReceiver;->TAG:Ljava/lang/String;

    const-string v23, "PACKAGE_REMOVED, startService"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 131
    .end local v4    # "bReplace":Z
    .end local v11    # "needNiepush":Z
    .end local v13    # "packageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v14    # "pkgToStart":Ljava/lang/String;
    .end local v16    # "removePackageName":Ljava/lang/String;
    .end local v19    # "startIntent":Landroid/content/Intent;
    .end local v20    # "verToStart":I
    .end local v21    # "versionInfo":Lcom/netease/push/utils/VersionManager$VersionInfo;
    :cond_7
    const/4 v5, 0x0

    .line 132
    .local v5, "bSpecial":Z
    const-string v22, "com.netease.push.action.service.METHOD"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 133
    const-string v22, "method"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 134
    .local v10, "method":Ljava/lang/String;
    const-string v22, "stopservice"

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_8

    const-string v22, "restart"

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 135
    :cond_8
    const/4 v5, 0x1

    .line 138
    .end local v10    # "method":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_a

    if-nez v5, :cond_a

    .line 139
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/netease/push/utils/VersionManager;->isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 140
    sget-object v22, Lcom/netease/pushservice/PushServiceReceiver;->TAG:Ljava/lang/String;

    const-string v23, "service of latest version is already running"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 145
    :cond_a
    const-string v22, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 151
    invoke-static {}, Lcom/netease/pushservice/PushServiceHelper;->createServiceIntent()Landroid/content/Intent;

    move-result-object v19

    .line 152
    .restart local v19    # "startIntent":Landroid/content/Intent;
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    sget-object v22, Lcom/netease/pushservice/PushServiceReceiver;->TAG:Ljava/lang/String;

    const-string v23, "BOOT_COMPLETED, startService"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 155
    .end local v19    # "startIntent":Landroid/content/Intent;
    :cond_b
    const-string v22, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_c

    const-string v22, "android.net.wifi.STATE_CHANGE"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 156
    :cond_c
    const-string v22, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 157
    .local v7, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v12

    .line 158
    .local v12, "networkInfo":Landroid/net/NetworkInfo;
    const/4 v9, 0x0

    .line 159
    .local v9, "intentMethodName":Ljava/lang/String;
    if-eqz v12, :cond_e

    .line 160
    sget-object v22, Lcom/netease/pushservice/PushServiceReceiver;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "Network Type:"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    sget-object v22, Lcom/netease/pushservice/PushServiceReceiver;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "Network State:"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v22

    if-eqz v22, :cond_d

    .line 163
    sget-object v22, Lcom/netease/pushservice/PushServiceReceiver;->TAG:Ljava/lang/String;

    const-string v23, "Network change connected"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const-string v9, "networkconnect"

    .line 172
    :goto_1
    if-eqz v9, :cond_0

    .line 173
    invoke-static {}, Lcom/netease/pushservice/PushServiceHelper;->createActiveMethodIntent()Landroid/content/Intent;

    move-result-object v6

    .line 174
    .local v6, "connectIntent":Landroid/content/Intent;
    const-string v22, "method"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    sget-object v22, Lcom/netease/pushservice/PushServiceReceiver;->TAG:Ljava/lang/String;

    const-string v23, "CONNECTIVITY_CHANGE, startService"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    sget-object v22, Lcom/netease/pushservice/PushServiceReceiver;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "intentMethodName:"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/netease/pushservice/PushServiceHelper;->startActivePushService(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 166
    .end local v6    # "connectIntent":Landroid/content/Intent;
    :cond_d
    sget-object v22, Lcom/netease/pushservice/PushServiceReceiver;->TAG:Ljava/lang/String;

    const-string v23, "Network change disconnected"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 169
    :cond_e
    sget-object v22, Lcom/netease/pushservice/PushServiceReceiver;->TAG:Ljava/lang/String;

    const-string v23, "Network change unavailable"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v9, "networkdisconnect"

    goto :goto_1

    .line 180
    .end local v7    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v9    # "intentMethodName":Ljava/lang/String;
    .end local v12    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_f
    const-string v22, "com.netease.push.action.service.METHOD"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_10

    .line 181
    sget-object v22, Lcom/netease/pushservice/PushServiceReceiver;->TAG:Ljava/lang/String;

    const-string v23, "SERVICE_ACTION_METHOD, startPushService"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-static/range {p1 .. p2}, Lcom/netease/pushservice/PushServiceHelper;->startPushService(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 184
    :cond_10
    sget-object v22, Lcom/netease/pushservice/PushServiceReceiver;->TAG:Ljava/lang/String;

    const-string v23, "action other, startPushService"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-static/range {p1 .. p2}, Lcom/netease/pushservice/PushServiceHelper;->startPushService(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
