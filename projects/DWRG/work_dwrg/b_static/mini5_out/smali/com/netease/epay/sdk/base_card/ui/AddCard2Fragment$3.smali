.class Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment$3;
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
    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment$3;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;

    invoke-direct {p0}, Lcom/netease/epay/sdk/base/simpleimpl/SimpleTextWatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 1
    iget-object p2, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment$3;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;

    const/4 p3, 0x0

    const-string p4, "cardInfoInput"

    const-string v0, "identityNoInput"

    const-string v1, "input"

    invoke-virtual {p2, p4, v0, v1, p3}, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment$3;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->access$302(Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment$3;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;

    invoke-static {p1}, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->access$200(Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;)V

    return-void
.end method
