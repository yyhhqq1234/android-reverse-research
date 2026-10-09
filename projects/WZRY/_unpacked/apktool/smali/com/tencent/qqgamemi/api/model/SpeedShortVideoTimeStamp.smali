.class public Lcom/tencent/qqgamemi/api/model/SpeedShortVideoTimeStamp;
.super Ljava/lang/Object;
.source "SpeedShortVideoTimeStamp.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tencent/qqgamemi/api/model/SpeedShortVideoTimeStamp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public shortVideoTimeStamp:Lcom/tencent/qqgamemi/api/model/ShortVideoTimeStamp;

.field public speed:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/tencent/qqgamemi/api/model/SpeedShortVideoTimeStamp$1;

    invoke-direct {v0}, Lcom/tencent/qqgamemi/api/model/SpeedShortVideoTimeStamp$1;-><init>()V

    sput-object v0, Lcom/tencent/qqgamemi/api/model/SpeedShortVideoTimeStamp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/tencent/qqgamemi/api/model/ShortVideoTimeStamp;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/tencent/qqgamemi/api/model/ShortVideoTimeStamp;-><init>(JJ)V

    iput-object v0, p0, Lcom/tencent/qqgamemi/api/model/SpeedShortVideoTimeStamp;->shortVideoTimeStamp:Lcom/tencent/qqgamemi/api/model/ShortVideoTimeStamp;

    .line 17
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/tencent/qqgamemi/api/model/SpeedShortVideoTimeStamp;->speed:F

    .line 18
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-class v0, Lcom/tencent/qqgamemi/api/model/ShortVideoTimeStamp;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqgamemi/api/model/ShortVideoTimeStamp;

    iput-object v0, p0, Lcom/tencent/qqgamemi/api/model/SpeedShortVideoTimeStamp;->shortVideoTimeStamp:Lcom/tencent/qqgamemi/api/model/ShortVideoTimeStamp;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/tencent/qqgamemi/api/model/SpeedShortVideoTimeStamp;->speed:F

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/tencent/qqgamemi/api/model/ShortVideoTimeStamp;F)V
    .locals 0
    .param p1, "shortVideoTimeStamp"    # Lcom/tencent/qqgamemi/api/model/ShortVideoTimeStamp;
    .param p2, "speed"    # F

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/tencent/qqgamemi/api/model/SpeedShortVideoTimeStamp;->shortVideoTimeStamp:Lcom/tencent/qqgamemi/api/model/ShortVideoTimeStamp;

    .line 22
    iput p2, p0, Lcom/tencent/qqgamemi/api/model/SpeedShortVideoTimeStamp;->speed:F

    .line 23
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 32
    iget-object v0, p0, Lcom/tencent/qqgamemi/api/model/SpeedShortVideoTimeStamp;->shortVideoTimeStamp:Lcom/tencent/qqgamemi/api/model/ShortVideoTimeStamp;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 33
    iget v0, p0, Lcom/tencent/qqgamemi/api/model/SpeedShortVideoTimeStamp;->speed:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 34
    return-void
.end method
