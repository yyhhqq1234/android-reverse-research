.class Lcom/tencent/android/tpush/b/m;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/android/tpush/b/i;

.field private final b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Landroid/content/Intent;

.field private e:Lcom/tencent/android/tpush/XGIOperateCallback;


# direct methods
.method public constructor <init>(Lcom/tencent/android/tpush/b/i;Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/android/tpush/XGIOperateCallback;)V
    .locals 1

    .prologue
    .line 94
    iput-object p1, p0, Lcom/tencent/android/tpush/b/m;->a:Lcom/tencent/android/tpush/b/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const-class v0, Lcom/tencent/android/tpush/b/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/b/m;->b:Ljava/lang/String;

    .line 95
    iput-object p2, p0, Lcom/tencent/android/tpush/b/m;->c:Landroid/content/Context;

    .line 96
    iput-object p3, p0, Lcom/tencent/android/tpush/b/m;->d:Landroid/content/Intent;

    .line 97
    iput-object p4, p0, Lcom/tencent/android/tpush/b/m;->e:Lcom/tencent/android/tpush/XGIOperateCallback;

    .line 98
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 102
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.android.tpush.action.PUSH_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/tencent/android/tpush/b/m;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    iget-object v1, p0, Lcom/tencent/android/tpush/b/m;->d:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 105
    iget-object v1, p0, Lcom/tencent/android/tpush/b/m;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 107
    iget-object v0, p0, Lcom/tencent/android/tpush/b/m;->d:Landroid/content/Intent;

    const-string/jumbo v1, "svrPkgName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static {v0}, Lcom/tencent/android/tpush/service/e/h;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.tencent.android.tpush.action.ack.sdk2srv.V3"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    iget-object v0, p0, Lcom/tencent/android/tpush/b/m;->d:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 114
    iget-object v0, p0, Lcom/tencent/android/tpush/b/m;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 117
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 122
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/tencent/android/tpush/b/m;->a:Lcom/tencent/android/tpush/b/i;

    monitor-enter v11

    .line 123
    :try_start_0
    sget-boolean v2, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v2, :cond_0

    .line 124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/b/m;->b:Ljava/lang/String;

    const-string v3, "Action -> handlerPushMessage"

    invoke-static {v2, v3}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :cond_0
    const/4 v10, 0x0

    .line 129
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/b/m;->d:Landroid/content/Intent;

    const-string v3, "expire_time"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/b/m;->d:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 133
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/android/tpush/b/m;->d:Landroid/content/Intent;

    const-string v8, "msgId"

    const-wide/16 v12, -0x1

    invoke-virtual {v3, v8, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 134
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/android/tpush/b/m;->c:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/android/tpush/b/m;->d:Landroid/content/Intent;

    invoke-static {v3, v12}, Lcom/tencent/android/tpush/b/n;->a(Landroid/content/Context;Landroid/content/Intent;)Lcom/tencent/android/tpush/b/n;

    move-result-object v3

    .line 136
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-lez v12, :cond_1

    cmp-long v12, v6, v4

    if-lez v12, :cond_1

    .line 138
    const-string v2, "PushMessageHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "msg is expired, currentTimeMillis="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", expire_time="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". msgid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/b/m;->c:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/tencent/android/tpush/XGPushManager;->msgAck(Landroid/content/Context;Lcom/tencent/android/tpush/b/n;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 246
    :goto_0
    return-void

    .line 146
    :cond_1
    :try_start_3
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/android/tpush/b/i;->a(Ljava/lang/Long;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/b/m;->c:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/tencent/android/tpush/XGPushManager;->msgAck(Landroid/content/Context;Lcom/tencent/android/tpush/b/n;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 148
    :try_start_4
    monitor-exit v11

    goto :goto_0

    .line 245
    :catchall_0
    move-exception v2

    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 150
    :cond_2
    const/4 v4, 0x2

    :try_start_5
    invoke-static {v4, v8, v9}, Lcom/tencent/android/tpush/a/a;->a(IJ)V

    .line 151
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/android/tpush/b/m;->d:Landroid/content/Intent;

    const-string v5, "busiMsgId"

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 153
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/android/tpush/b/m;->d:Landroid/content/Intent;

    const-string/jumbo v5, "timestamps"

    const-wide/16 v12, 0x0

    invoke-virtual {v4, v5, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 155
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "@"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, "@"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 156
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/android/tpush/b/m;->d:Landroid/content/Intent;

    const-string v13, "accId"

    const-wide/16 v14, -0x1

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    .line 158
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/android/tpush/b/m;->c:Landroid/content/Context;

    invoke-static {v14}, Lcom/tencent/android/tpush/XGPushConfig;->getAccessidList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v14

    .line 160
    if-eqz v14, :cond_3

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_3

    .line 161
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PushMessageRunnable match accessId failed, message droped cause accessId:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " not in "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " msgId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 167
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/android/tpush/b/m;->b:Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/tencent/android/tpush/a/a;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/b/m;->c:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/tencent/android/tpush/XGPushManager;->msgAck(Landroid/content/Context;Lcom/tencent/android/tpush/b/n;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 169
    :try_start_6
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 172
    :cond_3
    :try_start_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/android/tpush/b/m;->c:Landroid/content/Context;

    invoke-static {v14, v12, v13}, Lcom/tencent/android/tpush/b/d;->f(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v14

    .line 174
    invoke-virtual {v14, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_a

    .line 176
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/android/tpush/b/m;->c:Landroid/content/Context;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "tpush_msgId_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v15, v0, v14, v1}, Lcom/tencent/android/tpush/common/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 180
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/android/tpush/b/m;->c:Landroid/content/Context;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "tpush_msgId_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v14, v12, v13}, Lcom/tencent/android/tpush/common/m;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    .line 182
    if-eqz v12, :cond_4

    invoke-virtual {v12, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 184
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/android/tpush/b/m;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " flag write failed"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 185
    :try_start_8
    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 189
    :cond_5
    :try_start_9
    sget-boolean v2, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v2, :cond_6

    .line 190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/b/m;->b:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Receiver msg from server :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Lcom/tencent/android/tpush/b/n;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Lcom/tencent/android/tpush/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/b/m;->c:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/tencent/android/tpush/XGPushManager;->msgAck(Landroid/content/Context;Lcom/tencent/android/tpush/b/n;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/b/m;->c:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/android/tpush/b/m;->d:Landroid/content/Intent;

    invoke-static {v2, v12}, Lcom/tencent/android/tpush/service/d/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 197
    invoke-virtual {v3}, Lcom/tencent/android/tpush/b/n;->g()Lcom/tencent/android/tpush/b/a;

    move-result-object v12

    .line 199
    if-eqz v12, :cond_b

    invoke-virtual {v3}, Lcom/tencent/android/tpush/b/n;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/android/tpush/service/e/h;->b(Ljava/lang/String;)Z
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v2

    if-nez v2, :cond_b

    .line 203
    :try_start_a
    new-instance v2, Lcom/tencent/android/tpush/b/e;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/android/tpush/b/m;->c:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/android/tpush/b/m;->d:Landroid/content/Intent;

    invoke-direct {v2, v13, v14}, Lcom/tencent/android/tpush/b/e;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 205
    invoke-virtual/range {v2 .. v9}, Lcom/tencent/android/tpush/b/e;->a(Lcom/tencent/android/tpush/b/n;JJJ)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 206
    invoke-direct/range {p0 .. p0}, Lcom/tencent/android/tpush/b/m;->a()V

    .line 207
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/b/m;->c:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/android/tpush/b/m;->d:Landroid/content/Intent;

    invoke-static {v2, v4}, Lcom/tencent/android/tpush/service/d/a;->b(Landroid/content/Context;Landroid/content/Intent;)V

    .line 208
    invoke-static {}, Lcom/tencent/android/tpush/b/d;->a()Lcom/tencent/android/tpush/b/d;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/android/tpush/b/m;->c:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/tencent/android/tpush/b/n;->b()J

    move-result-wide v6

    invoke-virtual {v2, v4, v6, v7}, Lcom/tencent/android/tpush/b/d;->b(Landroid/content/Context;J)V

    .line 209
    invoke-virtual {v12}, Lcom/tencent/android/tpush/b/a;->c()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_7

    .line 210
    invoke-virtual {v3}, Lcom/tencent/android/tpush/b/n;->a()V

    .line 211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/b/m;->c:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/android/tpush/b/m;->d:Landroid/content/Intent;

    invoke-static {v2, v4}, Lcom/tencent/android/tpush/service/d/a;->c(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_7
    :goto_1
    move-object v2, v10

    .line 238
    :goto_2
    :try_start_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/android/tpush/b/m;->e:Lcom/tencent/android/tpush/XGIOperateCallback;

    if-eqz v3, :cond_8

    .line 239
    if-eqz v2, :cond_c

    .line 240
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/android/tpush/b/m;->e:Lcom/tencent/android/tpush/XGIOperateCallback;

    const-string v4, ""

    const/4 v5, -0x1

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v5, v2}, Lcom/tencent/android/tpush/XGIOperateCallback;->onFail(Ljava/lang/Object;ILjava/lang/String;)V

    .line 245
    :cond_8
    :goto_3
    monitor-exit v11
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    .line 214
    :cond_9
    :try_start_c
    invoke-static {}, Lcom/tencent/android/tpush/b/d;->a()Lcom/tencent/android/tpush/b/d;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/android/tpush/b/m;->c:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/tencent/android/tpush/b/n;->b()J

    move-result-wide v6

    invoke-virtual {v2, v4, v6, v7}, Lcom/tencent/android/tpush/b/d;->c(Landroid/content/Context;J)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_1

    .line 216
    :catch_0
    move-exception v2

    .line 217
    :try_start_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/android/tpush/b/m;->b:Ljava/lang/String;

    const-string/jumbo v5, "unknown error"

    invoke-static {v4, v5, v2}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    invoke-static {}, Lcom/tencent/android/tpush/b/d;->a()Lcom/tencent/android/tpush/b/d;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/android/tpush/b/m;->c:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/tencent/android/tpush/b/n;->b()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/tencent/android/tpush/b/d;->c(Landroid/content/Context;J)V
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_2

    .line 225
    :catch_1
    move-exception v2

    .line 226
    :try_start_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/android/tpush/b/m;->b:Ljava/lang/String;

    const-string v4, "push parse error"

    invoke-static {v3, v4, v2}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_2

    .line 223
    :cond_a
    const/4 v2, 0x0

    :try_start_f
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/android/tpush/b/m;->e:Lcom/tencent/android/tpush/XGIOperateCallback;
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :cond_b
    move-object v2, v10

    goto :goto_2

    .line 228
    :catch_2
    move-exception v2

    .line 229
    :try_start_10
    const-string v3, "XGService"

    const-string v4, "push msg type error"

    invoke-static {v3, v4, v2}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 233
    :catch_3
    move-exception v2

    .line 234
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/android/tpush/b/m;->b:Ljava/lang/String;

    const-string/jumbo v4, "unknown error"

    invoke-static {v3, v4, v2}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 242
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/b/m;->e:Lcom/tencent/android/tpush/XGIOperateCallback;

    const-string v3, ""

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/tencent/android/tpush/XGIOperateCallback;->onSuccess(Ljava/lang/Object;I)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_3
.end method
