.class Lcom/netease/dwrg/VideoPlayer$1;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/dwrg/VideoPlayer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/dwrg/VideoPlayer;


# direct methods
.method constructor <init>(Lcom/netease/dwrg/VideoPlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/dwrg/VideoPlayer;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/netease/dwrg/VideoPlayer$1;->this$0:Lcom/netease/dwrg/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 91
    if-eqz p2, :cond_0

    .line 93
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 94
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 96
    iget-object v1, p0, Lcom/netease/dwrg/VideoPlayer$1;->this$0:Lcom/netease/dwrg/VideoPlayer;

    invoke-virtual {v1}, Lcom/netease/dwrg/VideoPlayer;->stopVideo()V

    .line 99
    .end local v0    # "action":I
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
