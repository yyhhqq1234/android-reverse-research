.class public abstract Lcom/tencent/android/tpush/XGPushBaseReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ProGuard"


# static fields
.field public static final SUCCESS:I


# instance fields
.field a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 145
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/android/tpush/XGPushBaseReceiver;->a:J

    return-void
.end method

.method private a(Landroid/content/Context;ILcom/tencent/android/tpush/XGPushRegisterResult;Ljava/lang/String;)V
    .locals 14

    .prologue
    .line 150
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 151
    const-string v2, "register_json"

    const-string v4, ""

    invoke-static {p1, v2, v4}, Lcom/tencent/android/tpush/service/e/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 152
    invoke-static {v4}, Lcom/tencent/android/tpush/service/e/h;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 154
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    const-string/jumbo v3, "suc_cnt"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 162
    const-string v3, "failed_cnt"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 163
    if-nez p2, :cond_4

    .line 164
    add-int/lit8 v4, v4, 0x1

    move v5, v3

    move v6, v4

    .line 171
    :goto_1
    :try_start_1
    const-string/jumbo v3, "suc_cnt"

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 172
    const-string v3, "failed_cnt"

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    .line 177
    :goto_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 178
    if-eqz p3, :cond_6

    .line 179
    invoke-virtual/range {p3 .. p3}, Lcom/tencent/android/tpush/XGPushRegisterResult;->toJson()Lorg/json/JSONObject;

    move-result-object v3

    move-object v4, v3

    .line 182
    :goto_3
    :try_start_2
    const-string v3, "errorCode"

    move/from16 v0, p2

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 183
    const-string v3, "np"

    invoke-static {p1}, Lcom/tencent/android/tpush/service/e/h;->g(Landroid/content/Context;)B

    move-result v7

    invoke-virtual {v4, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 189
    :goto_4
    :try_start_3
    const-string v3, "details"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 190
    if-nez v3, :cond_0

    .line 191
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 194
    :cond_0
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 197
    const-string v4, "details"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 202
    :goto_5
    const-string v3, "SdkStat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "new reprot js"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/android/tpush/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 205
    iget-wide v10, p0, Lcom/tencent/android/tpush/XGPushBaseReceiver;->a:J

    const-wide/16 v12, 0x0

    cmp-long v3, v10, v12

    if-nez v3, :cond_1

    .line 206
    const-string v3, "register_last_report"

    const-wide/16 v10, 0x0

    invoke-static {p1, v3, v10, v11}, Lcom/tencent/android/tpush/service/e/g;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/tencent/android/tpush/XGPushBaseReceiver;->a:J

    .line 207
    iget-wide v10, p0, Lcom/tencent/android/tpush/XGPushBaseReceiver;->a:J

    const-wide/16 v12, 0x0

    cmp-long v3, v10, v12

    if-nez v3, :cond_1

    .line 208
    iput-wide v8, p0, Lcom/tencent/android/tpush/XGPushBaseReceiver;->a:J

    .line 209
    const-string v3, "register_last_report"

    iget-wide v10, p0, Lcom/tencent/android/tpush/XGPushBaseReceiver;->a:J

    invoke-static {p1, v3, v10, v11}, Lcom/tencent/android/tpush/service/e/g;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 213
    :cond_1
    add-int v3, v6, v5

    const/16 v4, 0xa

    if-ge v3, v4, :cond_2

    iget-wide v4, p0, Lcom/tencent/android/tpush/XGPushBaseReceiver;->a:J

    sub-long v4, v8, v4

    const-wide/32 v6, 0x2932e00

    cmp-long v3, v4, v6

    if-ltz v3, :cond_5

    .line 214
    :cond_2
    move-object/from16 v0, p4

    invoke-static {p1, v0, v2}, Lcom/tencent/android/tpush/service/d/a;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 215
    const-string v2, "register_json"

    const-string v3, ""

    invoke-static {p1, v2, v3}, Lcom/tencent/android/tpush/service/e/g;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iput-wide v8, p0, Lcom/tencent/android/tpush/XGPushBaseReceiver;->a:J

    .line 217
    const-string v2, "register_last_report"

    iget-wide v4, p0, Lcom/tencent/android/tpush/XGPushBaseReceiver;->a:J

    invoke-static {p1, v2, v4, v5}, Lcom/tencent/android/tpush/service/e/g;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 223
    :goto_6
    return-void

    .line 155
    :catch_0
    move-exception v2

    .line 156
    const-string v4, "XGPushMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "JSONObject"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object v2, v3

    goto/16 :goto_0

    .line 166
    :cond_4
    add-int/lit8 v3, v3, 0x1

    move v5, v3

    move v6, v4

    goto/16 :goto_1

    .line 219
    :cond_5
    const-string v3, "register_json"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v3, v2}, Lcom/tencent/android/tpush/service/e/g;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 198
    :catch_1
    move-exception v3

    goto/16 :goto_5

    .line 184
    :catch_2
    move-exception v3

    goto/16 :goto_4

    .line 173
    :catch_3
    move-exception v3

    goto/16 :goto_2

    :cond_6
    move-object v4, v3

    goto/16 :goto_3
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 60
    invoke-static {p1, p2}, Lcom/tencent/android/tpush/b/n;->a(Landroid/content/Context;Landroid/content/Intent;)Lcom/tencent/android/tpush/b/n;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/tencent/android/tpush/b/n;->g()Lcom/tencent/android/tpush/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/android/tpush/b/a;->c()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 62
    new-instance v1, Lcom/tencent/android/tpush/XGPushTextMessage;

    invoke-direct {v1}, Lcom/tencent/android/tpush/XGPushTextMessage;-><init>()V

    .line 63
    invoke-virtual {v0}, Lcom/tencent/android/tpush/b/n;->g()Lcom/tencent/android/tpush/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/android/tpush/b/a;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/android/tpush/XGPushTextMessage;->title:Ljava/lang/String;

    .line 64
    invoke-virtual {v0}, Lcom/tencent/android/tpush/b/n;->g()Lcom/tencent/android/tpush/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/android/tpush/b/a;->f()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/android/tpush/XGPushTextMessage;->content:Ljava/lang/String;

    .line 65
    invoke-virtual {v0}, Lcom/tencent/android/tpush/b/n;->g()Lcom/tencent/android/tpush/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/b/a;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/android/tpush/XGPushTextMessage;->customContent:Ljava/lang/String;

    .line 67
    invoke-virtual {v1, p2}, Lcom/tencent/android/tpush/XGPushTextMessage;->a(Landroid/content/Intent;)V

    .line 68
    invoke-virtual {p0, p1, v1}, Lcom/tencent/android/tpush/XGPushBaseReceiver;->onTextMessage(Landroid/content/Context;Lcom/tencent/android/tpush/XGPushTextMessage;)V

    .line 71
    :cond_0
    return-void
