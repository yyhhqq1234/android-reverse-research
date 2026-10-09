.class public Lcom/tencent/msdk/notice/RollTextView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "RollTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/notice/RollTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tencent/msdk/notice/RollTextView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public isStarting:Z

.field public step:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    new-instance v0, Lcom/tencent/msdk/notice/RollTextView$SavedState$1;

    invoke-direct {v0}, Lcom/tencent/msdk/notice/RollTextView$SavedState$1;-><init>()V

    sput-object v0, Lcom/tencent/msdk/notice/RollTextView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .line 131
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 107
    iput-boolean v2, p0, Lcom/tencent/msdk/notice/RollTextView$SavedState;->isStarting:Z

    .line 108
    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/msdk/notice/RollTextView$SavedState;->step:F

    .line 132
    const/4 v1, 0x1

    new-array v0, v1, [Z

    .line 133
    .local v0, "b":[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 134
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 135
    aget-boolean v1, v0, v2

    iput-boolean v1, p0, Lcom/tencent/msdk/notice/RollTextView$SavedState;->isStarting:Z

    .line 136
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/tencent/msdk/notice/RollTextView$SavedState;->step:F

    .line 137
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/tencent/msdk/notice/RollTextView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/tencent/msdk/notice/RollTextView$1;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/tencent/msdk/notice/RollTextView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/msdk/notice/RollTextView$SavedState;->isStarting:Z

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/msdk/notice/RollTextView$SavedState;->step:F

    .line 111
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 114
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 115
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/tencent/msdk/notice/RollTextView$SavedState;->isStarting:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 116
    iget v0, p0, Lcom/tencent/msdk/notice/RollTextView$SavedState;->step:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 117
    return-void
.end method
