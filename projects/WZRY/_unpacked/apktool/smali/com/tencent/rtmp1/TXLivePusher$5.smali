.class Lcom/tencent/rtmp1/TXLivePusher$5;
.super Ljava/lang/Object;
.source "TXLivePusher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/rtmp1/TXLivePusher;->transferPushEvent(ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/rtmp1/TXLivePusher;

.field final synthetic val$finalEvent:I

.field final synthetic val$param:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/tencent/rtmp1/TXLivePusher;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1416
    iput-object p1, p0, Lcom/tencent/rtmp1/TXLivePusher$5;->this$0:Lcom/tencent/rtmp1/TXLivePusher;

    iput p2, p0, Lcom/tencent/rtmp1/TXLivePusher$5;->val$finalEvent:I

    iput-object p3, p0, Lcom/tencent/rtmp1/TXLivePusher$5;->val$param:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1419
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher$5;->this$0:Lcom/tencent/rtmp1/TXLivePusher;

    invoke-static {v0}, Lcom/tencent/rtmp1/TXLivePusher;->access$300(Lcom/tencent/rtmp1/TXLivePusher;)Lcom/tencent/rtmp1/ITXLivePushListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1420
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher$5;->this$0:Lcom/tencent/rtmp1/TXLivePusher;

    invoke-static {v0}, Lcom/tencent/rtmp1/TXLivePusher;->access$300(Lcom/tencent/rtmp1/TXLivePusher;)Lcom/tencent/rtmp1/ITXLivePushListener;

    move-result-object v0

    iget v1, p0, Lcom/tencent/rtmp1/TXLivePusher$5;->val$finalEvent:I

    iget-object v2, p0, Lcom/tencent/rtmp1/TXLivePusher$5;->val$param:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/tencent/rtmp1/ITXLivePushListener;->onPushEvent(ILandroid/os/Bundle;)V

    .line 1422
    :cond_0
    return-void
.end method
