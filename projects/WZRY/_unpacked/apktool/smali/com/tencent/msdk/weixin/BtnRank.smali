.class public Lcom/tencent/msdk/weixin/BtnRank;
.super Lcom/tencent/msdk/weixin/BtnBase;
.source "BtnRank.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/msdk/weixin/BtnRank$RankView;
    }
.end annotation


# static fields
.field private static sDefaultButtonName:Ljava/lang/String;

.field private static sDefaultMsgExt:Ljava/lang/String;

.field private static sDefaultTitle:Ljava/lang/String;

.field protected static sRankViewKey:Ljava/lang/String;


# instance fields
.field private mRankView:Lcom/tencent/msdk/weixin/BtnRank$RankView;

.field private sDefaultName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, ""

    sput-object v0, Lcom/tencent/msdk/weixin/BtnRank;->sDefaultMsgExt:Ljava/lang/String;

    .line 11
    const-string v0, ""

    sput-object v0, Lcom/tencent/msdk/weixin/BtnRank;->sDefaultTitle:Ljava/lang/String;

    .line 12
    const-string v0, ""

    sput-object v0, Lcom/tencent/msdk/weixin/BtnRank;->sDefaultButtonName:Ljava/lang/String;

    .line 13
    const-string v0, "rankview"

    sput-object v0, Lcom/tencent/msdk/weixin/BtnRank;->sRankViewKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/tencent/msdk/weixin/BtnBase;-><init>()V

    .line 8
    new-instance v0, Lcom/tencent/msdk/weixin/BtnRank$RankView;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/msdk/weixin/BtnRank$RankView;-><init>(Lcom/tencent/msdk/weixin/BtnRank;Lcom/tencent/msdk/weixin/BtnRank$1;)V

    iput-object v0, p0, Lcom/tencent/msdk/weixin/BtnRank;->mRankView:Lcom/tencent/msdk/weixin/BtnRank$RankView;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/weixin/BtnRank;->sDefaultName:Ljava/lang/String;

    .line 26
    const-string v0, "rank"

    iput-object v0, p0, Lcom/tencent/msdk/weixin/BtnRank;->mType:Ljava/lang/String;

    .line 28
    iget-object v0, p0, Lcom/tencent/msdk/weixin/BtnRank;->sDefaultName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/weixin/BtnRank;->setmName(Ljava/lang/String;)V

    .line 29
    sget-object v0, Lcom/tencent/msdk/weixin/BtnRank;->sDefaultTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/weixin/BtnRank;->setmTitle(Ljava/lang/String;)V

    .line 30
    sget-object v0, Lcom/tencent/msdk/weixin/BtnRank;->sDefaultButtonName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/weixin/BtnRank;->setmRankViewButtonName(Ljava/lang/String;)V

    .line 31
    sget-object v0, Lcom/tencent/msdk/weixin/BtnRank;->sDefaultMsgExt:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/weixin/BtnRank;->setmMessageExt(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "rankBtnName"    # Ljava/lang/String;
    .param p4, "msgExt"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/tencent/msdk/weixin/BtnBase;-><init>()V

    .line 8
    new-instance v0, Lcom/tencent/msdk/weixin/BtnRank$RankView;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/msdk/weixin/BtnRank$RankView;-><init>(Lcom/tencent/msdk/weixin/BtnRank;Lcom/tencent/msdk/weixin/BtnRank$1;)V

    iput-object v0, p0, Lcom/tencent/msdk/weixin/BtnRank;->mRankView:Lcom/tencent/msdk/weixin/BtnRank$RankView;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/weixin/BtnRank;->sDefaultName:Ljava/lang/String;

    .line 17
    const-string v0, "rank"

    iput-object v0, p0, Lcom/tencent/msdk/weixin/BtnRank;->mType:Ljava/lang/String;

    .line 18
    invoke-virtual {p0, p1}, Lcom/tencent/msdk/weixin/BtnRank;->setmName(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, p2}, Lcom/tencent/msdk/weixin/BtnRank;->setmTitle(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, p3}, Lcom/tencent/msdk/weixin/BtnRank;->setmRankViewButtonName(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0, p4}, Lcom/tencent/msdk/weixin/BtnRank;->setmMessageExt(Ljava/lang/String;)V

    .line 22
    return-void
.end method


# virtual methods
.method public setmMessageExt(Ljava/lang/String;)V
    .locals 1
    .param p1, "mMessageExt"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/msdk/weixin/BtnRank;->mRankView:Lcom/tencent/msdk/weixin/BtnRank$RankView;

    invoke-virtual {v0, p1}, Lcom/tencent/msdk/weixin/BtnRank$RankView;->setmMessageExt(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public setmRankViewButtonName(Ljava/lang/String;)V
    .locals 1
    .param p1, "mButtonName"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tencent/msdk/weixin/BtnRank;->mRankView:Lcom/tencent/msdk/weixin/BtnRank$RankView;

    invoke-virtual {v0, p1}, Lcom/tencent/msdk/weixin/BtnRank$RankView;->setmRankViewButtonName(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public setmTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "mTitle"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tencent/msdk/weixin/BtnRank;->mRankView:Lcom/tencent/msdk/weixin/BtnRank$RankView;

    invoke-virtual {v0, p1}, Lcom/tencent/msdk/weixin/BtnRank$RankView;->setmTitle(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 67
    :try_start_0
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    .line 68
    .local v1, "js":Lorg/json/JSONStringer;
    invoke-virtual {v1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v2

    const-string/jumbo v3, "type"

    .line 69
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/msdk/weixin/BtnRank;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "name"

    .line 70
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/msdk/weixin/BtnRank;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    sget-object v3, Lcom/tencent/msdk/weixin/BtnRank;->sRankViewKey:Ljava/lang/String;

    .line 71
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    .line 72
    invoke-virtual {v2}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v2

    const-string/jumbo v3, "title"

    .line 73
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/msdk/weixin/BtnRank;->mRankView:Lcom/tencent/msdk/weixin/BtnRank$RankView;

    invoke-static {v3}, Lcom/tencent/msdk/weixin/BtnRank$RankView;->access$300(Lcom/tencent/msdk/weixin/BtnRank$RankView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "button_name"

    .line 74
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/msdk/weixin/BtnRank;->mRankView:Lcom/tencent/msdk/weixin/BtnRank$RankView;

    invoke-static {v3}, Lcom/tencent/msdk/weixin/BtnRank$RankView;->access$200(Lcom/tencent/msdk/weixin/BtnRank$RankView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "message_ext"

    .line 75
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/msdk/weixin/BtnRank;->mRankView:Lcom/tencent/msdk/weixin/BtnRank$RankView;

    invoke-static {v3}, Lcom/tencent/msdk/weixin/BtnRank$RankView;->access$100(Lcom/tencent/msdk/weixin/BtnRank$RankView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    .line 76
    invoke-virtual {v2}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v2

    .line 77
    invoke-virtual {v2}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 78
    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 81
    .end local v1    # "js":Lorg/json/JSONStringer;
    :goto_0
    return-object v2

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 81
    const-string v2, ""

    goto :goto_0
.end method
