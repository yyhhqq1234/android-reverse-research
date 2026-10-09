.class Lcom/netease/neox/PluginNGPush$1$1;
.super Ljava/lang/Object;
.source "PluginNGPush.java"

# interfaces
.implements Lcom/netease/pushclient/OnSubscriberListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/neox/PluginNGPush$1;->onInitSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/neox/PluginNGPush$1;


# direct methods
.method constructor <init>(Lcom/netease/neox/PluginNGPush$1;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/netease/neox/PluginNGPush$1$1;->this$1:Lcom/netease/neox/PluginNGPush$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public SubscriberDone(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    .line 107
    const-string p2, "SubscriberDone"

    invoke-static {p1, p2}, Lcom/netease/neox/NXLog;->i(ILjava/lang/String;)V

    return-void
.end method
