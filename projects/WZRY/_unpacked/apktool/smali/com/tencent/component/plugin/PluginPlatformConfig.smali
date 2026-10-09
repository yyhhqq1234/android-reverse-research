.class public Lcom/tencent/component/plugin/PluginPlatformConfig;
.super Ljava/lang/Object;
.source "PluginPlatformConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tencent/component/plugin/PluginPlatformConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final PLUGIN_PLATFROM_SIGNATURE_HASH:[I


# instance fields
.field public enbaleCorePlugin:Z

.field public platformId:Ljava/lang/String;
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation
.end field

.field public platformSignatureHash:[I

.field public platformVersion:I
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation
.end field

.field public pluginProxyReceiver:Ljava/lang/Class;
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation
.end field

.field public pluginShellActivityClass:Ljava/lang/Class;
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation
.end field

.field public pluginTreeServiceClass:Ljava/lang/Class;
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7b80116a

    aput v2, v0, v1

    sput-object v0, Lcom/tencent/component/plugin/PluginPlatformConfig;->PLUGIN_PLATFROM_SIGNATURE_HASH:[I

    .line 62
    new-instance v0, Lcom/tencent/component/plugin/PluginPlatformConfig$1;

    invoke-direct {v0}, Lcom/tencent/component/plugin/PluginPlatformConfig$1;-><init>()V

    sput-object v0, Lcom/tencent/component/plugin/PluginPlatformConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/16 v0, 0x258

    iput v0, p0, Lcom/tencent/component/plugin/PluginPlatformConfig;->platformVersion:I

    .line 36
    sget-object v0, Lcom/tencent/component/plugin/PluginPlatformConfig;->PLUGIN_PLATFROM_SIGNATURE_HASH:[I

    iput-object v0, p0, Lcom/tencent/component/plugin/PluginPlatformConfig;->platformSignatureHash:[I

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/component/plugin/PluginPlatformConfig;->enbaleCorePlugin:Z

    .line 39
    const-class v0, Lcom/tencent/component/plugin/PluginShellActivity;

    iput-object v0, p0, Lcom/tencent/component/plugin/PluginPlatformConfig;->pluginShellActivityClass:Ljava/lang/Class;

    .line 41
    const-class v0, Lcom/tencent/component/plugin/TreeService;

    iput-object v0, p0, Lcom/tencent/component/plugin/PluginPlatformConfig;->pluginTreeServiceClass:Ljava/lang/Class;

    .line 43
    const-class v0, Lcom/tencent/component/plugin/PluginProxyReceiver;

    iput-object v0, p0, Lcom/tencent/component/plugin/PluginPlatformConfig;->pluginProxyReceiver:Ljava/lang/Class;

    .line 20
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginPlatformConfig;->platformId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginPlatformConfig;->platformSignatureHash:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 55
    iget v0, p0, Lcom/tencent/component/plugin/PluginPlatformConfig;->platformVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginPlatformConfig;->pluginShellActivityClass:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 57
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginPlatformConfig;->pluginTreeServiceClass:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 58
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginPlatformConfig;->pluginProxyReceiver:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 59
    iget-boolean v0, p0, Lcom/tencent/component/plugin/PluginPlatformConfig;->enbaleCorePlugin:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
