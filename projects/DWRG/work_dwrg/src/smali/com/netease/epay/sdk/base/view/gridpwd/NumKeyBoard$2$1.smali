.class Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard$2$1;
.super Ljava/lang/Object;
.source "NumKeyBoard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard$2;->onDismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard$2;

.field final synthetic val$temp:I


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard$2;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard$2;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard$2$1;->this$1:Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard$2;

    iput p2, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard$2$1;->val$temp:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard$2$1;->this$1:Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard$2;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard$2;->this$0:Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->access$200(Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard$2$1;->this$1:Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard$2;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard$2;->this$0:Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->access$200(Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard$2$1;->val$temp:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollBy(II)V

    .line 110
    :cond_0
    return-void
.end method
