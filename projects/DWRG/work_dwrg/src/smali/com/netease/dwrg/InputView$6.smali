.class Lcom/netease/dwrg/InputView$6;
.super Ljava/lang/Object;
.source "InputView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 190
    iput-object p1, p0, Lcom/netease/dwrg/InputView$6;->this$0:Lcom/netease/dwrg/InputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 195
    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/netease/dwrg/InputView$6;->this$0:Lcom/netease/dwrg/InputView;

    invoke-virtual {v1, v0}, Lcom/netease/dwrg/InputView;->inputFinish(Z)V

    .line 197
    const/4 v0, 0x1

    .line 199
    :cond_0
    return v0
.end method
