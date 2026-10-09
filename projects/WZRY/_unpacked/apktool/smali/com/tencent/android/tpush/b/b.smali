.class public Lcom/tencent/android/tpush/b/b;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static volatile a:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/android/tpush/b/b;->a:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/tencent/android/tpush/b/g;ZLcom/tencent/android/tpush/b/n;)Landroid/content/Intent;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 185
    const/4 v0, 0x0

    .line 186
    iget v1, p1, Lcom/tencent/android/tpush/b/g;->a:I

    packed-switch v1, :pswitch_data_0

    .line 266
    const-string v1, "MessageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unkown type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/tencent/android/tpush/b/g;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :goto_0
    if-eqz v0, :cond_0

    .line 270
    const-string v1, "action_confirm"

    iget v2, p1, Lcom/tencent/android/tpush/b/g;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 272
    :cond_0
    return-object v0

    .line 188
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    const-string v0, "com.tencent.android.tpush.action.INTERNAL_PUSH_MESSAGE"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    iget-object v0, p1, Lcom/tencent/android/tpush/b/g;->b:Ljava/lang/String;

    .line 190
    invoke-static {v0}, Lcom/tencent/android/tpush/common/t;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    invoke-static {p0}, Lcom/tencent/android/tpush/b/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 193
    :cond_1
    const/high16 v1, 0x20200000

    .line 195
    iget-object v3, p1, Lcom/tencent/android/tpush/b/g;->c:Lcom/tencent/android/tpush/b/h;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/tencent/android/tpush/b/g;->c:Lcom/tencent/android/tpush/b/h;

    iget v3, v3, Lcom/tencent/android/tpush/b/h;->a:I

    if-gtz v3, :cond_4

    .line 197
    :cond_2
    if-eqz p2, :cond_3

    .line 198
    const/high16 v1, 0x10000000

    .line 200
    :cond_3
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 202
    const/high16 v1, 0x4020000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 208
    :goto_1
    const-string v1, "activity"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const-string v0, "msgId"

    invoke-virtual {p3}, Lcom/tencent/android/tpush/b/n;->b()J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 210
    const-string v0, "busiMsgId"

    invoke-virtual {p3}, Lcom/tencent/android/tpush/b/n;->d()J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 212
    const-string v0, "notificationActionType"

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 214
    const-string v0, "action_type"

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 216
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/tencent/android/tpush/XGPushActivity;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-object v0, v2

    .line 217
    goto :goto_0

    .line 205
    :cond_4
    iget-object v1, p1, Lcom/tencent/android/tpush/b/g;->c:Lcom/tencent/android/tpush/b/h;

    iget v1, v1, Lcom/tencent/android/tpush/b/h;->a:I

    .line 206
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 224
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.android.tpush.action.INTERNAL_PUSH_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    const-string v1, "activity"

    iget-object v2, p1, Lcom/tencent/android/tpush/b/g;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string v1, "action_type"

    iget v2, p1, Lcom/tencent/android/tpush/b/g;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    const-string v1, "notificationActionType"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 229
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/android/tpush/XGPushActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 234
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.android.tpush.action.INTERNAL_PUSH_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    const-string v1, "activity"

    iget-object v2, p1, Lcom/tencent/android/tpush/b/g;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    const-string v1, "action_type"

    iget v2, p1, Lcom/tencent/android/tpush/b/g;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 240
    const-string v1, "notificationActionType"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 243
    const-string v1, "msgId"

    invoke-virtual {p3}, Lcom/tencent/android/tpush/b/n;->b()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 244
    const-string v1, "busiMsgId"

    invoke-virtual {p3}, Lcom/tencent/android/tpush/b/n;->d()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 245
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/android/tpush/XGPushActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 251
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.android.tpush.action.INTERNAL_PUSH_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 252
    iget-object v1, p1, Lcom/tencent/android/tpush/b/g;->h:Ljava/lang/String;

    .line 253
    invoke-static {v1}, Lcom/tencent/android/tpush/common/t;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 256
    const-string v2, "action_type"

    iget v3, p1, Lcom/tencent/android/tpush/b/g;->a:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 257
    const-string v2, "packageDownloadUrl"

    iget-object v3, p1, Lcom/tencent/android/tpush/b/g;->j:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    const-string v2, "packageName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const-string v2, "activity"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const-string v1, "notificationActionType"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 263
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/android/tpush/XGPushActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;
    .locals 3

    .prologue
    .line 92
    const-class v1, Lcom/tencent/android/tpush/b/b;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/tencent/android/tpush/XGBasicPushNotificationBuilder;

    invoke-direct {v0}, Lcom/tencent/android/tpush/XGBasicPushNotificationBuilder;-><init>()V

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/tencent/android/tpush/XGBasicPushNotificationBuilder;->setFlags(I)Lcom/tencent/android/tpush/XGPushNotificationBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;I)Lcom/tencent/android/tpush/XGPushNotificationBuilder;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 124
    if-nez p0, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-object v0

    .line 128
    :cond_1
    invoke-static {p1}, Lcom/tencent/android/tpush/b/b;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-static {p0, v1, v0}, Lcom/tencent/android/tpush/common/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    if-eqz v1, :cond_0

    .line 132
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 134
    const-string v1, "basic"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 135
    new-instance v2, Lcom/tencent/android/tpush/XGBasicPushNotificationBuilder;

    invoke-direct {v2}, Lcom/tencent/android/tpush/XGBasicPushNotificationBuilder;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :try_start_1
    const-string v0, "basic"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    move-object v0, v2

    .line 146
    :goto_1
    :try_start_2
    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->decode(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v1

    .line 148
    :goto_2
    const-string v2, "TPush"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 138
    :cond_2
    :try_start_3
    const-string v1, "custom"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    new-instance v2, Lcom/tencent/android/tpush/XGCustomPushNotificationBuilder;

    invoke-direct {v2}, Lcom/tencent/android/tpush/XGCustomPushNotificationBuilder;-><init>()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 141
    :try_start_4
    const-string v0, "custom"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v1

    move-object v0, v2

    goto :goto_1

    .line 147
    :catch_1
    move-exception v1

    move-object v0, v2

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v0, v2

    goto :goto_2
.end method

.method private static a(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TPUSH_NOTIF_BUILDID_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;ILcom/tencent/android/tpush/XGPushNotificationBuilder;)V
    .locals 4

    .prologue
    .line 105
    invoke-static {p1}, Lcom/tencent/android/tpush/b/b;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 107
    invoke-virtual {p2, v1}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->encode(Lorg/json/JSONObject;)V

    .line 108
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 109
    invoke-virtual {p2}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/tencent/android/tpush/common/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 111
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-static {p0, v0, v1}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/tencent/android/tpush/b/n;)V
    .locals 18
    .annotation build Lcom/jg/JgMethodChecked;
        author = 0x1
        fComment = "\u786e\u8ba4\u5df2\u8fdb\u884c\u5b89\u5168\u6821\u9a8c"
        lastDate = "20150316"
        reviewer = 0x3
        vComment = {
            .enum Lcom/jg/EType;->RECEIVERCHECK:Lcom/jg/EType;,
            .enum Lcom/jg/EType;->INTENTCHECK:Lcom/jg/EType;
        }
    .end annotation

    .prologue
    .line 278
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/android/tpush/b/n;->g()Lcom/tencent/android/tpush/b/a;

    move-result-object v2

    check-cast v2, Lcom/tencent/android/tpush/b/f;

    .line 280
    invoke-virtual {v2}, Lcom/tencent/android/tpush/b/f;->m()Lcom/tencent/android/tpush/b/g;

    move-result-object v7

    .line 282
    invoke-virtual {v2}, Lcom/tencent/android/tpush/b/f;->h()I

    move-result v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/tencent/android/tpush/b/b;->a(Landroid/content/Context;I)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    move-result-object v4

    .line 284
    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/tencent/android/tpush/b/f;->t()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_9

    .line 286
    :cond_0
    if-nez v4, :cond_1

    .line 287
    invoke-static/range {p0 .. p0}, Lcom/tencent/android/tpush/XGPushManager;->getDefaultNotificationBuilder(Landroid/content/Context;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    move-result-object v4

    .line 289
    :cond_1
    if-nez v4, :cond_2

    .line 290
    invoke-static/range {p0 .. p0}, Lcom/tencent/android/tpush/b/b;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    move-result-object v4

    .line 292
    :cond_2
    invoke-virtual {v2}, Lcom/tencent/android/tpush/b/f;->k()I

    move-result v3

    if-eqz v3, :cond_3

    .line 293
    const/16 v3, 0x10

    invoke-virtual {v4, v3}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setFlags(I)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    .line 295
    :cond_3
    invoke-virtual {v2}, Lcom/tencent/android/tpush/b/f;->i()I

    move-result v3

    if-eqz v3, :cond_4

    .line 296
    invoke-virtual {v2}, Lcom/tencent/android/tpush/b/f;->p()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 298
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v2}, Lcom/tencent/android/tpush/b/f;->p()Ljava/lang/String;

    move-result-object v5

    const-string v6, "raw"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v5, v6, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 300
    if-lez v3, :cond_d

    .line 301
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "android.resource://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 303
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 304
    invoke-virtual {v4, v3}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setSound(Landroid/net/Uri;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    .line 312
    :cond_4
    :goto_0
    invoke-virtual {v2}, Lcom/tencent/android/tpush/b/f;->j()I

    move-result v3

    if-eqz v3, :cond_5

    .line 313
    const/4 v3, 0x2

    invoke-virtual {v4, v3}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setDefaults(I)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    .line 315
    :cond_5
    invoke-virtual {v2}, Lcom/tencent/android/tpush/b/f;->o()I

    move-result v3

    if-eqz v3, :cond_6

    .line 317
    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setFlags(I)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    .line 319
    :cond_6
    invoke-virtual {v2}, Lcom/tencent/android/tpush/b/f;->r()Ljava/lang/String;

    move-result-object v3

    .line 320
    if-eqz v3, :cond_11

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 321
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "drawable"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v3, v6, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 323
    if-lez v3, :cond_f

    .line 324
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setSmallIcon(Ljava/lang/Integer;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    .line 350
    :cond_7
    :goto_1
    invoke-virtual {v2}, Lcom/tencent/android/tpush/b/f;->s()I

    move-result v5

    .line 351
    invoke-virtual {v2}, Lcom/tencent/android/tpush/b/f;->q()Ljava/lang/String;

    move-result-object v6

    .line 352
    const/4 v3, 0x0

    .line 353
    instance-of v8, v4, Lcom/tencent/android/tpush/XGCustomPushNotificationBuilder;

    if-eqz v8, :cond_8

    move-object v3, v4

    .line 354
    check-cast v3, Lcom/tencent/android/tpush/XGCustomPushNotificationBuilder;

    invoke-virtual {v3}, Lcom/tencent/android/tpush/XGCustomPushNotificationBuilder;->getLayoutIconId()Ljava/lang/Integer;

    move-result-object v3

    .line 357
    :cond_8
    if-eqz v6, :cond_15

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_15

    .line 358
    if-gtz v5, :cond_14

    .line 359
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v8, "drawable"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v6, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 361
    if-lez v5, :cond_13

    .line 362
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setLargeIcon(Landroid/graphics/Bitmap;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    .line 364
    if-eqz v3, :cond_9

    move-object v3, v4

    .line 365
    check-cast v3, Lcom/tencent/android/tpush/XGCustomPushNotificationBuilder;

    invoke-virtual {v3, v5}, Lcom/tencent/android/tpush/XGCustomPushNotificationBuilder;->setLayoutIconDrawableId(I)Lcom/tencent/android/tpush/XGCustomPushNotificationBuilder;

    .line 385
    :cond_9
    :goto_2
    invoke-virtual {v2}, Lcom/tencent/android/tpush/b/f;->n()I

    move-result v3

    if-lez v3, :cond_a

    .line 386
    invoke-virtual {v2}, Lcom/tencent/android/tpush/b/f;->n()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setIcon(Ljava/lang/Integer;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    .line 388
    :cond_a
    invoke-virtual {v4}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->getSmallIcon()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_b

    invoke-virtual {v4}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->getLargeIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_b

    invoke-virtual {v4}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->getIcon()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_b

    .line 392
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v5, "notification_icon"

    const-string v6, "drawable"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v5, v6, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 394
    if-lez v3, :cond_16

    .line 395
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setSmallIcon(Ljava/lang/Integer;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    .line 399
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v3, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setLargeIcon(Landroid/graphics/Bitmap;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    .line 405
    :cond_b
    invoke-virtual {v2}, Lcom/tencent/android/tpush/b/f;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setTitle(Ljava/lang/String;)V

    .line 406
    invoke-virtual {v2}, Lcom/tencent/android/tpush/b/f;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setTickerText(Ljava/lang/CharSequence;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    .line 408
    const/4 v3, 0x0

    .line 409
    invoke-virtual {v2}, Lcom/tencent/android/tpush/b/f;->g()Ljava/lang/String;

    move-result-object v5

    .line 410
    invoke-static {v5}, Lcom/tencent/android/tpush/common/t;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 411
    const-string/jumbo v6, "{}"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 412
    const/4 v3, 0x1

    .line 416
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v7, v3, v1}, Lcom/tencent/android/tpush/b/b;->a(Landroid/content/Context;Lcom/tencent/android/tpush/b/g;ZLcom/tencent/android/tpush/b/n;)Landroid/content/Intent;

    move-result-object v8

    .line 417
    if-nez v8, :cond_17

    .line 418
    const-string v2, "MessageHelper"

    const-string v3, "intent is null"

    invoke-static {v2, v3}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    :goto_4
    return-void

    .line 306
    :cond_d
    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setDefaults(I)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    goto/16 :goto_0

    .line 309
    :cond_e
    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setDefaults(I)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    goto/16 :goto_0

    .line 330
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v5, "notification_icon"

    const-string v6, "drawable"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v5, v6, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 332
    if-lez v3, :cond_10

    .line 333
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setSmallIcon(Ljava/lang/Integer;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    goto/16 :goto_1

    .line 335
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setSmallIcon(Ljava/lang/Integer;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    goto/16 :goto_1

    .line 340
    :cond_11
    invoke-virtual {v4}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->getSmallIcon()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_7

    .line 341
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v5, "notification_icon"

    const-string v6, "drawable"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v5, v6, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 343
    if-lez v3, :cond_12

    .line 344
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setSmallIcon(Ljava/lang/Integer;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    goto/16 :goto_1

    .line 346
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setSmallIcon(Ljava/lang/Integer;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    goto/16 :goto_1

    .line 369
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v3, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setLargeIcon(Landroid/graphics/Bitmap;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    goto/16 :goto_2

    .line 374
    :cond_14
    move-object/from16 v0, p0

    invoke-static {v6, v4, v0, v3}, Lcom/tencent/android/tpush/b/b;->a(Ljava/lang/String;Lcom/tencent/android/tpush/XGPushNotificationBuilder;Landroid/content/Context;Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 377
    :cond_15
    invoke-virtual {v4}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->getLargeIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_9

    invoke-virtual {v4}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->getNotificationLargeIcon()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_9

    .line 378
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v3, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setLargeIcon(Landroid/graphics/Bitmap;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    goto/16 :goto_2

    .line 397
    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setSmallIcon(Ljava/lang/Integer;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    goto/16 :goto_3

    .line 423
    :cond_17
    if-eqz v3, :cond_18

    .line 424
    const-string v3, "custom_content"

    invoke-virtual {v2}, Lcom/tencent/android/tpush/b/f;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    :cond_18
    const-string/jumbo v3, "tag.tpush.MSG"

    const-string/jumbo v5, "true"

    invoke-virtual {v8, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    const-string/jumbo v3, "title"

    invoke-virtual {v2}, Lcom/tencent/android/tpush/b/f;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    const-string v3, "content"

    invoke-virtual {v2}, Lcom/tencent/android/tpush/b/f;->f()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 434
    invoke-virtual {v2}, Lcom/tencent/android/tpush/b/f;->g()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 435
    const-string v3, "custom_content"

    invoke-virtual {v2}, Lcom/tencent/android/tpush/b/f;->g()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    :cond_19
    const-string v3, "msgId"

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/android/tpush/b/n;->b()J

    move-result-wide v10

    invoke-virtual {v8, v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 439
    const-string v3, "accId"

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/android/tpush/b/n;->c()J

    move-result-wide v10

    invoke-virtual {v8, v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 440
    const-string v3, "busiMsgId"

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/android/tpush/b/n;->d()J

    move-result-wide v10

    invoke-virtual {v8, v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 441
    const-string/jumbo v3, "timestamps"

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/android/tpush/b/n;->e()J

    move-result-wide v10

    invoke-virtual {v8, v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 445
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    sub-long/2addr v10, v12

    .line 446
    const-string v3, "protect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 449
    const-string v3, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 451
    invoke-virtual {v2}, Lcom/tencent/android/tpush/b/f;->l()I

    move-result v5

    .line 452
    if-gtz v5, :cond_20

    .line 453
    invoke-virtual {v2}, Lcom/tencent/android/tpush/b/f;->h()I

    move-result v5

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/tencent/android/tpush/b/b;->b(Landroid/content/Context;I)I

    move-result v5

    move v6, v5

    .line 456
    :goto_5
    const/4 v5, -0x1

    if-ne v6, v5, :cond_1a

    .line 457
    invoke-virtual {v3}, Landroid/app/NotificationManager;->cancelAll()V

    .line 459
    :cond_1a
    const-string v5, "notifaction_id"

    invoke-virtual {v8, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 462
    const/high16 v5, 0x8000000

    .line 463
    iget-object v9, v7, Lcom/tencent/android/tpush/b/g;->c:Lcom/tencent/android/tpush/b/h;

    if-eqz v9, :cond_1b

    iget-object v9, v7, Lcom/tencent/android/tpush/b/g;->c:Lcom/tencent/android/tpush/b/h;

    iget v9, v9, Lcom/tencent/android/tpush/b/h;->b:I

    if-lez v9, :cond_1b

    .line 465
    iget-object v5, v7, Lcom/tencent/android/tpush/b/g;->c:Lcom/tencent/android/tpush/b/h;

    iget v5, v5, Lcom/tencent/android/tpush/b/h;->b:I

    .line 469
    :cond_1b
    sget-object v7, Lcom/tencent/android/tpush/b/b;->a:Landroid/content/BroadcastReceiver;

    if-nez v7, :cond_1c

    .line 470
    new-instance v7, Lcom/tencent/android/tpush/b/c;

    invoke-direct {v7}, Lcom/tencent/android/tpush/b/c;-><init>()V

    sput-object v7, Lcom/tencent/android/tpush/b/b;->a:Landroid/content/BroadcastReceiver;

    .line 495
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 496
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".APP_PUSH_CANCELLED.RESULT"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 497
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    sget-object v10, Lcom/tencent/android/tpush/b/b;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v10, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 500
    :cond_1c
    new-instance v7, Landroid/content/Intent;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".APP_PUSH_CANCELLED.RESULT"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 501
    const-string v9, "packName"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    const-string v9, "action"

    const/4 v10, 0x2

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 504
    const-string v9, "clickTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v7, v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 506
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    invoke-virtual {v7, v8}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 510
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x13

    if-ne v9, v10, :cond_1d

    .line 511
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v6, v8, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 514
    invoke-virtual {v9}, Landroid/app/PendingIntent;->cancel()V

    .line 517
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v6, v8, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 520
    invoke-virtual {v4, v9}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setContentIntent(Landroid/app/PendingIntent;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    .line 526
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x10

    if-lt v9, v10, :cond_1e

    .line 527
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string/jumbo v10, "xg_notification"

    const-string v11, "layout"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 529
    if-eqz v9, :cond_1e

    .line 532
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string/jumbo v11, "xg_notification_icon"

    const-string v12, "id"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 534
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string/jumbo v12, "xg_notification_style_title"

    const-string v13, "id"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 537
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const-string/jumbo v13, "xg_notification_date"

    const-string v14, "id"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 539
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string/jumbo v14, "xg_notification_style"

    const-string v15, "id"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 541
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const-string/jumbo v15, "xg_notification_style_content"

    const-string v16, "id"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v14 .. v17}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 544
    if-eqz v10, :cond_1e

    if-eqz v11, :cond_1e

    if-eqz v12, :cond_1e

    if-eqz v14, :cond_1e

    .line 548
    new-instance v15, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 550
    invoke-virtual {v2}, Lcom/tencent/android/tpush/b/f;->e()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v11, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 552
    invoke-virtual {v2}, Lcom/tencent/android/tpush/b/f;->f()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v14, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 554
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v11, "HH:mm"

    invoke-direct {v9, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 555
    new-instance v11, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-direct {v11, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 556
    invoke-virtual {v9, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v12, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 558
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v15, v10, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 560
    const/4 v9, 0x0

    invoke-virtual {v15, v13, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 563
    invoke-virtual {v4, v15}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setContentView(Landroid/widget/RemoteViews;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    .line 568
    :cond_1e
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->buildNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v4

    .line 570
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v6, v7, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, v4, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 573
    invoke-static {}, Lcom/tencent/android/tpush/XGPushManager;->getNotifactionCallback()Lcom/tencent/android/tpush/XGPushNotifactionCallback;

    move-result-object v5

    .line 575
    if-nez v5, :cond_1f

    .line 576
    invoke-virtual {v3, v6, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 586
    :goto_6
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.tencent.android.tpush.action.FEEDBACK"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 587
    const-string v3, "TPUSH.ERRORCODE"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 588
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 589
    invoke-virtual {v2, v8}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 590
    const-string v3, "TPUSH.FEEDBACK"

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 592
    const-string v3, "notifaction_id"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 593
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 578
    :cond_1f
    const-string v3, "MessageHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "call notifactionCallback:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/tencent/android/tpush/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    new-instance v3, Lcom/tencent/android/tpush/XGNotifaction;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v6, v4, v2}, Lcom/tencent/android/tpush/XGNotifaction;-><init>(Landroid/content/Context;ILandroid/app/Notification;Lcom/tencent/android/tpush/b/f;)V

    .line 581
    invoke-interface {v5, v3}, Lcom/tencent/android/tpush/XGPushNotifactionCallback;->handleNotify(Lcom/tencent/android/tpush/XGNotifaction;)V

    goto :goto_6

    :cond_20
    move v6, v5

    goto/16 :goto_5
.end method

.method private static a(Ljava/lang/String;Lcom/tencent/android/tpush/XGPushNotificationBuilder;Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 9

    .prologue
    const/16 v3, 0xfa0

    const/16 v1, 0xbb8

    const/4 v2, 0x0

    .line 687
    .line 689
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 690
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 691
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 692
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 693
    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 694
    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 695
    const-wide/16 v4, 0xfa0

    invoke-static {v0, v4, v5}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 697
    const/4 v0, 0x0

    .line 698
    const/4 v1, 0x0

    .line 699
    const/4 v3, 0x0

    .line 701
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 702
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v4}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 703
    :try_start_1
    const-string v7, "X-Online-Host"

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v7, v4}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-string v7, "http.socket.timeout"

    const/16 v8, 0x4e20

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 706
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-string v7, "http.connection.timeout"

    const/16 v8, 0x4e20

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 708
    invoke-interface {v6, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 709
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 710
    const/16 v8, 0xc8

    if-eq v7, v8, :cond_5

    .line 711
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v4, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setLargeIcon(Landroid/graphics/Bitmap;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 736
    if-eqz v2, :cond_0

    .line 737
    :try_start_2
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 739
    :cond_0
    if-eqz v2, :cond_1

    .line 740
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 743
    :cond_1
    if-eqz v2, :cond_2

    .line 744
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 746
    :cond_2
    if-eqz v5, :cond_3

    .line 747
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 749
    :cond_3
    if-eqz v6, :cond_4

    .line 750
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 756
    :cond_4
    :goto_0
    return-void

    .line 752
    :catch_0
    move-exception v0

    .line 753
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 715
    :cond_5
    :try_start_3
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v1

    .line 716
    if-eqz v1, :cond_15

    .line 717
    :try_start_4
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v4

    .line 718
    :try_start_5
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 719
    const/16 v0, 0x400

    :try_start_6
    new-array v0, v0, [B

    .line 721
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v7, -0x1

    if-eq v2, v7, :cond_a

    .line 722
    const/4 v7, 0x0

    invoke-virtual {v3, v0, v7, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_1

    .line 732
    :catch_1
    move-exception v0

    .line 733
    :goto_2
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 736
    if-eqz v1, :cond_6

    .line 737
    :try_start_8
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 739
    :cond_6
    if-eqz v4, :cond_7

    .line 740
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 743
    :cond_7
    if-eqz v3, :cond_8

    .line 744
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 746
    :cond_8
    if-eqz v5, :cond_9

    .line 747
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 749
    :cond_9
    if-eqz v6, :cond_4

    .line 750
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_0

    .line 752
    :catch_2
    move-exception v0

    .line 753
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 724
    :cond_a
    :try_start_9
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    array-length v7, v7

    invoke-static {v0, v2, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 726
    invoke-virtual {p1, v0}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setLargeIcon(Landroid/graphics/Bitmap;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    .line 727
    if-eqz p3, :cond_b

    .line 728
    check-cast p1, Lcom/tencent/android/tpush/XGCustomPushNotificationBuilder;

    invoke-virtual {p1, v0}, Lcom/tencent/android/tpush/XGCustomPushNotificationBuilder;->setLayoutIconDrawableBmp(Landroid/graphics/Bitmap;)Lcom/tencent/android/tpush/XGCustomPushNotificationBuilder;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 736
    :cond_b
    :goto_3
    if-eqz v1, :cond_c

    .line 737
    :try_start_a
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 739
    :cond_c
    if-eqz v4, :cond_d

    .line 740
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 743
    :cond_d
    if-eqz v3, :cond_e

    .line 744
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 746
    :cond_e
    if-eqz v5, :cond_f

    .line 747
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 749
    :cond_f
    if-eqz v6, :cond_4

    .line 750
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_0

    .line 752
    :catch_3
    move-exception v0

    .line 753
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 735
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 736
    :goto_4
    if-eqz v1, :cond_10

    .line 737
    :try_start_b
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 739
    :cond_10
    if-eqz v4, :cond_11

    .line 740
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 743
    :cond_11
    if-eqz v3, :cond_12

    .line 744
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 746
    :cond_12
    if-eqz v5, :cond_13

    .line 747
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 749
    :cond_13
    if-eqz v6, :cond_14

    .line 750
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 754
    :cond_14
    :goto_5
    throw v0

    .line 752
    :catch_4
    move-exception v1

    .line 753
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 735
    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_4

    :catchall_4
    move-exception v0

    goto :goto_4

    .line 732
    :catch_5
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    goto/16 :goto_2

    :catch_6
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    goto/16 :goto_2

    :catch_7
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    goto/16 :goto_2

    :catch_8
    move-exception v0

    move-object v3, v2

    goto/16 :goto_2

    :cond_15
    move-object v3, v2

    move-object v4, v2

    goto :goto_3
.end method

.method private static declared-synchronized b(Landroid/content/Context;I)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 805
    const-class v2, Lcom/tencent/android/tpush/b/b;

    monitor-enter v2

    .line 807
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_XINGE_NOTIF_NUMBER_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 808
    const/4 v1, 0x0

    invoke-static {p0, v3, v1}, Lcom/tencent/android/tpush/common/n;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 809
    const v4, 0x7ffffffe

    if-lt v1, v4, :cond_0

    .line 812
    :goto_0
    add-int/lit8 v1, v0, 0x1

    invoke-static {p0, v3, v1}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 816
    :goto_1
    monitor-exit v2

    return v0

    .line 813
    :catch_0
    move-exception v1

    .line 814
    :try_start_1
    const-string v3, "MessageHelper"

    const-string v4, ""

    invoke-static {v3, v4, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 805
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 166
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 167
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 171
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 172
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 174
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_0

    .line 175
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    return-object v0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    const-string v2, "MessageHelper"

    const-string v3, "get Activity error"

    invoke-static {v2, v3, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    move-object v0, v1

    .line 180
    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Lcom/tencent/android/tpush/b/n;)V
    .locals 3

    .prologue
    .line 778
    invoke-virtual {p1}, Lcom/tencent/android/tpush/b/n;->g()Lcom/tencent/android/tpush/b/a;

    move-result-object v0

    instance-of v0, v0, Lcom/tencent/android/tpush/b/f;

    if-eqz v0, :cond_2

    .line 781
    sget-boolean v0, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v0, :cond_0

    .line 782
    const-string v0, "MessageHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action -> showNotification "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/android/tpush/b/n;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/android/tpush/b/n;->g()Lcom/tencent/android/tpush/b/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/b/f;

    .line 787
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/android/tpush/b/f;->m()Lcom/tencent/android/tpush/b/g;

    move-result-object v0

    if-nez v0, :cond_3

    .line 788
    :cond_1
    const-string v0, "MessageHelper"

    const-string v1, "showNotification holder == null || holder.getAction() == null"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    :cond_2
    :goto_0
    return-void

    .line 792
    :cond_3
    invoke-static {p0, p1}, Lcom/tencent/android/tpush/b/b;->a(Landroid/content/Context;Lcom/tencent/android/tpush/b/n;)V

    goto :goto_0
.end method
