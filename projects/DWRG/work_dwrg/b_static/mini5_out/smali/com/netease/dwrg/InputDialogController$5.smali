.class Lcom/netease/dwrg/InputDialogController$5;
.super Ljava/lang/Object;
.source "InputDialogController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 132
    iput-object p1, p0, Lcom/netease/dwrg/InputDialogController$5;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 135
    iget-object p1, p0, Lcom/netease/dwrg/InputDialogController$5;->this$0:Lcom/netease/dwrg/InputDialogController;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/netease/dwrg/InputDialogController;->finishInput(Z)V

    return-void
.end method
