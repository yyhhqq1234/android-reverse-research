.class public final Lim/yixin/sdk/channel/YXMessageChannel$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "YXMessageChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/yixin/sdk/channel/YXMessageChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Receiver"
.end annotation


# static fields
.field public static final callbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lim/yixin/sdk/channel/YXMessageChannel$CallBack;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final defaultCallback:Lim/yixin/sdk/channel/YXMessageChannel$CallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lim/yixin/sdk/channel/YXMessageChannel$Receiver;->callbacks:Ljava/util/Map;

    .line 81
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lim/yixin/sdk/channel/YXMessageChannel$Receiver;-><init>(Lim/yixin/sdk/channel/YXMessageChannel$CallBack;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Lim/yixin/sdk/channel/YXMessageChannel$CallBack;)V
    .locals 0
    .param p1, "paramCallBack"    # Lim/yixin/sdk/channel/YXMessageChannel$CallBack;

    .prologue
    .line 90
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 91
    iput-object p1, p0, Lim/yixin/sdk/channel/YXMessageChannel$Receiver;->defaultCallback:Lim/yixin/sdk/channel/YXMessageChannel$CallBack;

    .line 92
    return-void
.end method

.method public static registerCallBack(Ljava/lang/String;Lim/yixin/sdk/channel/YXMessageChannel$CallBack;)V
    .locals 1
    .param p0, "actionName"    # Ljava/lang/String;
    .param p1, "callBack"    # Lim/yixin/sdk/channel/YXMessageChannel$CallBack;

    .prologue
    .line 107
    sget-object v0, Lim/yixin/sdk/channel/YXMessageChannel$Receiver;->callbacks:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    return-void
.end method

.method public static unregisterCallBack(Ljava/lang/String;)V
    .locals 1
    .param p0, "actionName"    # Ljava/lang/String;

    .prologue
    .line 111
    sget-object v0, Lim/yixin/sdk/channel/YXMessageChannel$Receiver;->callbacks:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "paramIntent"    # Landroid/content/Intent;

    .prologue
    .line 95
    iget-object v1, p0, Lim/yixin/sdk/channel/YXMessageChannel$Receiver;->defaultCallback:Lim/yixin/sdk/channel/YXMessageChannel$CallBack;

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lim/yixin/sdk/channel/YXMessageChannel$Receiver;->defaultCallback:Lim/yixin/sdk/channel/YXMessageChannel$CallBack;

    invoke-interface {v1, p2}, Lim/yixin/sdk/channel/YXMessageChannel$CallBack;->handleMessage(Landroid/content/Intent;)V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    sget-object v1, Lim/yixin/sdk/channel/YXMessageChannel$Receiver;->callbacks:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/yixin/sdk/channel/YXMessageChannel$CallBack;

    .line 100
    .local v0, "callBack":Lim/yixin/sdk/channel/YXMessageChannel$CallBack;
    if-eqz v0, :cond_0

    .line 103
    invoke-interface {v0, p2}, Lim/yixin/sdk/channel/YXMessageChannel$CallBack;->handleMessage(Landroid/content/Intent;)V

    goto :goto_0
.end method
