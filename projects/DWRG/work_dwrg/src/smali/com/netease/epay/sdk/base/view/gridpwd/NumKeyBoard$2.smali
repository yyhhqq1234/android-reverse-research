.class Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard$2;
.super Ljava/lang/Object;
.source "NumKeyBoard.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->viewInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard$2;->this$0:Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard$2;->this$0:Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->access$100(Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;)I

    move-result v0

    if-lez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard$2;->this$0:Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->access$100(Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;)I

    move-result v0

    .line 103
    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard$2;->this$0:Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->access$102(Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;I)I

    .line 104
    new-instance v1, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard$2$1;

    invoke-direct {v1, p0, v0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard$2$1;-><init>(Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard$2;I)V

    const/16 v0, 0x64

    invoke-static {v1, v0}, Lcom/netease/epay/sdk/base/util/UIDispatcher;->runOnUiThread(Ljava/lang/Runnable;I)V

    .line 113
    :cond_0
    return-void
.end method
