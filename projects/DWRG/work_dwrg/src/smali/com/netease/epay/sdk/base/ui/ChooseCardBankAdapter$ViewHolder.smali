.class Lcom/netease/epay/sdk/base/ui/ChooseCardBankAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ChooseCardBankAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/base/ui/ChooseCardBankAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field public ivChecked:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/netease/epay/sdk/base/ui/ChooseCardBankAdapter;

.field public tvBankInfo:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base/ui/ChooseCardBankAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/epay/sdk/base/ui/ChooseCardBankAdapter;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankAdapter$ViewHolder;->this$0:Lcom/netease/epay/sdk/base/ui/ChooseCardBankAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
