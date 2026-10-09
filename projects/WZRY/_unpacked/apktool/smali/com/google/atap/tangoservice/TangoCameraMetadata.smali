.class public Lcom/google/atap/tangoservice/TangoCameraMetadata;
.super Ljava/lang/Object;
.source "TangoCameraMetadata.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/atap/tangoservice/TangoCameraMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public static final NUM_COLOR_CORRECTION_GAIN_VALUES:I = 0x4

.field public static final NUM_COLOR_CORRECTION_TRANSFORM_VALUES:I = 0x9

.field public static final NUM_SENSOR_NEUTRAL_COLOR_POINT_VALUES:I = 0x3


# instance fields
.field public final colorCorrectionGains:[F

.field public colorCorrectionMode:I

.field public final colorCorrectionTransform:[F

.field public exposureDurationNs:J

.field public frameNumber:J

.field public lensAperture:F

.field public sensitivityISO:I

.field public final sensorNeutralColorPoint:[F

.field public timestampNs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/google/atap/tangoservice/TangoCameraMetadata$1;

    invoke-direct {v0}, Lcom/google/atap/tangoservice/TangoCameraMetadata$1;-><init>()V

    sput-object v0, Lcom/google/atap/tangoservice/TangoCameraMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide v0, p0, Lcom/google/atap/tangoservice/TangoCameraMetadata;->timestampNs:J

    .line 24
    iput-wide v0, p0, Lcom/google/atap/tangoservice/TangoCameraMetadata;->frameNumber:J

    .line 26
    iput-wide v0, p0, Lcom/google/atap/tangoservice/TangoCameraMetadata;->exposureDurationNs:J

    .line 28
    iput v2, p0, Lcom/google/atap/tangoservice/TangoCameraMetadata;->sensitivityISO:I

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/atap/tangoservice/TangoCameraMetadata;->lensAperture:F

    .line 32
    iput v2, p0, Lcom/google/atap/tangoservice/TangoCameraMetadata;->colorCorrectionMode:I

    .line 34
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/atap/tangoservice/TangoCameraMetadata;->colorCorrectionGains:[F

    .line 37
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/atap/tangoservice/TangoCameraMetadata;->colorCorrectionTransform:[F

    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/atap/tangoservice/TangoCameraMetadata;->sensorNeutralColorPoint:[F

    .line 44
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/atap/tangoservice/TangoCameraMetadata;->timestampNs:J

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/atap/tangoservice/TangoCameraMetadata;->frameNumber:J

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/atap/tangoservice/TangoCameraMetadata;->exposureDurationNs:J

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/atap/tangoservice/TangoCameraMetadata;->sensitivityISO:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/atap/tangoservice/TangoCameraMetadata;->lensAperture:F

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/atap/tangoservice/TangoCameraMetadata;->colorCorrectionMode:I

    .line 79
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoCameraMetadata;->colorCorrectionGains:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readFloatArray([F)V

    .line 80
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoCameraMetadata;->colorCorrectionTransform:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readFloatArray([F)V

    .line 81
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoCameraMetadata;->sensorNeutralColorPoint:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readFloatArray([F)V

    .line 82
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/google/atap/tangoservice/TangoCameraMetadata;->timestampNs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 62
    iget-wide v0, p0, Lcom/google/atap/tangoservice/TangoCameraMetadata;->frameNumber:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 63
    iget-wide v0, p0, Lcom/google/atap/tangoservice/TangoCameraMetadata;->exposureDurationNs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 64
    iget v0, p0, Lcom/google/atap/tangoservice/TangoCameraMetadata;->sensitivityISO:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget v0, p0, Lcom/google/atap/tangoservice/TangoCameraMetadata;->lensAperture:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 66
    iget v0, p0, Lcom/google/atap/tangoservice/TangoCameraMetadata;->colorCorrectionMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoCameraMetadata;->colorCorrectionGains:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 68
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoCameraMetadata;->colorCorrectionTransform:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 69
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoCameraMetadata;->sensorNeutralColorPoint:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 70
    return-void
.end method
