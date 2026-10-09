.class final Lcom/tencent/android/tpush/ad;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/tencent/android/tpush/XGIOperateCallback;

.field final synthetic c:J

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/tencent/android/tpush/XGIOperateCallback;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 1086
    iput-object p1, p0, Lcom/tencent/android/tpush/ad;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/android/tpush/ad;->b:Lcom/tencent/android/tpush/XGIOperateCallback;

    iput-wide p3, p0, Lcom/tencent/android/tpush/ad;->c:J

    iput-object p5, p0, Lcom/tencent/android/tpush/ad;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/tencent/android/tpush/ad;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/tencent/android/tpush/ad;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/tencent/android/tpush/ad;->g:Ljava/lang/String;

    iput p9, p0, Lcom/tencent/android/tpush/ad;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    .line 1092
    :try_start_0
    iget-object v0, p0, Lcom/tencent/android/tpush/ad;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/common/t;->a(Landroid/content/Context;)I

    move-result v0

    .line 1093
    if-eqz v0, :cond_1

    .line 1094
    iget-object v1, p0, Lcom/tencent/android/tpush/ad;->b:Lcom/tencent/android/tpush/XGIOperateCallback;

    if-eqz v1, :cond_0

    .line 1095
    iget-object v1, p0, Lcom/tencent/android/tpush/ad;->b:Lcom/tencent/android/tpush/XGIOperateCallback;

    const/4 v2, 0x0

    invoke-static {v0}, Lcom/tencent/android/tpush/common/Constants;->errCodeToMsg(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3}, Lcom/tencent/android/tpush/XGIOperateCallback;->onFail(Ljava/lang/Object;ILjava/lang/String;)V

    .line 1190
    :cond_0
    :goto_0
    return-void

    .line 1100
    :cond_1
    iget-wide v0, p0, Lcom/tencent/android/tpush/ad;->c:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_3

    iget-wide v0, p0, Lcom/tencent/android/tpush/ad;->c:J

    move-wide v2, v0

    .line 1102
    :goto_1
    iget-object v0, p0, Lcom/tencent/android/tpush/ad;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/android/tpush/common/t;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/android/tpush/ad;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/XGPushConfig;->getAccessKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1105
    :goto_2
    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    invoke-static {v1}, Lcom/tencent/android/tpush/common/t;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1106
    :cond_2
    iget-object v0, p0, Lcom/tencent/android/tpush/ad;->b:Lcom/tencent/android/tpush/XGIOperateCallback;

    const/4 v4, 0x0

    const/16 v5, 0x2711

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The accessId or accessKey is(are) invalid!@accessId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", @accessKey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v5, v1}, Lcom/tencent/android/tpush/XGIOperateCallback;->onFail(Ljava/lang/Object;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1114
    :catch_0
    move-exception v0

    .line 1115
    invoke-static {}, Lcom/tencent/android/tpush/XGPushManager;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "register"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1100
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/tencent/android/tpush/ad;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/XGPushConfig;->getAccessId(Landroid/content/Context;)J

    move-result-wide v0

    move-wide v2, v0

    goto :goto_1

    .line 1102
    :cond_4
    iget-object v0, p0, Lcom/tencent/android/tpush/ad;->d:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v0

    goto :goto_2

    .line 1120
    :cond_5
    iget-object v0, p0, Lcom/tencent/android/tpush/ad;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/common/s;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/common/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/common/s;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1122
    iget-object v0, p0, Lcom/tencent/android/tpush/ad;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/c/a;->b(Landroid/content/Context;)V

    .line 1124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1125
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide/16 v8, 0x7530

    cmp-long v0, v6, v8

    if-gez v0, :cond_6

    .line 1128
    :try_start_2
    iget-object v0, p0, Lcom/tencent/android/tpush/ad;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/c/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1129
    invoke-static {v0}, Lcom/tencent/android/tpush/common/t;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 1130
    const-string v6, "XGOtherPush"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get otherToken is : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/tencent/android/tpush/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1146
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/tencent/android/tpush/ad;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/common/t;->g(Landroid/content/Context;)V

    .line 1148
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.tencent.android.tpush.action.REGISTER.V3"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1150
    const-string v4, "accId"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1151
    const-string v2, "accKey"

    invoke-static {v1}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1152
    const-string v1, "packName"

    iget-object v2, p0, Lcom/tencent/android/tpush/ad;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1154
    const-string v1, "appVer"

    iget-object v2, p0, Lcom/tencent/android/tpush/ad;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/android/tpush/common/t;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1155
    iget-object v1, p0, Lcom/tencent/android/tpush/ad;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/android/tpush/common/o;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/common/o;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1156
    const-string v1, "reserved"

    iget-object v2, p0, Lcom/tencent/android/tpush/ad;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/android/tpush/common/o;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/common/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/android/tpush/common/o;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1161
    :cond_7
    iget-object v1, p0, Lcom/tencent/android/tpush/ad;->e:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 1162
    const-string v1, "account"

    iget-object v2, p0, Lcom/tencent/android/tpush/ad;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1164
    :cond_8
    iget-object v1, p0, Lcom/tencent/android/tpush/ad;->f:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1165
    const-string/jumbo v1, "ticket"

    iget-object v2, p0, Lcom/tencent/android/tpush/ad;->f:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1167
    :cond_9
    iget-object v1, p0, Lcom/tencent/android/tpush/ad;->g:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 1168
    const-string v1, "qua"

    iget-object v2, p0, Lcom/tencent/android/tpush/ad;->g:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1170
    :cond_a
    const-string/jumbo v1, "ticketType"

    iget v2, p0, Lcom/tencent/android/tpush/ad;->h:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1171
    const-string v1, "operation"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1172
    const-string v1, "aidl"

    iget-object v2, p0, Lcom/tencent/android/tpush/ad;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/android/tpush/common/t;->b(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1173
    const-string v1, "currentTimeMillis"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1175
    const-string v1, "opType"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1177
    iget-object v1, p0, Lcom/tencent/android/tpush/ad;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/android/tpush/common/s;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/common/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/android/tpush/common/s;->a()Z

    move-result v1

    .line 1179
    iget-object v2, p0, Lcom/tencent/android/tpush/ad;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/android/tpush/common/t;->c(Landroid/content/Context;)I

    move-result v2

    .line 1180
    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    if-nez v1, :cond_c

    .line 1182
    iget-object v1, p0, Lcom/tencent/android/tpush/ad;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/android/tpush/ad;->b:Lcom/tencent/android/tpush/XGIOperateCallback;

    invoke-static {v1, v0, v2}, Lcom/tencent/android/tpush/XGPushManager;->b(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/android/tpush/XGIOperateCallback;)V

    .line 1183
    iget-object v0, p0, Lcom/tencent/android/tpush/ad;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/n;->b(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1134
    :cond_b
    const-wide/16 v6, 0xc8

    :try_start_3
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_3

    .line 1135
    :catch_1
    move-exception v0

    .line 1136
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_3

    .line 1137
    :catch_2
    move-exception v0

    .line 1138
    const-string v0, "XGOtherPush"

    const-string v4, "OtherPush: call getToken Error!."

    invoke-static {v0, v4}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1186
    :cond_c
    iget-object v2, p0, Lcom/tencent/android/tpush/ad;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/android/tpush/ad;->b:Lcom/tencent/android/tpush/XGIOperateCallback;

    invoke-static {v2, v0, v3, v1}, Lcom/tencent/android/tpush/XGPushManager;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/android/tpush/XGIOperateCallback;Z)V

    goto/16 :goto_0
.end method
