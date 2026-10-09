.class public abstract Lcom/oppo/oiface/IOIfaceService$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/oppo/oiface/IOIfaceService;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.oppo.oiface.IOIfaceService"

.field static final TRANSACTION_applyHardwareResource:I = 0x67

.field static final TRANSACTION_getOifaceversion:I = 0x69

.field static final TRANSACTION_onAppRegister:I = 0x68

.field static final TRANSACTION_onSystemNotify:I = 0x65

.field static final TRANSACTION_updateGameInfo:I = 0x66


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.oppo.oiface.IOIfaceService"

    invoke-virtual {p0, p0, v0}, Lcom/oppo/oiface/IOIfaceService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oppo/oiface/IOIfaceService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.oppo.oiface.IOIfaceService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oppo/oiface/IOIfaceService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/oppo/oiface/IOIfaceService;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/oppo/oiface/IOIfaceService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/oppo/oiface/IOIfaceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v1, "com.oppo.oiface.IOIfaceService"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v1, "com.oppo.oiface.IOIfaceService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/oppo/oiface/IOIfaceNotifier$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oppo/oiface/IOIfaceNotifier;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/oiface/IOIfaceService$Stub;->onSystemNotify(Lcom/oppo/oiface/IOIfaceNotifier;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_2
    const-string v1, "com.oppo.oiface.IOIfaceService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/oiface/IOIfaceService$Stub;->updateGameInfo(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_3
    const-string v1, "com.oppo.oiface.IOIfaceService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/oiface/IOIfaceService$Stub;->applyHardwareResource(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_4
    const-string v1, "com.oppo.oiface.IOIfaceService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/oiface/IOIfaceService$Stub;->onAppRegister()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_5
    const-string v1, "com.oppo.oiface.IOIfaceService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/oiface/IOIfaceService$Stub;->getOifaceversion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x67 -> :sswitch_3
        0x68 -> :sswitch_4
        0x69 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
