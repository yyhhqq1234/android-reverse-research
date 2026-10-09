.class Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment$1;
.super Ljava/lang/Object;
.source "AddCard3Fragment.java"

# interfaces
.implements Lcom/netease/epay/sdk/base/view/SmsAuthCodeEditText$OnTextInputListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment$1;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextInputChanged(Ljava/lang/String;I)V
    .locals 2

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment$1;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment;

    const/4 p2, 0x0

    const-string v0, "codeInput"

    const-string v1, "input"

    invoke-virtual {p1, v0, v0, v1, p2}, Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public onTextInputCompleted(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment$1;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment;

    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment;->clickDone(Ljava/lang/String;)V

    return-void
.end method
