.class Lcom/tencent/rtmp1/TXLivePusher$4;
.super Ljava/lang/Object;
.source "TXLivePusher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/rtmp1/TXLivePusher;->statusNotify()V
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
    .line 1141
    iput-object p1, p0, Lcom/tencent/rtmp1/TXLivePusher$4;->this$0:Lcom/tencent/rtmp1/TXLivePusher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher$4;->this$0:Lcom/tencent/rtmp1/TXLivePusher;

    invoke-static {v0}, Lcom/tencent/rtmp1/TXLivePusher;->access$100(Lcom/tencent/rtmp1/TXLivePusher;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1145
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher$4;->this$0:Lcom/tencent/rtmp1/TXLivePusher;

    invoke-static {v0}, Lcom/tencent/rtmp1/TXLivePusher;->access$200(Lcom/tencent/rtmp1/TXLivePusher;)V

    .line 1147
    :cond_0
    return-void
.end method
