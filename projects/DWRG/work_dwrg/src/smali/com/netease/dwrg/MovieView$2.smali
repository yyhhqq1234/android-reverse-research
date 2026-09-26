.class Lcom/netease/dwrg/MovieView$2;
.super Ljava/lang/Object;
.source "MovieView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/dwrg/MovieView;->show()V
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
    .line 140
    iput-object p1, p0, Lcom/netease/dwrg/MovieView$2;->this$0:Lcom/netease/dwrg/MovieView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/netease/dwrg/MovieView$2;->this$0:Lcom/netease/dwrg/MovieView;

    invoke-static {v0}, Lcom/netease/dwrg/MovieView;->access$000(Lcom/netease/dwrg/MovieView;)Lcom/netease/dwrg/MovieDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/netease/dwrg/MovieView$2;->this$0:Lcom/netease/dwrg/MovieView;

    invoke-static {v0}, Lcom/netease/dwrg/MovieView;->access$000(Lcom/netease/dwrg/MovieView;)Lcom/netease/dwrg/MovieDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/dwrg/MovieDialog;->show()V

    .line 147
    :cond_0
    return-void
.end method
