.class Lcom/netease/epay/sdk/core/b$5$1;
.super Lcom/netease/epay/sdk/controller/ControllerCallback;
.source "Wallet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/core/b$5;->dealResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/core/b$5;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/core/b$5;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/netease/epay/sdk/core/b$5$1;->a:Lcom/netease/epay/sdk/core/b$5;

    invoke-direct {p0}, Lcom/netease/epay/sdk/controller/ControllerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public dealResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V
    .locals 2
    .param p1, "controllerResult"    # Lcom/netease/epay/sdk/controller/ControllerResult;

    .prologue
    const/4 v1, -0x1

    .line 162
    sput v1, Lcom/netease/epay/sdk/base/core/CoreData;->bizType:I

    .line 163
    const/4 v0, 0x0

    sput-boolean v0, Lcom/netease/epay/sdk/base/core/CoreData;->isOnWalletMode:Z

    .line 164
    new-instance v0, Lcom/netease/epay/sdk/base/event/EpayEvent;

    invoke-direct {v0}, Lcom/netease/epay/sdk/base/event/EpayEvent;-><init>()V

    .line 165
    iput v1, v0, Lcom/netease/epay/sdk/base/event/EpayEvent;->biztype:I

    .line 166
    iget-boolean v1, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->isSuccess:Z

    iput-boolean v1, v0, Lcom/netease/epay/sdk/base/event/EpayEvent;->isSucc:Z

    .line 167
    iget-object v1, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->msg:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/epay/sdk/base/event/EpayEvent;->desp:Ljava/lang/String;

    .line 168
    invoke-static {v0}, Lcom/netease/epay/sdk/ExitUtil;->clearAll(Lcom/netease/epay/sdk/base/event/EpayEvent;)V

    .line 169
    return-void
.end method
