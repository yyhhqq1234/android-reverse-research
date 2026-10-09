.class Lcom/tencent/liteav/audio/impl/c$1;
.super Landroid/content/BroadcastReceiver;
.source "TXCHeadsetMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/audio/impl/c;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/audio/impl/c;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/audio/impl/c;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/c$1;->a:Lcom/tencent/liteav/audio/impl/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 35
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    const-string v0, "state"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const-string v0, "state"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    .line 38
    invoke-static {}, Lcom/tencent/liteav/audio/b;->a()Lcom/tencent/liteav/audio/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/audio/b;->e()I

    move-result v0

    sget v1, Lcom/tencent/liteav/audio/d;->A:I

    if-eq v0, v1, :cond_1

    .line 39
    invoke-static {v2}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->setHeadsetOn(Z)V

    .line 44
    :goto_0
    invoke-static {}, Lcom/tencent/liteav/audio/impl/c;->c()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u8033\u673a\u62d4\u51fa"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_0
    :goto_1
    return-void

    .line 42
    :cond_1
    invoke-static {v3}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->setHeadsetOn(Z)V

    goto :goto_0

    .line 45
    :cond_2
    const-string v0, "state"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v3, v0, :cond_0

    .line 46
    invoke-static {v3}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->setHeadsetOn(Z)V

    .line 47
    invoke-static {}, Lcom/tencent/liteav/audio/impl/c;->c()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u8033\u673a\u63d2\u5165"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
