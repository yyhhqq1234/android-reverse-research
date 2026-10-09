.class public Lcom/tencent/tmassistantbase/util/ParamPair;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public final mFirstParam:Ljava/lang/Object;

.field public final mSecondParam:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/tencent/tmassistantbase/util/ParamPair;->mFirstParam:Ljava/lang/Object;

    .line 8
    iput-object p2, p0, Lcom/tencent/tmassistantbase/util/ParamPair;->mSecondParam:Ljava/lang/Object;

    .line 9
    return-void
.end method
