.class public Lcom/google/atap/tangoservice/TangoXyzIjData;
.super Ljava/lang/Object;
.source "TangoXyzIjData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/atap/tangoservice/TangoXyzIjData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ijCols:I

.field public ijParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field public ijRows:I

.field public timestamp:D

.field public xyz:Ljava/nio/FloatBuffer;

.field public xyzCount:I

.field public xyzParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public xyzParcelFileDescriptorFlags:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public xyzParcelFileDescriptorOffset:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public xyzParcelFileDescriptorSize:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/google/atap/tangoservice/TangoXyzIjData$1;

    invoke-direct {v0}, Lcom/google/atap/tangoservice/TangoXyzIjData$1;-><init>()V

    sput-object v0, Lcom/google/atap/tangoservice/TangoXyzIjData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    invoke-virtual {p0, p1}, Lcom/google/atap/tangoservice/TangoXyzIjData;->readFromParcel(Landroid/os/Parcel;)V

    .line 129
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/atap/tangoservice/TangoXyzIjData$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/google/atap/tangoservice/TangoXyzIjData$1;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/google/atap/tangoservice/TangoXyzIjData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public getXyzBuffer()Ljava/nio/FloatBuffer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoXyzIjData;->xyz:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 12
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/atap/tangoservice/TangoXyzIjData;->timestamp:D

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/atap/tangoservice/TangoXyzIjData;->xyzCount:I

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 166
    .local v6, "binder":Landroid/os/IBinder;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    .line 167
    .local v7, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    .line 170
    .local v11, "reply":Landroid/os/Parcel;
    :try_start_0
    invoke-interface {v6}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 171
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {v6, v0, v7, v11, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    invoke-virtual {v11}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/atap/tangoservice/TangoXyzIjData;->xyzParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 176
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/atap/tangoservice/TangoXyzIjData;->xyzParcelFileDescriptorSize:I

    .line 177
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/atap/tangoservice/TangoXyzIjData;->xyzParcelFileDescriptorFlags:I

    .line 178
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/atap/tangoservice/TangoXyzIjData;->xyzParcelFileDescriptorOffset:I

    .line 181
    :try_start_1
    new-instance v9, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoXyzIjData;->xyzParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 182
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 185
    .local v9, "fileStream":Ljava/io/FileInputStream;
    invoke-virtual {v9}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    iget v4, p0, Lcom/google/atap/tangoservice/TangoXyzIjData;->xyzCount:I

    mul-int/lit8 v4, v4, 0x3

    mul-int/lit8 v4, v4, 0x4

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v10

    .line 188
    .local v10, "mappedByteBuffer":Ljava/nio/MappedByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/nio/MappedByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 189
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 190
    invoke-virtual {v10}, Ljava/nio/MappedByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/atap/tangoservice/TangoXyzIjData;->xyz:Ljava/nio/FloatBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 195
    .end local v9    # "fileStream":Ljava/io/FileInputStream;
    .end local v10    # "mappedByteBuffer":Ljava/nio/MappedByteBuffer;
    :goto_1
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 196
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/atap/tangoservice/TangoXyzIjData;->ijRows:I

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/atap/tangoservice/TangoXyzIjData;->ijCols:I

    .line 200
    return-void

    .line 172
    :catch_0
    move-exception v8

    .line 173
    .local v8, "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 191
    .end local v8    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v8

    .line 192
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 209
    return-void
.end method
