.class public Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CardBankAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public bankIcon:Lcom/netease/epay/sdk/base/view/NetLoadImageView;

.field public divider:Landroid/view/View;

.field public ivNext:Landroid/widget/ImageView;

.field public rlBank:Landroid/view/View;

.field public rlBankContainer:Landroid/view/View;

.field public rlBankHeader:Landroid/view/View;

.field final synthetic this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;

.field public tvfirstletter:Landroid/widget/TextView;

.field public txtBankDiscount:Landroid/widget/TextView;

.field public txtBankName:Landroid/widget/TextView;

.field public txtTip:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter$ViewHolder;->this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
