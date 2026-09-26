.class Lcom/netease/unisdk/gmbridge/view/ConfirmDialog$2;
.super Ljava/lang/Object;
.source "ConfirmDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;->initDialogView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog$2;->this$0:Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog$2;->this$0:Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;

    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;->dismiss()V

    .line 42
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->setFloatBtnVisible(Z)V

    .line 43
    return-void
.end method
