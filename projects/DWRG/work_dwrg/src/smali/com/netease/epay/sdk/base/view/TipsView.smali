.class public Lcom/netease/epay/sdk/base/view/TipsView;
.super Landroid/widget/ImageView;
.source "TipsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/epay/sdk/base/view/TipsView$TipsType;
    }
.end annotation


# static fields
.field public static final CVV:I = 0x5

.field public static final EXPIRE:I = 0x6

.field public static final NAME:I = 0x4

.field public static final PHONE:I


# instance fields
.field private activity:Landroid/support/v4/app/FragmentActivity;

.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netease/epay/sdk/base/view/TipsView;->init(Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    invoke-direct {p0, p2}, Lcom/netease/epay/sdk/base/view/TipsView;->init(Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    invoke-direct {p0, p2}, Lcom/netease/epay/sdk/base/view/TipsView;->init(Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/netease/epay/sdk/base/view/TipsView;)Landroid/support/v4/app/FragmentActivity;
    .locals 1
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/view/TipsView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/TipsView;->activity:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netease/epay/sdk/base/view/TipsView;)I
    .locals 1
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/view/TipsView;

    .prologue
    .line 28
    iget v0, p0, Lcom/netease/epay/sdk/base/view/TipsView;->type:I

    return v0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 58
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/view/TipsView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 59
    sget v0, Lcom/netease/epay/sdk/base/R$drawable;->epaysdk_icon_tips:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/view/TipsView;->setImageResource(I)V

    .line 60
    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/TipsView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/netease/epay/sdk/base/R$styleable;->epaysdk_TipsView:[I

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 62
    sget v1, Lcom/netease/epay/sdk/base/R$styleable;->epaysdk_TipsView_epaysdk_tipsType:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/netease/epay/sdk/base/view/TipsView;->type:I

    .line 63
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/TipsView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_2

    .line 66
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/TipsView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/TipsView;->activity:Landroid/support/v4/app/FragmentActivity;

    .line 70
    :cond_1
    :goto_0
    new-instance v0, Lcom/netease/epay/sdk/base/view/TipsView$1;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/base/view/TipsView$1;-><init>(Lcom/netease/epay/sdk/base/view/TipsView;)V

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/view/TipsView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void

    .line 67
    :cond_2
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/TipsView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ContextThemeWrapper;

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/TipsView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/TipsView;->activity:Landroid/support/v4/app/FragmentActivity;

    goto :goto_0
.end method


# virtual methods
.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/netease/epay/sdk/base/view/TipsView;->type:I

    .line 101
    return-void
.end method
