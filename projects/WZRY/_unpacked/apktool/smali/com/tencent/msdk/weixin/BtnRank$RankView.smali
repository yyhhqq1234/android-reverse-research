.class Lcom/tencent/msdk/weixin/BtnRank$RankView;
.super Ljava/lang/Object;
.source "BtnRank.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/weixin/BtnRank;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RankView"
.end annotation


# instance fields
.field private mMessageExt:Ljava/lang/String;

.field private mRankViewButtonName:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/tencent/msdk/weixin/BtnRank;


# direct methods
.method private constructor <init>(Lcom/tencent/msdk/weixin/BtnRank;)V
    .locals 1

    .prologue
    .line 34
    iput-object p1, p0, Lcom/tencent/msdk/weixin/BtnRank$RankView;->this$0:Lcom/tencent/msdk/weixin/BtnRank;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/weixin/BtnRank$RankView;->mTitle:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/weixin/BtnRank$RankView;->mRankViewButtonName:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/weixin/BtnRank$RankView;->mMessageExt:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/msdk/weixin/BtnRank;Lcom/tencent/msdk/weixin/BtnRank$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/msdk/weixin/BtnRank;
    .param p2, "x1"    # Lcom/tencent/msdk/weixin/BtnRank$1;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/tencent/msdk/weixin/BtnRank$RankView;-><init>(Lcom/tencent/msdk/weixin/BtnRank;)V

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/msdk/weixin/BtnRank$RankView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/weixin/BtnRank$RankView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tencent/msdk/weixin/BtnRank$RankView;->mMessageExt:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tencent/msdk/weixin/BtnRank$RankView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/weixin/BtnRank$RankView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tencent/msdk/weixin/BtnRank$RankView;->mRankViewButtonName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tencent/msdk/weixin/BtnRank$RankView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/weixin/BtnRank$RankView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tencent/msdk/weixin/BtnRank$RankView;->mTitle:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public setmMessageExt(Ljava/lang/String;)V
    .locals 0
    .param p1, "mMessageExt"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/tencent/msdk/weixin/BtnRank$RankView;->mMessageExt:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setmRankViewButtonName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mButtonName"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/tencent/msdk/weixin/BtnRank$RankView;->mRankViewButtonName:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setmTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "mTitle"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/tencent/msdk/weixin/BtnRank$RankView;->mTitle:Ljava/lang/String;

    .line 41
    return-void
.end method
