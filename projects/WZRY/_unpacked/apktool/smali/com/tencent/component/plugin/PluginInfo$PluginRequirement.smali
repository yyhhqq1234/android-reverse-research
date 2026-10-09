.class public final Lcom/tencent/component/plugin/PluginInfo$PluginRequirement;
.super Ljava/lang/Object;
.source "PluginInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/plugin/PluginInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PluginRequirement"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tencent/component/plugin/PluginInfo$PluginRequirement;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public maxCorePluginVersion:I

.field public minCorePluginVersion:I

.field public requirementInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/component/plugin/PluginInfo$RequirementInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 311
    new-instance v0, Lcom/tencent/component/plugin/PluginInfo$PluginRequirement$1;

    invoke-direct {v0}, Lcom/tencent/component/plugin/PluginInfo$PluginRequirement$1;-><init>()V

    sput-object v0, Lcom/tencent/component/plugin/PluginInfo$PluginRequirement;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/component/plugin/PluginInfo$PluginRequirement;->requirementInfos:Ljava/util/ArrayList;

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/component/plugin/PluginInfo$PluginRequirement;->maxCorePluginVersion:I

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/component/plugin/PluginInfo$PluginRequirement;->minCorePluginVersion:I

    .line 309
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/tencent/component/plugin/PluginInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/tencent/component/plugin/PluginInfo$1;

    .prologue
    .line 283
    invoke-direct {p0, p1}, Lcom/tencent/component/plugin/PluginInfo$PluginRequirement;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 297
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginInfo$PluginRequirement;->requirementInfos:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 298
    iget v0, p0, Lcom/tencent/component/plugin/PluginInfo$PluginRequirement;->maxCorePluginVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    iget v0, p0, Lcom/tencent/component/plugin/PluginInfo$PluginRequirement;->minCorePluginVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    return-void
.end method
