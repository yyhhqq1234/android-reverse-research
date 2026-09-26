.class Lcom/netease/dwrg/MovieView$5;
.super Ljava/lang/Object;
.source "MovieView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/dwrg/MovieView;->pauseVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/dwrg/MovieView;


# direct methods
.method constructor <init>(Lcom/netease/dwrg/MovieView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/dwrg/MovieView;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/netease/dwrg/MovieView$5;->this$0:Lcom/netease/dwrg/MovieView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/netease/dwrg/MovieView$5;->this$0:Lcom/netease/dwrg/MovieView;

    invoke-static {v0}, Lcom/netease/dwrg/MovieView;->access$300(Lcom/netease/dwrg/MovieView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/netease/dwrg/MovieView$5;->this$0:Lcom/netease/dwrg/MovieView;

    iget-object v1, p0, Lcom/netease/dwrg/MovieView$5;->this$0:Lcom/netease/dwrg/MovieView;

    invoke-static {v1}, Lcom/netease/dwrg/MovieView;->access$300(Lcom/netease/dwrg/MovieView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/netease/dwrg/MovieView;->access$402(Lcom/netease/dwrg/MovieView;I)I

    .line 273
    iget-object v0, p0, Lcom/netease/dwrg/MovieView$5;->this$0:Lcom/netease/dwrg/MovieView;

    invoke-static {v0}, Lcom/netease/dwrg/MovieView;->access$300(Lcom/netease/dwrg/MovieView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 275
    :cond_0
    return-void
.end method
