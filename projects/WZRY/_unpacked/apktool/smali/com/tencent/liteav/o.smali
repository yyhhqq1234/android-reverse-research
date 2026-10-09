.class public abstract Lcom/tencent/liteav/o;
.super Ljava/lang/Object;
.source "TXIPlayer.java"


# instance fields
.field protected a:Lcom/tencent/liteav/g;

.field protected b:Landroid/content/Context;

.field protected c:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

.field protected d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tencent/liteav/basic/c/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/tencent/liteav/o;->a:Lcom/tencent/liteav/g;

    .line 24
    iput-object v0, p0, Lcom/tencent/liteav/o;->b:Landroid/content/Context;

    .line 26
    iput-object v0, p0, Lcom/tencent/liteav/o;->c:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    .line 31
    if-eqz p1, :cond_0

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/o;->b:Landroid/content/Context;

    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;I)I
.end method

.method public abstract a(Z)I
.end method

.method public a()V
    .locals 2

    .prologue
    .line 52
    const-string v0, "TXIPlayer"

    const-string v1, "pause not support"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public abstract a(I)V
.end method

.method public a(Landroid/view/Surface;)V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public a(Lcom/tencent/liteav/basic/c/a;)V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/liteav/o;->d:Ljava/lang/ref/WeakReference;

    .line 75
    return-void
.end method

.method public a(Lcom/tencent/liteav/g;)V
    .locals 1

    .prologue
    .line 41
    iput-object p1, p0, Lcom/tencent/liteav/o;->a:Lcom/tencent/liteav/g;

    .line 42
    iget-object v0, p0, Lcom/tencent/liteav/o;->a:Lcom/tencent/liteav/g;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/tencent/liteav/g;

    invoke-direct {v0}, Lcom/tencent/liteav/g;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/o;->a:Lcom/tencent/liteav/g;

    .line 45
    :cond_0
    return-void
.end method

.method public a(Lcom/tencent/liteav/p;)V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public a(Lcom/tencent/rtmp1/TXLivePlayer$ITXAudioRawDataListener;)V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public a(Lcom/tencent/rtmp1/ui/TXCloudVideoView;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/tencent/liteav/o;->c:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    .line 67
    return-void
.end method

.method public a([B)Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public a_(I)V
    .locals 2

    .prologue
    .line 62
    const-string v0, "TXIPlayer"

    const-string v1, "seek not support"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 56
    const-string v0, "TXIPlayer"

    const-string v1, "resume not support"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public b(F)V
    .locals 2

    .prologue
    .line 99
    const-string v0, "TXIPlayer"

    const-string v1, "rate not implement"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public abstract b(I)V
.end method

.method public abstract b(Z)V
.end method

.method public c(Z)V
    .locals 2

    .prologue
    .line 95
    const-string v0, "TXIPlayer"

    const-string v1, "autoPlay not implement"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public abstract c()Z
.end method

.method public d()Landroid/view/TextureView;
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Lcom/tencent/liteav/g;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tencent/liteav/o;->a:Lcom/tencent/liteav/g;

    return-object v0
.end method
