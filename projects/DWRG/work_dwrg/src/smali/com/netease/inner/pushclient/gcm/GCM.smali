.class public Lcom/netease/inner/pushclient/gcm/GCM;
.super Ljava/lang/Object;
.source "GCM.java"


# static fields
.field public static final EXTRA_MESSAGE:Ljava/lang/String; = "message"

.field private static final GCM_SUCCESS:I = 0x0

.field private static final PLAY_SERVICES_RESOLUTION_REQUEST:I = 0x2328

.field private static final PROPERTY_APP_VERSION:Ljava/lang/String; = "appVersion"

.field public static final PROPERTY_REG_ID:Ljava/lang/String; = "registration_id"

.field private static final TAG:Ljava/lang/String;

.field private static s_inst:Lcom/netease/inner/pushclient/gcm/GCM;


# instance fields
.field private m_ctx:Landroid/content/Context;

.field m_gcm:Ljava/lang/Object;

.field m_regid:Ljava/lang/String;

.field m_senderID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NGPush_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/netease/inner/pushclient/gcm/GCM;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/inner/pushclient/gcm/GCM;->TAG:Ljava/lang/String;

    .line 38
    new-instance v0, Lcom/netease/inner/pushclient/gcm/GCM;

    invoke-direct {v0}, Lcom/netease/inner/pushclient/gcm/GCM;-><init>()V

    sput-object v0, Lcom/netease/inner/pushclient/gcm/GCM;->s_inst:Lcom/netease/inner/pushclient/gcm/GCM;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/inner/pushclient/gcm/GCM;->m_senderID:Ljava/lang/String;

    .line 21
    return-void
.end method

.method static synthetic access$0(Lcom/netease/inner/pushclient/gcm/GCM;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/netease/inner/pushclient/gcm/GCM;->m_ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/netease/inner/pushclient/gcm/GCM;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/netease/inner/pushclient/gcm/GCM;)V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/netease/inner/pushclient/gcm/GCM;->storeRegistrationID()V

    return-void
.end method

