.class public Lcom/google/atap/tangoservice/TangoTransformation;
.super Ljava/lang/Object;
.source "TangoTransformation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/atap/tangoservice/TangoTransformation;",
            ">;"
        }
    .end annotation
.end field

.field public static final INDEX_ROTATION_W:I = 0x3

.field public static final INDEX_ROTATION_X:I = 0x0

.field public static final INDEX_ROTATION_Y:I = 0x1

.field public static final INDEX_ROTATION_Z:I = 0x2

.field public static final INDEX_TRANSLATION_X:I = 0x0

.field public static final INDEX_TRANSLATION_Y:I = 0x1

.field public static final INDEX_TRANSLATION_Z:I = 0x2


# instance fields
.field public final rotation:[D

.field public final translation:[D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/google/atap/tangoservice/TangoTransformation$1;

    invoke-direct {v0}, Lcom/google/atap/tangoservice/TangoTransformation$1;-><init>()V

    sput-object v0, Lcom/google/atap/tangoservice/TangoTransformation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x4

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/google/atap/tangoservice/TangoTransformation;->rotation:[D

    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [D

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/google/atap/tangoservice/TangoTransformation;->translation:[D

    .line 83
    return-void

    .line 52
    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
    .end array-data

    .line 59
    :array_1
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x4

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/google/atap/tangoservice/TangoTransformation;->rotation:[D

    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [D

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/google/atap/tangoservice/TangoTransformation;->translation:[D

    .line 105
    invoke-virtual {p0, p1}, Lcom/google/atap/tangoservice/TangoTransformation;->readFromParcel(Landroid/os/Parcel;)V

    .line 106
    return-void

    .line 52
    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
    .end array-data

    .line 59
    :array_1
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/atap/tangoservice/TangoTransformation$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/google/atap/tangoservice/TangoTransformation$1;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/google/atap/tangoservice/TangoTransformation;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 90
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/google/atap/tangoservice/TangoTransformation;

    if-eq v2, v3, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 93
    check-cast v0, Lcom/google/atap/tangoservice/TangoTransformation;

    .line 94
    .local v0, "other":Lcom/google/atap/tangoservice/TangoTransformation;
    iget-object v2, p0, Lcom/google/atap/tangoservice/TangoTransformation;->rotation:[D

    iget-object v3, v0, Lcom/google/atap/tangoservice/TangoTransformation;->rotation:[D

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/atap/tangoservice/TangoTransformation;->translation:[D

    iget-object v3, v0, Lcom/google/atap/tangoservice/TangoTransformation;->translation:[D

    .line 95
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getRotationAsFloats()[F
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 149
    new-array v1, v4, [F

    .line 150
    .local v1, "out":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 151
    iget-object v2, p0, Lcom/google/atap/tangoservice/TangoTransformation;->rotation:[D

    aget-wide v2, v2, v0

    double-to-float v2, v2

    aput v2, v1, v0

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_0
    return-object v1
.end method

.method public getTranslationAsFloats()[F
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 162
    new-array v1, v4, [F

    .line 163
    .local v1, "out":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 164
    iget-object v2, p0, Lcom/google/atap/tangoservice/TangoTransformation;->translation:[D

    aget-wide v2, v2, v0

    double-to-float v2, v2

    aput v2, v1, v0

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_0
    return-object v1
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoTransformation;->rotation:[D

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readDoubleArray([D)V

    .line 127
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoTransformation;->translation:[D

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readDoubleArray([D)V

    .line 128
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 176
    const-string v1, "p: [%.3f, %.3f, %.3f], q: [%.4f, %.4f, %.4f, %.4f]\n"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/atap/tangoservice/TangoTransformation;->translation:[D

    aget-wide v4, v3, v6

    .line 178
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/google/atap/tangoservice/TangoTransformation;->translation:[D

    aget-wide v4, v3, v7

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/google/atap/tangoservice/TangoTransformation;->translation:[D

    aget-wide v4, v3, v8

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v8

    iget-object v3, p0, Lcom/google/atap/tangoservice/TangoTransformation;->rotation:[D

    aget-wide v4, v3, v6

    .line 179
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v9

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/atap/tangoservice/TangoTransformation;->rotation:[D

    aget-wide v4, v4, v7

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/atap/tangoservice/TangoTransformation;->rotation:[D

    aget-wide v4, v4, v8

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/atap/tangoservice/TangoTransformation;->rotation:[D

    aget-wide v4, v4, v9

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    .line 176
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "poseString":Ljava/lang/String;
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoTransformation;->rotation:[D

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeDoubleArray([D)V

    .line 140
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoTransformation;->translation:[D

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeDoubleArray([D)V

    .line 141
    return-void
.end method
