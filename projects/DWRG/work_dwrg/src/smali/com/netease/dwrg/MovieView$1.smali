.class Lcom/netease/dwrg/MovieView$1;
.super Ljava/lang/Object;
.source "MovieView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/dwrg/MovieView;->initialize()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/dwrg/MovieView;

.field final synthetic val$movie_view:Lcom/netease/dwrg/MovieView;


# direct methods
.method constructor <init>(Lcom/netease/dwrg/MovieView;Lcom/netease/dwrg/MovieView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/dwrg/MovieView;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/netease/dwrg/MovieView$1;->this$0:Lcom/netease/dwrg/MovieView;

    iput-object p2, p0, Lcom/netease/dwrg/MovieView$1;->val$movie_view:Lcom/netease/dwrg/MovieView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 83
    iget-object v1, p0, Lcom/netease/dwrg/MovieView$1;->this$0:Lcom/netease/dwrg/MovieView;

    invoke-static {v1}, Lcom/netease/dwrg/MovieView;->access$000(Lcom/netease/dwrg/MovieView;)Lcom/netease/dwrg/MovieDialog;

    move-result-object v1

    if-nez v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/netease/dwrg/MovieView$1;->this$0:Lcom/netease/dwrg/MovieView;

    new-instance v2, Lcom/netease/dwrg/MovieDialog;

    iget-object v3, p0, Lcom/netease/dwrg/MovieView$1;->this$0:Lcom/netease/dwrg/MovieView;

    invoke-static {v3}, Lcom/netease/dwrg/MovieView;->access$100(Lcom/netease/dwrg/MovieView;)Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/dwrg/MovieView$1;->val$movie_view:Lcom/netease/dwrg/MovieView;

    invoke-direct {v2, v3, v4}, Lcom/netease/dwrg/MovieDialog;-><init>(Landroid/content/Context;Lcom/netease/dwrg/MovieView;)V

    invoke-static {v1, v2}, Lcom/netease/dwrg/MovieView;->access$002(Lcom/netease/dwrg/MovieView;Lcom/netease/dwrg/MovieDialog;)Lcom/netease/dwrg/MovieDialog;

    .line 86
    iget-object v1, p0, Lcom/netease/dwrg/MovieView$1;->this$0:Lcom/netease/dwrg/MovieView;

    new-instance v2, Landroid/view/SurfaceView;

    iget-object v3, p0, Lcom/netease/dwrg/MovieView$1;->this$0:Lcom/netease/dwrg/MovieView;

    invoke-static {v3}, Lcom/netease/dwrg/MovieView;->access$100(Lcom/netease/dwrg/MovieView;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/netease/dwrg/MovieView;->access$202(Lcom/netease/dwrg/MovieView;Landroid/view/SurfaceView;)Landroid/view/SurfaceView;

    .line 87
    iget-object v1, p0, Lcom/netease/dwrg/MovieView$1;->this$0:Lcom/netease/dwrg/MovieView;

    invoke-static {v1}, Lcom/netease/dwrg/MovieView;->access$000(Lcom/netease/dwrg/MovieView;)Lcom/netease/dwrg/MovieDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/dwrg/MovieView$1;->this$0:Lcom/netease/dwrg/MovieView;

    invoke-static {v2}, Lcom/netease/dwrg/MovieView;->access$200(Lcom/netease/dwrg/MovieView;)Landroid/view/SurfaceView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/dwrg/MovieDialog;->setView(Landroid/view/View;)V

    .line 88
    iget-object v1, p0, Lcom/netease/dwrg/MovieView$1;->this$0:Lcom/netease/dwrg/MovieView;

    invoke-static {v1}, Lcom/netease/dwrg/MovieView;->access$200(Lcom/netease/dwrg/MovieView;)Landroid/view/SurfaceView;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/dwrg/MovieView$1;->val$movie_view:Lcom/netease/dwrg/MovieView;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 90
    iget-object v1, p0, Lcom/netease/dwrg/MovieView$1;->this$0:Lcom/netease/dwrg/MovieView;

    invoke-static {v1}, Lcom/netease/dwrg/MovieView;->access$200(Lcom/netease/dwrg/MovieView;)Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 91
    .local v0, "holder":Landroid/view/SurfaceHolder;
    iget-object v1, p0, Lcom/netease/dwrg/MovieView$1;->val$movie_view:Lcom/netease/dwrg/MovieView;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 93
    .end local v0    # "holder":Landroid/view/SurfaceHolder;
    :cond_0
    return-void
.end method
