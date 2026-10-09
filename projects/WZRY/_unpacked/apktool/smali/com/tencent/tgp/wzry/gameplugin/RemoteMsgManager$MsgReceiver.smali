.class Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$MsgReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RemoteMsgManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MsgReceiver"
.end annotation


# static fields
.field public static final CMD:Ljava/lang/String; = "cmd"

.field public static final METHOD:Ljava/lang/String; = "method"

.field public static final PARAM:Ljava/lang/String; = "param"

.field public static final SCENE:Ljava/lang/String; = "scene"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 396
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$1;

    .prologue
    .line 396
    invoke-direct {p0}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$MsgReceiver;-><init>()V

    return-void
.end method

.method private forwardMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "gameObject"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "args"    # Ljava/lang/String;

    .prologue
    .line 439
    invoke-static {p1, p2, p3}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 406
    :try_start_0
    const-string v6, "MessageManger"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "action:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 408
    .local v0, "bundler":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 430
    .end local v0    # "bundler":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 412
    .restart local v0    # "bundler":Landroid/os/Bundle;
    :cond_1
    const-string v6, "cmd"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 413
    .local v1, "cmd":Ljava/lang/String;
    const-string v6, "MessageManger"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cmd:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-string v6, "query_game_state"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 415
    const-string v6, "scene"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 416
    .local v3, "gameObject":Ljava/lang/String;
    const-string v6, "method"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 417
    .local v4, "methodName":Ljava/lang/String;
    const-string v6, "param"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 419
    .local v5, "params":Ljava/lang/String;
    const-string v6, "MessageManger"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "gameObject:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", method:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", param:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 421
    :cond_2
    const-string v6, "MessageManger"

    const-string v7, "param cannot be empty "

    invoke-static {v6, v7}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 426
    .end local v0    # "bundler":Landroid/os/Bundle;
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v3    # "gameObject":Ljava/lang/String;
    .end local v4    # "methodName":Ljava/lang/String;
    .end local v5    # "params":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 427
    .local v2, "e":Ljava/lang/Throwable;
    const-string v6, "MessageManger"

    const-string v7, ""

    invoke-static {v6, v7, v2}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 424
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v0    # "bundler":Landroid/os/Bundle;
    .restart local v1    # "cmd":Ljava/lang/String;
    .restart local v3    # "gameObject":Ljava/lang/String;
    .restart local v4    # "methodName":Ljava/lang/String;
    .restart local v5    # "params":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-direct {p0, v3, v4, v5}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$MsgReceiver;->forwardMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
