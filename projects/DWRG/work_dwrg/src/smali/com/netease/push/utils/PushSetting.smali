.class public Lcom/netease/push/utils/PushSetting;
.super Ljava/lang/Object;
.source "PushSetting.java"


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "neteasepush"

.field private static final KEY_APPID:Ljava/lang/String; = "appid"

.field private static final KEY_APPKEY:Ljava/lang/String; = "appkey"

.field private static final KEY_FIRST_START:Ljava/lang/String; = "firststart"

.field private static final KEY_PUSHNAMES:Ljava/lang/String; = "pushnames"

.field private static final KEY_RECEIVETIME:Ljava/lang/String; = "receivetime"

.field private static final KEY_REGISTRATION_ID:Ljava/lang/String; = "registrationid"

.field private static final KEY_REPEAT_PROTECT:Ljava/lang/String; = "repeatprotect"

.field private static final KEY_SENDER_ID:Ljava/lang/String; = "senderid"

.field private static final KEY_SERVICE_TYPE:Ljava/lang/String; = "servicetype"

.field private static final KEY_SOUND:Ljava/lang/String; = "sound"

.field private static final KEY_VERCODE:Ljava/lang/String; = "vercode"

.field private static final KEY_VIBRATE:Ljava/lang/String; = "vibrate"

.field public static final PERMISSION_REQ_CODE:I = 0x0

.field private static final SEPARATOR:Ljava/lang/String; = ","

.field private static final SYSTEM_CUR_NEED_NIEPUSH:Ljava/lang/String; = "com.netease.push.curneedniepush"

.field private static final SYSTEM_CUR_PACKAGE:Ljava/lang/String; = "com.netease.push.curpkg"

.field private static final SYSTEM_CUR_VERCODE:Ljava/lang/String; = "com.netease.push.curvercode"

.field private static final SYSTEM_DEV_ID:Ljava/lang/String; = "com.netease.push.devid"

.field private static final SYSTEM_HEAD:Ljava/lang/String; = "com.netease.push."

.field private static final SYSTEM_PACKAGES:Ljava/lang/String; = "com.netease.push.packages"

.field private static final SYSTEM_PUSH_ADDR:Ljava/lang/String; = "com.netease.push.pushaddr"

.field private static final TAG:Ljava/lang/String;

