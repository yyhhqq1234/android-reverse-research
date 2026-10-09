.class final Lcom/tencent/component/plugin/PluginInfo$RequirementInfo$1;
.super Ljava/lang/Object;
.source "PluginInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/plugin/PluginInfo$RequirementInfo;
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
        "Lcom/tencent/component/plugin/PluginInfo$RequirementInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tencent/component/plugin/PluginInfo$RequirementInfo;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 351
    new-instance v0, Lcom/tencent/component/plugin/PluginInfo$RequirementInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/tencent/component/plugin/PluginInfo$RequirementInfo;-><init>(Landroid/os/Parcel;Lcom/tencent/component/plugin/PluginInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 349
    invoke-virtual {p0, p1}, Lcom/tencent/component/plugin/PluginInfo$RequirementInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tencent/component/plugin/PluginInfo$RequirementInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/tencent/component/plugin/PluginInfo$RequirementInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 355
    new-array v0, p1, [Lcom/tencent/component/plugin/PluginInfo$RequirementInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 349
    invoke-virtual {p0, p1}, Lcom/tencent/component/plugin/PluginInfo$RequirementInfo$1;->newArray(I)[Lcom/tencent/component/plugin/PluginInfo$RequirementInfo;

    move-result-object v0

    return-object v0
.end method
