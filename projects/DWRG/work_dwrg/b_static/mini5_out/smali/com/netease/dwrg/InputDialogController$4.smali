.class Lcom/netease/dwrg/InputDialogController$4;
.super Ljava/lang/Object;
.source "InputDialogController.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/dwrg/InputDialogController;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/dwrg/InputDialogController;


# direct methods
.method constructor <init>(Lcom/netease/dwrg/InputDialogController;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/netease/dwrg/InputDialogController$4;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_1

    .line 123
    iget-object p1, p0, Lcom/netease/dwrg/InputDialogController$4;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {p1}, Lcom/netease/dwrg/InputDialogController;->access$600(Lcom/netease/dwrg/InputDialogController;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 124
    iget-object p1, p0, Lcom/netease/dwrg/InputDialogController$4;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-virtual {p1, p2}, Lcom/netease/dwrg/InputDialogController;->finishInput(Z)V

    :cond_0
    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
