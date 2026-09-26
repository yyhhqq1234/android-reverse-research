.class Lcom/netease/dwrg/MovieView$4;
.super Ljava/lang/Object;
.source "MovieView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/dwrg/MovieView;->stopVideo(Z)V
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
    .line 241
    iput-object p1, p0, Lcom/netease/dwrg/MovieView$4;->this$0:Lcom/netease/dwrg/MovieView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/netease/dwrg/MovieView$4;->this$0:Lcom/netease/dwrg/MovieView;

    invoke-static {v0}, Lcom/netease/dwrg/MovieView;->access$300(Lcom/netease/dwrg/MovieView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/netease/dwrg/MovieView$4;->this$0:Lcom/netease/dwrg/MovieView;

    invoke-static {v0}, Lcom/netease/dwrg/MovieView;->access$300(Lcom/netease/dwrg/MovieView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 248
    iget-object v0, p0, Lcom/netease/dwrg/MovieView$4;->this$0:Lcom/netease/dwrg/MovieView;

    invoke-static {v0}, Lcom/netease/dwrg/MovieView;->access$300(Lcom/netease/dwrg/MovieView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 249
    iget-object v0, p0, Lcom/netease/dwrg/MovieView$4;->this$0:Lcom/netease/dwrg/MovieView;

    invoke-static {v0}, Lcom/netease/dwrg/MovieView;->access$300(Lcom/netease/dwrg/MovieView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 250
    iget-object v0, p0, Lcom/netease/dwrg/MovieView$4;->this$0:Lcom/netease/dwrg/MovieView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/dwrg/MovieView;->access$302(Lcom/netease/dwrg/MovieView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/netease/dwrg/MovieView$4;->this$0:Lcom/netease/dwrg/MovieView;

    invoke-static {v0}, Lcom/netease/dwrg/MovieView;->access$000(Lcom/netease/dwrg/MovieView;)Lcom/netease/dwrg/MovieDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/dwrg/MovieDialog;->dismiss()V

    .line 254
    return-void
.end method
