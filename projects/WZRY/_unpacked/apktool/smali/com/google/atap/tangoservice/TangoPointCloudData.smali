.class public Lcom/google/atap/tangoservice/TangoPointCloudData;
.super Ljava/lang/Object;
.source "TangoPointCloudData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/atap/tangoservice/TangoPointCloudData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public numPoints:I

.field public pointCloudNativeFileDescriptor:I

.field public pointCloudParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public pointCloudParcelFileDescriptorFlags:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public pointCloudParcelFileDescriptorOffset:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public pointCloudParcelFileDescriptorSize:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public points:Ljava/nio/FloatBuffer;

.field public timestamp:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lcom/google/atap/tangoservice/TangoPointCloudData$1;

    invoke-direct {v0}, Lcom/google/atap/tangoservice/TangoPointCloudData$1;-><init>()V

    sput-object v0, Lcom/google/atap/tangoservice/TangoPointCloudData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-virtual {p0, p1}, Lcom/google/atap/tangoservice/TangoPointCloudData;->readFromParcel(Landroid/os/Parcel;)V

    .line 116
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/atap/tangoservice/TangoPointCloudData$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/google/atap/tangoservice/TangoPointCloudData$1;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/google/atap/tangoservice/TangoPointCloudData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public getPointsBuffer()Ljava/nio/FloatBuffer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoPointCloudData;->points:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 9
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/atap/tangoservice/TangoPointCloudData;->timestamp:D

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/atap/tangoservice/TangoPointCloudData;->numPoints:I

    .line 152
    iget v0, p0, Lcom/google/atap/tangoservice/TangoPointCloudData;->numPoints:I

    if-nez v0, :cond_0

    .line 174
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/atap/tangoservice/TangoPointCloudData;->pointCloudParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/atap/tangoservice/TangoPointCloudData;->pointCloudParcelFileDescriptorSize:I

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/atap/tangoservice/TangoPointCloudData;->pointCloudParcelFileDescriptorFlags:I

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/atap/tangoservice/TangoPointCloudData;->pointCloudParcelFileDescriptorOffset:I

    .line 162
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoPointCloudData;->pointCloudParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 163
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 165
    .local v7, "fileStream":Ljava/io/FileInputStream;
    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    iget v4, p0, Lcom/google/atap/tangoservice/TangoPointCloudData;->numPoints:I

    mul-int/lit8 v4, v4, 0x4

    mul-int/lit8 v4, v4, 0x4

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v8

    .line 167
    .local v8, "mappedByteBuffer":Ljava/nio/MappedByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/nio/MappedByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 168
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 169
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoPointCloudData;->pointCloudParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 170
    invoke-virtual {v8}, Ljava/nio/MappedByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/atap/tangoservice/TangoPointCloudData;->points:Ljava/nio/FloatBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 171
    .end local v7    # "fileStream":Ljava/io/FileInputStream;
    .end local v8    # "mappedByteBuffer":Ljava/nio/MappedByteBuffer;
    :catch_0
    move-exception v6

    .line 172
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 184
    iget-wide v0, p0, Lcom/google/atap/tangoservice/TangoPointCloudData;->timestamp:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 185
    iget v0, p0, Lcom/google/atap/tangoservice/TangoPointCloudData;->numPoints:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoPointCloudData;->pointCloudParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 188
    iget v0, p0, Lcom/google/atap/tangoservice/TangoPointCloudData;->pointCloudParcelFileDescriptorSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    iget v0, p0, Lcom/google/atap/tangoservice/TangoPointCloudData;->pointCloudParcelFileDescriptorFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget v0, p0, Lcom/google/atap/tangoservice/TangoPointCloudData;->pointCloudParcelFileDescriptorOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    return-void
.end method
