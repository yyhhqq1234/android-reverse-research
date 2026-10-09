.class public Lcom/google/atap/tangoservice/experimental/TangoPlaneData;
.super Ljava/lang/Object;
.source "TangoPlaneData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/atap/tangoservice/experimental/TangoPlaneData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public boundaryPolygon:[D

.field public centerX:D

.field public centerY:D

.field public height:D

.field public id:I

.field public isValid:Z

.field public pose:Lcom/google/atap/tangoservice/TangoPoseData;

.field public subsumedBy:I

.field public timestamp:D

.field public width:D

.field public yaw:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/google/atap/tangoservice/experimental/TangoPlaneData$1;

    invoke-direct {v0}, Lcom/google/atap/tangoservice/experimental/TangoPlaneData$1;-><init>()V

    sput-object v0, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide v0, p0, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;->centerX:D

    .line 29
    iput-wide v0, p0, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;->centerY:D

    .line 31
    iput-wide v0, p0, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;->width:D

    .line 33
    iput-wide v0, p0, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;->height:D

    .line 35
    iput-wide v0, p0, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;->yaw:D

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;->subsumedBy:I

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;->isValid:Z

    .line 57
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const-wide/16 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide v0, p0, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;->centerX:D

    .line 29
    iput-wide v0, p0, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;->centerY:D

    .line 31
    iput-wide v0, p0, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;->width:D

    .line 33
    iput-wide v0, p0, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;->height:D

    .line 35
    iput-wide v0, p0, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;->yaw:D

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;->subsumedBy:I

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;->isValid:Z

    .line 60
    invoke-virtual {p0, p1}, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;->readFromParcel(Landroid/os/Parcel;)V

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/atap/tangoservice/experimental/TangoPlaneData$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/google/atap/tangoservice/experimental/TangoPlaneData$1;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;->id:I

    .line 65
    sget-object v0, Lcom/google/atap/tangoservice/TangoPoseData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/atap/tangoservice/TangoPoseData;

    iput-object v0, p0, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;->pose:Lcom/google/atap/tangoservice/TangoPoseData;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v0

    iput-object v0, p0, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;->boundaryPolygon:[D

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;->centerX:D

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;->centerY:D

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;->width:D

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;->height:D

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;->yaw:D

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;->timestamp:D

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;->subsumedBy:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;->isValid:Z

    .line 75
    return-void

    .line 74
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 99
    const-string v0, "id:%d, p:%s, b:%s, c:[%.2f, %.2f], w:%.2f, h:%.2f, y:%.2f, t:%.2f, s:%d, v:%b"

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;->id:I

    .line 101
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;->pose:Lcom/google/atap/tangoservice/TangoPoseData;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;->boundaryPolygon:[D

    invoke-static {v3}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-wide v4, p0, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;->centerX:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-wide v4, p0, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;->centerY:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-wide v4, p0, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;->width:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-wide v4, p0, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;->height:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-wide v4, p0, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;->yaw:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-wide v4, p0, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;->timestamp:D

    .line 102
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget v3, p0, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;->subsumedBy:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    iget-boolean v3, p0, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;->isValid:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 99
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 79
    iget v0, p0, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget-object v0, p0, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;->pose:Lcom/google/atap/tangoservice/TangoPoseData;

    invoke-virtual {v0, p1, p2}, Lcom/google/atap/tangoservice/TangoPoseData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 81
    iget-object v0, p0, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;->boundaryPolygon:[D

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeDoubleArray([D)V

    .line 82
    iget-wide v0, p0, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;->centerX:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 83
    iget-wide v0, p0, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;->centerY:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 84
    iget-wide v0, p0, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;->width:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 85
    iget-wide v0, p0, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;->height:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 86
    iget-wide v0, p0, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;->yaw:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 87
    iget-wide v0, p0, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;->timestamp:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 88
    iget v0, p0, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;->subsumedBy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget-boolean v0, p0, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;->isValid:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    return-void

    .line 89
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
