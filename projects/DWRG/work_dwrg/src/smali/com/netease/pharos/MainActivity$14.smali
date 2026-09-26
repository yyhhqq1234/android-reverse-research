.class Lcom/netease/pharos/MainActivity$14;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/pharos/MainActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/pharos/MainActivity;


# direct methods
.method constructor <init>(Lcom/netease/pharos/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netease/pharos/MainActivity$14;->this$0:Lcom/netease/pharos/MainActivity;

    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 597
    new-instance v1, Lcom/netease/pharos/qos/QosCore;

    invoke-direct {v1}, Lcom/netease/pharos/qos/QosCore;-><init>()V

    .line 598
    .local v1, "qosCore":Lcom/netease/pharos/qos/QosCore;
    iget-object v2, p0, Lcom/netease/pharos/MainActivity$14;->this$0:Lcom/netease/pharos/MainActivity;

    invoke-static {v2}, Lcom/netease/pharos/MainActivity;->access$1(Lcom/netease/pharos/MainActivity;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/netease/pharos/qos/QosCore;->init(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 599
    invoke-virtual {v1}, Lcom/netease/pharos/qos/QosCore;->parse()I

    .line 601
    :try_start_0
    invoke-virtual {v1}, Lcom/netease/pharos/qos/QosCore;->checkIsNeedToQos()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    :goto_0
    return-void

    .line 602
    :catch_0
    move-exception v0

    .line 604
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