.method static synthetic access$3(Lcom/netease/inner/pushclient/gcm/GCM;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/netease/inner/pushclient/gcm/GCM;->broadcastRegid(Ljava/lang/String;)V

    return-void
.end method

.method private broadcastRegid(Ljava/lang/String;)V
    .locals 4
    .param p1, "regid"    # Ljava/lang/String;

    .prologue
    .line 175
    invoke-static {}, Lcom/netease/inner/pushclient/PushClientReceiver;->createNewIDIntent()Landroid/content/Intent;

    move-result-object v0

    .line 176
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "devid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    iget-object v1, p0, Lcom/netease/inner/pushclient/gcm/GCM;->m_ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    sget-object v1, Lcom/netease/inner/pushclient/gcm/GCM;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "broadcastRegid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v1, p0, Lcom/netease/inner/pushclient/gcm/GCM;->m_ctx:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 180
    return-void
.end method

.method private checkPlayServices()Z
    .locals 16

    .prologue
    .line 189
    :try_start_0
    const-string v12, "com.google.android.gms.common.GooglePlayServicesUtil"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 190
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v12, "isGooglePlayServicesAvailable"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Landroid/content/Context;

    aput-object v15, v13, v14

    invoke-virtual {v2, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 191
    .local v5, "method":Ljava/lang/reflect/Method;
    const/4 v12, 0x0

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/netease/inner/pushclient/gcm/GCM;->m_ctx:Landroid/content/Context;

    aput-object v15, v13, v14

    invoke-virtual {v5, v12, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 192
    .local v8, "result":Ljava/lang/Object;
    check-cast v8, Ljava/lang/Integer;

    .end local v8    # "result":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 195
    .local v11, "resultCode":I
    if-eqz v11, :cond_1

    .line 196
    const-string v12, "isUserRecoverableError"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Ljava/lang/Integer;

    aput-object v15, v13, v14

    invoke-virtual {v2, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 197
    .local v6, "method1":Ljava/lang/reflect/Method;
    const/4 v12, 0x0

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v6, v12, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 198
    .local v9, "result1":Ljava/lang/Object;
    move-object v0, v9

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v0

    .line 199
    .local v1, "bResult1":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 200
    const-string v12, "getErrorDialog"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Ljava/lang/Integer;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-class v15, Landroid/app/Activity;

    aput-object v15, v13, v14

    const/4 v14, 0x2

    const-class v15, Ljava/lang/Integer;

    aput-object v15, v13, v14

    invoke-virtual {v2, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 201
    .local v7, "method2":Ljava/lang/reflect/Method;
    const/4 v13, 0x0

    const/4 v12, 0x3

    new-array v14, v12, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v12

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/netease/inner/pushclient/gcm/GCM;->m_ctx:Landroid/content/Context;

    check-cast v12, Landroid/app/Activity;

    aput-object v12, v14, v15

    const/4 v12, 0x2

    const/16 v15, 0x2328

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v12

    invoke-virtual {v7, v13, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 202
    .local v10, "result2":Ljava/lang/Object;
    move-object v0, v10

    check-cast v0, Landroid/app/Dialog;

    move-object v3, v0

    .line 203
    .local v3, "dialog":Landroid/app/Dialog;
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 214
    .end local v3    # "dialog":Landroid/app/Dialog;
    .end local v7    # "method2":Ljava/lang/reflect/Method;
    .end local v10    # "result2":Ljava/lang/Object;
    :goto_0
    const/4 v12, 0x0

    .line 225
    .end local v1    # "bResult1":Ljava/lang/Boolean;
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "method1":Ljava/lang/reflect/Method;
    .end local v9    # "result1":Ljava/lang/Object;
    .end local v11    # "resultCode":I
    :goto_1
    return v12

    .line 205
    .restart local v1    # "bResult1":Ljava/lang/Boolean;
    .restart local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "method":Ljava/lang/reflect/Method;
    .restart local v6    # "method1":Ljava/lang/reflect/Method;
    .restart local v9    # "result1":Ljava/lang/Object;
    .restart local v11    # "resultCode":I
    :cond_0
    sget-object v12, Lcom/netease/inner/pushclient/gcm/GCM;->TAG:Ljava/lang/String;

    const-string v13, "This device is not supported."

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 216
    .end local v1    # "bResult1":Ljava/lang/Boolean;
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "method1":Ljava/lang/reflect/Method;
    .end local v9    # "result1":Ljava/lang/Object;
    .end local v11    # "resultCode":I
    :catch_0
    move-exception v4

    .line 217
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v12, Lcom/netease/inner/pushclient/gcm/GCM;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "InvocationTargetException error:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 219
    new-instance v12, Ljava/lang/RuntimeException;

    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 221
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v4

    .line 222
    .local v4, "e":Ljava/lang/Exception;
    sget-object v12, Lcom/netease/inner/pushclient/gcm/GCM;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "checkPlayServices error:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 225
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v12, 0x1

    goto :goto_1
.end method

.method private static getAppVersion(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 108
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 109
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not get package name: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    const-class v0, Lcom/netease/inner/pushclient/gcm/GCM;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getInst()Lcom/netease/inner/pushclient/gcm/GCM;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/netease/inner/pushclient/gcm/GCM;->s_inst:Lcom/netease/inner/pushclient/gcm/GCM;

    return-object v0
.end method

.method private getRegistrationID()Ljava/lang/String;
    .locals 7

    .prologue
    .line 74
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/inner/pushclient/gcm/GCM;->m_ctx:Landroid/content/Context;

    const-string v6, "gcm"

    invoke-virtual {v4, v5, v6}, Lcom/netease/inner/pushclient/PushManager;->getRegistrationID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "regid":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 76
    sget-object v4, Lcom/netease/inner/pushclient/gcm/GCM;->TAG:Ljava/lang/String;

    const-string v5, "regid is empty"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const-string v2, ""

    .line 89
    .end local v2    # "regid":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 82
    .restart local v2    # "regid":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/netease/inner/pushclient/gcm/GCM;->m_ctx:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/netease/inner/pushclient/gcm/GCM;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 83
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "appVersion"

    const/high16 v5, -0x80000000

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 84
    .local v3, "registeredVersion":I
    iget-object v4, p0, Lcom/netease/inner/pushclient/gcm/GCM;->m_ctx:Landroid/content/Context;

    invoke-static {v4}, Lcom/netease/inner/pushclient/gcm/GCM;->getAppVersion(Landroid/content/Context;)I

    move-result v0

    .line 85
    .local v0, "currentVersion":I
    if-eq v3, v0, :cond_0

    .line 86
    sget-object v4, Lcom/netease/inner/pushclient/gcm/GCM;->TAG:Ljava/lang/String;

    const-string v5, "App version changed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-string v2, ""

    goto :goto_0
.end method

.method private patchPlaceholder()V
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lcom/netease/inner/pushclient/gcm/GCM;->TAG:Ljava/lang/String;

    const-class v1, Lcom/netease/ntunisdk/base/PatchPlaceholder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void
.end method

.method private registerInBackground()V
    .locals 2

    .prologue
    .line 122
    sget-object v0, Lcom/netease/inner/pushclient/gcm/GCM;->TAG:Ljava/lang/String;

    const-string v1, "registerInBackground"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    new-instance v0, Lcom/netease/inner/pushclient/gcm/GCM$1;

    invoke-direct {v0, p0}, Lcom/netease/inner/pushclient/gcm/GCM$1;-><init>(Lcom/netease/inner/pushclient/gcm/GCM;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 160
    invoke-virtual {v0, v1}, Lcom/netease/inner/pushclient/gcm/GCM$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 161
    return-void
.end method

.method private storeRegistrationID()V
    .locals 7

    .prologue
    .line 164
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/inner/pushclient/gcm/GCM;->m_ctx:Landroid/content/Context;

    const-string v5, "gcm"

    iget-object v6, p0, Lcom/netease/inner/pushclient/gcm/GCM;->m_regid:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/netease/inner/pushclient/PushManager;->setRegistrationID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v3, p0, Lcom/netease/inner/pushclient/gcm/GCM;->m_ctx:Landroid/content/Context;

    invoke-static {v3}, Lcom/netease/inner/pushclient/gcm/GCM;->getAppVersion(Landroid/content/Context;)I

    move-result v0

    .line 166
    .local v0, "appVersion":I
    sget-object v3, Lcom/netease/inner/pushclient/gcm/GCM;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Saving regid on app version "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v3, p0, Lcom/netease/inner/pushclient/gcm/GCM;->m_ctx:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/netease/inner/pushclient/gcm/GCM;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 168
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 169
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "registration_id"

    iget-object v4, p0, Lcom/netease/inner/pushclient/gcm/GCM;->m_regid:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 170
    const-string v3, "appVersion"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 171
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 172
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 49
    sget-object v0, Lcom/netease/inner/pushclient/gcm/GCM;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iput-object p1, p0, Lcom/netease/inner/pushclient/gcm/GCM;->m_ctx:Landroid/content/Context;

    .line 51
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v0

    const-string v1, "gcm"

    invoke-virtual {v0, p1, v1}, Lcom/netease/inner/pushclient/PushManager;->getSenderID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/inner/pushclient/gcm/GCM;->m_senderID:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/netease/inner/pushclient/gcm/GCM;->m_senderID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lcom/netease/inner/pushclient/gcm/GCM;->TAG:Ljava/lang/String;

    const-string v1, "Sender ID is empty, call PushManager.setSenderID() first"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-direct {p0}, Lcom/netease/inner/pushclient/gcm/GCM;->checkPlayServices()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    invoke-direct {p0}, Lcom/netease/inner/pushclient/gcm/GCM;->registerInBackground()V

    goto :goto_0

    .line 61
    :cond_1
    sget-object v0, Lcom/netease/inner/pushclient/gcm/GCM;->TAG:Ljava/lang/String;

    const-string v1, "No valid Google Play Services APK found."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
