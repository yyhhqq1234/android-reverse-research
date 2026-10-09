.class Lcom/tencent/liteav/txcvodplayer/e$3;
.super Ljava/lang/Object;
.source "TXCVodVideoView.java"

# interfaces
.implements Lcom/tencent/ijk/media/player/IjkMediaPlayer$OnNativeInvokeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/txcvodplayer/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/txcvodplayer/e;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/txcvodplayer/e;)V
    .locals 0

    .prologue
    .line 685
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/e$3;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNativeInvoke(ILandroid/os/Bundle;)Z
    .locals 2

    .prologue
    .line 688
    packed-switch p1, :pswitch_data_0

    .line 694
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 690
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$3;->a:Lcom/tencent/liteav/txcvodplayer/e;

    const-string v1, "ip"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/txcvodplayer/e;->a(Lcom/tencent/liteav/txcvodplayer/e;Ljava/lang/String;)Ljava/lang/String;

    .line 691
    const/4 v0, 0x1

    goto :goto_0

    .line 688
    :pswitch_data_0
    .packed-switch 0x20002
        :pswitch_0
    .end packed-switch
.end method
