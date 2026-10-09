.class Lcom/tencent/rtmp1/TXLivePlayer$2;
.super Ljava/lang/Object;
.source "TXLivePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/rtmp1/TXLivePlayer;->postBitmapToMainThread(Lcom/tencent/rtmp1/TXLivePlayer$ITXSnapshotListener;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/rtmp1/TXLivePlayer;

.field final synthetic val$bmp:Landroid/graphics/Bitmap;

.field final synthetic val$listener:Lcom/tencent/rtmp1/TXLivePlayer$ITXSnapshotListener;


# direct methods
.method constructor <init>(Lcom/tencent/rtmp1/TXLivePlayer;Lcom/tencent/rtmp1/TXLivePlayer$ITXSnapshotListener;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 557
    iput-object p1, p0, Lcom/tencent/rtmp1/TXLivePlayer$2;->this$0:Lcom/tencent/rtmp1/TXLivePlayer;

    iput-object p2, p0, Lcom/tencent/rtmp1/TXLivePlayer$2;->val$listener:Lcom/tencent/rtmp1/TXLivePlayer$ITXSnapshotListener;

    iput-object p3, p0, Lcom/tencent/rtmp1/TXLivePlayer$2;->val$bmp:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 560
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer$2;->val$listener:Lcom/tencent/rtmp1/TXLivePlayer$ITXSnapshotListener;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer$2;->val$listener:Lcom/tencent/rtmp1/TXLivePlayer$ITXSnapshotListener;

    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePlayer$2;->val$bmp:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/tencent/rtmp1/TXLivePlayer$ITXSnapshotListener;->onSnapshot(Landroid/graphics/Bitmap;)V

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer$2;->this$0:Lcom/tencent/rtmp1/TXLivePlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/rtmp1/TXLivePlayer;->access$002(Lcom/tencent/rtmp1/TXLivePlayer;Z)Z

    .line 564
    return-void
.end method
