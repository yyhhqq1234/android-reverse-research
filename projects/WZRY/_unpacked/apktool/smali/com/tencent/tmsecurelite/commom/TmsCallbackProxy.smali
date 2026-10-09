.class public Lcom/tencent/tmsecurelite/commom/TmsCallbackProxy;
.super Ljava/lang/Object;
.source "TmsCallbackProxy.java"

# interfaces
.implements Lcom/tencent/tmsecurelite/commom/ITmsCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/tencent/tmsecurelite/commom/TmsCallbackProxy;->mRemote:Landroid/os/IBinder;

    .line 24
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tencent/tmsecurelite/commom/TmsCallbackProxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public onArrayResultGot(ILjava/util/ArrayList;)V
    .locals 5
    .param p1, "err"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecurelite/commom/DataEntity;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 50
    .local p2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/tmsecurelite/commom/DataEntity;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 51
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 54
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    invoke-static {p2, v0}, Lcom/tencent/tmsecurelite/commom/DataEntity;->writeToParcel(Ljava/util/List;Landroid/os/Parcel;)V

    .line 56
    iget-object v2, p0, Lcom/tencent/tmsecurelite/commom/TmsCallbackProxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 57
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 60
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 62
    return-void

    .line 58
    :catchall_0
    move-exception v2

    .line 59
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 60
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 61
    throw v2
.end method

.method public onResultGot(ILcom/tencent/tmsecurelite/commom/DataEntity;)V
    .locals 5
    .param p1, "err"    # I
    .param p2, "result"    # Lcom/tencent/tmsecurelite/commom/DataEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 34
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 37
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Lcom/tencent/tmsecurelite/commom/DataEntity;->writeToParcel(Landroid/os/Parcel;I)V

    .line 39
    iget-object v2, p0, Lcom/tencent/tmsecurelite/commom/TmsCallbackProxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 40
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 43
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 45
    return-void

    .line 41
    :catchall_0
    move-exception v2

    .line 42
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 43
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 44
    throw v2
.end method
