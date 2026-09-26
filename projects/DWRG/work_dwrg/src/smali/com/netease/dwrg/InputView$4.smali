.class Lcom/netease/dwrg/InputView$4;
.super Ljava/lang/Object;
.source "InputView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/dwrg/InputView;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/dwrg/InputView;


# direct methods
.method constructor <init>(Lcom/netease/dwrg/InputView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/dwrg/InputView;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/netease/dwrg/InputView$4;->this$0:Lcom/netease/dwrg/InputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 164
    iget-object v1, p0, Lcom/netease/dwrg/InputView$4;->this$0:Lcom/netease/dwrg/InputView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/netease/dwrg/InputView;->inputFinish(Z)V

    .line 165
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 166
    .local v0, "timer":Ljava/util/Timer;
    new-instance v1, Lcom/netease/dwrg/InputView$4$1;

    invoke-direct {v1, p0}, Lcom/netease/dwrg/InputView$4$1;-><init>(Lcom/netease/dwrg/InputView$4;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 175
    return-void
.end method
