.class public Lcom/tencent/android/tpush/XGPush4Msdk;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:J

.field private static b:J

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 32
    sput-wide v0, Lcom/tencent/android/tpush/XGPush4Msdk;->a:J

    .line 34
    sput-wide v0, Lcom/tencent/android/tpush/XGPush4Msdk;->b:J

    .line 36
    const-string v0, ""

    sput-object v0, Lcom/tencent/android/tpush/XGPush4Msdk;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    invoke-static {p0}, Lcom/tencent/android/tpush/XGPush4Msdk;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(JJJ)Z
    .locals 2

    .prologue
    .line 80
    cmp-long v0, p0, p2

    if-ltz v0, :cond_0

    cmp-long v0, p0, p4

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static addLocalNotification(Landroid/content/Context;Lcom/tencent/android/tpush/XGLocalMessage;)J
    .locals 4

    .prologue
    .line 276
    sget-boolean v0, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v0, :cond_0

    .line 277
    const-string v0, "XG_MSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addLocalNotification:msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",qqAppid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/tencent/android/tpush/XGPush4Msdk;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",xg_accessid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/tencent/android/tpush/XGPush4Msdk;->getQQAccessId(Landroid/content/Context;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_0
    invoke-static {p0}, Lcom/tencent/android/tpush/XGPush4Msdk;->getQQAccessId(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/tencent/android/tpush/XGPushManager;->a(Landroid/content/Context;Lcom/tencent/android/tpush/XGLocalMessage;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "XG_DEBUG_SERVER_INFO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static deleteTag(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 203
    sget-boolean v0, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v0, :cond_0

    .line 204
    const-string v0, "XG_MSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteTag: tagName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",qqAppid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/tencent/android/tpush/XGPush4Msdk;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",xg_accessid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/tencent/android/tpush/XGPush4Msdk;->getQQAccessId(Landroid/content/Context;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_0
    const/4 v0, 0x2

    invoke-static {p0}, Lcom/tencent/android/tpush/XGPush4Msdk;->getQQAccessId(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {p0, p1, v0, v2, v3}, Lcom/tencent/android/tpush/XGPushManager;->a(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 210
    return-void
.end method

.method public static getDebugServerInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    invoke-static {p0}, Lcom/tencent/android/tpush/XGPush4Msdk;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/tencent/android/tpush/common/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getQQAccessId(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 138
    sget-wide v0, Lcom/tencent/android/tpush/XGPush4Msdk;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 139
    const-string v0, "TPUSH_QQ_ACCESS_ID"

    sget-wide v2, Lcom/tencent/android/tpush/XGPush4Msdk;->b:J

    invoke-static {p0, v0, v2, v3}, Lcom/tencent/android/tpush/common/n;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/android/tpush/XGPush4Msdk;->b:J

    .line 142
    :cond_0
    sget-wide v0, Lcom/tencent/android/tpush/XGPush4Msdk;->b:J

    return-wide v0
.end method

.method public static getQQAppKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    sget-object v0, Lcom/tencent/android/tpush/XGPush4Msdk;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    sget-object v0, Lcom/tencent/android/tpush/XGPush4Msdk;->c:Ljava/lang/String;

    .line 175
    :goto_0
    return-object v0

    .line 166
    :cond_0
    const-string v0, "__en__TPUSH_QQ_ACCESS_KEY"

    sget-object v1, Lcom/tencent/android/tpush/XGPush4Msdk;->c:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/tencent/android/tpush/common/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 169
    invoke-static {v0}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/XGPush4Msdk;->c:Ljava/lang/String;

    .line 175
    :goto_1
    sget-object v0, Lcom/tencent/android/tpush/XGPush4Msdk;->c:Ljava/lang/String;

    goto :goto_0

    .line 171
    :cond_1
    const-string v0, "TPUSH_QQ_ACCESS_KEY"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/tencent/android/tpush/common/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/XGPush4Msdk;->c:Ljava/lang/String;

    .line 173
    const-string v0, "TPUSH_QQ_ACCESS_KEY"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static registerPush(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/android/tpush/XGIOperateCallback;)V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 214
    sget-boolean v0, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v0, :cond_0

    .line 215
    const-string v0, "XG_MSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerPush: account="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",qqAppid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/tencent/android/tpush/XGPush4Msdk;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",xg_accessid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/tencent/android/tpush/XGPush4Msdk;->getQQAccessId(Landroid/content/Context;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_0
    if-nez p2, :cond_2

    .line 221
    new-instance v5, Lcom/tencent/android/tpush/e;

    invoke-direct {v5}, Lcom/tencent/android/tpush/e;-><init>()V

    .line 238
    :goto_0
    invoke-static {p1}, Lcom/tencent/android/tpush/service/e/h;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 239
    const-string v2, "0"

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/tencent/android/tpush/XGPush4Msdk;->getQQAccessId(Landroid/content/Context;)J

    move-result-wide v6

    invoke-static {p0}, Lcom/tencent/android/tpush/XGPush4Msdk;->getQQAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v8}, Lcom/tencent/android/tpush/XGPushManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/tencent/android/tpush/XGIOperateCallback;JLjava/lang/String;)V

    .line 245
    :goto_1
    return-void

    .line 242
    :cond_1
    const/4 v3, -0x1

    invoke-static {p0}, Lcom/tencent/android/tpush/XGPush4Msdk;->getQQAccessId(Landroid/content/Context;)J

    move-result-wide v6

    invoke-static {p0}, Lcom/tencent/android/tpush/XGPush4Msdk;->getQQAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move-object v1, v4

    move-object v2, v4

    invoke-static/range {v0 .. v8}, Lcom/tencent/android/tpush/XGPushManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/tencent/android/tpush/XGIOperateCallback;JLjava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v5, p2

    goto :goto_0
.end method

.method public static setDebugServerInfo(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 53
    invoke-static {p1}, Lcom/tencent/android/tpush/service/e/h;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    invoke-static {p0}, Lcom/tencent/android/tpush/XGPush4Msdk;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-static {}, Lcom/tencent/android/tpush/common/g;->a()Lcom/tencent/android/tpush/common/g;

    move-result-object v0

    new-instance v1, Lcom/tencent/android/tpush/d;

    invoke-direct {v1, p0}, Lcom/tencent/android/tpush/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/common/g;->a(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static setDefaultNotificationBuilder(Landroid/content/Context;Lcom/tencent/android/tpush/XGPushNotificationBuilder;)V
    .locals 0

    .prologue
    .line 305
    invoke-static {p0, p1}, Lcom/tencent/android/tpush/XGPushManager;->setDefaultNotificationBuilder(Landroid/content/Context;Lcom/tencent/android/tpush/XGPushNotificationBuilder;)V

    .line 307
    return-void
.end method

.method public static setPushNotificationBuilder(Landroid/content/Context;ILcom/tencent/android/tpush/XGPushNotificationBuilder;)V
    .locals 2

    .prologue
    .line 289
    if-nez p0, :cond_0

    .line 290
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_0
    const/16 v0, 0x1388

    if-lt p1, v0, :cond_1

    const/16 v0, 0x1770

    if-le p1, v0, :cond_2

    .line 293
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "notificationBulderId\u8d85\u8fc7\u8303\u56f4[5000, 6000]."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_2
    if-nez p2, :cond_3

    .line 301
    :goto_0
    return-void

    .line 299
    :cond_3
    invoke-static {p0, p1, p2}, Lcom/tencent/android/tpush/b/b;->a(Landroid/content/Context;ILcom/tencent/android/tpush/XGPushNotificationBuilder;)V

    goto :goto_0
.end method

.method public static setQQAppId(Landroid/content/Context;J)V
    .locals 9

    .prologue
    .line 90
    const-wide/16 v6, 0x0

    .line 91
    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x30d40

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/tencent/android/tpush/XGPush4Msdk;->a(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const-wide/32 v0, 0x55d4a80

    .line 119
    :goto_0
    const-wide/32 v2, 0x7d2b7500

    add-long/2addr v0, v2

    add-long/2addr v0, p1

    .line 120
    sput-wide p1, Lcom/tencent/android/tpush/XGPush4Msdk;->a:J

    .line 121
    sput-wide v0, Lcom/tencent/android/tpush/XGPush4Msdk;->b:J

    .line 123
    const-string v0, "TPUSH_QQ_ACCESS_ID"

    sget-wide v2, Lcom/tencent/android/tpush/XGPush4Msdk;->b:J

    invoke-static {p0, v0, v2, v3}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 125
    const-string v0, "TPUSH_QQ_APP_ID"

    invoke-static {p0, v0}, Lcom/tencent/android/tpush/common/n;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSDK_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/XGPush4Msdk;->c:Ljava/lang/String;

    .line 130
    const-string v0, "__en__TPUSH_QQ_ACCESS_KEY"

    sget-object v1, Lcom/tencent/android/tpush/XGPush4Msdk;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v0, "TPUSH_QQ_ACCESS_KEY"

    invoke-static {p0, v0}, Lcom/tencent/android/tpush/common/n;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 135
    return-void

    .line 93
    :cond_0
    const-wide/32 v2, 0x5e69ec0

    const-wide/32 v4, 0x5f5e100

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/tencent/android/tpush/XGPush4Msdk;->a(JJJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 95
    :cond_1
    const-wide/32 v2, 0x5f8ee40

    const-wide/32 v4, 0x5ff08c0

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/tencent/android/tpush/XGPush4Msdk;->a(JJJ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    const-wide/32 v0, -0x989680

    goto :goto_0

    .line 97
    :cond_2
    const-wide/32 v2, 0x6052340

    const-wide/32 v4, 0x60b3dc0

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/tencent/android/tpush/XGPush4Msdk;->a(JJJ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    const-wide/32 v0, -0x9eb100

    goto :goto_0

    .line 99
    :cond_3
    const-wide/32 v2, 0x35a4e900

    const-wide/32 v4, 0x35a66fa0

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/tencent/android/tpush/XGPush4Msdk;->a(JJJ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 100
    const-wide/32 v0, -0x30385c40

    goto :goto_0

    .line 101
    :cond_4
    const-wide/32 v2, 0x3b9aca00

    const-wide/32 v4, 0x3b9c50a0

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/tencent/android/tpush/XGPush4Msdk;->a(JJJ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 102
    const-wide/32 v0, -0x362cb6a0

    goto/16 :goto_0

    .line 103
    :cond_5
    const-wide/32 v2, 0x419fed40

    const-wide/32 v4, 0x41d55520

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/tencent/android/tpush/XGPush4Msdk;->a(JJJ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 104
    const-wide/32 v0, -0x3c305340

    goto/16 :goto_0

    .line 105
    :cond_6
    const-wide/32 v2, 0x448b9b80

    const-wide/32 v4, 0x448d2220

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/tencent/android/tpush/XGPush4Msdk;->a(JJJ)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 106
    const-wide/32 v0, -0x3ee699a0

    goto/16 :goto_0

    .line 107
    :cond_7
    const-wide/32 v2, 0x5ff08c0

    const-wide/32 v4, 0x6052340

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/tencent/android/tpush/XGPush4Msdk;->a(JJJ)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 108
    const-wide/32 v0, -0x588040

    goto/16 :goto_0

    .line 109
    :cond_8
    const-wide/32 v2, 0x41d55520

    const-wide/32 v4, 0x421e9320

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/tencent/android/tpush/XGPush4Msdk;->a(JJJ)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 110
    const-wide/32 v0, -0x3c28b220

    goto/16 :goto_0

    .line 111
    :cond_9
    const-wide/32 v2, 0x421e9320

    const-wide/32 v4, 0x42b729a0

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/tencent/android/tpush/XGPush4Msdk;->a(JJJ)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 112
    const-wide/32 v0, -0x3d59df20

    goto/16 :goto_0

    .line 113
    :cond_a
    const-wide/32 v2, 0x42b729a0

    const-wide/32 v4, 0x42c1d800

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/tencent/android/tpush/XGPush4Msdk;->a(JJJ)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 114
    const-wide/32 v0, -0x3e8b0c20

    goto/16 :goto_0

    .line 116
    :cond_b
    const-string v0, "XG_MSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u624bQ\u7684appid\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u4e0d\u5728\u56fa\u5b9a\u7684\u8303\u56f4\uff0c\u8bf7\u8054\u7cfbmsdk\u548c\u4fe1\u9e3d\u7684\u540c\u4e8b\u89e3\u51b3\u4e4b\u3002"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v0, v6

    goto/16 :goto_0
.end method

.method public static setQQAppKey(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method public static setTag(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 187
    const-string v0, "XG_MSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTag: tagName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",qqAppid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/tencent/android/tpush/XGPush4Msdk;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",xg_accessid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/tencent/android/tpush/XGPush4Msdk;->getQQAccessId(Landroid/content/Context;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const/4 v0, 0x1

    invoke-static {p0}, Lcom/tencent/android/tpush/XGPush4Msdk;->getQQAccessId(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {p0, p1, v0, v2, v3}, Lcom/tencent/android/tpush/XGPushManager;->a(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 192
    return-void
.end method

.method public static unregisterPush(Landroid/content/Context;Lcom/tencent/android/tpush/XGIOperateCallback;)V
    .locals 4

    .prologue
    .line 249
    sget-boolean v0, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v0, :cond_0

    .line 250
    const-string v0, "XG_MSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterPush,qqAppid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/tencent/android/tpush/XGPush4Msdk;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",xg_accessid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/tencent/android/tpush/XGPush4Msdk;->getQQAccessId(Landroid/content/Context;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_0
    if-nez p1, :cond_1

    .line 255
    new-instance p1, Lcom/tencent/android/tpush/f;

    invoke-direct {p1}, Lcom/tencent/android/tpush/f;-><init>()V

    .line 271
    :cond_1
    invoke-static {p0}, Lcom/tencent/android/tpush/XGPush4Msdk;->getQQAccessId(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {p0}, Lcom/tencent/android/tpush/XGPush4Msdk;->getQQAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v0, v1, v2}, Lcom/tencent/android/tpush/XGPushManager;->a(Landroid/content/Context;Lcom/tencent/android/tpush/XGIOperateCallback;JLjava/lang/String;)V

    .line 273
    return-void
.end method
