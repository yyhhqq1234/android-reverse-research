.class Lcom/netease/epay/sdk/base/view/YearDatePicker$1;
.super Ljava/lang/Object;
.source "YearDatePicker.java"

# interfaces
.implements Landroid/widget/NumberPicker$Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/base/view/YearDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
    .line 44
    iput-object p1, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker$1;->this$0:Lcom/netease/epay/sdk/base/view/YearDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public format(I)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 47
    const-string v0, "%02d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
