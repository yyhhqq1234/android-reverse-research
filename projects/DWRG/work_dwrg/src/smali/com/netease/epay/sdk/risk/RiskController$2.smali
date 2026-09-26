.class Lcom/netease/epay/sdk/risk/RiskController$2;
.super Ljava/lang/Object;
.source "RiskController.java"

# interfaces
.implements Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment$IOnlyMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/risk/RiskController;->start(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/risk/RiskController;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/risk/RiskController;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/netease/epay/sdk/risk/RiskController$2;->a:Lcom/netease/epay/sdk/risk/RiskController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/RiskController$2;->a:Lcom/netease/epay/sdk/risk/RiskController;

    new-instance v1, Lcom/netease/epay/sdk/base/event/BaseEvent;

    invoke-direct {v1, p1, p2}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/risk/RiskController;->deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    .line 94
    return-void
.end method
