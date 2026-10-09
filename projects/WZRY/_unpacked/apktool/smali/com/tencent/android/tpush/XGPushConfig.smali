.class public Lcom/tencent/android/tpush/XGPushConfig;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/jg/JgClassChecked;
    author = 0x1
    fComment = "\u786e\u8ba4\u5df2\u8fdb\u884c\u5b89\u5168\u6821\u9a8c"
    lastDate = "20150316"
    reviewer = 0x3
    vComment = {
        .enum Lcom/jg/EType;->RECEIVERCHECK:Lcom/jg/EType;,
        .enum Lcom/jg/EType;->INTENTCHECK:Lcom/jg/EType;
    }
.end annotation


# static fields
.field public static final TPUSH_ACCESS_ID:Ljava/lang/String; = "XG_V2_ACCESS_ID"

.field public static final TPUSH_ACCESS_KEY:Ljava/lang/String; = "XG_V2_ACCESS_KEY"

.field private static final a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:J

.field private static e:Ljava/lang/String;

.field public static enableDebug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const-class v0, Lcom/tencent/android/tpush/XGPushConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/XGPushConfig;->a:Ljava/lang/String;

    .line 35
    const-string v0, ""

    sput-object v0, Lcom/tencent/android/tpush/XGPushConfig;->b:Ljava/lang/String;

    .line 36
    const-string v0, ""

    sput-object v0, Lcom/tencent/android/tpush/XGPushConfig;->c:Ljava/lang/String;

    .line 37
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/tencent/android/tpush/XGPushConfig;->d:J

    .line 127
    const-string v0, ""

    sput-object v0, Lcom/tencent/android/tpush/XGPushConfig;->e:Ljava/lang/String;

    .line 208
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableDebug(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 219
    if-eqz p0, :cond_0

    .line 220
    sput-boolean p1, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    .line 221
    invoke-static {}, Lcom/tencent/android/tpush/common/g;->a()Lcom/tencent/android/tpush/common/g;

    move-result-object v0

    new-instance v1, Lcom/tencent/android/tpush/t;

    invoke-direct {v1, p1, p0}, Lcom/tencent/android/tpush/t;-><init>(ZLandroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/common/g;->a(Ljava/lang/Runnable;)Z

    .line 244
    :cond_0
    return-void
.end method

.method public static declared-synchronized getAccessId(Landroid/content/Context;)J
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    .line 49
    const-class v2, Lcom/tencent/android/tpush/XGPushConfig;

    monitor-enter v2

    if-nez p0, :cond_0

    .line 50
    :try_start_0
    sget-wide v0, Lcom/tencent/android/tpush/XGPushConfig;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :goto_0
    monitor-exit v2

    return-wide v0

    .line 52
    :cond_0
    :try_start_1
    sget-wide v0, Lcom/tencent/android/tpush/XGPushConfig;->d:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_1

    .line 53
    sget-wide v0, Lcom/tencent/android/tpush/XGPushConfig;->d:J

    goto :goto_0

    .line 55
    :cond_1
    invoke-static {p0}, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->checkTpnsSecurityLibSo(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 56
    sget-wide v0, Lcom/tencent/android/tpush/XGPushConfig;->d:J

    goto :goto_0

    .line 58
    :cond_2
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_3

    .line 62
    const-string v1, "XG_V2_ACCESS_ID"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_3

    .line 64
    invoke-static {v0}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 66
    :try_start_2
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/android/tpush/XGPushConfig;->d:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    :cond_3
    :goto_1
    :try_start_3
    sget-wide v0, Lcom/tencent/android/tpush/XGPushConfig;->d:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_4

    .line 75
    const-string v0, "XG_V2_ACCESS_ID"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/tencent/android/tpush/common/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 77
    if-eqz v0, :cond_4

    .line 79
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/android/tpush/XGPushConfig;->d:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 87
    :cond_4
    :goto_2
    :try_start_5
    sget-wide v0, Lcom/tencent/android/tpush/XGPushConfig;->d:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_5

    .line 88
    const-string v0, "TPush"

    const-string v1, "accessId\u6ca1\u6709\u521d\u59cb\u5316"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_5
    sget-wide v0, Lcom/tencent/android/tpush/XGPushConfig;->d:J

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    const-wide/16 v4, -0x1

    sput-wide v4, Lcom/tencent/android/tpush/XGPushConfig;->d:J

    .line 70
    sget-object v1, Lcom/tencent/android/tpush/XGPushConfig;->a:Ljava/lang/String;

    const-string v3, "get accessId error"

    invoke-static {v1, v3, v0}, Lcom/tencent/android/tpush/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 80
    :catch_1
    move-exception v0

    .line 81
    :try_start_6
    const-string v1, "TPush"

    const-string v3, "get accessId from getMetaData failed: "

    invoke-static {v1, v3, v0}, Lcom/tencent/android/tpush/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/tencent/android/tpush/XGPushConfig;->d:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method

.method public static declared-synchronized getAccessKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 139
    const-class v1, Lcom/tencent/android/tpush/XGPushConfig;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/tencent/android/tpush/XGPushConfig;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/android/tpush/service/e/h;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 140
    sget-object v0, Lcom/tencent/android/tpush/XGPushConfig;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :cond_0
    :goto_0
    monitor-exit v1

    return-object v0

    .line 142
    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->checkTpnsSecurityLibSo(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_2

    .line 148
    const-string v2, "XG_V2_ACCESS_KEY"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-static {v0}, Lcom/tencent/android/tpush/service/e/h;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 150
    invoke-static {v0}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/XGPushConfig;->e:Ljava/lang/String;

    .line 153
    :cond_2
    sget-object v0, Lcom/tencent/android/tpush/XGPushConfig;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/e/h;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 154
    const-string v0, "XG_V2_ACCESS_KEY"

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lcom/tencent/android/tpush/common/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_3

    .line 157
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/XGPushConfig;->e:Ljava/lang/String;

    .line 160
    :cond_3
    sget-object v0, Lcom/tencent/android/tpush/XGPushConfig;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/e/h;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 161
    sget-object v0, Lcom/tencent/android/tpush/XGPushConfig;->a:Ljava/lang/String;

    const-string v2, "accessKey is null"

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_4
    sget-object v0, Lcom/tencent/android/tpush/XGPushConfig;->e:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getAccessidList(Landroid/content/Context;)Ljava/util/List;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 261
    if-nez p0, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-object v0

    .line 264
    :cond_1
    invoke-static {p0}, Lcom/tencent/android/tpush/XGPushConfig;->getAccessId(Landroid/content/Context;)J

    move-result-wide v2

    .line 265
    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 266
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_2
    invoke-static {p0}, Lcom/tencent/android/tpush/XGPush4Msdk;->getQQAccessId(Landroid/content/Context;)J

    move-result-wide v2

    .line 269
    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    .line 270
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_3
    const-string v1, "XG_V2_ACCESS_ID"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/tencent/android/tpush/common/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 273
    if-eqz v1, :cond_0

    .line 275
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 276
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 277
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 279
    :catch_0
    move-exception v1

    .line 280
    sget-object v2, Lcom/tencent/android/tpush/XGPushConfig;->a:Ljava/lang/String;

    const-string v3, "get accessId from getMetaData failed: "

    invoke-static {v2, v3, v1}, Lcom/tencent/android/tpush/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getGameServer(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    sget-object v0, Lcom/tencent/android/tpush/XGPushConfig;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstallChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    sget-object v0, Lcom/tencent/android/tpush/XGPushConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static getReportDebugMode(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".report.mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/tencent/android/tpush/common/n;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 335
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static getToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 201
    if-nez p0, :cond_0

    .line 202
    const-string v0, "TPush"

    const-string v1, "null context"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const/4 v0, 0x0

    .line 205
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isEnableDebug(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.tencent.android.tpush.debug,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/tencent/android/tpush/common/n;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static setAccessId(Landroid/content/Context;J)V
    .locals 3

    .prologue
    .line 103
    if-nez p0, :cond_0

    .line 104
    sget-object v0, Lcom/tencent/android/tpush/XGPushConfig;->a:Ljava/lang/String;

    const-string v1, "null  context"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :goto_0
    return-void

    .line 107
    :cond_0
    sput-wide p1, Lcom/tencent/android/tpush/XGPushConfig;->d:J

    .line 108
    invoke-static {}, Lcom/tencent/android/tpush/common/g;->a()Lcom/tencent/android/tpush/common/g;

    move-result-object v0

    new-instance v1, Lcom/tencent/android/tpush/r;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/android/tpush/r;-><init>(Landroid/content/Context;J)V

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/common/g;->a(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static setAccessKey(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 177
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 178
    :cond_0
    const-string v0, "TPush"

    const-string v1, "null context or null accessKey"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :goto_0
    return-void

    .line 181
    :cond_1
    sput-object p1, Lcom/tencent/android/tpush/XGPushConfig;->e:Ljava/lang/String;

    .line 182
    invoke-static {}, Lcom/tencent/android/tpush/common/g;->a()Lcom/tencent/android/tpush/common/g;

    move-result-object v0

    new-instance v1, Lcom/tencent/android/tpush/s;

    invoke-direct {v1, p0, p1}, Lcom/tencent/android/tpush/s;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/common/g;->a(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static setGCMSenderId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 347
    invoke-static {p0, p1}, Lcom/tencent/android/tpush/c/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 348
    return-void
.end method

.method public static setGameServer(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 298
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    sput-object p1, Lcom/tencent/android/tpush/XGPushConfig;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setHeartbeatIntervalMs(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 311
    if-eqz p0, :cond_0

    const/16 v0, 0x1388

    if-lt p1, v0, :cond_0

    const v0, 0x1b7740

    if-ge p1, v0, :cond_0

    .line 316
    :try_start_0
    const-string v0, "com.tencent.android.xg.wx.HeartbeatIntervalMs"

    invoke-static {p0, v0, p1}, Lcom/tencent/android/tpush/service/e/g;->b(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 320
    :catch_0
    move-exception v0

    .line 321
    sget-object v1, Lcom/tencent/android/tpush/XGPushConfig;->a:Ljava/lang/String;

    const-string v2, "setHeartbeatIntervalMs"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setInstallChannel(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 287
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    sput-object p1, Lcom/tencent/android/tpush/XGPushConfig;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setMiPushAppId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 339
    invoke-static {p0, p1}, Lcom/tencent/android/tpush/c/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method public static setMiPushAppKey(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 343
    invoke-static {p0, p1}, Lcom/tencent/android/tpush/c/a;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 344
    return-void
.end method

.method public static setReportDebugMode(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 326
    if-eqz p0, :cond_0

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".report.mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v1, v0}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 330
    :cond_0
    return-void

    .line 327
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