.end method

.method private b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, -0x1

    .line 74
    const-string v0, "TPUSH.FEEDBACK"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 75
    const-string v1, "TPUSH.ERRORCODE"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 76
    packed-switch v0, :pswitch_data_0

    .line 139
    const-string v1, "XGPushMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u672a\u77e5\u7684feedbackType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 78
    :pswitch_0
    new-instance v0, Lcom/tencent/android/tpush/XGPushRegisterResult;

    invoke-direct {v0}, Lcom/tencent/android/tpush/XGPushRegisterResult;-><init>()V

    .line 79
    invoke-virtual {v0, p2}, Lcom/tencent/android/tpush/XGPushRegisterResult;->parseIntent(Landroid/content/Intent;)V

    .line 80
    const-string v2, "SdkRegister"

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/tencent/android/tpush/XGPushBaseReceiver;->a(Landroid/content/Context;ILcom/tencent/android/tpush/XGPushRegisterResult;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, p1, v1, v0}, Lcom/tencent/android/tpush/XGPushBaseReceiver;->onRegisterResult(Landroid/content/Context;ILcom/tencent/android/tpush/XGPushRegisterResult;)V

    goto :goto_0

    .line 84
    :pswitch_1
    new-instance v0, Lcom/tencent/android/tpush/XGPushRegisterResult;

    invoke-direct {v0}, Lcom/tencent/android/tpush/XGPushRegisterResult;-><init>()V

    .line 85
    invoke-virtual {v0, p2}, Lcom/tencent/android/tpush/XGPushRegisterResult;->parseIntent(Landroid/content/Intent;)V

    .line 87
    const-string v2, "SdkUnRegister"

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/tencent/android/tpush/XGPushBaseReceiver;->a(Landroid/content/Context;ILcom/tencent/android/tpush/XGPushRegisterResult;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0, p1, v1}, Lcom/tencent/android/tpush/XGPushBaseReceiver;->onUnregisterResult(Landroid/content/Context;I)V

    goto :goto_0

    .line 91
    :pswitch_2
    const-string/jumbo v0, "tagName"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {v0}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-static {v0}, Lcom/tencent/android/tpush/service/e/h;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 94
    const-string/jumbo v2, "tagFlag"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 95
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 96
    invoke-virtual {p0, p1, v1, v0}, Lcom/tencent/android/tpush/XGPushBaseReceiver;->onSetTagResult(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_1
    if-ne v2, v4, :cond_2

    .line 98
    invoke-virtual {p0, p1, v1, v0}, Lcom/tencent/android/tpush/XGPushBaseReceiver;->onDeleteTagResult(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_2
    const-string v1, "XGPushMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u9519\u8bef\u7684\u6807\u7b7e\u5904\u7406\u7c7b\u578b\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,\u6807\u7b7e\u540d\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :pswitch_3
    const-string v0, "action"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 111
    const-string v0, "accId"

    const-wide/16 v2, 0x0

    invoke-virtual {p2, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 112
    invoke-static {p1}, Lcom/tencent/android/tpush/XGPushConfig;->getAccessidList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 113
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 114
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Lcom/tencent/android/tpush/XGPushClickedResult;

    invoke-direct {v0}, Lcom/tencent/android/tpush/XGPushClickedResult;-><init>()V

    .line 116
    invoke-virtual {v0, p2}, Lcom/tencent/android/tpush/XGPushClickedResult;->parseIntent(Landroid/content/Intent;)V

    .line 117
    invoke-virtual {p0, p1, v0}, Lcom/tencent/android/tpush/XGPushBaseReceiver;->onNotifactionClickedResult(Landroid/content/Context;Lcom/tencent/android/tpush/XGPushClickedResult;)V

    goto/16 :goto_0

    .line 134
    :pswitch_4
    new-instance v0, Lcom/tencent/android/tpush/XGPushShowedResult;

    invoke-direct {v0}, Lcom/tencent/android/tpush/XGPushShowedResult;-><init>()V

    .line 135
    invoke-virtual {v0, p2}, Lcom/tencent/android/tpush/XGPushShowedResult;->parseIntent(Landroid/content/Intent;)V

    .line 136
    invoke-virtual {p0, p1, v0}, Lcom/tencent/android/tpush/XGPushBaseReceiver;->onNotifactionShowedResult(Landroid/content/Context;Lcom/tencent/android/tpush/XGPushShowedResult;)V

    goto/16 :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public abstract onDeleteTagResult(Landroid/content/Context;ILjava/lang/String;)V
.end method

.method public abstract onNotifactionClickedResult(Landroid/content/Context;Lcom/tencent/android/tpush/XGPushClickedResult;)V
.end method

.method public abstract onNotifactionShowedResult(Landroid/content/Context;Lcom/tencent/android/tpush/XGPushShowedResult;)V
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 35
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 37
    :try_start_0
    invoke-static {p1}, Lcom/tencent/android/tpush/common/t;->a(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 41
    const-string v1, "com.tencent.android.tpush.action.PUSH_MESSAGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/tencent/android/tpush/XGPushBaseReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    const-string v1, "XGPushMessage"

    const-string v2, "onReceive handle error."

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 43
    :cond_2
    :try_start_1
    const-string v1, "com.tencent.android.tpush.action.FEEDBACK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/tencent/android/tpush/XGPushBaseReceiver;->b(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 46
    :cond_3
    const-string v1, "XGPushMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u672a\u77e5\u7684action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public abstract onRegisterResult(Landroid/content/Context;ILcom/tencent/android/tpush/XGPushRegisterResult;)V
.end method

.method public abstract onSetTagResult(Landroid/content/Context;ILjava/lang/String;)V
.end method

.method public abstract onTextMessage(Landroid/content/Context;Lcom/tencent/android/tpush/XGPushTextMessage;)V
.end method

.method public abstract onUnregisterResult(Landroid/content/Context;I)V
.end method
