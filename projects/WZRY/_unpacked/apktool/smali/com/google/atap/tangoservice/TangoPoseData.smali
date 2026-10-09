.class public Lcom/google/atap/tangoservice/TangoPoseData;
.super Ljava/lang/Object;
.source "TangoPoseData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final COORDINATE_FRAME_AREA_DESCRIPTION:I = 0x1

.field public static final COORDINATE_FRAME_CAMERA_COLOR:I = 0x7

.field public static final COORDINATE_FRAME_CAMERA_DEPTH:I = 0x8

.field public static final COORDINATE_FRAME_CAMERA_FISHEYE:I = 0x9

.field public static final COORDINATE_FRAME_DEVICE:I = 0x4

.field public static final COORDINATE_FRAME_DISPLAY:I = 0x6

.field public static final COORDINATE_FRAME_GLOBAL_WGS84:I = 0x0

.field public static final COORDINATE_FRAME_IMU:I = 0x5

.field public static final COORDINATE_FRAME_PREVIOUS_DEVICE_POSE:I = 0x3

.field public static final COORDINATE_FRAME_START_OF_SERVICE:I = 0x2

.field public static final COORDINATE_FRAME_UUID:I = 0xa

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/atap/tangoservice/TangoPoseData;",
            ">;"
        }
    .end annotation
.end field

