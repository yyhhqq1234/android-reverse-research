.class Lcom/tencent/liteav/txcvodplayer/e$4;
.super Ljava/lang/Object;
.source "TXCVodVideoView.java"

# interfaces
.implements Lcom/tencent/liteav/txcvodplayer/a$a;


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
    .line 712
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/e$4;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/liteav/txcvodplayer/a$b;)V
    .locals 3
    .param p1    # Lcom/tencent/liteav/txcvodplayer/a$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 748
    invoke-interface {p1}, Lcom/tencent/liteav/txcvodplayer/a$b;->a()Lcom/tencent/liteav/txcvodplayer/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/e$4;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v1}, Lcom/tencent/liteav/txcvodplayer/e;->a(Lcom/tencent/liteav/txcvodplayer/e;)Lcom/tencent/liteav/txcvodplayer/a;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 749
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$4;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->m(Lcom/tencent/liteav/txcvodplayer/e;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSurfaceDestroyed: unmatched render callback\n"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    :goto_0
    return-void

    .line 754
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$4;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0, v2}, Lcom/tencent/liteav/txcvodplayer/e;->a(Lcom/tencent/liteav/txcvodplayer/e;Lcom/tencent/liteav/txcvodplayer/a$b;)Lcom/tencent/liteav/txcvodplayer/a$b;

    .line 755
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$4;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->v(Lcom/tencent/liteav/txcvodplayer/e;)Lcom/tencent/ijk/media/player/IMediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 756
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$4;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->v(Lcom/tencent/liteav/txcvodplayer/e;)Lcom/tencent/ijk/media/player/IMediaPlayer;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/tencent/ijk/media/player/IMediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 758
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$4;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/e;->a()V

    goto :goto_0
.end method

.method public a(Lcom/tencent/liteav/txcvodplayer/a$b;II)V
    .locals 2
    .param p1    # Lcom/tencent/liteav/txcvodplayer/a$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 734
    invoke-interface {p1}, Lcom/tencent/liteav/txcvodplayer/a$b;->a()Lcom/tencent/liteav/txcvodplayer/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/e$4;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v1}, Lcom/tencent/liteav/txcvodplayer/e;->a(Lcom/tencent/liteav/txcvodplayer/e;)Lcom/tencent/liteav/txcvodplayer/a;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 735
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$4;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->m(Lcom/tencent/liteav/txcvodplayer/e;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSurfaceCreated: unmatched render callback\n"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    :goto_0
    return-void

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$4;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0, p1}, Lcom/tencent/liteav/txcvodplayer/e;->a(Lcom/tencent/liteav/txcvodplayer/e;Lcom/tencent/liteav/txcvodplayer/a$b;)Lcom/tencent/liteav/txcvodplayer/a$b;

    .line 740
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$4;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->v(Lcom/tencent/liteav/txcvodplayer/e;)Lcom/tencent/ijk/media/player/IMediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 741
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$4;->a:Lcom/tencent/liteav/txcvodplayer/e;

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/e$4;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v1}, Lcom/tencent/liteav/txcvodplayer/e;->v(Lcom/tencent/liteav/txcvodplayer/e;)Lcom/tencent/ijk/media/player/IMediaPlayer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/txcvodplayer/e;->a(Lcom/tencent/liteav/txcvodplayer/e;Lcom/tencent/ijk/media/player/IMediaPlayer;Lcom/tencent/liteav/txcvodplayer/a$b;)V

    goto :goto_0

    .line 743
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$4;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->w(Lcom/tencent/liteav/txcvodplayer/e;)Z

    goto :goto_0
.end method

.method public a(Lcom/tencent/liteav/txcvodplayer/a$b;III)V
    .locals 4
    .param p1    # Lcom/tencent/liteav/txcvodplayer/a$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 715
    invoke-interface {p1}, Lcom/tencent/liteav/txcvodplayer/a$b;->a()Lcom/tencent/liteav/txcvodplayer/a;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/liteav/txcvodplayer/e$4;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v3}, Lcom/tencent/liteav/txcvodplayer/e;->a(Lcom/tencent/liteav/txcvodplayer/e;)Lcom/tencent/liteav/txcvodplayer/a;

    move-result-object v3

    if-eq v0, v3, :cond_1

    .line 716
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$4;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->m(Lcom/tencent/liteav/txcvodplayer/e;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSurfaceChanged: unmatched render callback\n"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    :cond_0
    :goto_0
    return-void

    .line 720
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$4;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0, p3}, Lcom/tencent/liteav/txcvodplayer/e;->j(Lcom/tencent/liteav/txcvodplayer/e;I)I

    .line 721
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$4;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0, p4}, Lcom/tencent/liteav/txcvodplayer/e;->k(Lcom/tencent/liteav/txcvodplayer/e;I)I

    .line 722
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$4;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->k(Lcom/tencent/liteav/txcvodplayer/e;)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    move v0, v1

    .line 723
    :goto_1
    iget-object v3, p0, Lcom/tencent/liteav/txcvodplayer/e$4;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v3}, Lcom/tencent/liteav/txcvodplayer/e;->a(Lcom/tencent/liteav/txcvodplayer/e;)Lcom/tencent/liteav/txcvodplayer/a;

    move-result-object v3

    invoke-interface {v3}, Lcom/tencent/liteav/txcvodplayer/a;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/tencent/liteav/txcvodplayer/e$4;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v3}, Lcom/tencent/liteav/txcvodplayer/e;->c(Lcom/tencent/liteav/txcvodplayer/e;)I

    move-result v3

    if-ne v3, p3, :cond_3

    iget-object v3, p0, Lcom/tencent/liteav/txcvodplayer/e$4;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v3}, Lcom/tencent/liteav/txcvodplayer/e;->b(Lcom/tencent/liteav/txcvodplayer/e;)I

    move-result v3

    if-ne v3, p4, :cond_3

    :cond_2
    move v2, v1

    .line 724
    :cond_3
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/e$4;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v1}, Lcom/tencent/liteav/txcvodplayer/e;->v(Lcom/tencent/liteav/txcvodplayer/e;)Lcom/tencent/ijk/media/player/IMediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 725
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$4;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->h(Lcom/tencent/liteav/txcvodplayer/e;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 726
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$4;->a:Lcom/tencent/liteav/txcvodplayer/e;

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/e$4;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v1}, Lcom/tencent/liteav/txcvodplayer/e;->h(Lcom/tencent/liteav/txcvodplayer/e;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcvodplayer/e;->b(I)V

    .line 728
    :cond_4
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$4;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/e;->b()V

    goto :goto_0

    :cond_5
    move v0, v2

    .line 722
    goto :goto_1
.end method
