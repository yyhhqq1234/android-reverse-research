.class Lcom/tencent/android/tpush/service/o;
.super Landroid/os/Handler;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/tencent/android/tpush/service/n;


# direct methods
.method constructor <init>(Lcom/tencent/android/tpush/service/n;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 559
    iput-object p1, p0, Lcom/tencent/android/tpush/service/o;->a:Lcom/tencent/android/tpush/service/n;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x4e20

    const/4 v4, 0x1

    const v3, 0x40466666    # 3.1f

    .line 562
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 563
    if-eqz p1, :cond_0

    .line 564
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 707
    const-string v0, "PushServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown handler msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    :cond_0
    :goto_0
    return-void

    .line 568
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/android/tpush/service/o;->a:Lcom/tencent/android/tpush/service/n;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/n;->a(Lcom/tencent/android/tpush/service/n;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 571
    const-string v0, "PushServiceManager"

    const-string v1, "start as main service......"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->i()Z

    move-result v0

    if-nez v0, :cond_3

    .line 574
    sget-boolean v0, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v0, :cond_1

    .line 575
    const-string v0, "PushServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service\'s first running at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/android/tpush/service/n;->j()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    :cond_1
    invoke-static {v4}, Lcom/tencent/android/tpush/service/n;->a(Z)Z

    .line 584
    invoke-static {}, Lcom/tencent/android/tpush/common/l;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 585
    const-string v0, "permission check failed, kill service!"

    .line 586
    const-string v1, "XGService"

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Lcom/tencent/android/tpush/service/o;->a:Lcom/tencent/android/tpush/service/n;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/n;->d()V

    .line 588
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/e/h;->s(Landroid/content/Context;)V

    .line 593
    :cond_2
    invoke-static {}, Lcom/tencent/android/tpush/service/a;->a()Lcom/tencent/android/tpush/service/a;

    move-result-object v0

    invoke-static {}, Lcom/tencent/android/tpush/service/n;->j()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/service/a;->a(Landroid/content/Context;)V

    .line 599
    :cond_3
    invoke-static {}, Lcom/tencent/android/tpush/service/channel/b;->a()Lcom/tencent/android/tpush/service/channel/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/channel/b;->b()V

    .line 602
    iget-object v0, p0, Lcom/tencent/android/tpush/service/o;->a:Lcom/tencent/android/tpush/service/n;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/n;->e()V

    .line 603
    invoke-static {}, Lcom/tencent/android/tpush/service/channel/b;->a()Lcom/tencent/android/tpush/service/channel/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/channel/b;->g()V

    .line 605
    invoke-static {}, Lcom/tencent/android/tpush/common/g;->a()Lcom/tencent/android/tpush/common/g;

    move-result-object v0

    new-instance v1, Lcom/tencent/android/tpush/service/p;

    invoke-direct {v1, p0}, Lcom/tencent/android/tpush/service/p;-><init>(Lcom/tencent/android/tpush/service/o;)V

    invoke-virtual {v0, v1, v6, v7}, Lcom/tencent/android/tpush/common/g;->a(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 616
    :cond_4
    iget-object v0, p0, Lcom/tencent/android/tpush/service/o;->a:Lcom/tencent/android/tpush/service/n;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/n;->b(Lcom/tencent/android/tpush/service/n;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 617
    const-string v0, "PushServiceManager"

    const-string v1, "start as slave service......"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 620
    sget-boolean v0, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v0, :cond_5

    .line 621
    const-string v0, "PushServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Slave Service\'s first running at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/android/tpush/service/n;->j()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    :cond_5
    invoke-static {v4}, Lcom/tencent/android/tpush/service/n;->b(Z)Z

    .line 630
    invoke-static {}, Lcom/tencent/android/tpush/service/channel/b;->a()Lcom/tencent/android/tpush/service/channel/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/channel/b;->h()V

    goto/16 :goto_0

    .line 636
    :cond_6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 637
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->j()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/android/tpush/service/XGPushServiceV3;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 638
    const-string v1, "PushServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/android/tpush/service/n;->j()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " XGPushServiceV3 try to stop self."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/a/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->j()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 645
    :pswitch_1
    invoke-static {}, Lcom/tencent/android/tpush/service/channel/b;->a()Lcom/tencent/android/tpush/service/channel/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/channel/b;->b()V

    goto/16 :goto_0

    .line 648
    :pswitch_2
    invoke-static {}, Lcom/tencent/android/tpush/service/channel/b;->a()Lcom/tencent/android/tpush/service/channel/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/channel/b;->c()V

    goto/16 :goto_0

    .line 653
    :pswitch_3
    const-string v0, "PushServiceManager"

    const-string v1, "go to slave to main service ..."

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    iget-object v0, p0, Lcom/tencent/android/tpush/service/o;->a:Lcom/tencent/android/tpush/service/n;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/n;->a(Lcom/tencent/android/tpush/service/n;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    const-string v0, "PushServiceManager"

    const-string/jumbo v1, "swicth main service ..."

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->i()Z

    move-result v0

    if-nez v0, :cond_9

    .line 658
    sget-boolean v0, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v0, :cond_7

    .line 659
    const-string v0, "PushServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service\'s first running at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/android/tpush/service/n;->j()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    :cond_7
    invoke-static {v4}, Lcom/tencent/android/tpush/service/n;->a(Z)Z

    .line 668
    invoke-static {}, Lcom/tencent/android/tpush/common/l;->a()Z

    move-result v0

    if-nez v0, :cond_8

    .line 670
    const-string v0, "permission check failed, kill service!"

    .line 671
    const-string v1, "XGService"

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    iget-object v0, p0, Lcom/tencent/android/tpush/service/o;->a:Lcom/tencent/android/tpush/service/n;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/n;->d()V

    .line 673
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/e/h;->s(Landroid/content/Context;)V

    .line 678
    :cond_8
    invoke-static {}, Lcom/tencent/android/tpush/service/a;->a()Lcom/tencent/android/tpush/service/a;

    move-result-object v0

    invoke-static {}, Lcom/tencent/android/tpush/service/n;->j()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/service/a;->a(Landroid/content/Context;)V

    .line 684
    :cond_9
    invoke-static {}, Lcom/tencent/android/tpush/service/channel/b;->a()Lcom/tencent/android/tpush/service/channel/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/channel/b;->b()V

    .line 687
    iget-object v0, p0, Lcom/tencent/android/tpush/service/o;->a:Lcom/tencent/android/tpush/service/n;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/n;->e()V

    .line 688
    invoke-static {}, Lcom/tencent/android/tpush/service/channel/b;->a()Lcom/tencent/android/tpush/service/channel/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/channel/b;->g()V

    .line 692
    invoke-static {}, Lcom/tencent/android/tpush/common/g;->a()Lcom/tencent/android/tpush/common/g;

    move-result-object v0

    new-instance v1, Lcom/tencent/android/tpush/service/q;

    invoke-direct {v1, p0}, Lcom/tencent/android/tpush/service/q;-><init>(Lcom/tencent/android/tpush/service/o;)V

    invoke-virtual {v0, v1, v6, v7}, Lcom/tencent/android/tpush/common/g;->a(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 564
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
