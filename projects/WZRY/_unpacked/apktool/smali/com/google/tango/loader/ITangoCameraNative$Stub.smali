.class public abstract Lcom/google/tango/loader/ITangoCameraNative$Stub;
.super Landroid/os/Binder;
.source "ITangoCameraNative.java"

# interfaces
.implements Lcom/google/tango/loader/ITangoCameraNative;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tango/loader/ITangoCameraNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tango/loader/ITangoCameraNative$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.tango.loader.ITangoCameraNative"

.field static final TRANSACTION_connectOnFrameAvailable:I = 0x5

.field static final TRANSACTION_connectOnImageAvailable:I = 0xe

.field static final TRANSACTION_connectOnTextureAvailable:I = 0x9

.field static final TRANSACTION_connectTextureId:I = 0x3

.field static final TRANSACTION_disconnectCamera:I = 0x7

.field static final TRANSACTION_initialize:I = 0x2

.field static final TRANSACTION_lockCameraBuffer:I = 0xb

.field static final TRANSACTION_setDatasetPathAndUUID:I = 0xf

.field static final TRANSACTION_startCamerasIfNeeded:I = 0x6

.field static final TRANSACTION_stopAllCameras:I = 0x8

.field static final TRANSACTION_unlockCameraBuffer:I = 0xc

.field static final TRANSACTION_updateTexture:I = 0x4

.field static final TRANSACTION_updateTextureExternalOes:I = 0xa

