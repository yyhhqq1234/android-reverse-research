.class Lcom/netease/dwrg/InputView$8;
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

    .line 262
    iput-object p1, p0, Lcom/netease/dwrg/InputView$8;->this$0:Lcom/netease/dwrg/InputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    const/4 p3, 0x0

    if-ne p2, p1, :cond_0

    .line 268
    iget-object p1, p0, Lcom/netease/dwrg/InputView$8;->this$0:Lcom/netease/dwrg/InputView;

    invoke-virtual {p1, p3}, Lcom/netease/dwrg/InputView;->inputFinish(Z)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return p3
.end method
