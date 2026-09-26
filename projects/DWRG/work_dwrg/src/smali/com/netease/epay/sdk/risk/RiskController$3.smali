.class Lcom/netease/epay/sdk/risk/RiskController$3;
.super Ljava/lang/Object;
.source "RiskController.java"

# interfaces
.implements Lcom/netease/epay/sdk/risk/RiskController$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/risk/RiskController;->start(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/base/ui/SdkFragment;

.field final synthetic b:Lcom/netease/epay/sdk/risk/RiskController;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/risk/RiskController;Lcom/netease/epay/sdk/base/ui/SdkFragment;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/netease/epay/sdk/risk/RiskController$3;->b:Lcom/netease/epay/sdk/risk/RiskController;

    iput-object p2, p0, Lcom/netease/epay/sdk/risk/RiskController$3;->a:Lcom/netease/epay/sdk/base/ui/SdkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/epay/sdk/risk/ui/RiskActivity;)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/RiskController$3;->a:Lcom/netease/epay/sdk/base/ui/SdkFragment;

    invoke-static {v0, p1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentInActivity(Lcom/netease/epay/sdk/base/ui/SdkFragment;Landroid/support/v4/app/FragmentActivity;)Z

    .line 113
    return-void
.end method
