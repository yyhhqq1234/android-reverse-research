.class public Lcom/netease/epay/sdk/base/view/YearDatePicker;
.super Landroid/widget/FrameLayout;
.source "YearDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/epay/sdk/base/view/YearDatePicker$OnDateSetListener;
    }
.end annotation


# instance fields
.field private edtMonth:Landroid/widget/EditText;

.field private edtYear:Landroid/widget/EditText;

.field private mCurrentDate:Ljava/util/Calendar;

.field private final mMonthSpinner:Landroid/widget/NumberPicker;

.field private mOnMonthChangedListener:Landroid/widget/NumberPicker$OnValueChangeListener;

.field private mOnYearChangedListener:Landroid/widget/NumberPicker$OnValueChangeListener;

.field private mOnYearDateChangedListener:Lcom/netease/epay/sdk/base/view/YearDatePicker$OnDateSetListener;

.field private final mYearSpinner:Landroid/widget/NumberPicker;

.field private month:I

.field private year:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netease/epay/sdk/base/view/YearDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/netease/epay/sdk/base/view/YearDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v4, 0x1

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    new-instance v0, Lcom/netease/epay/sdk/base/view/YearDatePicker$2;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/base/view/YearDatePicker$2;-><init>(Lcom/netease/epay/sdk/base/view/YearDatePicker;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker;->mOnYearChangedListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    .line 91
    new-instance v0, Lcom/netease/epay/sdk/base/view/YearDatePicker$3;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/base/view/YearDatePicker$3;-><init>(Lcom/netease/epay/sdk/base/view/YearDatePicker;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker;->mOnMonthChangedListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    .line 28
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 29
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 30
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker;->year:I

    .line 31
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker;->month:I

    .line 32
    sget v0, Lcom/netease/epay/sdk/base/R$layout;->epaysdk_llayout_datepick:I

    invoke-static {p1, v0, p0}, Lcom/netease/epay/sdk/base/view/YearDatePicker;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 34
    sget v0, Lcom/netease/epay/sdk/base/R$id;->np_year:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/view/YearDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    .line 35
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0x76c

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 36
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 37
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker;->mOnYearChangedListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 38
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v0}, Lcom/netease/epay/sdk/base/view/YearDatePicker;->getNumberEditText(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker;->edtYear:Landroid/widget/EditText;

    .line 41
    sget v0, Lcom/netease/epay/sdk/base/R$id;->np_month:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/view/YearDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    .line 42
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 43
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v4}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 44
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    new-instance v1, Lcom/netease/epay/sdk/base/view/YearDatePicker$1;

    invoke-direct {v1, p0}, Lcom/netease/epay/sdk/base/view/YearDatePicker$1;-><init>(Lcom/netease/epay/sdk/base/view/YearDatePicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 50
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker;->mOnMonthChangedListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 51
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v0}, Lcom/netease/epay/sdk/base/view/YearDatePicker;->getNumberEditText(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker;->edtMonth:Landroid/widget/EditText;

    .line 53
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/view/YearDatePicker;->refreshNumPicker()V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/netease/epay/sdk/base/view/YearDatePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/view/YearDatePicker;

    .prologue
    .line 17
    iget v0, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker;->year:I

    return v0
.end method

.method static synthetic access$002(Lcom/netease/epay/sdk/base/view/YearDatePicker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/view/YearDatePicker;
    .param p1, "x1"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker;->year:I

    return p1
.end method

.method static synthetic access$100(Lcom/netease/epay/sdk/base/view/YearDatePicker;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/view/YearDatePicker;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker;->mCurrentDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netease/epay/sdk/base/view/YearDatePicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/view/YearDatePicker;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/view/YearDatePicker;->onDateTimeChanged()V

    return-void
.end method

.method static synthetic access$302(Lcom/netease/epay/sdk/base/view/YearDatePicker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/view/YearDatePicker;
    .param p1, "x1"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker;->month:I

    return p1
.end method

.method private getNumberEditText(Landroid/widget/NumberPicker;)Landroid/widget/EditText;
    .locals 3
    .param p1, "number"    # Landroid/widget/NumberPicker;

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/YearDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "android:id/numberpicker_input"

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 79
    return-object v0
.end method

.method private onDateTimeChanged()V
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker;->mOnYearDateChangedListener:Lcom/netease/epay/sdk/base/view/YearDatePicker$OnDateSetListener;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker;->mOnYearDateChangedListener:Lcom/netease/epay/sdk/base/view/YearDatePicker$OnDateSetListener;

    iget v1, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker;->year:I

    iget v2, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker;->month:I

    invoke-interface {v0, p0, v1, v2}, Lcom/netease/epay/sdk/base/view/YearDatePicker$OnDateSetListener;->onDateSet(Lcom/netease/epay/sdk/base/view/YearDatePicker;II)V

    .line 142
    :cond_0
    return-void
.end method

.method private refreshNumPicker()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    iget v1, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker;->year:I

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 74
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget v1, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker;->month:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 75
    return-void
.end method


# virtual methods
.method public getDates()[I
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker;->edtYear:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker;->edtYear:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker;->edtYear:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker;->year:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker;->edtMonth:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker;->edtMonth:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 109
    :try_start_1
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker;->edtMonth:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker;->month:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 115
    :cond_1
    :goto_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker;->year:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker;->month:I

    aput v2, v0, v1

    return-object v0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 110
    :catch_1
    move-exception v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1
.end method

.method public setDateTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 67
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker;->year:I

    .line 68
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker;->month:I

    .line 69
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/view/YearDatePicker;->refreshNumPicker()V

    .line 70
    return-void
.end method

.method public setOnDateTimeChangedListener(Lcom/netease/epay/sdk/base/view/YearDatePicker$OnDateSetListener;)V
    .locals 0
    .param p1, "callback"    # Lcom/netease/epay/sdk/base/view/YearDatePicker$OnDateSetListener;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/netease/epay/sdk/base/view/YearDatePicker;->mOnYearDateChangedListener:Lcom/netease/epay/sdk/base/view/YearDatePicker$OnDateSetListener;

    .line 136
    return-void
.end method
