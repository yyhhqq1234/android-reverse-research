.class Lcom/google/atap/tangoservice/IOnImageAvailableListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IOnImageAvailableListener.java"

# interfaces
.implements Lcom/google/atap/tangoservice/IOnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/atap/tangoservice/IOnImageAvailableListener$Stub;
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
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/google/atap/tangoservice/IOnImageAvailableListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 85
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/atap/tangoservice/IOnImageAvailableListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const-string v0, "com.google.atap.tangoservice.IOnImageAvailableListener"

    return-object v0
.end method

.method public onImageAvailable(ILcom/google/atap/tangoservice/TangoImage;Lcom/google/atap/tangoservice/TangoCameraMetadata;Lcom/google/tango/loader/IObjectWrapper;Lcom/google/tango/loader/IObjectWrapper;Lcom/google/tango/loader/IObjectWrapper;Lcom/google/tango/loader/IObjectWrapper;)V
    .locals 5
    .param p1, "cameraId"    # I
    .param p2, "imageWithDataSetToNull"    # Lcom/google/atap/tangoservice/TangoImage;
    .param p3, "metadata"    # Lcom/google/atap/tangoservice/TangoCameraMetadata;
    .param p4, "byteBuffer0"    # Lcom/google/tango/loader/IObjectWrapper;
    .param p5, "byteBuffer1"    # Lcom/google/tango/loader/IObjectWrapper;
    .param p6, "byteBuffer2"    # Lcom/google/tango/loader/IObjectWrapper;
    .param p7, "byteBuffer3"    # Lcom/google/tango/loader/IObjectWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 96
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 97
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 99
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.google.atap.tangoservice.IOnImageAvailableListener"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    if-eqz p2, :cond_1

    .line 102
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Lcom/google/atap/tangoservice/TangoImage;->writeToParcel(Landroid/os/Parcel;I)V

    .line 108
    :goto_0
    if-eqz p3, :cond_2

    .line 109
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    const/4 v3, 0x0

    invoke-virtual {p3, v0, v3}, Lcom/google/atap/tangoservice/TangoCameraMetadata;->writeToParcel(Landroid/os/Parcel;I)V

    .line 115
    :goto_1
    if-eqz p4, :cond_3

    invoke-interface {p4}, Lcom/google/tango/loader/IObjectWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 116
    if-eqz p5, :cond_4

    invoke-interface {p5}, Lcom/google/tango/loader/IObjectWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_3
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 117
    if-eqz p6, :cond_5

    invoke-interface {p6}, Lcom/google/tango/loader/IObjectWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_4
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 118
    if-eqz p7, :cond_0

    invoke-interface {p7}, Lcom/google/tango/loader/IObjectWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 119
    iget-object v2, p0, Lcom/google/atap/tangoservice/IOnImageAvailableListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 120
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 126
    return-void

    .line 106
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 113
    :cond_2
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_3
    move-object v3, v2

    .line 115
    goto :goto_2

    :cond_4
    move-object v3, v2

    .line 116
    goto :goto_3

    :cond_5
    move-object v3, v2

    .line 117
    goto :goto_4
.end method
