.class Lcom/google/atap/tangoservice/IOnFrameAvailableListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IOnFrameAvailableListener.java"

# interfaces
.implements Lcom/google/atap/tangoservice/IOnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/atap/tangoservice/IOnFrameAvailableListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/google/atap/tangoservice/IOnFrameAvailableListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 79
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/atap/tangoservice/IOnFrameAvailableListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-string v0, "com.google.atap.tangoservice.IOnFrameAvailableListener"

    return-object v0
.end method

.method public onFrameAvailable(IIIJDILcom/google/tango/loader/IObjectWrapper;IJ)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "stride"    # I
    .param p4, "frameNumber"    # J
    .param p6, "timestamp"    # D
    .param p8, "format"    # I
    .param p9, "byteBuffer"    # Lcom/google/tango/loader/IObjectWrapper;
    .param p10, "cameraId"    # I
    .param p11, "exposureDurationNs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 91
    .local v2, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 93
    .local v3, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.google.atap.tangoservice.IOnFrameAvailableListener"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    invoke-virtual {v2, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 98
    invoke-virtual {v2, p6, p7}, Landroid/os/Parcel;->writeDouble(D)V

    .line 99
    move/from16 v0, p8

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    if-eqz p9, :cond_0

    invoke-interface/range {p9 .. p9}, Lcom/google/tango/loader/IObjectWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 101
    move/from16 v0, p10

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    move-wide/from16 v0, p11

    invoke-virtual {v2, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 103
    iget-object v4, p0, Lcom/google/atap/tangoservice/IOnFrameAvailableListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 104
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 108
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 110
    return-void

    .line 100
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 107
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 108
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method
