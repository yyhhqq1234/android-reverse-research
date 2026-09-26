.class Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet$1;
.super Ljava/lang/Object;
.source "CustomActionSheet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet$1;->this$0:Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet$1;->this$0:Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;->access$000(Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 109
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet$1;->this$0:Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;->access$100(Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet$1;->this$0:Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;

    invoke-static {v1}, Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;->access$000(Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 110
    return-void
.end method
