.class public abstract Lcom/tencent/component/plugin/IPluginManager$Stub;
.super Landroid/os/Binder;
.source "IPluginManager.java"

# interfaces
.implements Lcom/tencent/component/plugin/IPluginManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/plugin/IPluginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/component/plugin/IPluginManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.tencent.component.plugin.IPluginManager"

.field static final TRANSACTION_disablePlugin:I = 0x6

.field static final TRANSACTION_enablePlugin:I = 0x5

.field static final TRANSACTION_getAllPluginInfos:I = 0xa

.field static final TRANSACTION_getPluginInfo:I = 0x9

.field static final TRANSACTION_handlePluginUri:I = 0xc

.field static final TRANSACTION_hello:I = 0x1

.field static final TRANSACTION_install:I = 0xd

.field static final TRANSACTION_isPluginEnabled:I = 0x7

.field static final TRANSACTION_isPluginRegistered:I = 0x4

.field static final TRANSACTION_loadPluginInfo:I = 0x8

.field static final TRANSACTION_markPluginSurviveable:I = 0xf

.field static final TRANSACTION_registerPlugin:I = 0x2

.field static final TRANSACTION_setPluginHandler:I = 0xb

.field static final TRANSACTION_uninstall:I = 0xe

.field static final TRANSACTION_unregisterPlugin:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.tencent.component.plugin.IPluginManager"

    invoke-virtual {p0, p0, v0}, Lcom/tencent/component/plugin/IPluginManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/tencent/component/plugin/IPluginManager;
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
    const-string v1, "com.tencent.component.plugin.IPluginManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/tencent/component/plugin/IPluginManager;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/tencent/component/plugin/IPluginManager;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/tencent/component/plugin/IPluginManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/tencent/component/plugin/IPluginManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 8
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
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 267
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 42
    :sswitch_0
    const-string v5, "com.tencent.component.plugin.IPluginManager"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "com.tencent.component.plugin.IPluginManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 50
    sget-object v5, Lcom/tencent/component/plugin/PluginPlatformConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/component/plugin/PluginPlatformConfig;

    .line 56
    .local v0, "_arg0":Lcom/tencent/component/plugin/PluginPlatformConfig;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/component/plugin/server/PluginServerBroadcast$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/component/plugin/server/PluginServerBroadcast;

    move-result-object v1

    .line 57
    .local v1, "_arg1":Lcom/tencent/component/plugin/server/PluginServerBroadcast;
    invoke-virtual {p0, v0, v1}, Lcom/tencent/component/plugin/IPluginManager$Stub;->hello(Lcom/tencent/component/plugin/PluginPlatformConfig;Lcom/tencent/component/plugin/server/PluginServerBroadcast;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 53
    .end local v0    # "_arg0":Lcom/tencent/component/plugin/PluginPlatformConfig;
    .end local v1    # "_arg1":Lcom/tencent/component/plugin/server/PluginServerBroadcast;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/tencent/component/plugin/PluginPlatformConfig;
    goto :goto_1

    .line 63
    .end local v0    # "_arg0":Lcom/tencent/component/plugin/PluginPlatformConfig;
    :sswitch_2
    const-string v7, "com.tencent.component.plugin.IPluginManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2

    .line 70
    sget-object v7, Lcom/tencent/component/plugin/PluginInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/component/plugin/PluginInfo;

    .line 75
    .local v2, "_arg2":Lcom/tencent/component/plugin/PluginInfo;
    :goto_2
    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/component/plugin/IPluginManager$Stub;->registerPlugin(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/component/plugin/PluginInfo;)Z

    move-result v3

    .line 76
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v3, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 73
    .end local v2    # "_arg2":Lcom/tencent/component/plugin/PluginInfo;
    .end local v3    # "_result":Z
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Lcom/tencent/component/plugin/PluginInfo;
    goto :goto_2

    .line 82
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Lcom/tencent/component/plugin/PluginInfo;
    :sswitch_3
    const-string v7, "com.tencent.component.plugin.IPluginManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 86
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 87
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/tencent/component/plugin/IPluginManager$Stub;->unregisterPlugin(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 88
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v3, :cond_3

    move v5, v6

    :cond_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 94
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_4
    const-string v7, "com.tencent.component.plugin.IPluginManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 98
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 99
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/tencent/component/plugin/IPluginManager$Stub;->isPluginRegistered(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 100
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v3, :cond_4

    move v5, v6

    :cond_4
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 106
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_5
    const-string v7, "com.tencent.component.plugin.IPluginManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 110
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 111
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/tencent/component/plugin/IPluginManager$Stub;->enablePlugin(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 112
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    if-eqz v3, :cond_5

    move v5, v6

    :cond_5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 118
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_6
    const-string v7, "com.tencent.component.plugin.IPluginManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 122
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 123
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/tencent/component/plugin/IPluginManager$Stub;->disablePlugin(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 124
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    if-eqz v3, :cond_6

    move v5, v6

    :cond_6
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 130
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_7
    const-string v7, "com.tencent.component.plugin.IPluginManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 134
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 135
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/tencent/component/plugin/IPluginManager$Stub;->isPluginEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 136
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    if-eqz v3, :cond_7

    move v5, v6

    :cond_7
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 142
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_8
    const-string v7, "com.tencent.component.plugin.IPluginManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 146
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 147
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/tencent/component/plugin/IPluginManager$Stub;->loadPluginInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/component/plugin/PluginInfo;

    move-result-object v3

    .line 148
    .local v3, "_result":Lcom/tencent/component/plugin/PluginInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    if-eqz v3, :cond_8

    .line 150
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    invoke-virtual {v3, p3, v6}, Lcom/tencent/component/plugin/PluginInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 154
    :cond_8
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 160
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Lcom/tencent/component/plugin/PluginInfo;
    :sswitch_9
    const-string v7, "com.tencent.component.plugin.IPluginManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 164
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 165
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/tencent/component/plugin/IPluginManager$Stub;->getPluginInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/component/plugin/PluginInfo;

    move-result-object v3

    .line 166
    .restart local v3    # "_result":Lcom/tencent/component/plugin/PluginInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    if-eqz v3, :cond_9

    .line 168
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    invoke-virtual {v3, p3, v6}, Lcom/tencent/component/plugin/PluginInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 172
    :cond_9
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 178
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Lcom/tencent/component/plugin/PluginInfo;
    :sswitch_a
    const-string v5, "com.tencent.component.plugin.IPluginManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 181
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/tencent/component/plugin/IPluginManager$Stub;->getAllPluginInfos(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 182
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/component/plugin/PluginInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 188
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/component/plugin/PluginInfo;>;"
    :sswitch_b
    const-string v5, "com.tencent.component.plugin.IPluginManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 192
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/component/plugin/PluginManageHandler$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/component/plugin/PluginManageHandler;

    move-result-object v1

    .line 193
    .local v1, "_arg1":Lcom/tencent/component/plugin/PluginManageHandler;
    invoke-virtual {p0, v0, v1}, Lcom/tencent/component/plugin/IPluginManager$Stub;->setPluginHandler(Ljava/lang/String;Lcom/tencent/component/plugin/PluginManageHandler;)V

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 199
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/tencent/component/plugin/PluginManageHandler;
    :sswitch_c
    const-string v7, "com.tencent.component.plugin.IPluginManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 203
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_a

    .line 206
    sget-object v7, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 211
    .local v2, "_arg2":Landroid/net/Uri;
    :goto_3
    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/component/plugin/IPluginManager$Stub;->handlePluginUri(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    .line 212
    .local v3, "_result":Landroid/content/Intent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    if-eqz v3, :cond_b

    .line 214
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    invoke-virtual {v3, p3, v6}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 209
    .end local v2    # "_arg2":Landroid/net/Uri;
    .end local v3    # "_result":Landroid/content/Intent;
    :cond_a
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/net/Uri;
    goto :goto_3

    .line 218
    .restart local v3    # "_result":Landroid/content/Intent;
    :cond_b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 224
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/net/Uri;
    .end local v3    # "_result":Landroid/content/Intent;
    :sswitch_d
    const-string v5, "com.tencent.component.plugin.IPluginManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 228
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 230
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/component/plugin/InstallPluginListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/component/plugin/InstallPluginListener;

    move-result-object v2

    .line 231
    .local v2, "_arg2":Lcom/tencent/component/plugin/InstallPluginListener;
    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/component/plugin/IPluginManager$Stub;->install(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/component/plugin/InstallPluginListener;)V

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 237
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Lcom/tencent/component/plugin/InstallPluginListener;
    :sswitch_e
    const-string v5, "com.tencent.component.plugin.IPluginManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 241
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    .line 242
    sget-object v5, Lcom/tencent/component/plugin/PluginInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/component/plugin/PluginInfo;

    .line 248
    .local v1, "_arg1":Lcom/tencent/component/plugin/PluginInfo;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/component/plugin/UninstallPluginListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/component/plugin/UninstallPluginListener;

    move-result-object v2

    .line 249
    .local v2, "_arg2":Lcom/tencent/component/plugin/UninstallPluginListener;
    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/component/plugin/IPluginManager$Stub;->uninstall(Ljava/lang/String;Lcom/tencent/component/plugin/PluginInfo;Lcom/tencent/component/plugin/UninstallPluginListener;)V

    .line 250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 245
    .end local v1    # "_arg1":Lcom/tencent/component/plugin/PluginInfo;
    .end local v2    # "_arg2":Lcom/tencent/component/plugin/UninstallPluginListener;
    :cond_c
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/tencent/component/plugin/PluginInfo;
    goto :goto_4

    .line 255
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/tencent/component/plugin/PluginInfo;
    :sswitch_f
    const-string v7, "com.tencent.component.plugin.IPluginManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 259
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_d

    move v2, v6

    .line 262
    .local v2, "_arg2":Z
    :goto_5
    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/component/plugin/IPluginManager$Stub;->markPluginSurviveable(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2    # "_arg2":Z
    :cond_d
    move v2, v5

    .line 261
    goto :goto_5

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
