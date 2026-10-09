.class public abstract Lcom/standardar/service/aidl/IDataFlowInterface$Stub;
.super Landroid/os/Binder;
.source "IDataFlowInterface.java"

# interfaces
.implements Lcom/standardar/service/aidl/IDataFlowInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/standardar/service/aidl/IDataFlowInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/standardar/service/aidl/IDataFlowInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.standardar.service.aidl.IDataFlowInterface"

.field static final TRANSACTION_processFrame:I = 0x1

.field static final TRANSACTION_processFrameShareMemory:I = 0x2

.field static final TRANSACTION_processFrameShareMemoryV27:I = 0x4

.field static final TRANSACTION_sendCommand:I = 0x5

.field static final TRANSACTION_setupSharedMemory:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.standardar.service.aidl.IDataFlowInterface"

    invoke-virtual {p0, p0, v0}, Lcom/standardar/service/aidl/IDataFlowInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/standardar/service/aidl/IDataFlowInterface;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.standardar.service.aidl.IDataFlowInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/standardar/service/aidl/IDataFlowInterface;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/standardar/service/aidl/IDataFlowInterface;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/standardar/service/aidl/IDataFlowInterface$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/standardar/service/aidl/IDataFlowInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 109
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v4, "com.standardar.service.aidl.IDataFlowInterface"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v4, "com.standardar.service.aidl.IDataFlowInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 50
    .local v0, "_arg0":[B
    invoke-virtual {p0, v0}, Lcom/standardar/service/aidl/IDataFlowInterface$Stub;->processFrame([B)[B

    move-result-object v2

    .line 51
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 57
    .end local v0    # "_arg0":[B
    .end local v2    # "_result":[B
    :sswitch_2
    const-string v4, "com.standardar.service.aidl.IDataFlowInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 60
    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 66
    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 67
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/standardar/service/aidl/IDataFlowInterface$Stub;->processFrameShareMemory(Landroid/os/ParcelFileDescriptor;I)[B

    move-result-object v2

    .line 68
    .restart local v2    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 63
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":[B
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_1

    .line 74
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_3
    const-string v4, "com.standardar.service.aidl.IDataFlowInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 77
    sget-object v4, Landroid/os/SharedMemory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SharedMemory;

    .line 83
    .local v0, "_arg0":Landroid/os/SharedMemory;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 84
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/standardar/service/aidl/IDataFlowInterface$Stub;->setupSharedMemory(Landroid/os/SharedMemory;I)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 80
    .end local v0    # "_arg0":Landroid/os/SharedMemory;
    .end local v1    # "_arg1":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/SharedMemory;
    goto :goto_2

    .line 90
    .end local v0    # "_arg0":Landroid/os/SharedMemory;
    :sswitch_4
    const-string v4, "com.standardar.service.aidl.IDataFlowInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/standardar/service/aidl/IDataFlowInterface$Stub;->processFrameShareMemoryV27()[B

    move-result-object v2

    .line 92
    .restart local v2    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 98
    .end local v2    # "_result":[B
    :sswitch_5
    const-string v4, "com.standardar.service.aidl.IDataFlowInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 102
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 103
    .local v1, "_arg1":[B
    invoke-virtual {p0, v0, v1}, Lcom/standardar/service/aidl/IDataFlowInterface$Stub;->sendCommand(I[B)I

    move-result v2

    .line 104
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