.field static final TRANSACTION_updateTextureExternalOesForBuffer:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.google.tango.loader.ITangoCameraNative"

    invoke-virtual {p0, p0, v0}, Lcom/google/tango/loader/ITangoCameraNative$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/tango/loader/ITangoCameraNative;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "com.google.tango.loader.ITangoCameraNative"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/tango/loader/ITangoCameraNative;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/google/tango/loader/ITangoCameraNative;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/google/tango/loader/ITangoCameraNative$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/google/tango/loader/ITangoCameraNative$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
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
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 249
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 47
    :sswitch_0
    const-string v9, "com.google.tango.loader.ITangoCameraNative"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v9, "com.google.tango.loader.ITangoCameraNative"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/google/tango/loader/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/tango/loader/IObjectWrapper;

    move-result-object v0

    .line 56
    .local v0, "_arg0":Lcom/google/tango/loader/IObjectWrapper;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/google/atap/tangoservice/ITangoListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/atap/tangoservice/ITangoListener;

    move-result-object v2

    .line 57
    .local v2, "_arg1":Lcom/google/atap/tangoservice/ITangoListener;
    invoke-virtual {p0, v0, v2}, Lcom/google/tango/loader/ITangoCameraNative$Stub;->initialize(Lcom/google/tango/loader/IObjectWrapper;Lcom/google/atap/tangoservice/ITangoListener;)I

    move-result v7

    .line 58
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 64
    .end local v0    # "_arg0":Lcom/google/tango/loader/IObjectWrapper;
    .end local v2    # "_arg1":Lcom/google/atap/tangoservice/ITangoListener;
    .end local v7    # "_result":I
    :sswitch_2
    const-string v9, "com.google.tango.loader.ITangoCameraNative"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 68
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 70
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_0

    move v4, v8

    .line 71
    .local v4, "_arg2":Z
    :cond_0
    invoke-virtual {p0, v0, v2, v4}, Lcom/google/tango/loader/ITangoCameraNative$Stub;->connectTextureId(IIZ)I

    move-result v7

    .line 72
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 78
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v4    # "_arg2":Z
    .end local v7    # "_result":I
    :sswitch_3
    const-string v9, "com.google.tango.loader.ITangoCameraNative"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 82
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 83
    .local v1, "_arg1_length":I
    if-gez v1, :cond_1

    .line 84
    const/4 v2, 0x0

    .line 89
    .local v2, "_arg1":[D
    :goto_1
    invoke-virtual {p0, v0, v2}, Lcom/google/tango/loader/ITangoCameraNative$Stub;->updateTexture(I[D)I

    move-result v7

    .line 90
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeDoubleArray([D)V

    goto :goto_0

    .line 87
    .end local v2    # "_arg1":[D
    .end local v7    # "_result":I
    :cond_1
    new-array v2, v1, [D

    .restart local v2    # "_arg1":[D
    goto :goto_1

    .line 97
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1_length":I
    .end local v2    # "_arg1":[D
    :sswitch_4
    const-string v9, "com.google.tango.loader.ITangoCameraNative"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 101
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/google/atap/tangoservice/IOnFrameAvailableListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/atap/tangoservice/IOnFrameAvailableListener;

    move-result-object v2

    .line 103
    .local v2, "_arg1":Lcom/google/atap/tangoservice/IOnFrameAvailableListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_2

    move v4, v8

    .line 104
    .restart local v4    # "_arg2":Z
    :cond_2
    invoke-virtual {p0, v0, v2, v4}, Lcom/google/tango/loader/ITangoCameraNative$Stub;->connectOnFrameAvailable(ILcom/google/atap/tangoservice/IOnFrameAvailableListener;Z)I

    move-result v7

    .line 105
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 111
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Lcom/google/atap/tangoservice/IOnFrameAvailableListener;
    .end local v4    # "_arg2":Z
    .end local v7    # "_result":I
    :sswitch_5
    const-string v9, "com.google.tango.loader.ITangoCameraNative"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/google/tango/loader/ITangoCameraNative$Stub;->startCamerasIfNeeded()I

    move-result v7

    .line 113
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 119
    .end local v7    # "_result":I
    :sswitch_6
    const-string v9, "com.google.tango.loader.ITangoCameraNative"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 122
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/google/tango/loader/ITangoCameraNative$Stub;->disconnectCamera(I)I

    move-result v7

    .line 123
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 129
    .end local v0    # "_arg0":I
    .end local v7    # "_result":I
    :sswitch_7
    const-string v9, "com.google.tango.loader.ITangoCameraNative"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/google/tango/loader/ITangoCameraNative$Stub;->stopAllCameras()I

    move-result v7

    .line 131
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 137
    .end local v7    # "_result":I
    :sswitch_8
    const-string v9, "com.google.tango.loader.ITangoCameraNative"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 141
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_3

    move v2, v8

    .line 142
    .local v2, "_arg1":Z
    :goto_2
    invoke-virtual {p0, v0, v2}, Lcom/google/tango/loader/ITangoCameraNative$Stub;->connectOnTextureAvailable(IZ)I

    move-result v7

    .line 143
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v2    # "_arg1":Z
    .end local v7    # "_result":I
    :cond_3
    move v2, v4

    .line 141
    goto :goto_2

    .line 149
    .end local v0    # "_arg0":I
    :sswitch_9
    const-string v9, "com.google.tango.loader.ITangoCameraNative"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 153
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 155
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 156
    .local v6, "_arg2_length":I
    if-gez v6, :cond_4

    .line 157
    const/4 v4, 0x0

    .line 162
    .local v4, "_arg2":[D
    :goto_3
    invoke-virtual {p0, v0, v2, v4}, Lcom/google/tango/loader/ITangoCameraNative$Stub;->updateTextureExternalOes(II[D)I

    move-result v7

    .line 163
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeDoubleArray([D)V

    goto/16 :goto_0

    .line 160
    .end local v4    # "_arg2":[D
    .end local v7    # "_result":I
    :cond_4
    new-array v4, v6, [D

    .restart local v4    # "_arg2":[D
    goto :goto_3

    .line 170
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v4    # "_arg2":[D
    .end local v6    # "_arg2_length":I
    :sswitch_a
    const-string v9, "com.google.tango.loader.ITangoCameraNative"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 174
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 175
    .restart local v1    # "_arg1_length":I
    if-gez v1, :cond_5

    .line 176
    const/4 v2, 0x0

    .line 182
    .local v2, "_arg1":[D
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 183
    .restart local v6    # "_arg2_length":I
    if-gez v6, :cond_6

    .line 184
    const/4 v4, 0x0

    .line 189
    .local v4, "_arg2":[J
    :goto_5
    invoke-virtual {p0, v0, v2, v4}, Lcom/google/tango/loader/ITangoCameraNative$Stub;->lockCameraBuffer(I[D[J)I

    move-result v7

    .line 190
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeDoubleArray([D)V

    .line 193
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeLongArray([J)V

    goto/16 :goto_0

    .line 179
    .end local v2    # "_arg1":[D
    .end local v4    # "_arg2":[J
    .end local v6    # "_arg2_length":I
    .end local v7    # "_result":I
    :cond_5
    new-array v2, v1, [D

    .restart local v2    # "_arg1":[D
    goto :goto_4

    .line 187
    .restart local v6    # "_arg2_length":I
    :cond_6
    new-array v4, v6, [J

    .restart local v4    # "_arg2":[J
    goto :goto_5

    .line 198
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1_length":I
    .end local v2    # "_arg1":[D
    .end local v4    # "_arg2":[J
    .end local v6    # "_arg2_length":I
    :sswitch_b
    const-string v9, "com.google.tango.loader.ITangoCameraNative"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 202
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 203
    .local v2, "_arg1":J
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/tango/loader/ITangoCameraNative$Stub;->unlockCameraBuffer(IJ)I

    move-result v7

    .line 204
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 210
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":J
    .end local v7    # "_result":I
    :sswitch_c
    const-string v9, "com.google.tango.loader.ITangoCameraNative"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 214
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 216
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 217
    .local v4, "_arg2":J
    invoke-virtual {p0, v0, v2, v4, v5}, Lcom/google/tango/loader/ITangoCameraNative$Stub;->updateTextureExternalOesForBuffer(IIJ)I

    move-result v7

    .line 218
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 224
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v4    # "_arg2":J
    .end local v7    # "_result":I
    :sswitch_d
    const-string v9, "com.google.tango.loader.ITangoCameraNative"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 228
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/google/atap/tangoservice/IOnImageAvailableListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/atap/tangoservice/IOnImageAvailableListener;

    move-result-object v2

    .line 230
    .local v2, "_arg1":Lcom/google/atap/tangoservice/IOnImageAvailableListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_7

    move v4, v8

    .line 231
    .local v4, "_arg2":Z
    :cond_7
    invoke-virtual {p0, v0, v2, v4}, Lcom/google/tango/loader/ITangoCameraNative$Stub;->connectOnImageAvailable(ILcom/google/atap/tangoservice/IOnImageAvailableListener;Z)I

    move-result v7

    .line 232
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 238
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Lcom/google/atap/tangoservice/IOnImageAvailableListener;
    .end local v4    # "_arg2":Z
    .end local v7    # "_result":I
    :sswitch_e
    const-string v9, "com.google.tango.loader.ITangoCameraNative"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 243
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/google/tango/loader/ITangoCameraNative$Stub;->setDatasetPathAndUUID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 244
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0xf -> :sswitch_e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
