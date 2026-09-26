.class Lcom/netease/epay/sdk/base/ui/WebViewFragment$3;
.super Ljava/lang/Object;
.source "WebViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/base/ui/WebViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/epay/sdk/base/ui/WebViewFragment;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base/ui/WebViewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/epay/sdk/base/ui/WebViewFragment;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment$3;->this$0:Lcom/netease/epay/sdk/base/ui/WebViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment$3;->this$0:Lcom/netease/epay/sdk/base/ui/WebViewFragment;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->access$600(Lcom/netease/epay/sdk/base/ui/WebViewFragment;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment$3;->this$0:Lcom/netease/epay/sdk/base/ui/WebViewFragment;

    invoke-static {v0, p1}, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->access$700(Lcom/netease/epay/sdk/base/ui/WebViewFragment;Landroid/view/View;)V

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment$3;->this$0:Lcom/netease/epay/sdk/base/ui/WebViewFragment;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->access$800(Lcom/netease/epay/sdk/base/ui/WebViewFragment;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment$3;->this$0:Lcom/netease/epay/sdk/base/ui/WebViewFragment;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->finish()V

    goto :goto_0
.end method
