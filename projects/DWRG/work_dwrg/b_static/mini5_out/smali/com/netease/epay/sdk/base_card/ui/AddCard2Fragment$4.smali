.class Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment$4;
.super Lcom/netease/epay/sdk/base/simpleimpl/SimpleTextWatcher;
.source "AddCard2Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->initBankInputItemView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment$4;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;

    invoke-direct {p0}, Lcom/netease/epay/sdk/base/simpleimpl/SimpleTextWatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 1
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment$4;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;

    const/4 p2, 0x0

    const-string p3, "cardInfoInput"

    const-string p4, "cvvInput"

    const-string v0, "input"

    invoke-virtual {p1, p3, p4, v0, p2}, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
