.class public abstract Lcom/tencent/android/tpush/XGPushNotificationBuilder;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static final BASIC_NOTIFICATION_BUILDER_TYPE:Ljava/lang/String; = "basic"

.field public static final CUSTOM_NOTIFICATION_BUILDER_TYPE:Ljava/lang/String; = "custom"


# instance fields
.field protected a:Ljava/lang/Integer;

.field protected b:Landroid/app/PendingIntent;

.field protected c:Landroid/widget/RemoteViews;

.field protected d:Landroid/widget/RemoteViews;

.field protected e:Ljava/lang/Integer;

.field protected f:Landroid/app/PendingIntent;

.field protected g:Ljava/lang/Integer;

.field protected h:Ljava/lang/Integer;

.field protected i:Ljava/lang/Integer;

.field protected j:Ljava/lang/Integer;

.field protected k:Ljava/lang/Integer;

.field protected l:Ljava/lang/Integer;

.field protected m:Ljava/lang/Integer;

.field protected n:Landroid/net/Uri;

.field protected o:Ljava/lang/CharSequence;

.field protected p:[J

.field protected q:Ljava/lang/Long;

.field protected r:Ljava/lang/Integer;

.field protected s:Landroid/graphics/Bitmap;

.field protected t:Ljava/lang/Integer;

.field protected u:Ljava/lang/String;

.field protected v:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->a:Ljava/lang/Integer;

    .line 25
    iput-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->b:Landroid/app/PendingIntent;

    .line 26
    iput-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->c:Landroid/widget/RemoteViews;

    .line 27
    iput-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->d:Landroid/widget/RemoteViews;

    .line 28
    iput-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->e:Ljava/lang/Integer;

    .line 29
    iput-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->f:Landroid/app/PendingIntent;

    .line 30
    iput-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->g:Ljava/lang/Integer;

    .line 31
    iput-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->h:Ljava/lang/Integer;

    .line 32
    iput-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->i:Ljava/lang/Integer;

    .line 33
    iput-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->j:Ljava/lang/Integer;

    .line 34
    iput-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->k:Ljava/lang/Integer;

    .line 35
    iput-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->l:Ljava/lang/Integer;

    .line 36
    iput-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->m:Ljava/lang/Integer;

    .line 37
    iput-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->n:Landroid/net/Uri;

    .line 38
    iput-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->o:Ljava/lang/CharSequence;

    .line 39
    iput-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->p:[J

    .line 40
    iput-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->q:Ljava/lang/Long;

    .line 41
    iput-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->r:Ljava/lang/Integer;

    .line 42
    iput-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->s:Landroid/graphics/Bitmap;

    .line 43
    iput-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->t:Ljava/lang/Integer;

    .line 46
    iput-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->v:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Landroid/app/Notification;
    .locals 4

    .prologue
    .line 167
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 168
    iget-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->v:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 169
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->v:Ljava/lang/Integer;

    .line 172
    :cond_0
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 173
    new-instance v1, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 174
    iget-object v2, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->r:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 175
    iget-object v2, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->r:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 177
    :cond_1
    iget-object v2, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->t:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 179
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->t:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->s:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 186
    iget-object v2, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 188
    :cond_3
    iget-object v2, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->u:Ljava/lang/String;

    if-nez v2, :cond_11

    .line 189
    invoke-virtual {p0, p1}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->u:Ljava/lang/String;

    .line 197
    :goto_1
    iget-object v2, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->o:Ljava/lang/CharSequence;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->c:Landroid/widget/RemoteViews;

    if-nez v2, :cond_12

    .line 198
    iget-object v2, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->o:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    .line 199
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 200
    iget-object v1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->o:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 201
    iget-object v1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->o:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 207
    :goto_2
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 209
    iget-object v1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 211
    :cond_4
    iget-object v1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->b:Landroid/app/PendingIntent;

    if-eqz v1, :cond_5

    .line 212
    iget-object v1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->b:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 217
    :cond_5
    iget-object v1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->c:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_6

    .line 218
    iget-object v1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->c:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 220
    :cond_6
    iget-object v1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    .line 221
    iget-object v1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 223
    :cond_7
    iget-object v1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->h:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    .line 224
    iget-object v1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->h:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 226
    :cond_8
    iget-object v1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->f:Landroid/app/PendingIntent;

    if-eqz v1, :cond_9

    .line 227
    iget-object v1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->f:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 229
    :cond_9
    iget-object v1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_13

    .line 230
    iget-object v1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->g:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 234
    :goto_3
    iget-object v1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->i:Ljava/lang/Integer;

    if-eqz v1, :cond_a

    .line 235
    iget-object v1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->i:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/app/Notification;->iconLevel:I

    .line 237
    :cond_a
    iget-object v1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->j:Ljava/lang/Integer;

    if-eqz v1, :cond_b

    .line 238
    iget-object v1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->j:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/app/Notification;->ledARGB:I

    .line 240
    :cond_b
    iget-object v1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->k:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    .line 241
    iget-object v1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->k:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/app/Notification;->ledOffMS:I

    .line 243
    :cond_c
    iget-object v1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->l:Ljava/lang/Integer;

    if-eqz v1, :cond_d

    .line 244
    iget-object v1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->l:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/app/Notification;->ledOnMS:I

    .line 246
    :cond_d
    iget-object v1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->m:Ljava/lang/Integer;

    if-eqz v1, :cond_e

    .line 247
    iget-object v1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->m:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/app/Notification;->number:I

    .line 249
    :cond_e
    iget-object v1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->n:Landroid/net/Uri;

    if-eqz v1, :cond_f

    .line 250
    iget-object v1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->n:Landroid/net/Uri;

    iput-object v1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 252
    :cond_f
    iget-object v1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->p:[J

    if-eqz v1, :cond_10

    .line 253
    iget-object v1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->p:[J

    iput-object v1, v0, Landroid/app/Notification;->vibrate:[J

    .line 255
    :cond_10
    iget-object v1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->q:Ljava/lang/Long;

    if-eqz v1, :cond_14

    .line 256
    iget-object v1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->q:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/app/Notification;->when:J

    .line 260
    :goto_4
    return-object v0

    .line 191
    :cond_11
    iget-object v2, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->u:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_1

    .line 203
    :cond_12
    iget-object v1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->o:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 204
    iget-object v1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->o:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_2

    .line 232
    :cond_13
    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_3

    .line 258
    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/app/Notification;->when:J

    goto :goto_4

    .line 181
    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method protected abstract a(Lorg/json/JSONObject;)V
.end method

.method protected abstract b(Lorg/json/JSONObject;)V
.end method

.method public abstract buildNotification(Landroid/content/Context;)Landroid/app/Notification;
.end method

.method public decode(Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 77
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0, v2}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->b(Lorg/json/JSONObject;)V

    .line 79
    const-string v0, "audioStringType"

    invoke-static {v2, v0, v8}, Lcom/tencent/android/tpush/common/e;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->a:Ljava/lang/Integer;

    .line 81
    const-string v0, "defaults"

    invoke-static {v2, v0, v8}, Lcom/tencent/android/tpush/common/e;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->e:Ljava/lang/Integer;

    .line 82
    const-string v0, "flags"

    invoke-static {v2, v0, v8}, Lcom/tencent/android/tpush/common/e;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->g:Ljava/lang/Integer;

    .line 83
    const-string v0, "icon"

    invoke-static {v2, v0, v8}, Lcom/tencent/android/tpush/common/e;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->h:Ljava/lang/Integer;

    .line 84
    const-string v0, "iconLevel"

    invoke-static {v2, v0, v8}, Lcom/tencent/android/tpush/common/e;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->i:Ljava/lang/Integer;

    .line 85
    const-string v0, "ledARGB"

    invoke-static {v2, v0, v8}, Lcom/tencent/android/tpush/common/e;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->j:Ljava/lang/Integer;

    .line 86
    const-string v0, "ledOffMS"

    invoke-static {v2, v0, v8}, Lcom/tencent/android/tpush/common/e;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->k:Ljava/lang/Integer;

    .line 87
    const-string v0, "ledOnMS"

    invoke-static {v2, v0, v8}, Lcom/tencent/android/tpush/common/e;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->l:Ljava/lang/Integer;

    .line 88
    const-string v0, "number"

    invoke-static {v2, v0, v8}, Lcom/tencent/android/tpush/common/e;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->m:Ljava/lang/Integer;

    .line 89
    const-string v0, "sound"

    invoke-static {v2, v0, v8}, Lcom/tencent/android/tpush/common/e;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 90
    const-string v1, "smallIcon"

    invoke-static {v2, v1, v8}, Lcom/tencent/android/tpush/common/e;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->r:Ljava/lang/Integer;

    .line 91
    const-string v1, "notificationLargeIcon"

    invoke-static {v2, v1, v8}, Lcom/tencent/android/tpush/common/e;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->t:Ljava/lang/Integer;

    .line 93
    if-eqz v0, :cond_0

    .line 94
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->n:Landroid/net/Uri;

    .line 96
    :cond_0
    const-string/jumbo v0, "vibrate"

    invoke-static {v2, v0, v8}, Lcom/tencent/android/tpush/common/e;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 98
    if-eqz v0, :cond_1

    .line 99
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 100
    array-length v3, v1

    .line 101
    new-array v0, v3, [J

    iput-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->p:[J

    .line 102
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    .line 104
    :try_start_0
    iget-object v4, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->p:[J

    aget-object v5, v1, v0

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v4, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_1
    const-string v0, "notificationId"

    invoke-static {v2, v0, v8}, Lcom/tencent/android/tpush/common/e;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->v:Ljava/lang/Integer;

    .line 111
    return-void

    .line 105
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public encode(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->a(Lorg/json/JSONObject;)V

    .line 50
    const-string v0, "audioStringType"

    iget-object v1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->a:Ljava/lang/Integer;

    invoke-static {p1, v0, v1}, Lcom/tencent/android/tpush/common/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 51
    const-string v0, "defaults"

    iget-object v1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->e:Ljava/lang/Integer;

    invoke-static {p1, v0, v1}, Lcom/tencent/android/tpush/common/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 52
    const-string v0, "flags"

    iget-object v1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->g:Ljava/lang/Integer;

    invoke-static {p1, v0, v1}, Lcom/tencent/android/tpush/common/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 53
    const-string v0, "icon"

    iget-object v1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->h:Ljava/lang/Integer;

    invoke-static {p1, v0, v1}, Lcom/tencent/android/tpush/common/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 54
    const-string v0, "iconLevel"

    iget-object v1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->i:Ljava/lang/Integer;

    invoke-static {p1, v0, v1}, Lcom/tencent/android/tpush/common/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 55
    const-string v0, "ledARGB"

    iget-object v1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->j:Ljava/lang/Integer;

    invoke-static {p1, v0, v1}, Lcom/tencent/android/tpush/common/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 56
    const-string v0, "ledOffMS"

    iget-object v1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->k:Ljava/lang/Integer;

    invoke-static {p1, v0, v1}, Lcom/tencent/android/tpush/common/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 57
    const-string v0, "ledOnMS"

    iget-object v1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->l:Ljava/lang/Integer;

    invoke-static {p1, v0, v1}, Lcom/tencent/android/tpush/common/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 58
    const-string v0, "number"

    iget-object v1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->m:Ljava/lang/Integer;

    invoke-static {p1, v0, v1}, Lcom/tencent/android/tpush/common/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 59
    const-string v0, "sound"

    iget-object v1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->n:Landroid/net/Uri;

    invoke-static {p1, v0, v1}, Lcom/tencent/android/tpush/common/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 60
    const-string v0, "smallIcon"

    iget-object v1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->r:Ljava/lang/Integer;

    invoke-static {p1, v0, v1}, Lcom/tencent/android/tpush/common/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 61
    const-string v0, "notificationLargeIcon"

    iget-object v1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->t:Ljava/lang/Integer;

    invoke-static {p1, v0, v1}, Lcom/tencent/android/tpush/common/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->p:[J

    if-eqz v0, :cond_2

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->p:[J

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 66
    iget-object v2, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->p:[J

    aget-wide v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-object v2, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->p:[J

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_0

    .line 68
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_1
    const-string/jumbo v0, "vibrate"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/tencent/android/tpush/common/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 73
    :cond_2
    const-string v0, "notificationId"

    iget-object v1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->v:Ljava/lang/Integer;

    invoke-static {p1, v0, v1}, Lcom/tencent/android/tpush/common/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public getApplicationIcon(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    return v0
.end method

.method public getAudioStringType()I
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getContentIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->b:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getDefaults()I
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->g:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getIcon()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->h:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIconLevel()I
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->i:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLargeIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->s:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getLedARGB()I
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->j:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLedOffMS()I
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->k:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLedOnMS()I
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->l:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getNotificationLargeIcon()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->t:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->m:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSmallIcon()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->r:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSound()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->n:Landroid/net/Uri;

    return-object v0
.end method

.method public getTickerText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->o:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->u:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->u:Ljava/lang/String;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->u:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public getVibrate()[J
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->p:[J

    return-object v0
.end method

.method public getWhen()J
    .locals 2

    .prologue
    .line 537
    iget-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->q:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public setAudioStringType(I)Lcom/tencent/android/tpush/XGPushNotificationBuilder;
    .locals 1

    .prologue
    .line 277
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->a:Ljava/lang/Integer;

    .line 278
    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->b:Landroid/app/PendingIntent;

    .line 288
    return-object p0
.end method

.method public setContentView(Landroid/widget/RemoteViews;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->c:Landroid/widget/RemoteViews;

    .line 297
    return-object p0
.end method

.method public setDefaults(I)Lcom/tencent/android/tpush/XGPushNotificationBuilder;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->e:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 323
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->e:Ljava/lang/Integer;

    .line 327
    :goto_0
    return-object p0

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->e:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public setFlags(I)Lcom/tencent/android/tpush/XGPushNotificationBuilder;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->g:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 357
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->g:Ljava/lang/Integer;

    .line 361
    :goto_0
    return-object p0

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->g:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->g:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public setIcon(Ljava/lang/Integer;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->h:Ljava/lang/Integer;

    .line 381
    return-object p0
.end method

.method public setIconLevel(I)Lcom/tencent/android/tpush/XGPushNotificationBuilder;
    .locals 1

    .prologue
    .line 436
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->i:Ljava/lang/Integer;

    .line 437
    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->s:Landroid/graphics/Bitmap;

    .line 411
    return-object p0
.end method

.method public setLedARGB(I)Lcom/tencent/android/tpush/XGPushNotificationBuilder;
    .locals 1

    .prologue
    .line 445
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->j:Ljava/lang/Integer;

    .line 446
    return-object p0
.end method

.method public setLedOffMS(I)Lcom/tencent/android/tpush/XGPushNotificationBuilder;
    .locals 1

    .prologue
    .line 454
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->k:Ljava/lang/Integer;

    .line 455
    return-object p0
.end method

.method public setLedOnMS(I)Lcom/tencent/android/tpush/XGPushNotificationBuilder;
    .locals 1

    .prologue
    .line 463
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->l:Ljava/lang/Integer;

    .line 464
    return-object p0
.end method

.method public setNotificationLargeIcon(I)Lcom/tencent/android/tpush/XGPushNotificationBuilder;
    .locals 1

    .prologue
    .line 423
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->t:Ljava/lang/Integer;

    .line 424
    return-object p0
.end method

.method public setNumber(I)Lcom/tencent/android/tpush/XGPushNotificationBuilder;
    .locals 1

    .prologue
    .line 472
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->m:Ljava/lang/Integer;

    .line 473
    return-object p0
.end method

.method public setSmallIcon(Ljava/lang/Integer;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->r:Ljava/lang/Integer;

    .line 396
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;
    .locals 0

    .prologue
    .line 492
    iput-object p1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->n:Landroid/net/Uri;

    .line 493
    return-object p0
.end method

.method public setTickerText(Ljava/lang/CharSequence;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;
    .locals 0

    .prologue
    .line 512
    iput-object p1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->o:Ljava/lang/CharSequence;

    .line 513
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->u:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setVibrate([J)Lcom/tencent/android/tpush/XGPushNotificationBuilder;
    .locals 0

    .prologue
    .line 532
    iput-object p1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->p:[J

    .line 533
    return-object p0
.end method

.method public setWhen(J)Lcom/tencent/android/tpush/XGPushNotificationBuilder;
    .locals 1

    .prologue
    .line 541
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->q:Ljava/lang/Long;

    .line 542
    return-object p0
.end method

.method public setbigContentView(Landroid/widget/RemoteViews;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->d:Landroid/widget/RemoteViews;

    .line 303
    return-object p0
.end method
