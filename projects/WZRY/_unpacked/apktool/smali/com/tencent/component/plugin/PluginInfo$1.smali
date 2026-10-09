.class final Lcom/tencent/component/plugin/PluginInfo$1;
.super Ljava/lang/Object;
.source "PluginInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/plugin/PluginInfo;
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
        "Lcom/tencent/component/plugin/PluginInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tencent/component/plugin/PluginInfo;
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 248
    new-instance v0, Lcom/tencent/component/plugin/PluginInfo;

    invoke-direct {v0}, Lcom/tencent/component/plugin/PluginInfo;-><init>()V

    .line 249
    .local v0, "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/component/plugin/PluginInfo;->installPath:Ljava/lang/String;

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/component/plugin/PluginInfo;->pluginClass:Ljava/lang/String;

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/component/plugin/PluginInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/component/plugin/PluginInfo;->dexOptimizeDir:Ljava/lang/String;

    .line 254
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/tencent/component/plugin/PluginInfo$PluginRequirement;

    iput-object v1, v0, Lcom/tencent/component/plugin/PluginInfo;->pluginRequirement:Lcom/tencent/component/plugin/PluginInfo$PluginRequirement;

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/tencent/component/plugin/PluginInfo;->minBasePlatformVersion:I

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/tencent/component/plugin/PluginInfo;->maxBasePlatformVersion:I

    .line 257
    const-class v1, Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, v0, Lcom/tencent/component/plugin/PluginInfo;->uri:Landroid/net/Uri;

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/tencent/component/plugin/PluginInfo;->version:I

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/component/plugin/PluginInfo;->versionName:Ljava/lang/String;

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/component/plugin/PluginInfo;->pluginName:Ljava/lang/String;

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/tencent/component/plugin/PluginInfo;->pluginIcon:I

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/tencent/component/plugin/PluginInfo;->theme:I

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/component/plugin/PluginInfo;->launchFragment:Ljava/lang/String;

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/tencent/component/plugin/PluginInfo;->enabled:Z

    .line 265
    sget-object v1, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/Signature;

    iput-object v1, v0, Lcom/tencent/component/plugin/PluginInfo;->signatures:[Landroid/content/pm/Signature;

    .line 266
    iget-object v4, v0, Lcom/tencent/component/plugin/PluginInfo;->extraInfo:Lcom/tencent/component/plugin/PluginInfo$ExtraInfo;

    const-class v1, Lcom/tencent/component/plugin/PluginInfo$ExtraInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/tencent/component/plugin/PluginInfo$ExtraInfo;

    invoke-virtual {v4, v1}, Lcom/tencent/component/plugin/PluginInfo$ExtraInfo;->setTo(Lcom/tencent/component/plugin/PluginInfo$ExtraInfo;)V

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/tencent/component/plugin/PluginInfo;->minAndroidVersion:I

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/tencent/component/plugin/PluginInfo;->maxAndroidVersion:I

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/component/plugin/PluginInfo;->bootCompleteReceiver:Ljava/lang/String;

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/component/plugin/PluginInfo;->surviveDetector:Ljava/lang/String;

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, v0, Lcom/tencent/component/plugin/PluginInfo;->surviveable:Z

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_2
    iput-boolean v1, v0, Lcom/tencent/component/plugin/PluginInfo;->exclusive:Z

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_3

    :goto_3
    iput-boolean v2, v0, Lcom/tencent/component/plugin/PluginInfo;->corePlugin:Z

    .line 274
    return-object v0

    :cond_0
    move v1, v3

    .line 264
    goto :goto_0

    :cond_1
    move v1, v3

    .line 271
    goto :goto_1

    :cond_2
    move v1, v3

    .line 272
    goto :goto_2

    :cond_3
    move v2, v3

    .line 273
    goto :goto_3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 245
    invoke-virtual {p0, p1}, Lcom/tencent/component/plugin/PluginInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tencent/component/plugin/PluginInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/tencent/component/plugin/PluginInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 279
    new-array v0, p1, [Lcom/tencent/component/plugin/PluginInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 245
    invoke-virtual {p0, p1}, Lcom/tencent/component/plugin/PluginInfo$1;->newArray(I)[Lcom/tencent/component/plugin/PluginInfo;

    move-result-object v0

    return-object v0
.end method
