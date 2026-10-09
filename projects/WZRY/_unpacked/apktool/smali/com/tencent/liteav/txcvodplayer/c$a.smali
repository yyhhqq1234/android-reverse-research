.class final Lcom/tencent/liteav/txcvodplayer/c$a;
.super Ljava/lang/Object;
.source "SurfaceRenderView.java"

# interfaces
.implements Lcom/tencent/liteav/txcvodplayer/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/txcvodplayer/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/tencent/liteav/txcvodplayer/c;

.field private b:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/txcvodplayer/c;Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1    # Lcom/tencent/liteav/txcvodplayer/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/SurfaceHolder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/c$a;->a:Lcom/tencent/liteav/txcvodplayer/c;

    .line 133
    iput-object p2, p0, Lcom/tencent/liteav/txcvodplayer/c$a;->b:Landroid/view/SurfaceHolder;

    .line 134
    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/liteav/txcvodplayer/a;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/c$a;->a:Lcom/tencent/liteav/txcvodplayer/c;

    return-object v0
.end method

.method public a(Lcom/tencent/ijk/media/player/IMediaPlayer;)V
    .locals 2

    .prologue
    .line 137
    if-eqz p1, :cond_1

    .line 138
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    instance-of v0, p1, Lcom/tencent/ijk/media/player/ISurfaceTextureHolder;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 140
    check-cast v0, Lcom/tencent/ijk/media/player/ISurfaceTextureHolder;

    .line 141
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tencent/ijk/media/player/ISurfaceTextureHolder;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/c$a;->b:Landroid/view/SurfaceHolder;

    invoke-interface {p1, v0}, Lcom/tencent/ijk/media/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 145
    :cond_1
    return-void
.end method