.field private static write_setting:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NGPush_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/netease/push/utils/PushSetting;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/push/utils/PushSetting;->TAG:Ljava/lang/String;

    .line 53
    const/4 v0, 0x1

    sput-boolean v0, Lcom/netease/push/utils/PushSetting;->write_setting:Z

    .line 609
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkPermission(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0x17

    .line 90
    sget-boolean v3, Lcom/netease/push/utils/PushSetting;->write_setting:Z

    if-nez v3, :cond_1

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v2, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 92
    .local v2, "targetSdkVersion":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 93
    .local v1, "osVersion":I
    if-lt v2, v4, :cond_0

    if-ge v1, v4, :cond_1

    .line 94
    :cond_0
    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 96
    :try_start_0
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 97
    sget-object v3, Lcom/netease/push/utils/PushSetting;->TAG:Ljava/lang/String;

    const-string v4, "requestPermissions success"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void

    .line 98
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 99
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v3, Lcom/netease/push/utils/PushSetting;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "requestPermissions failed:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static final checkWriteLocation(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0x17

    const/4 v3, 0x0

    .line 71
    const/4 v2, 0x1

    sput-boolean v2, Lcom/netease/push/utils/PushSetting;->write_setting:Z

    .line 78
    const-string v2, "android.permission.WRITE_SETTINGS"

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    sput-boolean v3, Lcom/netease/push/utils/PushSetting;->write_setting:Z

    .line 81
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v1, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 82
    .local v1, "targetSdkVersion":I
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 83
    .local v0, "osVersion":I
    if-lt v1, v4, :cond_1

    if-lt v0, v4, :cond_1

    .line 84
    sput-boolean v3, Lcom/netease/push/utils/PushSetting;->write_setting:Z

    .line 86
    :cond_1
    sget-object v2, Lcom/netease/push/utils/PushSetting;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "write_setting:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/netease/push/utils/PushSetting;->write_setting:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method

.method public static final delNativeNotification(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pushName"    # Ljava/lang/String;

    .prologue
    .line 539
    sget-object v2, Lcom/netease/push/utils/PushSetting;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "delNativeNotification, pushName:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/netease/push/utils/PushSetting;->getFileShared(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 542
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    if-nez v1, :cond_0

    .line 550
    .end local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 545
    .restart local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 546
    .end local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 547
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/netease/push/utils/PushSetting;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static final getAllOtherNativeNotifications(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/netease/inner/pushclient/NativePushData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 572
    const/4 v3, 0x0

    .line 574
    .local v3, "nativePushDatas":Ljava/util/List;, "Ljava/util/List<Lcom/netease/inner/pushclient/NativePushData;>;"
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/netease/push/utils/PushSetting;->getFileShared(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 575
    .local v7, "sharedPreferences":Landroid/content/SharedPreferences;
    if-nez v7, :cond_0

    move-object v4, v3

    .line 601
    .end local v3    # "nativePushDatas":Ljava/util/List;, "Ljava/util/List<Lcom/netease/inner/pushclient/NativePushData;>;"
    .end local v7    # "sharedPreferences":Landroid/content/SharedPreferences;
    .local v4, "nativePushDatas":Ljava/util/List;, "Ljava/util/List<Lcom/netease/inner/pushclient/NativePushData;>;"
    :goto_0
    return-object v4

    .line 578
    .end local v4    # "nativePushDatas":Ljava/util/List;, "Ljava/util/List<Lcom/netease/inner/pushclient/NativePushData;>;"
    .restart local v3    # "nativePushDatas":Ljava/util/List;, "Ljava/util/List<Lcom/netease/inner/pushclient/NativePushData;>;"
    .restart local v7    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 579
    .end local v3    # "nativePushDatas":Ljava/util/List;, "Ljava/util/List<Lcom/netease/inner/pushclient/NativePushData;>;"
    .restart local v4    # "nativePushDatas":Ljava/util/List;, "Ljava/util/List<Lcom/netease/inner/pushclient/NativePushData;>;"
    :try_start_1
    invoke-static {p0}, Lcom/netease/push/utils/PushSetting;->getNativePushNames(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v6

    .line 580
    .local v6, "pushSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v8, Lcom/netease/push/utils/PushSetting;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getNativePushNames, pushSet:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_2

    move-object v3, v4

    .end local v4    # "nativePushDatas":Ljava/util/List;, "Ljava/util/List<Lcom/netease/inner/pushclient/NativePushData;>;"
    .end local v6    # "pushSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "sharedPreferences":Landroid/content/SharedPreferences;
    .restart local v3    # "nativePushDatas":Ljava/util/List;, "Ljava/util/List<Lcom/netease/inner/pushclient/NativePushData;>;"
    :goto_2
    move-object v4, v3

    .line 601
    .end local v3    # "nativePushDatas":Ljava/util/List;, "Ljava/util/List<Lcom/netease/inner/pushclient/NativePushData;>;"
    .restart local v4    # "nativePushDatas":Ljava/util/List;, "Ljava/util/List<Lcom/netease/inner/pushclient/NativePushData;>;"
    goto :goto_0

    .line 581
    .restart local v6    # "pushSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v7    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 582
    .local v5, "pushName":Ljava/lang/String;
    const-string v9, ""

    invoke-interface {v7, v5, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 583
    .local v0, "data":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v9

    if-nez v9, :cond_1

    .line 586
    const/4 v2, 0x0

    .line 588
    .local v2, "nativePushData":Lcom/netease/inner/pushclient/NativePushData;
    :try_start_2
    invoke-static {v5, v0}, Lcom/netease/inner/pushclient/NativePushData;->readFromJsonString(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/inner/pushclient/NativePushData;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    .line 593
    :goto_3
    if-eqz v2, :cond_1

    .line 594
    :try_start_3
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 597
    .end local v0    # "data":Ljava/lang/String;
    .end local v2    # "nativePushData":Lcom/netease/inner/pushclient/NativePushData;
    .end local v5    # "pushName":Ljava/lang/String;
    .end local v6    # "pushSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 598
    .end local v4    # "nativePushDatas":Ljava/util/List;, "Ljava/util/List<Lcom/netease/inner/pushclient/NativePushData;>;"
    .end local v7    # "sharedPreferences":Landroid/content/SharedPreferences;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v3    # "nativePushDatas":Ljava/util/List;, "Ljava/util/List<Lcom/netease/inner/pushclient/NativePushData;>;"
    :goto_4
    sget-object v8, Lcom/netease/push/utils/PushSetting;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 589
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "nativePushDatas":Ljava/util/List;, "Ljava/util/List<Lcom/netease/inner/pushclient/NativePushData;>;"
    .restart local v0    # "data":Ljava/lang/String;
    .restart local v2    # "nativePushData":Lcom/netease/inner/pushclient/NativePushData;
    .restart local v4    # "nativePushDatas":Ljava/util/List;, "Ljava/util/List<Lcom/netease/inner/pushclient/NativePushData;>;"
    .restart local v5    # "pushName":Ljava/lang/String;
    .restart local v6    # "pushSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v7    # "sharedPreferences":Landroid/content/SharedPreferences;
    :catch_1
    move-exception v1

    .line 590
    .local v1, "e":Lorg/json/JSONException;
    :try_start_4
    sget-object v9, Lcom/netease/push/utils/PushSetting;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    .line 597
    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "nativePushData":Lcom/netease/inner/pushclient/NativePushData;
    .end local v4    # "nativePushDatas":Ljava/util/List;, "Ljava/util/List<Lcom/netease/inner/pushclient/NativePushData;>;"
    .end local v5    # "pushName":Ljava/lang/String;
    .end local v6    # "pushSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "sharedPreferences":Landroid/content/SharedPreferences;
    .restart local v3    # "nativePushDatas":Ljava/util/List;, "Ljava/util/List<Lcom/netease/inner/pushclient/NativePushData;>;"
    :catch_2
    move-exception v1

    goto :goto_4
.end method

.method public static final getAppID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceType"    # Ljava/lang/String;

    .prologue
    .line 635
    invoke-static {p0}, Lcom/netease/push/utils/PushSetting;->getCurShared(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "appid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getAppInfo(Landroid/content/Context;)Lcom/netease/push/utils/AppInfo;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 435
    if-eqz p0, :cond_0

    .line 436
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netease/push/utils/PushSetting;->getAppInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/push/utils/AppInfo;

    move-result-object v0

    .line 438
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getAppInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/push/utils/AppInfo;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 442
    new-instance v0, Lcom/netease/push/utils/AppInfo;

    invoke-direct {v0, p1}, Lcom/netease/push/utils/AppInfo;-><init>(Ljava/lang/String;)V

    .line 444
    .local v0, "appInfo":Lcom/netease/push/utils/AppInfo;
    :try_start_0
    invoke-static {p0, p1}, Lcom/netease/push/utils/PushSetting;->getFileShared(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 445
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    if-nez v2, :cond_0

    .line 457
    .end local v2    # "sharedPreferences":Landroid/content/SharedPreferences;
    :goto_0
    return-object v0

    .line 448
    .restart local v2    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    const-string v3, "sound"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v0, Lcom/netease/push/utils/AppInfo;->mbEnableSound:Z

    .line 449
    const-string v3, "vibrate"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v0, Lcom/netease/push/utils/AppInfo;->mbEnableVibrate:Z

    .line 450
    const-string v3, "receivetime"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/netease/push/utils/AppInfo;->mLastReceiveTime:J

    .line 451
    const-string v3, "repeatprotect"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v0, Lcom/netease/push/utils/AppInfo;->mbRepeatProtect:Z

    .line 452
    const-string v3, "firststart"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v0, Lcom/netease/push/utils/AppInfo;->mbFirstStart:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 453
    .end local v2    # "sharedPreferences":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .line 454
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/netease/push/utils/PushSetting;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static final getAppKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceType"    # Ljava/lang/String;

    .prologue
    .line 643
    invoke-static {p0}, Lcom/netease/push/utils/PushSetting;->getCurShared(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "appkey"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getCurNeedNiepush(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 240
    const-string v2, "com.netease.push.curneedniepush"

    invoke-static {p0}, Lcom/netease/push/utils/PushSetting;->getMultiProcessShared(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "com.netease.push.curneedniepush"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {p0, v2, v3}, Lcom/netease/push/utils/PushSetting;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 241
    .local v0, "need":Z
    :goto_0
    return v0

    .end local v0    # "need":Z
    :cond_0
    move v0, v1

    .line 240
    goto :goto_0
.end method

.method public static final getCurPkg(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 220
    const-string v1, "com.netease.push.curpkg"

    invoke-static {p0}, Lcom/netease/push/utils/PushSetting;->getMultiProcessShared(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "com.netease.push.curpkg"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/netease/push/utils/PushSetting;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "curPkgString":Ljava/lang/String;
    return-object v0
.end method

.method private static final getCurShared(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 622
    const-string v1, "neteasepush"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 623
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    return-object v0
.end method

.method public static final getCurVerCode(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 230
    const-string v1, "com.netease.push.curvercode"

    invoke-static {p0}, Lcom/netease/push/utils/PushSetting;->getMultiProcessShared(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "com.netease.push.curvercode"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/netease/push/utils/PushSetting;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 231
    .local v0, "verCode":I
    return v0
.end method

.method public static final getDevId(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 193
    sget-object v1, Lcom/netease/push/utils/PushSetting;->TAG:Ljava/lang/String;

    const-string v2, "getDevId"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    sget-object v1, Lcom/netease/push/utils/PushSetting;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "context:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-string v1, "com.netease.push.devid"

    invoke-static {p0}, Lcom/netease/push/utils/PushSetting;->getMultiProcessShared(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "com.netease.push.devid"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/netease/push/utils/PushSetting;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "devid":Ljava/lang/String;
    return-object v0
.end method

.method private static final getFileShared(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 280
    const/4 v1, 0x0

    .line 282
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    :try_start_0
    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 283
    sget-object v3, Lcom/netease/push/utils/PushSetting;->TAG:Ljava/lang/String;

    const-string v4, "write external storage"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    new-instance v2, Lcom/netease/push/utils/MySharedPreferences;

    invoke-direct {v2, p1}, Lcom/netease/push/utils/MySharedPreferences;-><init>(Ljava/lang/String;)V

    .end local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    move-object v1, v2

    .line 292
    .end local v2    # "sharedPreferences":Landroid/content/SharedPreferences;
    .restart local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    :goto_0
    return-object v1

    .line 286
    :cond_0
    const-string v3, "neteasepush"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/netease/push/utils/PushSetting;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I

    .prologue
    .line 149
    invoke-static {p0}, Lcom/netease/push/utils/PushSetting;->checkPermission(Landroid/content/Context;)V

    .line 150
    const/4 v1, 0x0

    .line 151
    .local v1, "ret":I
    sget-boolean v3, Lcom/netease/push/utils/PushSetting;->write_setting:Z

    if-eqz v3, :cond_0

    .line 152
    sget-object v3, Lcom/netease/push/utils/PushSetting;->TAG:Ljava/lang/String;

    const-string v4, "Settings.System.getInt"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 165
    :goto_0
    return v1

    .line 155
    :cond_0
    sget-object v3, Lcom/netease/push/utils/PushSetting;->TAG:Ljava/lang/String;

    const-string v4, "FileUtils.read"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/netease/push/utils/FileUtils;->read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "strRet":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/netease/push/utils/PushSetting;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    move v1, p2

    goto :goto_0
.end method

.method private static final getMultiProcessShared(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v9, 0xb

    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v5, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 170
    .local v5, "targetSdkVersion":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 171
    .local v3, "osVersion":I
    sget-object v6, Lcom/netease/push/utils/PushSetting;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "targetSdkVersion:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    sget-object v6, Lcom/netease/push/utils/PushSetting;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "osVersion:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v4, 0x0

    .line 174
    .local v4, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 175
    .local v0, "appCtx":Landroid/content/Context;
    const/4 v2, 0x4

    .line 176
    .local v2, "mode":I
    if-lt v5, v9, :cond_0

    if-ge v3, v9, :cond_1

    .line 177
    :cond_0
    const/4 v2, 0x0

    .line 180
    :cond_1
    if-eqz v0, :cond_2

    .line 181
    :try_start_0
    const-string v6, "neteasepush"

    invoke-virtual {v0, v6, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 189
    :goto_0
    return-object v4

    .line 183
    :cond_2
    const-string v6, "neteasepush"

    invoke-virtual {p0, v6, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 185
    :catch_0
    move-exception v1

    .line 186
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/netease/push/utils/PushSetting;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static final getNativeNotification(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/inner/pushclient/NativePushData;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pushName"    # Ljava/lang/String;

    .prologue
    .line 553
    const/4 v2, 0x0

    .line 555
    .local v2, "nativePushData":Lcom/netease/inner/pushclient/NativePushData;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/netease/push/utils/PushSetting;->getFileShared(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 556
    .local v4, "sharedPreferences":Landroid/content/SharedPreferences;
    if-nez v4, :cond_0

    move-object v3, v2

    .line 568
    .end local v2    # "nativePushData":Lcom/netease/inner/pushclient/NativePushData;
    .end local v4    # "sharedPreferences":Landroid/content/SharedPreferences;
    .local v3, "nativePushData":Lcom/netease/inner/pushclient/NativePushData;
    :goto_0
    return-object v3

    .line 559
    .end local v3    # "nativePushData":Lcom/netease/inner/pushclient/NativePushData;
    .restart local v2    # "nativePushData":Lcom/netease/inner/pushclient/NativePushData;
    .restart local v4    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    const-string v5, ""

    invoke-interface {v4, p1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 560
    .local v0, "data":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v3, v2

    .line 561
    .end local v2    # "nativePushData":Lcom/netease/inner/pushclient/NativePushData;
    .restart local v3    # "nativePushData":Lcom/netease/inner/pushclient/NativePushData;
    goto :goto_0

    .line 563
    .end local v3    # "nativePushData":Lcom/netease/inner/pushclient/NativePushData;
    .restart local v2    # "nativePushData":Lcom/netease/inner/pushclient/NativePushData;
    :cond_1
    invoke-static {p1, v0}, Lcom/netease/inner/pushclient/NativePushData;->readFromJsonString(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/inner/pushclient/NativePushData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v0    # "data":Ljava/lang/String;
    .end local v4    # "sharedPreferences":Landroid/content/SharedPreferences;
    :goto_1
    move-object v3, v2

    .line 568
    .end local v2    # "nativePushData":Lcom/netease/inner/pushclient/NativePushData;
    .restart local v3    # "nativePushData":Lcom/netease/inner/pushclient/NativePushData;
    goto :goto_0

    .line 564
    .end local v3    # "nativePushData":Lcom/netease/inner/pushclient/NativePushData;
    .restart local v2    # "nativePushData":Lcom/netease/inner/pushclient/NativePushData;
    :catch_0
    move-exception v1

    .line 565
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/netease/push/utils/PushSetting;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static final getNativePushNames(Landroid/content/Context;)Ljava/util/Set;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 464
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 466
    .local v3, "pushSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/netease/push/utils/PushSetting;->getFileShared(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 467
    .local v5, "sharedPreferences":Landroid/content/SharedPreferences;
    if-nez v5, :cond_0

    move-object v4, v3

    .line 481
    .end local v3    # "pushSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "sharedPreferences":Landroid/content/SharedPreferences;
    .local v4, "pushSet":Ljava/lang/Object;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    return-object v4

    .line 470
    .end local v4    # "pushSet":Ljava/lang/Object;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v3    # "pushSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    const-string v6, "pushnames"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 471
    .local v2, "pushNames":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v4, v3

    .line 472
    .restart local v4    # "pushSet":Ljava/lang/Object;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_0

    .line 474
    .end local v4    # "pushSet":Ljava/lang/Object;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    const-string v6, ","

    invoke-static {v2, v6}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 475
    .local v1, "pushNameStrings":[Ljava/lang/String;
    new-instance v3, Ljava/util/TreeSet;

    .end local v3    # "pushSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "pushNameStrings":[Ljava/lang/String;
    .end local v2    # "pushNames":Ljava/lang/String;
    .end local v5    # "sharedPreferences":Landroid/content/SharedPreferences;
    .restart local v3    # "pushSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_1
    move-object v4, v3

    .line 481
    .restart local v4    # "pushSet":Ljava/lang/Object;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_0

    .line 476
    .end local v3    # "pushSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "pushSet":Ljava/lang/Object;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 477
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/netease/push/utils/PushSetting;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 479
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .restart local v3    # "pushSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_1
.end method

.method public static final getPackages(Landroid/content/Context;)Ljava/util/Set;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    invoke-static {p0}, Lcom/netease/push/utils/PushSetting;->getMultiProcessShared(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "com.netease.push.packages"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, "packages":Ljava/lang/String;
    const-string v4, "com.netease.push.packages"

    invoke-static {p0, v4, v2}, Lcom/netease/push/utils/PushSetting;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 252
    .local v3, "packagesName":Ljava/lang/String;
    sget-object v4, Lcom/netease/push/utils/PushSetting;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " getPackages:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " packages:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 254
    const/4 v1, 0x0

    .line 258
    :goto_0
    return-object v1

    .line 256
    :cond_0
    const-string v4, ","

    invoke-static {v3, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "packageNameStrings":[Ljava/lang/String;
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 258
    .local v1, "packageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_0
.end method

.method public static final getPushAddr(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 208
    const-string v1, "com.netease.push.pushaddr"

    invoke-static {p0}, Lcom/netease/push/utils/PushSetting;->getMultiProcessShared(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "com.netease.push.pushaddr"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/netease/push/utils/PushSetting;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "pushAddr":Ljava/lang/String;
    return-object v0
.end method

.method public static final getReceiveTime(Landroid/content/Context;)J
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 406
    const-wide/16 v2, 0x0

    .line 408
    .local v2, "recvTime":J
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/netease/push/utils/PushSetting;->getFileShared(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 409
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    if-nez v1, :cond_0

    move-wide v4, v2

    .line 418
    .end local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v2    # "recvTime":J
    .local v4, "recvTime":J
    :goto_0
    return-wide v4

    .line 412
    .end local v4    # "recvTime":J
    .restart local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    .restart local v2    # "recvTime":J
    :cond_0
    const-string v6, "receivetime"

    const-wide/16 v8, 0x0

    invoke-interface {v1, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .end local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    :goto_1
    move-wide v4, v2

    .line 418
    .end local v2    # "recvTime":J
    .restart local v4    # "recvTime":J
    goto :goto_0

    .line 413
    .end local v4    # "recvTime":J
    .restart local v2    # "recvTime":J
    :catch_0
    move-exception v0

    .line 414
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/netease/push/utils/PushSetting;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 416
    const-wide/16 v2, 0x0

    goto :goto_1
.end method

.method public static final getRegistrationID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceType"    # Ljava/lang/String;

    .prologue
    .line 651
    invoke-static {p0}, Lcom/netease/push/utils/PushSetting;->getCurShared(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "registrationid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getSenderID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceType"    # Ljava/lang/String;

    .prologue
    .line 627
    invoke-static {p0}, Lcom/netease/push/utils/PushSetting;->getCurShared(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "senderid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getServiceType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 296
    const-string v1, "niepush"

    .line 298
    .local v1, "serviceType":Ljava/lang/String;
    :try_start_0
    invoke-static {p0, p1}, Lcom/netease/push/utils/PushSetting;->getFileShared(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 299
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    if-nez v3, :cond_0

    move-object v2, v1

    .line 308
    .end local v1    # "serviceType":Ljava/lang/String;
    .end local v3    # "sharedPreferences":Landroid/content/SharedPreferences;
    .local v2, "serviceType":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 302
    .end local v2    # "serviceType":Ljava/lang/String;
    .restart local v1    # "serviceType":Ljava/lang/String;
    .restart local v3    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    const-string v4, "servicetype"

    const-string v5, "niepush"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .end local v3    # "sharedPreferences":Landroid/content/SharedPreferences;
    :goto_1
    move-object v2, v1

    .line 308
    .end local v1    # "serviceType":Ljava/lang/String;
    .restart local v2    # "serviceType":Ljava/lang/String;
    goto :goto_0

    .line 303
    .end local v2    # "serviceType":Ljava/lang/String;
    .restart local v1    # "serviceType":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/netease/push/utils/PushSetting;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 306
    const-string v1, "niepush"

    goto :goto_1
.end method

.method private static getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-static {p0}, Lcom/netease/push/utils/PushSetting;->checkPermission(Landroid/content/Context;)V

    .line 121
    move-object v0, p2

    .line 122
    .local v0, "ret":Ljava/lang/String;
    sget-boolean v1, Lcom/netease/push/utils/PushSetting;->write_setting:Z

    if-eqz v1, :cond_1

    .line 123
    sget-object v1, Lcom/netease/push/utils/PushSetting;->TAG:Ljava/lang/String;

    const-string v2, "Settings.System.getString"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    if-nez v0, :cond_0

    .line 126
    move-object v0, p2

    .line 132
    :cond_0
    :goto_0
    return-object v0

    .line 129
    :cond_1
    sget-object v1, Lcom/netease/push/utils/PushSetting;->TAG:Ljava/lang/String;

    const-string v2, "FileUtils.read"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-static {p1, p2}, Lcom/netease/push/utils/FileUtils;->read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final getVerCode(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 325
    const/4 v2, 0x0

    .line 327
    .local v2, "verCode":I
    :try_start_0
    invoke-static {p0, p1}, Lcom/netease/push/utils/PushSetting;->getFileShared(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 328
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    if-nez v1, :cond_0

    move v3, v2

    .line 337
    .end local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v2    # "verCode":I
    .local v3, "verCode":I
    :goto_0
    return v3

    .line 331
    .end local v3    # "verCode":I
    .restart local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    .restart local v2    # "verCode":I
    :cond_0
    const-string v4, "vercode"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    :goto_1
    move v3, v2

    .line 337
    .end local v2    # "verCode":I
    .restart local v3    # "verCode":I
    goto :goto_0

    .line 332
    .end local v3    # "verCode":I
    .restart local v2    # "verCode":I
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/netease/push/utils/PushSetting;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 335
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private patchPlaceholder()V
    .locals 2

    .prologue
    .line 67
    sget-object v0, Lcom/netease/push/utils/PushSetting;->TAG:Ljava/lang/String;

    const-class v1, Lcom/netease/ntunisdk/base/PatchPlaceholder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method

.method private static putInt(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 136
    invoke-static {p0}, Lcom/netease/push/utils/PushSetting;->checkPermission(Landroid/content/Context;)V

    .line 137
    const/4 v0, 0x1

    .line 138
    .local v0, "ret":Z
    sget-boolean v1, Lcom/netease/push/utils/PushSetting;->write_setting:Z

    if-eqz v1, :cond_0

    .line 139
    sget-object v1, Lcom/netease/push/utils/PushSetting;->TAG:Ljava/lang/String;

    const-string v2, "Settings.System.putInt"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 145
    :goto_0
    return v0

    .line 142
    :cond_0
    sget-object v1, Lcom/netease/push/utils/PushSetting;->TAG:Ljava/lang/String;

    const-string v2, "FileUtils.write"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/netease/push/utils/FileUtils;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-static {p0}, Lcom/netease/push/utils/PushSetting;->checkPermission(Landroid/content/Context;)V

    .line 108
    const/4 v0, 0x1

    .line 109
    .local v0, "ret":Z
    sget-boolean v1, Lcom/netease/push/utils/PushSetting;->write_setting:Z

    if-eqz v1, :cond_0

    .line 110
    sget-object v1, Lcom/netease/push/utils/PushSetting;->TAG:Ljava/lang/String;

    const-string v2, "Settings.System.putString"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 116
    :goto_0
    return v0

    .line 113
    :cond_0
    sget-object v1, Lcom/netease/push/utils/PushSetting;->TAG:Ljava/lang/String;

    const-string v2, "FileUtils.write"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-static {p1, p2}, Lcom/netease/push/utils/FileUtils;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static final rmAllNativePushNames(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 512
    sget-object v2, Lcom/netease/push/utils/PushSetting;->TAG:Ljava/lang/String;

    const-string v3, "rmAllNativePushNames"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-static {p0}, Lcom/netease/push/utils/PushSetting;->getNativePushNames(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    .line 514
    .local v1, "pushSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 517
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 518
    invoke-static {p0, v1}, Lcom/netease/push/utils/PushSetting;->setNativePushNames(Landroid/content/Context;Ljava/util/Set;)V

    .line 519
    return-void

    .line 514
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 515
    .local v0, "pushName":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/netease/push/utils/PushSetting;->delNativeNotification(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final rmNativePushName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pushName"    # Ljava/lang/String;

    .prologue
    .line 502
    sget-object v1, Lcom/netease/push/utils/PushSetting;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rmNativePushNames, pushName:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-static {p0}, Lcom/netease/push/utils/PushSetting;->getNativePushNames(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 504
    .local v0, "pushSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 505
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 506
    invoke-static {p0, p1}, Lcom/netease/push/utils/PushSetting;->delNativeNotification(Landroid/content/Context;Ljava/lang/String;)V

    .line 507
    invoke-static {p0, v0}, Lcom/netease/push/utils/PushSetting;->setNativePushNames(Landroid/content/Context;Ljava/util/Set;)V

    .line 509
    :cond_0
    return-void
.end method

.method public static final setAppID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceType"    # Ljava/lang/String;
    .param p2, "appID"    # Ljava/lang/String;

    .prologue
    .line 639
    invoke-static {p0}, Lcom/netease/push/utils/PushSetting;->getCurShared(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "appid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 640
    return-void
.end method

.method public static final setAppKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceType"    # Ljava/lang/String;
    .param p2, "appKey"    # Ljava/lang/String;

    .prologue
    .line 647
    invoke-static {p0}, Lcom/netease/push/utils/PushSetting;->getCurShared(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "appkey"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 648
    return-void
.end method

.method public static final setCurNeedNiepush(Landroid/content/Context;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bNeedNiepush"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 245
    invoke-static {p0}, Lcom/netease/push/utils/PushSetting;->getMultiProcessShared(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "com.netease.push.curneedniepush"

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 246
    const-string v0, "com.netease.push.curneedniepush"

    if-eqz p1, :cond_1

    :goto_1
    invoke-static {p0, v0, v1}, Lcom/netease/push/utils/PushSetting;->putInt(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 247
    return-void

    :cond_0
    move v0, v2

    .line 245
    goto :goto_0

    :cond_1
    move v1, v2

    .line 246
    goto :goto_1
.end method

.method public static final setCurPkg(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 225
    invoke-static {p0}, Lcom/netease/push/utils/PushSetting;->getMultiProcessShared(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.netease.push.curpkg"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 226
    const-string v0, "com.netease.push.curpkg"

    invoke-static {p0, v0, p1}, Lcom/netease/push/utils/PushSetting;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 227
    return-void
.end method

.method public static final setCurVerCode(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "verCode"    # I

    .prologue
    .line 235
    invoke-static {p0}, Lcom/netease/push/utils/PushSetting;->getMultiProcessShared(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.netease.push.curvercode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 236
    const-string v0, "com.netease.push.curvercode"

    invoke-static {p0, v0, p1}, Lcom/netease/push/utils/PushSetting;->putInt(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 237
    return-void
.end method

.method public static final setDevId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "devid"    # Ljava/lang/String;

    .prologue
    .line 200
    sget-object v0, Lcom/netease/push/utils/PushSetting;->TAG:Ljava/lang/String;

    const-string v1, "setDevId"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    sget-object v0, Lcom/netease/push/utils/PushSetting;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "context:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    sget-object v0, Lcom/netease/push/utils/PushSetting;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "devid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-static {p0}, Lcom/netease/push/utils/PushSetting;->getMultiProcessShared(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.netease.push.devid"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 204
    const-string v0, "com.netease.push.devid"

    invoke-static {p0, v0, p1}, Lcom/netease/push/utils/PushSetting;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 205
    return-void
.end method

.method public static final setFirstStart(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flag"    # Z

    .prologue
    .line 355
    :try_start_0
    invoke-static {p0, p1}, Lcom/netease/push/utils/PushSetting;->getFileShared(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 356
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    if-nez v1, :cond_0

    .line 364
    .end local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 359
    .restart local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "firststart"

    invoke-interface {v2, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 360
    .end local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/netease/push/utils/PushSetting;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static final setNativeNotification(Landroid/content/Context;Lcom/netease/inner/pushclient/NativePushData;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nativePushData"    # Lcom/netease/inner/pushclient/NativePushData;

    .prologue
    const/4 v3, 0x0

    .line 522
    sget-object v4, Lcom/netease/push/utils/PushSetting;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "setNativeNotification, pushName:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netease/inner/pushclient/NativePushData;->getPushName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/netease/push/utils/PushSetting;->getFileShared(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 525
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    if-nez v2, :cond_0

    .line 535
    .end local v2    # "sharedPreferences":Landroid/content/SharedPreferences;
    :goto_0
    return v3

    .line 528
    .restart local v2    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    invoke-virtual {p1}, Lcom/netease/inner/pushclient/NativePushData;->writeToJsonString()Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, "data":Ljava/lang/String;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-virtual {p1}, Lcom/netease/inner/pushclient/NativePushData;->getPushName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    const/4 v3, 0x1

    goto :goto_0

    .line 531
    .end local v0    # "data":Ljava/lang/String;
    .end local v2    # "sharedPreferences":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .line 532
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/netease/push/utils/PushSetting;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static final setNativePushNames(Landroid/content/Context;Ljava/util/Set;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 485
    .local p1, "pushSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v4, Lcom/netease/push/utils/PushSetting;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "setNativePushNames, pushSet:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v4

    new-array v1, v4, [Ljava/lang/String;

    .line 488
    .local v1, "pushNameStrings":[Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 489
    const-string v4, ","

    invoke-static {v4, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 490
    .local v2, "sPushNames":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/netease/push/utils/PushSetting;->getFileShared(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 491
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    if-nez v3, :cond_0

    .line 499
    .end local v1    # "pushNameStrings":[Ljava/lang/String;
    .end local v2    # "sPushNames":Ljava/lang/String;
    .end local v3    # "sharedPreferences":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 494
    .restart local v1    # "pushNameStrings":[Ljava/lang/String;
    .restart local v2    # "sPushNames":Ljava/lang/String;
    .restart local v3    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "pushnames"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 495
    .end local v1    # "pushNameStrings":[Ljava/lang/String;
    .end local v2    # "sPushNames":Ljava/lang/String;
    .end local v3    # "sharedPreferences":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 496
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/netease/push/utils/PushSetting;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static final setPackages(Landroid/content/Context;Ljava/util/Set;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 262
    .local p1, "packagesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 263
    .local v0, "packageNameStrings":[Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 264
    const-string v2, ","

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, "sPackages":Ljava/lang/String;
    invoke-static {p0}, Lcom/netease/push/utils/PushSetting;->getMultiProcessShared(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "com.netease.push.packages"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 266
    const-string v2, "com.netease.push.packages"

    invoke-static {p0, v2, v1}, Lcom/netease/push/utils/PushSetting;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 267
    sget-object v2, Lcom/netease/push/utils/PushSetting;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " setPackages:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    return-void
.end method

.method public static final setPushAddr(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pushAddr"    # Ljava/lang/String;

    .prologue
    .line 213
    invoke-static {p0}, Lcom/netease/push/utils/PushSetting;->getMultiProcessShared(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.netease.push.pushaddr"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 214
    const-string v0, "com.netease.push.pushaddr"

    invoke-static {p0, v0, p1}, Lcom/netease/push/utils/PushSetting;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    sget-object v0, Lcom/netease/push/utils/PushSetting;->TAG:Ljava/lang/String;

    const-string v1, "set push addr failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_0
    return-void
.end method

.method public static final setReceiveTime(Landroid/content/Context;J)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiveTime"    # J

    .prologue
    .line 423
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/netease/push/utils/PushSetting;->getFileShared(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 424
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    if-nez v1, :cond_0

    .line 432
    .end local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 427
    .restart local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "receivetime"

    invoke-interface {v2, v3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 428
    .end local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/netease/push/utils/PushSetting;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static final setRegistrationID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceType"    # Ljava/lang/String;
    .param p2, "regid"    # Ljava/lang/String;

    .prologue
    .line 655
    invoke-static {p0}, Lcom/netease/push/utils/PushSetting;->getCurShared(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "registrationid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 656
    return-void
.end method

.method public static final setRepeatProtect(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # Z

    .prologue
    .line 394
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/netease/push/utils/PushSetting;->getFileShared(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 395
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    if-nez v1, :cond_0

    .line 403
    .end local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 398
    .restart local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "repeatprotect"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 399
    .end local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 400
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/netease/push/utils/PushSetting;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static final setSenderID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceType"    # Ljava/lang/String;
    .param p2, "senderID"    # Ljava/lang/String;

    .prologue
    .line 631
    invoke-static {p0}, Lcom/netease/push/utils/PushSetting;->getCurShared(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "senderid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 632
    return-void
.end method

.method public static final setServiceType(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 313
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/netease/push/utils/PushSetting;->getFileShared(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 314
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    if-nez v1, :cond_0

    .line 322
    .end local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 317
    .restart local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "servicetype"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 318
    .end local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/netease/push/utils/PushSetting;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static final setSound(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # Z

    .prologue
    .line 368
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/netease/push/utils/PushSetting;->getFileShared(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 369
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    if-nez v1, :cond_0

    .line 377
    .end local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 372
    .restart local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "sound"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 373
    .end local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/netease/push/utils/PushSetting;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static final setVerCode(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "verCode"    # I

    .prologue
    .line 342
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/netease/push/utils/PushSetting;->getFileShared(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 343
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    if-nez v1, :cond_0

    .line 351
    .end local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 346
    .restart local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "vercode"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 347
    .end local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 348
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/netease/push/utils/PushSetting;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static final setVibrate(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # Z

    .prologue
    .line 381
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/netease/push/utils/PushSetting;->getFileShared(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 382
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    if-nez v1, :cond_0

    .line 390
    .end local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 385
    .restart local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "vibrate"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 386
    .end local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/netease/push/utils/PushSetting;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
