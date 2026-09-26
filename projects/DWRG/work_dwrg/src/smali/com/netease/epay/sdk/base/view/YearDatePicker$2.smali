.class Lcom/netease/epay/sdk/base/view/YearDatePicker$2;
.super Ljava/lang/Object;
.source "YearDatePicker.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/base/view/YearDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/epay/sdk/base/view/YearDatePicker;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base/view/YearDatePicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/epay/sdk/base/view/YearDatePicker;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker$2;->this$0:Lcom/netease/epay/sdk/base/view/YearDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 3
    .param p1, "picker"    # Landroid/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker$2;->this$0:Lcom/netease/epay/sdk/base/view/YearDatePicker;

    invoke-static {v0, p3}, Lcom/netease/epay/sdk/base/view/YearDatePicker;->access$002(Lcom/netease/epay/sdk/base/view/YearDatePicker;I)I

    .line 86
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker$2;->this$0:Lcom/netease/epay/sdk/base/view/YearDatePicker;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/view/YearDatePicker;->access$100(Lcom/netease/epay/sdk/base/view/YearDatePicker;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker$2;->this$0:Lcom/netease/epay/sdk/base/view/YearDatePicker;

    invoke-static {v2}, Lcom/netease/epay/sdk/base/view/YearDatePicker;->access$000(Lcom/netease/epay/sdk/base/view/YearDatePicker;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 87
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker$2;->this$0:Lcom/netease/epay/sdk/base/view/YearDatePicker;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/view/YearDatePicker;->access$200(Lcom/netease/epay/sdk/base/view/YearDatePicker;)V

    .line 88
    return-void
.end method