.field public static final FRAME_NAMES:[Ljava/lang/String;

.field public static final INDEX_ROTATION_W:I = 0x3

.field public static final INDEX_ROTATION_X:I = 0x0

.field public static final INDEX_ROTATION_Y:I = 0x1

.field public static final INDEX_ROTATION_Z:I = 0x2

.field public static final INDEX_TRANSLATION_X:I = 0x0

.field public static final INDEX_TRANSLATION_Y:I = 0x1

.field public static final INDEX_TRANSLATION_Z:I = 0x2

.field public static final POSE_INITIALIZING:I = 0x0

.field public static final POSE_INVALID:I = 0x2

.field public static final POSE_UNKNOWN:I = 0x3

.field public static final POSE_VALID:I = 0x1

.field public static final STATUS_NAMES:[Ljava/lang/String;


# instance fields
.field public accuracy:F

.field public baseFrame:I

.field public confidence:I

.field public rotation:[D

.field public statusCode:I

.field public targetFrame:I

.field public timestamp:D

.field public translation:[D


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 65
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "GLOBAL_WGS84"

    aput-object v1, v0, v3

    const-string v1, "AREA_DESCRIPTION"

    aput-object v1, v0, v4

    const-string v1, "START_OF_SERVICE"

    aput-object v1, v0, v5

    const-string v1, "PREVIOUS_DEVICE_POSE"

    aput-object v1, v0, v6

    const-string v1, "DEVICE"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "IMU"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "DISPLAY"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CAMERA_COLOR"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "CAMERA_DEPTH"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "CAMERA_FISHEYE"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "UUID"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/atap/tangoservice/TangoPoseData;->FRAME_NAMES:[Ljava/lang/String;

    .line 90
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "INITIALIZING"

    aput-object v1, v0, v3

    const-string v1, "VALID"

    aput-object v1, v0, v4

    const-string v1, "INVALID"

    aput-object v1, v0, v5

    const-string v1, "UNKNOWN"

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/atap/tangoservice/TangoPoseData;->STATUS_NAMES:[Ljava/lang/String;

    .line 172
    new-instance v0, Lcom/google/atap/tangoservice/TangoPoseData$1;

    invoke-direct {v0}, Lcom/google/atap/tangoservice/TangoPoseData$1;-><init>()V

    sput-object v0, Lcom/google/atap/tangoservice/TangoPoseData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/atap/tangoservice/TangoPoseData;->timestamp:D

    .line 114
    const/4 v0, 0x4

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/google/atap/tangoservice/TangoPoseData;->rotation:[D

    .line 121
    const/4 v0, 0x3

    new-array v0, v0, [D

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/google/atap/tangoservice/TangoPoseData;->translation:[D

    .line 133
    iput v2, p0, Lcom/google/atap/tangoservice/TangoPoseData;->statusCode:I

    .line 151
    iput v2, p0, Lcom/google/atap/tangoservice/TangoPoseData;->baseFrame:I

    .line 156
    iput v2, p0, Lcom/google/atap/tangoservice/TangoPoseData;->targetFrame:I

    .line 161
    iput v2, p0, Lcom/google/atap/tangoservice/TangoPoseData;->confidence:I

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/atap/tangoservice/TangoPoseData;->accuracy:F

    .line 189
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/atap/tangoservice/TangoPoseData;->statusCode:I

    .line 190
    return-void

    .line 114
    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
    .end array-data

    .line 121
    :array_1
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/atap/tangoservice/TangoPoseData;->timestamp:D

    .line 114
    const/4 v0, 0x4

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/google/atap/tangoservice/TangoPoseData;->rotation:[D

    .line 121
    const/4 v0, 0x3

    new-array v0, v0, [D

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/google/atap/tangoservice/TangoPoseData;->translation:[D

    .line 133
    iput v2, p0, Lcom/google/atap/tangoservice/TangoPoseData;->statusCode:I

    .line 151
    iput v2, p0, Lcom/google/atap/tangoservice/TangoPoseData;->baseFrame:I

    .line 156
    iput v2, p0, Lcom/google/atap/tangoservice/TangoPoseData;->targetFrame:I

    .line 161
    iput v2, p0, Lcom/google/atap/tangoservice/TangoPoseData;->confidence:I

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/atap/tangoservice/TangoPoseData;->accuracy:F

    .line 199
    invoke-virtual {p0, p1}, Lcom/google/atap/tangoservice/TangoPoseData;->readFromParcel(Landroid/os/Parcel;)V

    .line 200
    return-void

    .line 114
    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
    .end array-data

    .line 121
    :array_1
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/atap/tangoservice/TangoPoseData$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/google/atap/tangoservice/TangoPoseData$1;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/google/atap/tangoservice/TangoPoseData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method public getRotationAsFloats()[F
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 251
    new-array v1, v4, [F

    .line 252
    .local v1, "out":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 253
    iget-object v2, p0, Lcom/google/atap/tangoservice/TangoPoseData;->rotation:[D

    aget-wide v2, v2, v0

    double-to-float v2, v2

    aput v2, v1, v0

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 255
    :cond_0
    return-object v1
.end method

.method public getTranslationAsFloats()[F
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 264
    new-array v1, v4, [F

    .line 265
    .local v1, "out":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 266
    iget-object v2, p0, Lcom/google/atap/tangoservice/TangoPoseData;->translation:[D

    aget-wide v2, v2, v0

    double-to-float v2, v2

    aput v2, v1, v0

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 268
    :cond_0
    return-object v1
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/atap/tangoservice/TangoPoseData;->timestamp:D

    .line 221
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoPoseData;->rotation:[D

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readDoubleArray([D)V

    .line 222
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoPoseData;->translation:[D

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readDoubleArray([D)V

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/atap/tangoservice/TangoPoseData;->statusCode:I

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/atap/tangoservice/TangoPoseData;->baseFrame:I

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/atap/tangoservice/TangoPoseData;->targetFrame:I

    .line 226
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 278
    const-string v2, "TangoPoseData: status: %d (%s), time: %f, base: %d (%s), target: %d (%s) "

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/google/atap/tangoservice/TangoPoseData;->statusCode:I

    .line 280
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    sget-object v4, Lcom/google/atap/tangoservice/TangoPoseData;->STATUS_NAMES:[Ljava/lang/String;

    iget v5, p0, Lcom/google/atap/tangoservice/TangoPoseData;->statusCode:I

    aget-object v4, v4, v5

    aput-object v4, v3, v8

    iget-wide v4, p0, Lcom/google/atap/tangoservice/TangoPoseData;->timestamp:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v9

    iget v4, p0, Lcom/google/atap/tangoservice/TangoPoseData;->baseFrame:I

    .line 281
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v10

    sget-object v4, Lcom/google/atap/tangoservice/TangoPoseData;->FRAME_NAMES:[Ljava/lang/String;

    iget v5, p0, Lcom/google/atap/tangoservice/TangoPoseData;->baseFrame:I

    aget-object v4, v4, v5

    aput-object v4, v3, v11

    const/4 v4, 0x5

    iget v5, p0, Lcom/google/atap/tangoservice/TangoPoseData;->targetFrame:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    sget-object v5, Lcom/google/atap/tangoservice/TangoPoseData;->FRAME_NAMES:[Ljava/lang/String;

    iget v6, p0, Lcom/google/atap/tangoservice/TangoPoseData;->targetFrame:I

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    .line 278
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "infoString":Ljava/lang/String;
    const-string v2, "p: [%.3f, %.3f, %.3f], q: [%.4f, %.4f, %.4f, %.4f]\n"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/atap/tangoservice/TangoPoseData;->translation:[D

    aget-wide v4, v4, v7

    .line 284
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/google/atap/tangoservice/TangoPoseData;->translation:[D

    aget-wide v4, v4, v8

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v8

    iget-object v4, p0, Lcom/google/atap/tangoservice/TangoPoseData;->translation:[D

    aget-wide v4, v4, v9

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v9

    iget-object v4, p0, Lcom/google/atap/tangoservice/TangoPoseData;->rotation:[D

    aget-wide v4, v4, v7

    .line 285
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v10

    iget-object v4, p0, Lcom/google/atap/tangoservice/TangoPoseData;->rotation:[D

    aget-wide v4, v4, v8

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v11

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/google/atap/tangoservice/TangoPoseData;->rotation:[D

    aget-wide v6, v5, v9

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    iget-object v5, p0, Lcom/google/atap/tangoservice/TangoPoseData;->rotation:[D

    aget-wide v6, v5, v10

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    .line 282
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, "poseString":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 237
    iget-wide v0, p0, Lcom/google/atap/tangoservice/TangoPoseData;->timestamp:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 238
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoPoseData;->rotation:[D

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeDoubleArray([D)V

    .line 239
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoPoseData;->translation:[D

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeDoubleArray([D)V

    .line 240
    iget v0, p0, Lcom/google/atap/tangoservice/TangoPoseData;->statusCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    iget v0, p0, Lcom/google/atap/tangoservice/TangoPoseData;->baseFrame:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    iget v0, p0, Lcom/google/atap/tangoservice/TangoPoseData;->targetFrame:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    return-void
.end method
