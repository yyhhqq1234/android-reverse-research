.class Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView$1;
.super Ljava/lang/Object;
.source "GridPasswordView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView$1;->this$0:Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView$1;->this$0:Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->access$000(Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;)Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->showKeyboard()V

    .line 144
    return-void
.end method
