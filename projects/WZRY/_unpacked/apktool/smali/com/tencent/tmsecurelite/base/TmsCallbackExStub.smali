.class public abstract Lcom/tencent/tmsecurelite/base/TmsCallbackExStub;
.super Landroid/os/Binder;
.source "TmsCallbackExStub.java"

# interfaces
.implements Lcom/tencent/tmsecurelite/base/ITmsCallbackEx;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.tencent.tmsecurelite.base.ITmsCallbackEx"

    invoke-virtual {p0, p0, v0}, Lcom/tencent/tmsecurelite/base/TmsCallbackExStub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/tencent/tmsecurelite/base/ITmsCallbackEx;
    .locals 2
    .param p0, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 39
    :goto_0
    return-object v0

    .line 34
    :cond_0
    const-string v1, "com.tencent.tmsecurelite.base.ITmsCallbackEx"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 35
    .local v0, "iInterface":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/tencent/tmsecurelite/base/ITmsCallbackEx;

    if-eqz v1, :cond_1

    .line 36
    check-cast v0, Lcom/tencent/tmsecurelite/base/ITmsCallbackEx;

    goto :goto_0

    .line 39
    :cond_1
    new-instance v0, Lcom/tencent/tmsecurelite/base/TmsCallbackExProxy;

    .end local v0    # "iInterface":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/tencent/tmsecurelite/base/TmsCallbackExProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
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
    .line 45
    packed-switch p1, :pswitch_data_0

    .line 55
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 47
    :pswitch_0
    const-string v1, "com.tencent.tmsecurelite.base.ITmsCallbackEx"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    const-class v1, Lcom/tencent/tmsecurelite/base/TmsCallbackExStub;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 49
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/tencent/tmsecurelite/base/TmsCallbackExStub;->onCallback(Landroid/os/Message;)V

    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
