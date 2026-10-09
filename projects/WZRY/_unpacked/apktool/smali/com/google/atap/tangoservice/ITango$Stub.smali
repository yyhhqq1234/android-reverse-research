.class public abstract Lcom/google/atap/tangoservice/ITango$Stub;
.super Landroid/os/Binder;
.source "ITango.java"

# interfaces
.implements Lcom/google/atap/tangoservice/ITango;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/atap/tangoservice/ITango;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/atap/tangoservice/ITango$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.atap.tangoservice.ITango"

.field static final TRANSACTION_connect:I = 0x1

.field static final TRANSACTION_connectSurface:I = 0x6

.field static final TRANSACTION_deleteAreaDescription:I = 0xf

.field static final TRANSACTION_deleteDataset:I = 0x14

.field static final TRANSACTION_disconnect:I = 0x3

.field static final TRANSACTION_disconnectSurface:I = 0x7

.field static final TRANSACTION_exportAreaDescriptionFile:I = 0xe

.field static final TRANSACTION_foiRequest:I = 0x16

.field static final TRANSACTION_getAreaDescriptionUuidList:I = 0xa

.field static final TRANSACTION_getCameraIntrinsics:I = 0x10

.field static final TRANSACTION_getConfig:I = 0x5

.field static final TRANSACTION_getCurrentDatasetUuid:I = 0x15

.field static final TRANSACTION_getDatasetUuids:I = 0x13

.field static final TRANSACTION_getPlaneByUVCoord:I = 0x18

.field static final TRANSACTION_getPlanes:I = 0x19

.field static final TRANSACTION_getPoseAtTime:I = 0x4

.field static final TRANSACTION_getPoseAtTime2:I = 0x17

.field static final TRANSACTION_importAreaDescriptionFile:I = 0xd

.field static final TRANSACTION_loadAreaDescriptionMetaData:I = 0xb

.field static final TRANSACTION_reportApiUsage:I = 0x12

.field static final TRANSACTION_resetMotionTracking:I = 0x8

.field static final TRANSACTION_saveAreaDescription:I = 0x9

.field static final TRANSACTION_saveAreaDescriptionMetaData:I = 0xc

.field static final TRANSACTION_setPoseListenerFrames:I = 0x2

.field static final TRANSACTION_setRuntimeConfig:I = 0x11

