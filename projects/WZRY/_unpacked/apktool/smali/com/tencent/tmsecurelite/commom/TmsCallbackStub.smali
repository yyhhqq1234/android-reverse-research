.class public abstract Lcom/tencent/tmsecurelite/commom/TmsCallbackStub;
.super Landroid/os/Binder;
.source "TmsCallbackStub.java"

# interfaces
.implements Lcom/tencent/tmsecurelite/commom/ITmsCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 23
    const-string v0, "com.tencent.tmsecurelite.ITmsCallback"

    invoke-virtual {p0, p0, v0}, Lcom/tencent/tmsecurelite/commom/TmsCallbackStub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/tencent/tmsecurelite/commom/ITmsCallback;
    .locals 2
    .param p0, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 36
    if-nez p0, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    .line 40
    :cond_0
    const-string v1, "com.tencent.tmsecurelite.ITmsCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 41
    .local v0, "iInterface":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/tencent/tmsecurelite/commom/ITmsCallback;

    if-eqz v1, :cond_1

    .line 42
    check-cast v0, Lcom/tencent/tmsecurelite/commom/ITmsCallback;

    goto :goto_0

    .line 45
    :cond_1
    new-instance v0, Lcom/tencent/tmsecurelite/commom/TmsCallbackProxy;

    .end local v0    # "iInterface":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/tencent/tmsecurelite/commom/TmsCallbackProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
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
    .line 51
    packed-switch p1, :pswitch_data_0

    .line 74
    :goto_0
    const/4 v5, 0x1

    return v5

    .line 53
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 54
    .local v1, "err":I
    const/4 v2, 0x0

    .line 56
    .local v2, "result":Lcom/tencent/tmsecurelite/commom/DataEntity;
    :try_start_0
    new-instance v3, Lcom/tencent/tmsecurelite/commom/DataEntity;

    invoke-direct {v3, p2}, Lcom/tencent/tmsecurelite/commom/DataEntity;-><init>(Landroid/os/Parcel;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "result":Lcom/tencent/tmsecurelite/commom/DataEntity;
    .local v3, "result":Lcom/tencent/tmsecurelite/commom/DataEntity;
    move-object v2, v3

    .line 60
    .end local v3    # "result":Lcom/tencent/tmsecurelite/commom/DataEntity;
    .restart local v2    # "result":Lcom/tencent/tmsecurelite/commom/DataEntity;
    :goto_1
    invoke-virtual {p0, v1, v2}, Lcom/tencent/tmsecurelite/commom/TmsCallbackStub;->onResultGot(ILcom/tencent/tmsecurelite/commom/DataEntity;)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 66
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "err":I
    .end local v2    # "result":Lcom/tencent/tmsecurelite/commom/DataEntity;
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 67
    .restart local v1    # "err":I
    invoke-static {p2}, Lcom/tencent/tmsecurelite/commom/DataEntity;->readFromParcel(Landroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v4

    .line 68
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/tmsecurelite/commom/DataEntity;>;"
    invoke-virtual {p0, v1, v4}, Lcom/tencent/tmsecurelite/commom/TmsCallbackStub;->onArrayResultGot(ILjava/util/ArrayList;)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
