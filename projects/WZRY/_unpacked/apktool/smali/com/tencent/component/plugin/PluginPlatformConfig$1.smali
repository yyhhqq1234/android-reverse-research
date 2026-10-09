.class final Lcom/tencent/component/plugin/PluginPlatformConfig$1;
.super Ljava/lang/Object;
.source "PluginPlatformConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/plugin/PluginPlatformConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/tencent/component/plugin/PluginPlatformConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tencent/component/plugin/PluginPlatformConfig;
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x1

    .line 66
    new-instance v0, Lcom/tencent/component/plugin/PluginPlatformConfig;

    invoke-direct {v0}, Lcom/tencent/component/plugin/PluginPlatformConfig;-><init>()V

    .line 67
    .local v0, "config":Lcom/tencent/component/plugin/PluginPlatformConfig;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/component/plugin/PluginPlatformConfig;->platformId:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/component/plugin/PluginPlatformConfig;->platformSignatureHash:[I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/tencent/component/plugin/PluginPlatformConfig;->platformVersion:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    iput-object v1, v0, Lcom/tencent/component/plugin/PluginPlatformConfig;->pluginShellActivityClass:Ljava/lang/Class;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    iput-object v1, v0, Lcom/tencent/component/plugin/PluginPlatformConfig;->pluginTreeServiceClass:Ljava/lang/Class;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    iput-object v1, v0, Lcom/tencent/component/plugin/PluginPlatformConfig;->pluginProxyReceiver:Ljava/lang/Class;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/tencent/component/plugin/PluginPlatformConfig;->enbaleCorePlugin:Z

    .line 74
    return-object v0

    .line 73
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/tencent/component/plugin/PluginPlatformConfig$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tencent/component/plugin/PluginPlatformConfig;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/tencent/component/plugin/PluginPlatformConfig;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 79
    new-array v0, p1, [Lcom/tencent/component/plugin/PluginPlatformConfig;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/tencent/component/plugin/PluginPlatformConfig$1;->newArray(I)[Lcom/tencent/component/plugin/PluginPlatformConfig;

    move-result-object v0

    return-object v0
.end method