.field static final TRANSACTION_startOnlineCalibrationSolve:I = 0x1a


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.google.atap.tangoservice.ITango"

    invoke-virtual {p0, p0, v0}, Lcom/google/atap/tangoservice/ITango$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/atap/tangoservice/ITango;
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
    const-string v1, "com.google.atap.tangoservice.ITango"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/atap/tangoservice/ITango;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/google/atap/tangoservice/ITango;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/google/atap/tangoservice/ITango$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/google/atap/tangoservice/ITango$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 10
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
    sparse-switch p1, :sswitch_data_0

    .line 420
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 42
    :sswitch_0
    const-string v1, "com.google.atap.tangoservice.ITango"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v1, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v1, "com.google.atap.tangoservice.ITango"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/atap/tangoservice/ITangoListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/atap/tangoservice/ITangoListener;

    move-result-object v2

    .line 51
    .local v2, "_arg0":Lcom/google/atap/tangoservice/ITangoListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    sget-object v1, Lcom/google/atap/tangoservice/TangoConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/atap/tangoservice/TangoConfig;

    .line 57
    .local v4, "_arg1":Lcom/google/atap/tangoservice/TangoConfig;
    :goto_1
    invoke-virtual {p0, v2, v4}, Lcom/google/atap/tangoservice/ITango$Stub;->connect(Lcom/google/atap/tangoservice/ITangoListener;Lcom/google/atap/tangoservice/TangoConfig;)I

    move-result v9

    .line 58
    .local v9, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    const/4 v1, 0x1

    goto :goto_0

    .line 55
    .end local v4    # "_arg1":Lcom/google/atap/tangoservice/TangoConfig;
    .end local v9    # "_result":I
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Lcom/google/atap/tangoservice/TangoConfig;
    goto :goto_1

    .line 64
    .end local v2    # "_arg0":Lcom/google/atap/tangoservice/ITangoListener;
    .end local v4    # "_arg1":Lcom/google/atap/tangoservice/TangoConfig;
    :sswitch_2
    const-string v1, "com.google.atap.tangoservice.ITango"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    sget-object v1, Lcom/google/atap/tangoservice/TangoCoordinateFramePair;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 67
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/google/atap/tangoservice/TangoCoordinateFramePair;>;"
    invoke-virtual {p0, v0}, Lcom/google/atap/tangoservice/ITango$Stub;->setPoseListenerFrames(Ljava/util/List;)I

    move-result v9

    .line 68
    .restart local v9    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    const/4 v1, 0x1

    goto :goto_0

    .line 74
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/google/atap/tangoservice/TangoCoordinateFramePair;>;"
    .end local v9    # "_result":I
    :sswitch_3
    const-string v1, "com.google.atap.tangoservice.ITango"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/google/atap/tangoservice/ITango$Stub;->disconnect()I

    move-result v9

    .line 76
    .restart local v9    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    const/4 v1, 0x1

    goto :goto_0

    .line 82
    .end local v9    # "_result":I
    :sswitch_4
    const-string v1, "com.google.atap.tangoservice.ITango"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    .line 86
    .local v2, "_arg0":D
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    sget-object v1, Lcom/google/atap/tangoservice/TangoCoordinateFramePair;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/atap/tangoservice/TangoCoordinateFramePair;

    .line 93
    .local v4, "_arg1":Lcom/google/atap/tangoservice/TangoCoordinateFramePair;
    :goto_2
    new-instance v5, Lcom/google/atap/tangoservice/TangoPoseData;

    invoke-direct {v5}, Lcom/google/atap/tangoservice/TangoPoseData;-><init>()V

    .line 94
    .local v5, "_arg2":Lcom/google/atap/tangoservice/TangoPoseData;
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/google/atap/tangoservice/ITango$Stub;->getPoseAtTime(DLcom/google/atap/tangoservice/TangoCoordinateFramePair;Lcom/google/atap/tangoservice/TangoPoseData;)I

    move-result v9

    .line 95
    .restart local v9    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    if-eqz v5, :cond_2

    .line 98
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    const/4 v1, 0x1

    invoke-virtual {v5, p3, v1}, Lcom/google/atap/tangoservice/TangoPoseData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 104
    :goto_3
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 90
    .end local v4    # "_arg1":Lcom/google/atap/tangoservice/TangoCoordinateFramePair;
    .end local v5    # "_arg2":Lcom/google/atap/tangoservice/TangoPoseData;
    .end local v9    # "_result":I
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Lcom/google/atap/tangoservice/TangoCoordinateFramePair;
    goto :goto_2

    .line 102
    .restart local v5    # "_arg2":Lcom/google/atap/tangoservice/TangoPoseData;
    .restart local v9    # "_result":I
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 108
    .end local v2    # "_arg0":D
    .end local v4    # "_arg1":Lcom/google/atap/tangoservice/TangoCoordinateFramePair;
    .end local v5    # "_arg2":Lcom/google/atap/tangoservice/TangoPoseData;
    .end local v9    # "_result":I
    :sswitch_5
    const-string v1, "com.google.atap.tangoservice.ITango"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 112
    .local v2, "_arg0":I
    new-instance v4, Lcom/google/atap/tangoservice/TangoConfig;

    invoke-direct {v4}, Lcom/google/atap/tangoservice/TangoConfig;-><init>()V

    .line 113
    .local v4, "_arg1":Lcom/google/atap/tangoservice/TangoConfig;
    invoke-virtual {p0, v2, v4}, Lcom/google/atap/tangoservice/ITango$Stub;->getConfig(ILcom/google/atap/tangoservice/TangoConfig;)I

    move-result v9

    .line 114
    .restart local v9    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    if-eqz v4, :cond_3

    .line 117
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    const/4 v1, 0x1

    invoke-virtual {v4, p3, v1}, Lcom/google/atap/tangoservice/TangoConfig;->writeToParcel(Landroid/os/Parcel;I)V

    .line 123
    :goto_4
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 121
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 127
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Lcom/google/atap/tangoservice/TangoConfig;
    .end local v9    # "_result":I
    :sswitch_6
    const-string v1, "com.google.atap.tangoservice.ITango"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 131
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 132
    sget-object v1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Surface;

    .line 137
    .local v4, "_arg1":Landroid/view/Surface;
    :goto_5
    invoke-virtual {p0, v2, v4}, Lcom/google/atap/tangoservice/ITango$Stub;->connectSurface(ILandroid/view/Surface;)I

    move-result v9

    .line 138
    .restart local v9    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 135
    .end local v4    # "_arg1":Landroid/view/Surface;
    .end local v9    # "_result":I
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/view/Surface;
    goto :goto_5

    .line 144
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/view/Surface;
    :sswitch_7
    const-string v1, "com.google.atap.tangoservice.ITango"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 147
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/google/atap/tangoservice/ITango$Stub;->disconnectSurface(I)I

    move-result v9

    .line 148
    .restart local v9    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 154
    .end local v2    # "_arg0":I
    .end local v9    # "_result":I
    :sswitch_8
    const-string v1, "com.google.atap.tangoservice.ITango"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/google/atap/tangoservice/ITango$Stub;->resetMotionTracking()I

    move-result v9

    .line 156
    .restart local v9    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 162
    .end local v9    # "_result":I
    :sswitch_9
    const-string v1, "com.google.atap.tangoservice.ITango"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v8, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v8}, Lcom/google/atap/tangoservice/ITango$Stub;->saveAreaDescription(Ljava/util/List;)I

    move-result v9

    .line 166
    .restart local v9    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 169
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 173
    .end local v8    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "_result":I
    :sswitch_a
    const-string v1, "com.google.atap.tangoservice.ITango"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .restart local v8    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v8}, Lcom/google/atap/tangoservice/ITango$Stub;->getAreaDescriptionUuidList(Ljava/util/List;)I

    move-result v9

    .line 177
    .restart local v9    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 180
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 184
    .end local v8    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "_result":I
    :sswitch_b
    const-string v1, "com.google.atap.tangoservice.ITango"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, "_arg0":Ljava/lang/String;
    new-instance v4, Lcom/google/atap/tangoservice/TangoAreaDescriptionMetaData;

    invoke-direct {v4}, Lcom/google/atap/tangoservice/TangoAreaDescriptionMetaData;-><init>()V

    .line 189
    .local v4, "_arg1":Lcom/google/atap/tangoservice/TangoAreaDescriptionMetaData;
    invoke-virtual {p0, v2, v4}, Lcom/google/atap/tangoservice/ITango$Stub;->loadAreaDescriptionMetaData(Ljava/lang/String;Lcom/google/atap/tangoservice/TangoAreaDescriptionMetaData;)I

    move-result v9

    .line 190
    .restart local v9    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    if-eqz v4, :cond_5

    .line 193
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    const/4 v1, 0x1

    invoke-virtual {v4, p3, v1}, Lcom/google/atap/tangoservice/TangoAreaDescriptionMetaData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 199
    :goto_6
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 197
    :cond_5
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 203
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Lcom/google/atap/tangoservice/TangoAreaDescriptionMetaData;
    .end local v9    # "_result":I
    :sswitch_c
    const-string v1, "com.google.atap.tangoservice.ITango"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 207
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    .line 208
    sget-object v1, Lcom/google/atap/tangoservice/TangoAreaDescriptionMetaData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/atap/tangoservice/TangoAreaDescriptionMetaData;

    .line 213
    .restart local v4    # "_arg1":Lcom/google/atap/tangoservice/TangoAreaDescriptionMetaData;
    :goto_7
    invoke-virtual {p0, v2, v4}, Lcom/google/atap/tangoservice/ITango$Stub;->saveAreaDescriptionMetaData(Ljava/lang/String;Lcom/google/atap/tangoservice/TangoAreaDescriptionMetaData;)I

    move-result v9

    .line 214
    .restart local v9    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 211
    .end local v4    # "_arg1":Lcom/google/atap/tangoservice/TangoAreaDescriptionMetaData;
    .end local v9    # "_result":I
    :cond_6
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Lcom/google/atap/tangoservice/TangoAreaDescriptionMetaData;
    goto :goto_7

    .line 220
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Lcom/google/atap/tangoservice/TangoAreaDescriptionMetaData;
    :sswitch_d
    const-string v1, "com.google.atap.tangoservice.ITango"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .restart local v8    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v8, v4}, Lcom/google/atap/tangoservice/ITango$Stub;->importAreaDescriptionFile(Ljava/util/List;Ljava/lang/String;)I

    move-result v9

    .line 226
    .restart local v9    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 229
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 233
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "_result":I
    :sswitch_e
    const-string v1, "com.google.atap.tangoservice.ITango"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 237
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 238
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v4}, Lcom/google/atap/tangoservice/ITango$Stub;->exportAreaDescriptionFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 239
    .restart local v9    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 245
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v9    # "_result":I
    :sswitch_f
    const-string v1, "com.google.atap.tangoservice.ITango"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 248
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/google/atap/tangoservice/ITango$Stub;->deleteAreaDescription(Ljava/lang/String;)I

    move-result v9

    .line 249
    .restart local v9    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 255
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v9    # "_result":I
    :sswitch_10
    const-string v1, "com.google.atap.tangoservice.ITango"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 259
    .local v2, "_arg0":I
    new-instance v4, Lcom/google/atap/tangoservice/TangoCameraIntrinsics;

    invoke-direct {v4}, Lcom/google/atap/tangoservice/TangoCameraIntrinsics;-><init>()V

    .line 260
    .local v4, "_arg1":Lcom/google/atap/tangoservice/TangoCameraIntrinsics;
    invoke-virtual {p0, v2, v4}, Lcom/google/atap/tangoservice/ITango$Stub;->getCameraIntrinsics(ILcom/google/atap/tangoservice/TangoCameraIntrinsics;)I

    move-result v9

    .line 261
    .restart local v9    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    if-eqz v4, :cond_7

    .line 264
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    const/4 v1, 0x1

    invoke-virtual {v4, p3, v1}, Lcom/google/atap/tangoservice/TangoCameraIntrinsics;->writeToParcel(Landroid/os/Parcel;I)V

    .line 270
    :goto_8
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 268
    :cond_7
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 274
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Lcom/google/atap/tangoservice/TangoCameraIntrinsics;
    .end local v9    # "_result":I
    :sswitch_11
    const-string v1, "com.google.atap.tangoservice.ITango"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    .line 277
    sget-object v1, Lcom/google/atap/tangoservice/TangoConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/atap/tangoservice/TangoConfig;

    .line 282
    .local v2, "_arg0":Lcom/google/atap/tangoservice/TangoConfig;
    :goto_9
    invoke-virtual {p0, v2}, Lcom/google/atap/tangoservice/ITango$Stub;->setRuntimeConfig(Lcom/google/atap/tangoservice/TangoConfig;)I

    move-result v9

    .line 283
    .restart local v9    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 280
    .end local v2    # "_arg0":Lcom/google/atap/tangoservice/TangoConfig;
    .end local v9    # "_result":I
    :cond_8
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Lcom/google/atap/tangoservice/TangoConfig;
    goto :goto_9

    .line 289
    .end local v2    # "_arg0":Lcom/google/atap/tangoservice/TangoConfig;
    :sswitch_12
    const-string v1, "com.google.atap.tangoservice.ITango"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    .line 292
    sget-object v1, Lcom/google/atap/tangoservice/TangoConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/atap/tangoservice/TangoConfig;

    .line 297
    .restart local v2    # "_arg0":Lcom/google/atap/tangoservice/TangoConfig;
    :goto_a
    invoke-virtual {p0, v2}, Lcom/google/atap/tangoservice/ITango$Stub;->reportApiUsage(Lcom/google/atap/tangoservice/TangoConfig;)I

    move-result v9

    .line 298
    .restart local v9    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 295
    .end local v2    # "_arg0":Lcom/google/atap/tangoservice/TangoConfig;
    .end local v9    # "_result":I
    :cond_9
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Lcom/google/atap/tangoservice/TangoConfig;
    goto :goto_a

    .line 304
    .end local v2    # "_arg0":Lcom/google/atap/tangoservice/TangoConfig;
    :sswitch_13
    const-string v1, "com.google.atap.tangoservice.ITango"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .restart local v8    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v8}, Lcom/google/atap/tangoservice/ITango$Stub;->getDatasetUuids(Ljava/util/List;)I

    move-result v9

    .line 308
    .restart local v9    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 311
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 315
    .end local v8    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "_result":I
    :sswitch_14
    const-string v1, "com.google.atap.tangoservice.ITango"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 318
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/google/atap/tangoservice/ITango$Stub;->deleteDataset(Ljava/lang/String;)I

    move-result v9

    .line 319
    .restart local v9    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 325
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v9    # "_result":I
    :sswitch_15
    const-string v1, "com.google.atap.tangoservice.ITango"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .restart local v8    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v8}, Lcom/google/atap/tangoservice/ITango$Stub;->getCurrentDatasetUuid(Ljava/util/List;)I

    move-result v9

    .line 329
    .restart local v9    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 332
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 336
    .end local v8    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "_result":I
    :sswitch_16
    const-string v1, "com.google.atap.tangoservice.ITango"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    .line 339
    sget-object v1, Lcom/google/atap/tangoservice/fois/FoiRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/atap/tangoservice/fois/FoiRequest;

    .line 344
    .local v2, "_arg0":Lcom/google/atap/tangoservice/fois/FoiRequest;
    :goto_b
    invoke-virtual {p0, v2}, Lcom/google/atap/tangoservice/ITango$Stub;->foiRequest(Lcom/google/atap/tangoservice/fois/FoiRequest;)I

    move-result v9

    .line 345
    .restart local v9    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 342
    .end local v2    # "_arg0":Lcom/google/atap/tangoservice/fois/FoiRequest;
    .end local v9    # "_result":I
    :cond_a
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Lcom/google/atap/tangoservice/fois/FoiRequest;
    goto :goto_b

    .line 351
    .end local v2    # "_arg0":Lcom/google/atap/tangoservice/fois/FoiRequest;
    :sswitch_17
    const-string v1, "com.google.atap.tangoservice.ITango"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    .line 355
    .local v2, "_arg0":D
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 357
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 359
    .local v5, "_arg2":Ljava/lang/String;
    new-instance v6, Lcom/google/atap/tangoservice/TangoPoseData;

    invoke-direct {v6}, Lcom/google/atap/tangoservice/TangoPoseData;-><init>()V

    .local v6, "_arg3":Lcom/google/atap/tangoservice/TangoPoseData;
    move-object v1, p0

    .line 360
    invoke-virtual/range {v1 .. v6}, Lcom/google/atap/tangoservice/ITango$Stub;->getPoseAtTime2(DLjava/lang/String;Ljava/lang/String;Lcom/google/atap/tangoservice/TangoPoseData;)I

    move-result v9

    .line 361
    .restart local v9    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    if-eqz v6, :cond_b

    .line 364
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    const/4 v1, 0x1

    invoke-virtual {v6, p3, v1}, Lcom/google/atap/tangoservice/TangoPoseData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 370
    :goto_c
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 368
    :cond_b
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    .line 374
    .end local v2    # "_arg0":D
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Lcom/google/atap/tangoservice/TangoPoseData;
    .end local v9    # "_result":I
    :sswitch_18
    const-string v1, "com.google.atap.tangoservice.ITango"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 378
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    .line 379
    sget-object v1, Lcom/google/atap/tangoservice/TangoPoseData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/atap/tangoservice/TangoPoseData;

    .line 385
    .local v4, "_arg1":Lcom/google/atap/tangoservice/TangoPoseData;
    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v5

    .line 387
    .local v5, "_arg2":[D
    new-instance v6, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;

    invoke-direct {v6}, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;-><init>()V

    .line 388
    .local v6, "_arg3":Lcom/google/atap/tangoservice/experimental/TangoPlaneData;
    invoke-virtual {p0, v2, v4, v5, v6}, Lcom/google/atap/tangoservice/ITango$Stub;->getPlaneByUVCoord(ILcom/google/atap/tangoservice/TangoPoseData;[DLcom/google/atap/tangoservice/experimental/TangoPlaneData;)I

    move-result v9

    .line 389
    .restart local v9    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    if-eqz v6, :cond_d

    .line 392
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 393
    const/4 v1, 0x1

    invoke-virtual {v6, p3, v1}, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 398
    :goto_e
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 382
    .end local v4    # "_arg1":Lcom/google/atap/tangoservice/TangoPoseData;
    .end local v5    # "_arg2":[D
    .end local v6    # "_arg3":Lcom/google/atap/tangoservice/experimental/TangoPlaneData;
    .end local v9    # "_result":I
    :cond_c
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Lcom/google/atap/tangoservice/TangoPoseData;
    goto :goto_d

    .line 396
    .restart local v5    # "_arg2":[D
    .restart local v6    # "_arg3":Lcom/google/atap/tangoservice/experimental/TangoPlaneData;
    .restart local v9    # "_result":I
    :cond_d
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    .line 402
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Lcom/google/atap/tangoservice/TangoPoseData;
    .end local v5    # "_arg2":[D
    .end local v6    # "_arg3":Lcom/google/atap/tangoservice/experimental/TangoPlaneData;
    .end local v9    # "_result":I
    :sswitch_19
    const-string v1, "com.google.atap.tangoservice.ITango"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 405
    .local v7, "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/google/atap/tangoservice/experimental/TangoPlaneData;>;"
    invoke-virtual {p0, v7}, Lcom/google/atap/tangoservice/ITango$Stub;->getPlanes(Ljava/util/List;)I

    move-result v9

    .line 406
    .restart local v9    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 408
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 409
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 413
    .end local v7    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/google/atap/tangoservice/experimental/TangoPlaneData;>;"
    .end local v9    # "_result":I
    :sswitch_1a
    const-string v1, "com.google.atap.tangoservice.ITango"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p0}, Lcom/google/atap/tangoservice/ITango$Stub;->startOnlineCalibrationSolve()I

    move-result v9

    .line 415
    .restart local v9    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 417
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
