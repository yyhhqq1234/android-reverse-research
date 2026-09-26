.class Lcom/netease/epay/sdk/base/ui/SdkActivity$2;
.super Ljava/lang/Object;
.source "SdkActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/base/ui/SdkActivity;->setContentView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/epay/sdk/base/ui/SdkActivity;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base/ui/SdkActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/epay/sdk/base/ui/SdkActivity;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/netease/epay/sdk/base/ui/SdkActivity$2;->this$0:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/SdkActivity$2;->this$0:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/base/ui/SdkActivity;->back(Landroid/view/View;)V

    .line 70
    return-void
.end method
