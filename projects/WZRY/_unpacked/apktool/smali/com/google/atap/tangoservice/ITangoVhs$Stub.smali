.class public abstract Lcom/google/atap/tangoservice/ITangoVhs$Stub;
.super Landroid/os/Binder;
.source "ITangoVhs.java"

# interfaces
.implements Lcom/google/atap/tangoservice/ITangoVhs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/atap/tangoservice/ITangoVhs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/atap/tangoservice/ITangoVhs$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.atap.tangoservice.ITangoVhs"

.field static final TRANSACTION_getTrackingSurface:I = 0x1

.field static final TRANSACTION_onMetadata:I = 0x2

.field static final TRANSACTION_setDatasetPathAndUUID:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.google.atap.tangoservice.ITangoVhs"

    invoke-virtual {p0, p0, v0}, Lcom/google/atap/tangoservice/ITangoVhs$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/atap/tangoservice/ITangoVhs;
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
    const-string v1, "com.google.atap.tangoservice.ITangoVhs"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/atap/tangoservice/ITangoVhs;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/google/atap/tangoservice/ITangoVhs;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/google/atap/tangoservice/ITangoVhs$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/google/atap/tangoservice/ITangoVhs$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v10, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 87
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 42
    :sswitch_0
    const-string v1, "com.google.atap.tangoservice.ITangoVhs"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v10

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v1, "com.google.atap.tangoservice.ITangoVhs"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/google/atap/tangoservice/ITangoVhs$Stub;->getTrackingSurface()Landroid/view/Surface;

    move-result-object v0

    .line 49
    .local v0, "_result":Landroid/view/Surface;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    invoke-virtual {v0, p3, v10}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    move v1, v10

    .line 57
    goto :goto_0

    .line 55
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 61
    .end local v0    # "_result":Landroid/view/Surface;
    :sswitch_2
    const-string v1, "com.google.atap.tangoservice.ITangoVhs"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 65
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 67
    .local v4, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 69
    .local v6, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .local v8, "_arg3":J
    move-object v1, p0

    .line 70
    invoke-virtual/range {v1 .. v9}, Lcom/google/atap/tangoservice/ITangoVhs$Stub;->onMetadata(JJJJ)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v10

    .line 72
    goto :goto_0

    .line 76
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":J
    .end local v6    # "_arg2":J
    .end local v8    # "_arg3":J
    :sswitch_3
    const-string v1, "com.google.atap.tangoservice.ITangoVhs"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v4}, Lcom/google/atap/tangoservice/ITangoVhs$Stub;->setDatasetPathAndUUID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 82
    .local v0, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v10

    .line 84
    goto :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
