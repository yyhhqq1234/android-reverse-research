.class Lcom/netease/dwrg/InputView$6;
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

    .line 233
    iput-object p1, p0, Lcom/netease/dwrg/InputView$6;->this$0:Lcom/netease/dwrg/InputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    .line 236
    iget-object p1, p0, Lcom/netease/dwrg/InputView$6;->this$0:Lcom/netease/dwrg/InputView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/netease/dwrg/InputView;->inputFinish(Z)V

    .line 237
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    .line 238
    new-instance v0, Lcom/netease/dwrg/InputView$6$1;

    invoke-direct {v0, p0}, Lcom/netease/dwrg/InputView$6$1;-><init>(Lcom/netease/dwrg/InputView$6;)V

    const-wide/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
