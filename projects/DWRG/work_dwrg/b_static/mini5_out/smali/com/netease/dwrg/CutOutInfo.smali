.class Lcom/netease/dwrg/CutOutInfo;
.super Ljava/lang/Object;
.source "Client.java"


# instance fields
.field public mIsCutOut:Z

.field public mSafeAreaBottom:I

.field public mSafeAreaLeft:I

.field public mSafeAreaRight:I

.field public mSafeAreaTop:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/netease/dwrg/CutOutInfo;->mIsCutOut:Z

    const/4 v0, -0x1

    .line 76
    iput v0, p0, Lcom/netease/dwrg/CutOutInfo;->mSafeAreaLeft:I

    .line 77
    iput v0, p0, Lcom/netease/dwrg/CutOutInfo;->mSafeAreaRight:I

    .line 78
    iput v0, p0, Lcom/netease/dwrg/CutOutInfo;->mSafeAreaTop:I

    .line 79
    iput v0, p0, Lcom/netease/dwrg/CutOutInfo;->mSafeAreaBottom:I

    return-void
.end method
