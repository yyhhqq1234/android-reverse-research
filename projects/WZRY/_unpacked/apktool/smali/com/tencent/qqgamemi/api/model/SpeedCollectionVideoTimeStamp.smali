.class public Lcom/tencent/qqgamemi/api/model/SpeedCollectionVideoTimeStamp;
.super Ljava/lang/Object;
.source "SpeedCollectionVideoTimeStamp.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tencent/qqgamemi/api/model/SpeedCollectionVideoTimeStamp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public speedTimePairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqgamemi/api/model/SpeedTimePair;",
            ">;"
        }
    .end annotation
.end field

.field public videoInfo:Lcom/tencent/qqgamemi/api/model/VideoInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/tencent/qqgamemi/api/model/SpeedCollectionVideoTimeStamp$1;

    invoke-direct {v0}, Lcom/tencent/qqgamemi/api/model/SpeedCollectionVideoTimeStamp$1;-><init>()V

    sput-object v0, Lcom/tencent/qqgamemi/api/model/SpeedCollectionVideoTimeStamp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Lcom/tencent/qqgamemi/api/model/SpeedTimePair;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqgamemi/api/model/SpeedCollectionVideoTimeStamp;->speedTimePairs:Ljava/util/List;

    .line 32
    const-class v0, Lcom/tencent/qqgamemi/api/model/VideoInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqgamemi/api/model/VideoInfo;

    iput-object v0, p0, Lcom/tencent/qqgamemi/api/model/SpeedCollectionVideoTimeStamp;->videoInfo:Lcom/tencent/qqgamemi/api/model/VideoInfo;

    .line 33
    return-void
.end method

.method public constructor <init>([Lcom/tencent/qqgamemi/api/model/SpeedTimePair;Lcom/tencent/qqgamemi/api/model/VideoInfo;)V
    .locals 4
    .param p1, "speedTimePairs"    # [Lcom/tencent/qqgamemi/api/model/SpeedTimePair;
    .param p2, "videoInfo"    # Lcom/tencent/qqgamemi/api/model/VideoInfo;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v1, "model"

    const-string v2, "SpeedCollectionVideoTimeStamp ctor"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    .line 22
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqgamemi/api/model/SpeedCollectionVideoTimeStamp;->speedTimePairs:Ljava/util/List;

    .line 23
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 24
    .local v0, "timePair":Lcom/tencent/qqgamemi/api/model/SpeedTimePair;
    iget-object v3, p0, Lcom/tencent/qqgamemi/api/model/SpeedCollectionVideoTimeStamp;->speedTimePairs:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 27
    .end local v0    # "timePair":Lcom/tencent/qqgamemi/api/model/SpeedTimePair;
    :cond_0
    iput-object p2, p0, Lcom/tencent/qqgamemi/api/model/SpeedCollectionVideoTimeStamp;->videoInfo:Lcom/tencent/qqgamemi/api/model/VideoInfo;

    .line 28
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tencent/qqgamemi/api/model/SpeedCollectionVideoTimeStamp;->speedTimePairs:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 38
    iget-object v0, p0, Lcom/tencent/qqgamemi/api/model/SpeedCollectionVideoTimeStamp;->videoInfo:Lcom/tencent/qqgamemi/api/model/VideoInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 39
    return-void
.end method
