.class public Lcom/google/atap/tangoservice/TangoImage;
.super Ljava/lang/Object;
.source "TangoImage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/atap/tangoservice/TangoImage;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEPTH16:I = 0x44363159

.field public static final RGBA_8888:I = 0x1

.field public static final RGB_888:I = 0x3

.field public static final TANGO_MAX_IMAGE_PLANES:I = 0x4

.field public static final YCRCB_420_SP:I = 0x11

.field public static final YV12:I = 0x32315659


# instance fields
.field public format:I

.field public height:I

.field public numPlanes:I

.field public planeData:[Ljava/nio/ByteBuffer;

.field public planePixelStride:[I

.field public planeRowStride:[I

.field public planeSize:[I

.field public timestampNs:J

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/google/atap/tangoservice/TangoImage$1;

    invoke-direct {v0}, Lcom/google/atap/tangoservice/TangoImage$1;-><init>()V

    sput-object v0, Lcom/google/atap/tangoservice/TangoImage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v2, p0, Lcom/google/atap/tangoservice/TangoImage;->width:I

    .line 30
    iput v2, p0, Lcom/google/atap/tangoservice/TangoImage;->height:I

    .line 32
    iput v2, p0, Lcom/google/atap/tangoservice/TangoImage;->format:I

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/atap/tangoservice/TangoImage;->timestampNs:J

    .line 37
    iput v2, p0, Lcom/google/atap/tangoservice/TangoImage;->numPlanes:I

    .line 39
    new-array v0, v3, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/atap/tangoservice/TangoImage;->planeData:[Ljava/nio/ByteBuffer;

    .line 41
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/google/atap/tangoservice/TangoImage;->planeSize:[I

    .line 43
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/google/atap/tangoservice/TangoImage;->planeRowStride:[I

    .line 45
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/google/atap/tangoservice/TangoImage;->planePixelStride:[I

    .line 48
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/atap/tangoservice/TangoImage;->width:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/atap/tangoservice/TangoImage;->height:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/atap/tangoservice/TangoImage;->format:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/atap/tangoservice/TangoImage;->timestampNs:J

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/atap/tangoservice/TangoImage;->numPlanes:I

    .line 86
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoImage;->planeSize:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 87
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoImage;->planeRowStride:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 88
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoImage;->planePixelStride:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 89
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 68
    iget v0, p0, Lcom/google/atap/tangoservice/TangoImage;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget v0, p0, Lcom/google/atap/tangoservice/TangoImage;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget v0, p0, Lcom/google/atap/tangoservice/TangoImage;->format:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget-wide v0, p0, Lcom/google/atap/tangoservice/TangoImage;->timestampNs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 72
    iget v0, p0, Lcom/google/atap/tangoservice/TangoImage;->numPlanes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoImage;->planeSize:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 74
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoImage;->planeRowStride:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 75
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoImage;->planePixelStride:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 76
    return-void
.end method
