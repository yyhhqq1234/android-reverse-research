.class public Lcom/google/atap/tangoservice/TangoCameraIntrinsics;
.super Ljava/lang/Object;
.source "TangoCameraIntrinsics.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/atap/tangoservice/TangoCameraIntrinsics;",
            ">;"
        }
    .end annotation
.end field

.field public static final TANGO_CALIBRATION_EQUIDISTANT:I = 0x1

.field public static final TANGO_CALIBRATION_POLYNOMIAL_2_PARAMETERS:I = 0x2

.field public static final TANGO_CALIBRATION_POLYNOMIAL_3_PARAMETERS:I = 0x3

.field public static final TANGO_CALIBRATION_POLYNOMIAL_5_PARAMETERS:I = 0x4

.field public static final TANGO_CALIBRATION_UNKNOWN:I = 0x0

.field public static final TANGO_CAMERA_COLOR:I = 0x0

.field public static final TANGO_CAMERA_DEPTH:I = 0x3

.field public static final TANGO_CAMERA_FISHEYE:I = 0x2

.field public static final TANGO_CAMERA_RGBIR:I = 0x1


# instance fields
.field public calibrationType:I

.field public cameraId:I

.field public cx:D

.field public cy:D

.field public distortion:[D

.field public fx:D

.field public fy:D

.field public height:I

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 138
    new-instance v0, Lcom/google/atap/tangoservice/TangoCameraIntrinsics$1;

    invoke-direct {v0}, Lcom/google/atap/tangoservice/TangoCameraIntrinsics$1;-><init>()V

    sput-object v0, Lcom/google/atap/tangoservice/TangoCameraIntrinsics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const/4 v0, 0x5

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/google/atap/tangoservice/TangoCameraIntrinsics;->distortion:[D

    .line 155
    return-void

    .line 132
    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const/4 v0, 0x5

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/google/atap/tangoservice/TangoCameraIntrinsics;->distortion:[D

    .line 163
    invoke-virtual {p0, p1}, Lcom/google/atap/tangoservice/TangoCameraIntrinsics;->readFromParcel(Landroid/os/Parcel;)V

    .line 164
    return-void

    .line 132
    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/atap/tangoservice/TangoCameraIntrinsics$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/google/atap/tangoservice/TangoCameraIntrinsics$1;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/atap/tangoservice/TangoCameraIntrinsics;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/atap/tangoservice/TangoCameraIntrinsics;->cameraId:I

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/atap/tangoservice/TangoCameraIntrinsics;->calibrationType:I

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/atap/tangoservice/TangoCameraIntrinsics;->width:I

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/atap/tangoservice/TangoCameraIntrinsics;->height:I

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/atap/tangoservice/TangoCameraIntrinsics;->fx:D

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/atap/tangoservice/TangoCameraIntrinsics;->fy:D

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/atap/tangoservice/TangoCameraIntrinsics;->cx:D

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/atap/tangoservice/TangoCameraIntrinsics;->cy:D

    .line 192
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoCameraIntrinsics;->distortion:[D

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readDoubleArray([D)V

    .line 193
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 204
    iget v0, p0, Lcom/google/atap/tangoservice/TangoCameraIntrinsics;->cameraId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    iget v0, p0, Lcom/google/atap/tangoservice/TangoCameraIntrinsics;->calibrationType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    iget v0, p0, Lcom/google/atap/tangoservice/TangoCameraIntrinsics;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    iget v0, p0, Lcom/google/atap/tangoservice/TangoCameraIntrinsics;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget-wide v0, p0, Lcom/google/atap/tangoservice/TangoCameraIntrinsics;->fx:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 209
    iget-wide v0, p0, Lcom/google/atap/tangoservice/TangoCameraIntrinsics;->fy:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 210
    iget-wide v0, p0, Lcom/google/atap/tangoservice/TangoCameraIntrinsics;->cx:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 211
    iget-wide v0, p0, Lcom/google/atap/tangoservice/TangoCameraIntrinsics;->cy:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 212
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoCameraIntrinsics;->distortion:[D

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeDoubleArray([D)V

    .line 213
    return-void
.end method
