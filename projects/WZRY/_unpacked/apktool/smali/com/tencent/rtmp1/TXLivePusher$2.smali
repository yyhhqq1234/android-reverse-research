.class Lcom/tencent/rtmp1/TXLivePusher$2;
.super Ljava/lang/Object;
.source "TXLivePusher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/rtmp1/TXLivePusher;->onNotifyEvent(ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/rtmp1/TXLivePusher;

.field final synthetic val$event:I

.field final synthetic val$param:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/tencent/rtmp1/TXLivePusher;Landroid/os/Bundle;I)V
    .locals 0

    .prologue
    .line 948
    iput-object p1, p0, Lcom/tencent/rtmp1/TXLivePusher$2;->this$0:Lcom/tencent/rtmp1/TXLivePusher;

    iput-object p2, p0, Lcom/tencent/rtmp1/TXLivePusher$2;->val$param:Landroid/os/Bundle;

    iput p3, p0, Lcom/tencent/rtmp1/TXLivePusher$2;->val$event:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 951
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher$2;->this$0:Lcom/tencent/rtmp1/TXLivePusher;

    invoke-static {v0}, Lcom/tencent/rtmp1/TXLivePusher;->access$000(Lcom/tencent/rtmp1/TXLivePusher;)Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 952
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher$2;->this$0:Lcom/tencent/rtmp1/TXLivePusher;

    invoke-static {v0}, Lcom/tencent/rtmp1/TXLivePusher;->access$000(Lcom/tencent/rtmp1/TXLivePusher;)Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tencent/rtmp1/TXLivePusher$2;->val$param:Landroid/os/Bundle;

    iget v3, p0, Lcom/tencent/rtmp1/TXLivePusher$2;->val$event:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/rtmp1/ui/TXCloudVideoView;->setLogText(Landroid/os/Bundle;Landroid/os/Bundle;I)V

    .line 954
    :cond_0
    return-void
.end method
