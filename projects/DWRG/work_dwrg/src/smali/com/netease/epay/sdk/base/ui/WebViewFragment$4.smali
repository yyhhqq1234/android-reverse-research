.class Lcom/netease/epay/sdk/base/ui/WebViewFragment$4;
.super Ljava/lang/Object;
.source "WebViewFragment.java"

# interfaces
.implements Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment$ITwoBtnFragCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/base/ui/WebViewFragment;->finish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/epay/sdk/base/ui/WebViewFragment;

.field final synthetic val$pageClosePromptInfo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base/ui/WebViewFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/epay/sdk/base/ui/WebViewFragment;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment$4;->this$0:Lcom/netease/epay/sdk/base/ui/WebViewFragment;

    iput-object p2, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment$4;->val$pageClosePromptInfo:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLeft()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    const-string v0, "\u53d6\u6d88"

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment$4;->val$pageClosePromptInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getRight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    const-string v0, "\u5173\u95ed"

    return-object v0
.end method

.method public leftClick()V
    .locals 0

    .prologue
    .line 298
    return-void
.end method

.method public rightClick()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment$4;->this$0:Lcom/netease/epay/sdk/base/ui/WebViewFragment;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment$4;->this$0:Lcom/netease/epay/sdk/base/ui/WebViewFragment;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment$4;->this$0:Lcom/netease/epay/sdk/base/ui/WebViewFragment;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 294
    :cond_0
    return-void
.end method
