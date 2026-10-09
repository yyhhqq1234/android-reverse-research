.class Lcom/tencent/android/tpush/service/l;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Lcom/jg/JgClassChecked;
    author = 0x1
    fComment = "\u786e\u8ba4\u5df2\u8fdb\u884c\u5b89\u5168\u6821\u9a8c"
    lastDate = "20150316"
    reviewer = 0x3
    vComment = {
        .enum Lcom/jg/EType;->INTENTCHECK:Lcom/jg/EType;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/android/tpush/service/a;

.field private b:Landroid/content/Context;

.field private c:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/tencent/android/tpush/service/a;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1010
    iput-object p1, p0, Lcom/tencent/android/tpush/service/l;->a:Lcom/tencent/android/tpush/service/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1001
    iput-object v0, p0, Lcom/tencent/android/tpush/service/l;->b:Landroid/content/Context;

    .line 1002
    iput-object v0, p0, Lcom/tencent/android/tpush/service/l;->c:Landroid/content/Intent;

    .line 1011
    iput-object p2, p0, Lcom/tencent/android/tpush/service/l;->b:Landroid/content/Context;

    .line 1012
    iput-object p3, p0, Lcom/tencent/android/tpush/service/l;->c:Landroid/content/Intent;

    .line 1013
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1018
    :try_start_0
    iget-object v0, p0, Lcom/tencent/android/tpush/service/l;->c:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1019
    if-nez v0, :cond_1

    .line 1060
    :cond_0
    :goto_0
    return-void

    .line 1022
    :cond_1
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1024
    :cond_2
    iget-object v0, p0, Lcom/tencent/android/tpush/service/l;->a:Lcom/tencent/android/tpush/service/a;

    iget-object v1, p0, Lcom/tencent/android/tpush/service/l;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/android/tpush/service/l;->c:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/a;->a(Lcom/tencent/android/tpush/service/a;Landroid/content/Context;Landroid/content/Intent;)V

    .line 1026
    iget-object v0, p0, Lcom/tencent/android/tpush/service/l;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->getInstance(Landroid/content/Context;)Lcom/tencent/android/tpush/service/XGWatchdog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->sendAllLocalXGAppList()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1057
    :catch_0
    move-exception v0

    .line 1058
    sget-object v1, Lcom/tencent/android/tpush/service/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/tencent/android/tpush/service/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " run error."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1027
    :cond_3
    :try_start_1
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1028
    iget-object v0, p0, Lcom/tencent/android/tpush/service/l;->a:Lcom/tencent/android/tpush/service/a;

    iget-object v1, p0, Lcom/tencent/android/tpush/service/l;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/android/tpush/service/l;->c:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/a;->b(Lcom/tencent/android/tpush/service/a;Landroid/content/Context;Landroid/content/Intent;)V

    .line 1030
    iget-object v0, p0, Lcom/tencent/android/tpush/service/l;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->getInstance(Landroid/content/Context;)Lcom/tencent/android/tpush/service/XGWatchdog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->sendAllLocalXGAppList()V

    goto :goto_0

    .line 1031
    :cond_4
    const-string v1, "com.tencent.android.tpush.action.REGISTER.V3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1032
    iget-object v0, p0, Lcom/tencent/android/tpush/service/l;->a:Lcom/tencent/android/tpush/service/a;

    iget-object v1, p0, Lcom/tencent/android/tpush/service/l;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/android/tpush/service/l;->c:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/a;->c(Lcom/tencent/android/tpush/service/a;Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 1033
    :cond_5
    const-string v1, "com.tencent.android.tpush.action.UNREGISTER.V3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1034
    iget-object v0, p0, Lcom/tencent/android/tpush/service/l;->a:Lcom/tencent/android/tpush/service/a;

    iget-object v1, p0, Lcom/tencent/android/tpush/service/l;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/android/tpush/service/l;->c:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/a;->d(Lcom/tencent/android/tpush/service/a;Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 1035
    :cond_6
    const-string v1, "com.tencent.android.tpush.action.ENABLE_DEBUG.V3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1036
    iget-object v0, p0, Lcom/tencent/android/tpush/service/l;->a:Lcom/tencent/android/tpush/service/a;

    iget-object v1, p0, Lcom/tencent/android/tpush/service/l;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/android/tpush/service/l;->c:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/a;->e(Lcom/tencent/android/tpush/service/a;Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1037
    :cond_7
    const-string v1, "com.tencent.android.tpush.action.MSG_ACK.V3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1038
    invoke-static {}, Lcom/tencent/android/tpush/service/c/a;->a()Lcom/tencent/android/tpush/service/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/android/tpush/service/l;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/android/tpush/service/l;->c:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/android/tpush/service/c/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1039
    :cond_8
    const-string v1, "com.tencent.android.tpush.action.TAG.V3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1040
    iget-object v0, p0, Lcom/tencent/android/tpush/service/l;->a:Lcom/tencent/android/tpush/service/a;

    iget-object v1, p0, Lcom/tencent/android/tpush/service/l;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/android/tpush/service/l;->c:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/a;->f(Lcom/tencent/android/tpush/service/a;Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1041
    :cond_9
    const-string v1, "com.tencent.android.tpush.action.PUSH_CLICK.RESULT.V3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1042
    invoke-static {}, Lcom/tencent/android/tpush/service/c/a;->a()Lcom/tencent/android/tpush/service/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/android/tpush/service/l;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/android/tpush/service/l;->c:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/android/tpush/service/c/a;->b(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1043
    :cond_a
    const-string v1, "com.tencent.android.tpush.action.PUSH_CANCELLED.RESULT.V3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1044
    invoke-static {}, Lcom/tencent/android/tpush/service/c/a;->a()Lcom/tencent/android/tpush/service/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/android/tpush/service/l;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/android/tpush/service/l;->c:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/android/tpush/service/c/a;->b(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1046
    :cond_b
    const-string v1, "com.tencent.android.tpush.action.ack.sdk2srv.V3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1049
    iget-object v0, p0, Lcom/tencent/android/tpush/service/l;->c:Landroid/content/Intent;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/d/a;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1050
    :cond_c
    const-string v1, "com.tencent.android.tpush.action.UPDATE_OTHER_PUSH_TOKEN.V3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1052
    iget-object v0, p0, Lcom/tencent/android/tpush/service/l;->a:Lcom/tencent/android/tpush/service/a;

    iget-object v1, p0, Lcom/tencent/android/tpush/service/l;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/android/tpush/service/l;->c:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/a;->g(Lcom/tencent/android/tpush/service/a;Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1053
    :cond_d
    const-string v1, "com.tencent.android.tpush.action.COMM_REPORT.V3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1055
    iget-object v0, p0, Lcom/tencent/android/tpush/service/l;->a:Lcom/tencent/android/tpush/service/a;

    iget-object v1, p0, Lcom/tencent/android/tpush/service/l;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/android/tpush/service/l;->c:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/a;->h(Lcom/tencent/android/tpush/service/a;Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
