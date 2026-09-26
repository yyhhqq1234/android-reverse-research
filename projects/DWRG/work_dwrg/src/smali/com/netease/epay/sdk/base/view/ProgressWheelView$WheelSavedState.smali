.class Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;
.super Landroid/view/View$BaseSavedState;
.source "ProgressWheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/base/view/ProgressWheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WheelSavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field barColor:I

.field barWidth:I

.field circleRadius:I

.field fillRadius:Z

.field isSpinning:Z

.field linearProgress:Z

.field mProgress:F

.field mTargetProgress:F

.field rimColor:I

.field rimWidth:I

.field spinSpeed:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 714
    new-instance v0, Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState$1;

    invoke-direct {v0}, Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState$1;-><init>()V

    sput-object v0, Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 741
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 742
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;->mProgress:F

    .line 743
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;->mTargetProgress:F

    .line 744
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;->isSpinning:Z

    .line 745
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;->spinSpeed:F

    .line 746
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;->barWidth:I

    .line 747
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;->barColor:I

    .line 748
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;->rimWidth:I

    .line 749
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;->rimColor:I

    .line 750
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;->circleRadius:I

    .line 751
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;->linearProgress:Z

    .line 752
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;->fillRadius:Z

    .line 753
    return-void

    :cond_0
    move v0, v2

    .line 744
    goto :goto_0

    :cond_1
    move v0, v2

    .line 751
    goto :goto_1

    :cond_2
    move v1, v2

    .line 752
    goto :goto_2
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/netease/epay/sdk/base/view/ProgressWheelView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/netease/epay/sdk/base/view/ProgressWheelView$1;

    .prologue
    .line 712
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 737
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 738
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 756
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 757
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;->mProgress:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 758
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;->mTargetProgress:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 759
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;->isSpinning:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 760
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;->spinSpeed:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 761
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;->barWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 762
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;->barColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 763
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;->rimWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 764
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;->rimColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 765
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;->circleRadius:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 766
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;->linearProgress:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 767
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;->fillRadius:Z

    if-eqz v0, :cond_2

    :goto_2
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 768
    return-void

    :cond_0
    move v0, v2

    .line 759
    goto :goto_0

    :cond_1
    move v0, v2

    .line 766
    goto :goto_1

    :cond_2
    move v1, v2

    .line 767
    goto :goto_2
.end method
