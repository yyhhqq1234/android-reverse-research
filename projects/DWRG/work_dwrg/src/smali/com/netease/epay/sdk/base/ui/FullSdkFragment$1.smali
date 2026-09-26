.class Lcom/netease/epay/sdk/base/ui/FullSdkFragment$1;
.super Ljava/lang/Object;
.source "FullSdkFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/epay/sdk/base/ui/FullSdkFragment;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base/ui/FullSdkFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/epay/sdk/base/ui/FullSdkFragment;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/netease/epay/sdk/base/ui/FullSdkFragment$1;->this$0:Lcom/netease/epay/sdk/base/ui/FullSdkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/FullSdkFragment$1;->this$0:Lcom/netease/epay/sdk/base/ui/FullSdkFragment;

    invoke-static {v0, p1}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->access$000(Lcom/netease/epay/sdk/base/ui/FullSdkFragment;Landroid/view/View;)V

    .line 31
    return-void
.end method
