.class Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog$1;
.super Ljava/lang/Object;
.source "CreditCardDatePickDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog$1;->this$0:Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 61
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog$1;->this$0:Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;->access$000(Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog$1;->this$0:Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;->dismiss()V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog$1;->this$0:Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;->access$100(Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog$1;->this$0:Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;->access$200(Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;)Lcom/netease/epay/sdk/base/view/YearDatePicker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/YearDatePicker;->getDates()[I

    move-result-object v0

    .line 65
    if-eqz v0, :cond_2

    array-length v1, v0

    if-le v1, v6, :cond_2

    .line 66
    iget-object v1, p0, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog$1;->this$0:Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;

    aget v2, v0, v7

    invoke-static {v1, v2}, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;->access$302(Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;I)I

    .line 67
    iget-object v1, p0, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog$1;->this$0:Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;

    aget v0, v0, v6

    invoke-static {v1, v0}, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;->access$402(Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;I)I

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog$1;->this$0:Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;->access$300(Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;)I

    move-result v0

    const/16 v1, 0x7d0

    if-ge v0, v1, :cond_3

    .line 71
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog$1;->this$0:Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;

    iget-object v1, p0, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog$1;->this$0:Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;

    invoke-static {v1}, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;->access$300(Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;)I

    move-result v1

    add-int/lit16 v1, v1, 0x7d0

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;->access$302(Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;I)I

    .line 73
    :cond_3
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog$1;->this$0:Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;->access$500(Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;)Lcom/netease/epay/sdk/base/view/listener/CreditDatePickListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 74
    const-string v0, "%02d"

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog$1;->this$0:Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;

    invoke-static {v2}, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;->access$400(Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%02d"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog$1;->this$0:Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;

    invoke-static {v4}, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;->access$300(Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;)I

    move-result v4

    rem-int/lit8 v4, v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%04d"

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog$1;->this$0:Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;

    invoke-static {v5}, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;->access$300(Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    iget-object v2, p0, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog$1;->this$0:Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;

    invoke-static {v2}, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;->access$500(Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;)Lcom/netease/epay/sdk/base/view/listener/CreditDatePickListener;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/netease/epay/sdk/base/view/listener/CreditDatePickListener;->onDateSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog$1;->this$0:Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;

    invoke-static {v1}, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;->access$300(Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;)I

    move-result v1

    iget-object v2, p0, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog$1;->this$0:Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;

    invoke-static {v2}, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;->access$400(Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;)I

    move-result v2

    invoke-virtual {v0, v1, v2, v6}, Ljava/util/Calendar;->set(III)V

    .line 81
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;->access$602(J)J

    .line 82
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog$1;->this$0:Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;->dismiss()V

    goto/16 :goto_0
.end method
