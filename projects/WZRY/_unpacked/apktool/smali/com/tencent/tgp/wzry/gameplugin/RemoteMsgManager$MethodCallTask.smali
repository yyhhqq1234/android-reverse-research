.class Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$MethodCallTask;
.super Ljava/lang/Object;
.source "RemoteMsgManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MethodCallTask"
.end annotation


# instance fields
.field private mEvent:Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;

.field final synthetic this$0:Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;


# direct methods
.method public constructor <init>(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;)V
    .locals 0
    .param p2, "event"    # Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;

    .prologue
    .line 463
    iput-object p1, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$MethodCallTask;->this$0:Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 464
    iput-object p2, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$MethodCallTask;->mEvent:Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;

    .line 465
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 470
    :try_start_0
    const-string v4, "MessageManger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "method call task run, threadid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    iget-object v2, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$MethodCallTask;->mEvent:Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;

    .line 472
    .local v2, "event":Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;
    iget-object v4, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$MethodCallTask;->this$0:Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;

    invoke-static {v4}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->access$1000(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;)V

    .line 475
    iget-object v4, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$MethodCallTask;->this$0:Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;

    invoke-static {v4}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->access$200(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    :try_start_1
    iget-object v4, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$MethodCallTask;->this$0:Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;

    invoke-static {v4}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->access$300(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;)Z

    move-result v0

    .line 477
    .local v0, "bounded":Z
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 479
    if-nez v0, :cond_2

    .line 480
    :try_start_2
    const-string v4, "MessageManger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unbind yet, wait to bind, eventname:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object v4, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$MethodCallTask;->this$0:Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;

    invoke-static {v4}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->access$400(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 482
    :try_start_3
    iget-object v4, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$MethodCallTask;->this$0:Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;

    invoke-static {v4}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->access$400(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;)Ljava/lang/Object;

    move-result-object v4

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 483
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 484
    :try_start_4
    iget-object v4, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$MethodCallTask;->this$0:Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;

    invoke-static {v4}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->access$200(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 485
    :try_start_5
    iget-object v4, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$MethodCallTask;->this$0:Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;

    invoke-static {v4}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->access$300(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 486
    const-string v4, "MessageManger"

    const-string v6, "bind wait 300ms not ok, return "

    invoke-static {v4, v6}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 508
    .end local v0    # "bounded":Z
    .end local v2    # "event":Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;
    :cond_0
    :goto_0
    return-void

    .line 477
    .restart local v2    # "event":Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;
    :catchall_0
    move-exception v4

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v4
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    .line 505
    .end local v2    # "event":Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;
    :catch_0
    move-exception v1

    .line 506
    .local v1, "e":Ljava/lang/Throwable;
    const-string v4, "MessageManger"

    const-string v5, ""

    invoke-static {v4, v5, v1}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 483
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "bounded":Z
    .restart local v2    # "event":Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;
    :catchall_1
    move-exception v4

    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v4
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    .line 489
    :cond_1
    :try_start_a
    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 492
    :cond_2
    :try_start_b
    iget-object v4, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$MethodCallTask;->this$0:Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;

    invoke-static {v4}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->access$1100(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;)Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->isPluginEnable()Z

    move-result v4

    if-nez v4, :cond_3

    .line 493
    const-string v4, "MessageManger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "model:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$MethodCallTask;->this$0:Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;

    invoke-static {v6}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->access$1200(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is disabled, return"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0

    goto :goto_0

    .line 489
    :catchall_2
    move-exception v4

    :try_start_c
    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v4

    .line 496
    :cond_3
    iget-object v4, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$MethodCallTask;->this$0:Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;

    invoke-static {v4}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->access$1300(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, v2, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    .line 497
    .local v3, "method":Ljava/lang/reflect/Method;
    if-nez v3, :cond_4

    .line 498
    const-string v4, "MessageManger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "eventName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has no match Method"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 501
    :cond_4
    iget-object v4, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$MethodCallTask;->this$0:Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;

    invoke-static {v4}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->access$100(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;)Lcom/tencent/tgp/wzry/service/IRemoteService;

    move-result-object v4

    iget-object v5, v2, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;->args:[Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    invoke-static {}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->getDebugFlag()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 503
    const-string v4, "MessageManger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "method call task end, event.args:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;->args:[Ljava/lang/Object;

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0

    goto/16 :goto_0
.end method
