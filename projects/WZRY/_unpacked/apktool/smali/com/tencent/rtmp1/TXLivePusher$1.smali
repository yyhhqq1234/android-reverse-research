.class Lcom/tencent/rtmp1/TXLivePusher$1;
.super Ljava/lang/Object;
.source "TXLivePusher.java"

# interfaces
.implements Lcom/tencent/liteav/audio/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/rtmp1/TXLivePusher;->setBGMNofify(Lcom/tencent/rtmp1/TXLivePusher$OnBGMNotify;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/rtmp1/TXLivePusher;


# direct methods
.method constructor <init>(Lcom/tencent/rtmp1/TXLivePusher;)V
    .locals 0

    .prologue
    .line 487
    iput-object p1, p0, Lcom/tencent/rtmp1/TXLivePusher$1;->this$0:Lcom/tencent/rtmp1/TXLivePusher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMixPcmData([B)V
    .locals 0

    .prologue
    .line 511
    return-void
.end method

.method public onMixPlayBegin()V
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher$1;->this$0:Lcom/tencent/rtmp1/TXLivePusher;

    iget-object v0, v0, Lcom/tencent/rtmp1/TXLivePusher;->mOldBGMNotify:Lcom/tencent/rtmp1/TXLivePusher$OnBGMNotify;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher$1;->this$0:Lcom/tencent/rtmp1/TXLivePusher;

    iget-object v0, v0, Lcom/tencent/rtmp1/TXLivePusher;->mOldBGMNotify:Lcom/tencent/rtmp1/TXLivePusher$OnBGMNotify;

    invoke-interface {v0}, Lcom/tencent/rtmp1/TXLivePusher$OnBGMNotify;->onBGMStart()V

    .line 491
    :cond_0
    return-void
.end method

.method public onMixPlayComplete(I)V
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher$1;->this$0:Lcom/tencent/rtmp1/TXLivePusher;

    iget-object v0, v0, Lcom/tencent/rtmp1/TXLivePusher;->mOldBGMNotify:Lcom/tencent/rtmp1/TXLivePusher$OnBGMNotify;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher$1;->this$0:Lcom/tencent/rtmp1/TXLivePusher;

    iget-object v0, v0, Lcom/tencent/rtmp1/TXLivePusher;->mOldBGMNotify:Lcom/tencent/rtmp1/TXLivePusher$OnBGMNotify;

    invoke-interface {v0, p1}, Lcom/tencent/rtmp1/TXLivePusher$OnBGMNotify;->onBGMComplete(I)V

    .line 501
    :cond_0
    return-void
.end method

.method public onMixPlayProgress(JJ)V
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher$1;->this$0:Lcom/tencent/rtmp1/TXLivePusher;

    iget-object v0, v0, Lcom/tencent/rtmp1/TXLivePusher;->mOldBGMNotify:Lcom/tencent/rtmp1/TXLivePusher$OnBGMNotify;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher$1;->this$0:Lcom/tencent/rtmp1/TXLivePusher;

    iget-object v0, v0, Lcom/tencent/rtmp1/TXLivePusher;->mOldBGMNotify:Lcom/tencent/rtmp1/TXLivePusher$OnBGMNotify;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/rtmp1/TXLivePusher$OnBGMNotify;->onBGMProgress(JJ)V

    .line 496
    :cond_0
    return-void
.end method

.method public onPCMData([B)V
    .locals 0

    .prologue
    .line 506
    return-void
.end method
