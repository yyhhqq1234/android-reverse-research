.class Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity$1;
.super Ljava/lang/Object;
.source "FragmentLayoutActivity.java"

# interfaces
.implements Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment$ITwoBtnFragCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;->interceptExit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity$1;->this$0:Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLeft()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const-string v0, "\u5426"

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity$1;->this$0:Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;->getExitDialogMsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    const-string v0, "\u662f"

    return-object v0
.end method

.method public leftClick()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public rightClick()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity$1;->this$0:Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;->access$000(Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;)Ljava/util/Stack;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity$1;->this$0:Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;->access$000(Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity$1;->this$0:Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;->access$000(Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity$1;->this$0:Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;->finish()V

    .line 91
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity$1;->this$0:Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;

    sget-object v1, Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;->USER_ABORT:Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;->exitNotify(Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;)V

    .line 92
    return-void
.end method
