.class Lcom/tencent/rtmp1/TXLivePlayer$1;
.super Ljava/lang/Object;
.source "TXLivePlayer.java"

# interfaces
.implements Lcom/tencent/liteav/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/rtmp1/TXLivePlayer;->setVideoRawDataListener(Lcom/tencent/rtmp1/TXLivePlayer$ITXVideoRawDataListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/rtmp1/TXLivePlayer;

.field final synthetic val$listener:Lcom/tencent/rtmp1/TXLivePlayer$ITXVideoRawDataListener;


# direct methods
.method constructor <init>(Lcom/tencent/rtmp1/TXLivePlayer;Lcom/tencent/rtmp1/TXLivePlayer$ITXVideoRawDataListener;)V
    .locals 0

    .prologue
    .line 513
    iput-object p1, p0, Lcom/tencent/rtmp1/TXLivePlayer$1;->this$0:Lcom/tencent/rtmp1/TXLivePlayer;

    iput-object p2, p0, Lcom/tencent/rtmp1/TXLivePlayer$1;->val$listener:Lcom/tencent/rtmp1/TXLivePlayer$ITXVideoRawDataListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoRawDataAvailable([BIII)V
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer$1;->val$listener:Lcom/tencent/rtmp1/TXLivePlayer$ITXVideoRawDataListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/rtmp1/TXLivePlayer$ITXVideoRawDataListener;->onVideoRawDataAvailable([BIII)V

    .line 517
    return-void
.end method
