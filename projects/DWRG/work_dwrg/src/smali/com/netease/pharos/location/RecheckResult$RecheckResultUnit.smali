.class public Lcom/netease/pharos/location/RecheckResult$RecheckResultUnit;
.super Ljava/lang/Object;
.source "RecheckResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/pharos/location/RecheckResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecheckResultUnit"
.end annotation


# instance fields
.field public mBsetRtt:I

.field public mCount:I

.field public mIp:Ljava/lang/String;

.field public mLoss:I

.field public mSuccessCount:I

.field public mWorstRtt:I

.field final synthetic this$0:Lcom/netease/pharos/location/RecheckResult;


# direct methods
.method public constructor <init>(Lcom/netease/pharos/location/RecheckResult;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 84
    iput-object p1, p0, Lcom/netease/pharos/location/RecheckResult$RecheckResultUnit;->this$0:Lcom/netease/pharos/location/RecheckResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/pharos/location/RecheckResult$RecheckResultUnit;->mIp:Ljava/lang/String;

    .line 86
    iput v1, p0, Lcom/netease/pharos/location/RecheckResult$RecheckResultUnit;->mCount:I

    .line 87
    iput v1, p0, Lcom/netease/pharos/location/RecheckResult$RecheckResultUnit;->mSuccessCount:I

    .line 88
    iput v1, p0, Lcom/netease/pharos/location/RecheckResult$RecheckResultUnit;->mLoss:I

    .line 89
    iput v1, p0, Lcom/netease/pharos/location/RecheckResult$RecheckResultUnit;->mBsetRtt:I

    .line 90
    iput v1, p0, Lcom/netease/pharos/location/RecheckResult$RecheckResultUnit;->mWorstRtt:I

    return-void
.end method


# virtual methods
.method public setmBsetRtt(I)V
    .locals 1
    .param p1, "bsetRtt"    # I

    .prologue
    .line 113
    iget v0, p0, Lcom/netease/pharos/location/RecheckResult$RecheckResultUnit;->mBsetRtt:I

    if-ge v0, p1, :cond_0

    .line 114
    iput p1, p0, Lcom/netease/pharos/location/RecheckResult$RecheckResultUnit;->mBsetRtt:I

    .line 116
    :cond_0
    return-void
.end method

.method public setmCount(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 99
    const/4 v0, -0x1

    iget v1, p0, Lcom/netease/pharos/location/RecheckResult$RecheckResultUnit;->mCount:I

    if-ne v0, v1, :cond_0

    .line 100
    iput p1, p0, Lcom/netease/pharos/location/RecheckResult$RecheckResultUnit;->mCount:I

    .line 102
    :cond_0
    return-void
.end method

.method public setmIp(Ljava/lang/String;)V
    .locals 1
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/netease/pharos/location/RecheckResult$RecheckResultUnit;->mIp:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 94
    iput-object p1, p0, Lcom/netease/pharos/location/RecheckResult$RecheckResultUnit;->mIp:Ljava/lang/String;

    .line 96
    :cond_0
    return-void
.end method

.method public setmLoss(I)V
    .locals 0
    .param p1, "loss"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/netease/pharos/location/RecheckResult$RecheckResultUnit;->mLoss:I

    .line 110
    return-void
.end method

.method public setmSuccessCount(I)V
    .locals 0
    .param p1, "successCount"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/netease/pharos/location/RecheckResult$RecheckResultUnit;->mSuccessCount:I

    .line 106
    return-void
.end method

.method public setmWorstRtt(I)V
    .locals 1
    .param p1, "worstRtt"    # I

    .prologue
    .line 119
    iget v0, p0, Lcom/netease/pharos/location/RecheckResult$RecheckResultUnit;->mWorstRtt:I

    if-le p1, v0, :cond_0

    .line 120
    iput p1, p0, Lcom/netease/pharos/location/RecheckResult$RecheckResultUnit;->mWorstRtt:I

    .line 122
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 127
    .local v0, "result":Ljava/lang/StringBuffer;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    const-string v1, "mIp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/location/RecheckResult$RecheckResultUnit;->mIp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    const-string v1, "mCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/netease/pharos/location/RecheckResult$RecheckResultUnit;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    const-string v1, "mSuccessCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/netease/pharos/location/RecheckResult$RecheckResultUnit;->mSuccessCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    const-string v1, "mLoss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/netease/pharos/location/RecheckResult$RecheckResultUnit;->mLoss:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    const-string v1, "mBsetRtt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/netease/pharos/location/RecheckResult$RecheckResultUnit;->mBsetRtt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    const-string v1, "mWorstRtt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/netease/pharos/location/RecheckResult$RecheckResultUnit;->mWorstRtt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
