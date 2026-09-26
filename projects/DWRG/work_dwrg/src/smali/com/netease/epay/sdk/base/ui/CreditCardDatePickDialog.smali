.class public Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "CreditCardDatePickDialog.java"


# static fields
.field private static lastDate:J


# instance fields
.field private btnNo:Landroid/view/View;

.field private btnYes:Landroid/view/View;

.field private clickListener:Landroid/view/View$OnClickListener;

.field private mListener:Lcom/netease/epay/sdk/base/view/listener/CreditDatePickListener;

.field private month:I

.field private year:I

.field private yearDatePicker:Lcom/netease/epay/sdk/base/view/YearDatePicker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;->lastDate:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 58
    new-instance v0, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog$1;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog$1;-><init>(Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;->clickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;->btnNo:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;->btnYes:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;)Lcom/netease/epay/sdk/base/view/YearDatePicker;
    .locals 1
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;->yearDatePicker:Lcom/netease/epay/sdk/base/view/YearDatePicker;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;

    .prologue
    .line 21
    iget v0, p0, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;->year:I

    return v0
.end method

.method static synthetic access$302(Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;->year:I

    return p1
.end method

.method static synthetic access$400(Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;

    .prologue
    .line 21
    iget v0, p0, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;->month:I

    return v0
.end method

.method static synthetic access$402(Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;->month:I

    return p1
.end method

.method static synthetic access$500(Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;)Lcom/netease/epay/sdk/base/view/listener/CreditDatePickListener;
    .locals 1
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;->mListener:Lcom/netease/epay/sdk/base/view/listener/CreditDatePickListener;

    return-object v0
.end method

.method static synthetic access$602(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 21
    sput-wide p0, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;->lastDate:J

    return-wide p0
.end method

.method public static show(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/view/listener/CreditDatePickListener;)V
    .locals 3
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p1, "mListener"    # Lcom/netease/epay/sdk/base/view/listener/CreditDatePickListener;

    .prologue
    .line 24
    new-instance v0, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;

    invoke-direct {v0}, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;-><init>()V

    .line 25
    iput-object p1, v0, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;->mListener:Lcom/netease/epay/sdk/base/view/listener/CreditDatePickListener;

    .line 26
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "CreditCardDatePickDialog"

    invoke-virtual {v0, v1, v2}, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 27
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const/4 v0, 0x1

    const v1, 0x1030075

    invoke-virtual {p0, v0, v1}, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;->setStyle(II)V

    .line 39
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 44
    sget v0, Lcom/netease/epay/sdk/base/R$layout;->epaysdk_fragdialog_credit_datepick:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 45
    sget v0, Lcom/netease/epay/sdk/base/R$id;->year_date_picker:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/YearDatePicker;

    iput-object v0, p0, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;->yearDatePicker:Lcom/netease/epay/sdk/base/view/YearDatePicker;

    .line 46
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 47
    sget-wide v2, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;->lastDate:J

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 48
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;->year:I

    .line 49
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;->month:I

    .line 50
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;->yearDatePicker:Lcom/netease/epay/sdk/base/view/YearDatePicker;

    sget-wide v2, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;->lastDate:J

    invoke-virtual {v0, v2, v3}, Lcom/netease/epay/sdk/base/view/YearDatePicker;->setDateTime(J)V

    .line 51
    sget v0, Lcom/netease/epay/sdk/base/R$id;->btn_twobtnmsg_dialog_right:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;->btnYes:Landroid/view/View;

    .line 52
    sget v0, Lcom/netease/epay/sdk/base/R$id;->btn_twobtnmsg_dialog_left:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;->btnNo:Landroid/view/View;

    .line 53
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;->btnYes:Landroid/view/View;

    iget-object v2, p0, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;->btnNo:Landroid/view/View;

    iget-object v2, p0, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-object v1
.end method
