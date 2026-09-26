.class Lcom/netease/epay/sdk/base/view/AgreementTextView$2;
.super Ljava/lang/Object;
.source "AgreementTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/base/view/AgreementTextView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/epay/sdk/base/view/AgreementTextView;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base/view/AgreementTextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/epay/sdk/base/view/AgreementTextView;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/netease/epay/sdk/base/view/AgreementTextView$2;->this$0:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/AgreementTextView$2;->this$0:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/view/AgreementTextView;->access$200(Lcom/netease/epay/sdk/base/view/AgreementTextView;)Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;->dismiss()V

    .line 75
    return-void
.end method
