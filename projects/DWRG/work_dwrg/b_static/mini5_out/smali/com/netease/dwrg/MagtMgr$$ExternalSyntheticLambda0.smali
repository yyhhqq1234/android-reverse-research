.class public final synthetic Lcom/netease/dwrg/MagtMgr$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/mediatek/magt/MAGTServiceAPI$WorkloadAdviceCallback;


# instance fields
.field public final synthetic f$0:Lcom/netease/dwrg/MagtMgr;


# direct methods
.method public synthetic constructor <init>(Lcom/netease/dwrg/MagtMgr;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/dwrg/MagtMgr$$ExternalSyntheticLambda0;->f$0:Lcom/netease/dwrg/MagtMgr;

    return-void
.end method


# virtual methods
.method public final handleAdviceChanged(ILcom/mediatek/magt/PerfReport;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/netease/dwrg/MagtMgr$$ExternalSyntheticLambda0;->f$0:Lcom/netease/dwrg/MagtMgr;

    invoke-virtual {v0, p1, p2}, Lcom/netease/dwrg/MagtMgr;->lambda$registerWorkloadAdvice$0$com-netease-dwrg-MagtMgr(ILcom/mediatek/magt/PerfReport;)V

    return-void
.end method
