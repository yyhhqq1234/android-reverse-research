.class Lcom/netease/dwrg/MovieView$6;
.super Ljava/lang/Object;
.source "MovieView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/dwrg/MovieView;->resumeVideo()V
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
    .line 282
    iput-object p1, p0, Lcom/netease/dwrg/MovieView$6;->this$0:Lcom/netease/dwrg/MovieView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/netease/dwrg/MovieView$6;->this$0:Lcom/netease/dwrg/MovieView;

    invoke-static {v0}, Lcom/netease/dwrg/MovieView;->access$300(Lcom/netease/dwrg/MovieView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/dwrg/MovieView$6;->this$0:Lcom/netease/dwrg/MovieView;

    invoke-static {v0}, Lcom/netease/dwrg/MovieView;->access$500(Lcom/netease/dwrg/MovieView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/netease/dwrg/MovieView$6;->this$0:Lcom/netease/dwrg/MovieView;

    invoke-static {v0}, Lcom/netease/dwrg/MovieView;->access$300(Lcom/netease/dwrg/MovieView;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/dwrg/MovieView$6;->this$0:Lcom/netease/dwrg/MovieView;

    invoke-static {v1}, Lcom/netease/dwrg/MovieView;->access$400(Lcom/netease/dwrg/MovieView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/netease/dwrg/MovieView$6;->this$0:Lcom/netease/dwrg/MovieView;

    invoke-static {v0}, Lcom/netease/dwrg/MovieView;->access$000(Lcom/netease/dwrg/MovieView;)Lcom/netease/dwrg/MovieDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/dwrg/MovieDialog;->show()V

    .line 294
    return-void
.end method
