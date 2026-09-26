.class Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard$3;
.super Ljava/lang/Object;
.source "NumKeyBoard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;
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
    .line 162
    iput-object p1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard$3;->this$0:Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard$3;->this$0:Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->showKeyboard()V

    .line 166
    return-void
.end method
