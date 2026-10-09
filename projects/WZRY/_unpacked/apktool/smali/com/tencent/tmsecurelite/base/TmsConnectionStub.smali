.class public abstract Lcom/tencent/tmsecurelite/base/TmsConnectionStub;
.super Landroid/os/Binder;
.source "TmsConnectionStub.java"

# interfaces
.implements Lcom/tencent/tmsecurelite/base/ITmsConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.tencent.tmsecurelite.base.ITmsConnection"

    invoke-virtual {p0, p0, v0}, Lcom/tencent/tmsecurelite/base/TmsConnectionStub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/tencent/tmsecurelite/base/ITmsConnection;
    .locals 2
    .param p0, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const-string v1, "com.tencent.tmsecurelite.base.ITmsConnection"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iInterface":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/tencent/tmsecurelite/base/ITmsConnection;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/tencent/tmsecurelite/base/ITmsConnection;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/tencent/tmsecurelite/base/TmsConnectionProxy;

    .end local v0    # "iInterface":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/tencent/tmsecurelite/base/TmsConnectionProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 20
    return-object p0
.end method

.method public checkVersion(I)Z
    .locals 1
    .param p1, "version"    # I

    .prologue
    .line 102
    const/4 v0, 0x3

    if-lt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 38
    packed-switch p1, :pswitch_data_0

    .line 98
    :goto_0
    const/4 v10, 0x1

    :goto_1
    return v10

    .line 40
    :pswitch_0
    const-string v10, "com.tencent.tmsecurelite.base.ITmsConnection"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/tencent/tmsecurelite/commom/TmsCallbackStub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/tmsecurelite/commom/ITmsCallback;

    move-result-object v2

    .line 42
    .local v2, "callback":Lcom/tencent/tmsecurelite/commom/ITmsCallback;
    invoke-virtual {p0, v2}, Lcom/tencent/tmsecurelite/base/TmsConnectionStub;->updateTmsConfigAsync(Lcom/tencent/tmsecurelite/commom/ITmsCallback;)V

    .line 43
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 44
    const/4 v10, 0x1

    goto :goto_1

    .line 48
    .end local v2    # "callback":Lcom/tencent/tmsecurelite/commom/ITmsCallback;
    :pswitch_1
    const-string v10, "com.tencent.tmsecurelite.base.ITmsConnection"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/tencent/tmsecurelite/base/TmsConnectionStub;->checkVersion(I)Z

    move-result v9

    .line 50
    .local v9, "state":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    if-eqz v9, :cond_0

    const/4 v10, 0x1

    :goto_2
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    goto :goto_2

    .line 56
    .end local v9    # "state":Z
    :pswitch_2
    const-string v10, "com.tencent.tmsecurelite.base.ITmsConnection"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 58
    .local v5, "pkg":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 59
    .local v4, "moduleId":I
    invoke-virtual {p0, v5, v4}, Lcom/tencent/tmsecurelite/base/TmsConnectionStub;->checkPermission(Ljava/lang/String;I)Z

    move-result v9

    .line 60
    .restart local v9    # "state":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v9, :cond_1

    const/4 v10, 0x1

    :goto_3
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    goto :goto_3

    .line 66
    .end local v4    # "moduleId":I
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v9    # "state":Z
    :pswitch_3
    const-string v10, "com.tencent.tmsecurelite.base.ITmsConnection"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 68
    .local v3, "cmdId":I
    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 69
    .local v0, "_data":Landroid/os/Bundle;
    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 70
    .local v1, "_reply":Landroid/os/Bundle;
    invoke-virtual {p0, v3, v0, v1}, Lcom/tencent/tmsecurelite/base/TmsConnectionStub;->sendTmsRequest(ILandroid/os/Bundle;Landroid/os/Bundle;)I

    move-result v7

    .line 71
    .local v7, "result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    const/4 v10, 0x1

    invoke-virtual {v1, p3, v10}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 78
    .end local v0    # "_data":Landroid/os/Bundle;
    .end local v1    # "_reply":Landroid/os/Bundle;
    .end local v3    # "cmdId":I
    .end local v7    # "result":I
    :pswitch_4
    const-string v10, "com.tencent.tmsecurelite.base.ITmsConnection"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 80
    .restart local v3    # "cmdId":I
    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 81
    .restart local v0    # "_data":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/tencent/tmsecurelite/base/TmsCallbackExStub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/tmsecurelite/base/ITmsCallbackEx;

    move-result-object v2

    .line 82
    .local v2, "callback":Lcom/tencent/tmsecurelite/base/ITmsCallbackEx;
    invoke-virtual {p0, v3, v0, v2}, Lcom/tencent/tmsecurelite/base/TmsConnectionStub;->sendTmsCallback(ILandroid/os/Bundle;Lcom/tencent/tmsecurelite/base/ITmsCallbackEx;)I

    move-result v8

    .line 83
    .local v8, "reuslt":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 89
    .end local v0    # "_data":Landroid/os/Bundle;
    .end local v2    # "callback":Lcom/tencent/tmsecurelite/base/ITmsCallbackEx;
    .end local v3    # "cmdId":I
    .end local v8    # "reuslt":I
    :pswitch_5
    const-string v10, "com.tencent.tmsecurelite.base.ITmsConnection"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/tencent/tmsecurelite/base/ITmsProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/tmsecurelite/base/ITmsProvider;

    move-result-object v6

    .line 91
    .local v6, "provider":Lcom/tencent/tmsecurelite/base/ITmsProvider;
    invoke-virtual {p0, v6}, Lcom/tencent/tmsecurelite/base/TmsConnectionStub;->setProvider(Lcom/tencent/tmsecurelite/base/ITmsProvider;)I

    move-result v8

    .line 92
    .restart local v8    # "reuslt":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
