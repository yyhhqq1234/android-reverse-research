.class Lcom/subao/common/f/b$a;
.super Landroid/content/BroadcastReceiver;
.source "LogCatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 60
    const-string v1, "cn.wsds.log.action.start_catch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/subao/common/f/b;->b(Ljava/lang/String;)V

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    const-string v1, "cn.wsds.log.action.stop_catch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-static {}, Lcom/subao/common/f/b;->a()V

    goto :goto_0
.end method
