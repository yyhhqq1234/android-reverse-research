.class public Lcom/google/atap/tangoservice/TangoCoordinateFramePair;
.super Ljava/lang/Object;
.source "TangoCoordinateFramePair.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/atap/tangoservice/TangoCoordinateFramePair;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public baseFrame:I

.field public targetFrame:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/google/atap/tangoservice/TangoCoordinateFramePair$1;

    invoke-direct {v0}, Lcom/google/atap/tangoservice/TangoCoordinateFramePair$1;-><init>()V

    sput-object v0, Lcom/google/atap/tangoservice/TangoCoordinateFramePair;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v0, p0, Lcom/google/atap/tangoservice/TangoCoordinateFramePair;->baseFrame:I

    .line 23
    iput v0, p0, Lcom/google/atap/tangoservice/TangoCoordinateFramePair;->targetFrame:I

    .line 46
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "base"    # I
    .param p2, "target"    # I

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v0, p0, Lcom/google/atap/tangoservice/TangoCoordinateFramePair;->baseFrame:I

    .line 23
    iput v0, p0, Lcom/google/atap/tangoservice/TangoCoordinateFramePair;->targetFrame:I

    .line 55
    iput p1, p0, Lcom/google/atap/tangoservice/TangoCoordinateFramePair;->baseFrame:I

    .line 56
    iput p2, p0, Lcom/google/atap/tangoservice/TangoCoordinateFramePair;->targetFrame:I

    .line 57
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v0, p0, Lcom/google/atap/tangoservice/TangoCoordinateFramePair;->baseFrame:I

    .line 23
    iput v0, p0, Lcom/google/atap/tangoservice/TangoCoordinateFramePair;->targetFrame:I

    .line 66
    invoke-virtual {p0, p1}, Lcom/google/atap/tangoservice/TangoCoordinateFramePair;->readFromParcel(Landroid/os/Parcel;)V

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/atap/tangoservice/TangoCoordinateFramePair$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/google/atap/tangoservice/TangoCoordinateFramePair$1;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/google/atap/tangoservice/TangoCoordinateFramePair;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/atap/tangoservice/TangoCoordinateFramePair;->baseFrame:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/atap/tangoservice/TangoCoordinateFramePair;->targetFrame:I

    .line 89
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 100
    iget v0, p0, Lcom/google/atap/tangoservice/TangoCoordinateFramePair;->baseFrame:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget v0, p0, Lcom/google/atap/tangoservice/TangoCoordinateFramePair;->targetFrame:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    return-void
.end method
